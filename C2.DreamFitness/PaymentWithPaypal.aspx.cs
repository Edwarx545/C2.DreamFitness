using C2.DreamFitness.model;
using PayPal.Api;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C2.DreamFitness
{
    public partial class PaymentWithPaypal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            APIContext apiContext = PaypalConfiguration.GetAPIContext();

            try
            {
                string payerId = Request.Params["PayerID"];

                if (string.IsNullOrEmpty(payerId))
                {
                    string baseURI = Request.Url.Scheme + "://" + Request.Url.Authority + "/PaymentWithPayPal?";
                    var guid = Convert.ToString((new Random()).Next(100000));
                    int selectedMonths = Convert.ToInt32(Request.QueryString["selectedMonths"]);

                    // Truyền giá trị selectedMonths vào CreatePayment
                    var createdPayment = this.CreatePayment(apiContext, baseURI + "guid=" + guid, selectedMonths);

                    var links = createdPayment.links.GetEnumerator();
                    string paypalRedirectUrl = null;

                    while (links.MoveNext())
                    {
                        Links lnk = links.Current;
                        if (lnk.rel.ToLower().Trim().Equals("approval_url"))
                        {
                            paypalRedirectUrl = lnk.href;
                        }
                    }

                    Session.Add(guid, createdPayment.id);
                    Response.Redirect(paypalRedirectUrl, false);
                }
                else
                {
                    var guid = Request.Params["guid"];
                    var executedPayment = ExecutePayment(apiContext, payerId, Session[guid] as string);

                    if (executedPayment.state.ToLower() != "approved")
                    {
                        Server.Transfer("FailureView.aspx");
                    }
                }
            }
            catch (Exception ex)
            {
                Server.Transfer("FailureView.aspx");
            }

            Server.Transfer("SuccessView.aspx");
        }
        private PayPal.Api.Payment payment;
        private Payment CreatePayment(APIContext apiContext, string redirectUrl, int selectedMonths)
        {
            var itemList = new ItemList()
            {
                items = new List<Item>()
            };

            // Adjust the price based on the selected duration
            double pricePerMonth = 0.99; // Change this to your actual price
            double totalAmount = pricePerMonth * selectedMonths;

            itemList.items.Add(new Item()
            {
                name = "Subscription",
                currency = "USD",
                price = totalAmount.ToString("0.00"), // Format the total amount
                quantity = "1",
                sku = "sku"
            });

            var payer = new Payer()
            {
                payment_method = "paypal"
            };

            var redirUrls = new RedirectUrls()
            {
                cancel_url = redirectUrl + "&Cancel=true",
                return_url = redirectUrl
            };

            var details = new Details()
            {
                subtotal = totalAmount.ToString("0.00") // Format the subtotal
            };

            var amount = new Amount()
            {
                currency = "USD",
                total = totalAmount.ToString("0.00"),
                details = details
            };

            var transactionList = new List<Transaction>();

            var paypalOrderId = DateTime.Now.Ticks;
            transactionList.Add(new Transaction()
            {
                description = $"Subscription for {selectedMonths} months",
                invoice_number = paypalOrderId.ToString(),
                amount = amount,
                item_list = itemList
            });

            this.payment = new Payment()
            {
                intent = "sale",
                payer = payer,
                transactions = transactionList,
                redirect_urls = redirUrls
            };

            return this.payment.Create(apiContext);
        }
        private Payment ExecutePayment(APIContext apiContext, string payerId, string paymentId)
        {
            var paymentExecution = new PaymentExecution()
            {
                payer_id = payerId
            };
            this.payment = new Payment()
            {
                id = paymentId
            };
            return this.payment.Execute(apiContext, paymentExecution);

        }
    }
}