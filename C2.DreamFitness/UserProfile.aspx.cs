using C2.DreamFitness.model;
using PayPal.Api;
using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C2.DreamFitness
{
    public partial class UserProFile : System.Web.UI.Page
    {
        Connector ketnoi = new Connector();
        private string userid;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadUserData();
            }
        }
        private void LoadUserData()
        {
            string userid = GetUserIdFromSession();
            string sql = "SELECT * FROM Users WHERE user_id = '" + userid + "'";
            DataTable userData = ketnoi.docdulieu(sql);

            if (userData.Rows.Count > 0)
            {
                DataRow row = userData.Rows[0];

                // Assuming these are the IDs of your TextBox controls
                tbname.Text = row["user_name"].ToString();
                tbemail.Text = row["user_email"].ToString();
                TextBoxBirthday.Text = Convert.ToDateTime(row["user_birthday"]).ToString("yyyy-MM-dd");
                btphone.Text = row["user_phone"].ToString();
                tbemail1.Text = row["user_email"].ToString();
            }
        }
        private bool IsValidPhone(string phone)
        {
            // Add your phone number validation logic here
            // For simplicity, we'll assume a valid phone number is any non-empty string
            return !string.IsNullOrEmpty(phone);
        }

        private string GetUserIdFromSession()
        {
            if (Request.Cookies["AuthCookie"] != null)
            {
                return userid = Request.Cookies["authCookie"]["userid"];
            }
            return null;
        }
        public static string EncryptPassword(string pass)
        {
            using (SHA256 sha256 = SHA256.Create())
            {
                byte[] hashBytes = sha256.ComputeHash(Encoding.UTF8.GetBytes(pass));
                StringBuilder builder = new StringBuilder();
                foreach (byte b in hashBytes)
                {
                    builder.Append(b.ToString("x2"));
                }
                return builder.ToString();
            }
        }

        protected void btn_update_Onclick(object sender, EventArgs e)
        {
            try
            {
                string userid = GetUserIdFromSession();

                string updatedName = tbname.Text.Trim();
                string updatedEmail = tbemail.Text.Trim();
                string updatedBirthday = TextBoxBirthday.Text.Trim();
                string updatedPhone = btphone.Text.Trim();
                string currentPassword = btcurrentpassword.Text.Trim();
                string newPassword = btnewpassword.Text.Trim();

                // Validate fields
                if (!DateTime.TryParseExact(updatedBirthday, "yyyy-MM-dd", CultureInfo.InvariantCulture, DateTimeStyles.None, out _))
                {
                    lblErrorMessage.Text = "Invalid birthday format. Please use yyyy-MM-dd.";
                    lblErrorMessage.Visible = true;
                    return;
                }

                if (string.IsNullOrEmpty(updatedName) || string.IsNullOrEmpty(updatedEmail) || string.IsNullOrEmpty(updatedPhone) || !IsValidPhone(updatedPhone))
                {
                    lblErrorMessage.Text = "Invalid or empty fields.";
                    lblErrorMessage.Visible = true;
                    return;
                }

                // Validate current password
                string hashedCurrentPassword = EncryptPassword(currentPassword);
                string sqlCheck = "SELECT user_email FROM Users WHERE user_id = '" + userid + "' AND user_password = '" + hashedCurrentPassword + "'";
                DataTable dt = ketnoi.docdulieu(sqlCheck);

                if (dt.Rows.Count > 0)
                {
                    // Password is correct, proceed with the update
                    string hashedNewPassword = EncryptPassword(newPassword);
                    string sqlUpdate = "UPDATE Users SET user_name = '" + updatedName + "', user_phone = '" + updatedPhone + "', user_birthday = '" + updatedBirthday + "', user_password = '" + hashedNewPassword + "' WHERE user_id = '" + userid + "'";
                    ketnoi.CapNhat(sqlUpdate);

                    // Reload user data
                    LoadUserData();

                    // Set success message
                    lblErrorMessage.Text = "Update successful";
                    lblErrorMessage.Visible = true;
                }
                else
                {
                    // Incorrect current password
                    lblErrorMessage.Text = "Invalid current password.";
                    lblErrorMessage.Visible = true;
                    return;
                }
            }
            catch (Exception ex)
            {
                lblErrorMessage.Text = "An error occurred: " + ex.Message;
                lblErrorMessage.Visible = true;
            }
        }

        protected void btnPayment_Click(object sender, EventArgs e)
        {
            try
            {
                APIContext apiContext = PaypalConfiguration.GetAPIContext();

                // Check if the payer ID is present in the request
                string payerId = Request.Params["PayerID"];

                if (string.IsNullOrEmpty(payerId))
                {
                    // Existing logic for creating payment
                    string baseURI = Request.Url.Scheme + "://" + Request.Url.Authority + "/UserProfile.aspx?";
                    var guid = Convert.ToString((new Random()).Next(100000));

                    // Use FindControlRecursive to find the CheckBoxList
                    CheckBoxList chkSelectedMonths = FindControlRecursive(Page, "selectedMonths") as CheckBoxList;

                    if (chkSelectedMonths != null)
                    {
                        int selectedMonths = 0;

                        // Find the first selected item in the CheckBoxList
                        ListItem selectedItem = chkSelectedMonths.Items.Cast<ListItem>().FirstOrDefault(item => item.Selected);

                        if (selectedItem != null)
                        {
                            // Convert the selected value to an int
                            selectedMonths = Convert.ToInt32(selectedItem.Value);
                        }

                        // Use selected value in CreatePayment
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

                        // Print debug information
                        System.Diagnostics.Debug.WriteLine($"Redirecting to PayPal: {paypalRedirectUrl}");

                        // Store payment ID in session
                        Session.Add(guid, createdPayment.id);

                        // Redirect to PayPal for payment approval
                        Response.Redirect(paypalRedirectUrl, false);
                    }
                    else
                    {
                        // Handle the case where the CheckBoxList is not found
                        System.Diagnostics.Debug.WriteLine("CheckBoxList not found.");
                    }
                }
                else
                {
                    // Existing logic for executing payment
                    var guid = Request.Params["guid"];
                    var executedPayment = ExecutePayment(apiContext, payerId, Session[guid] as string);

                    if (executedPayment.state.ToLower() == "approved")
                    {
                        // If payment execution state is approved, transfer to success view
                        Server.Transfer("SuccessView.aspx");
                        System.Threading.Thread.Sleep(5000);
                    }
                    else
                    {
                        // If payment execution state is not approved, transfer to failure view
                        Server.Transfer("FailureView.aspx");
                    }
                }
            }
            catch (Exception ex)
            {
                // Log the exception
                System.Diagnostics.Debug.WriteLine($"Exception: {ex.Message}");

                // If an exception occurs, transfer to failure view
                Server.Transfer("FailureView.aspx");
            }
        }
        // Add the FindControlRecursive function
        private Control FindControlRecursive(Control root, string id)
        {
            if (root.ID == id)
            {
                return root;
            }

            foreach (Control control in root.Controls)
            {
                Control foundControl = FindControlRecursive(control, id);
                if (foundControl != null)
                {
                    return foundControl;
                }
            }

            return null;
        }

        private PayPal.Api.Payment payment;
        private Payment CreatePayment(APIContext apiContext, string redirectUrl, int selectedMonths)
        {
            try
            {
                var itemList = new ItemList()
                {
                    items = new List<Item>()
                };

                // Define prices for different subscription durations
                Dictionary<int, decimal> subscriptionPrices = new Dictionary<int, decimal>
            {
                { 1, 1m },
                { 3, 3m },
                { 6, 6m },
                { 12, 12m }
            };

                if (!subscriptionPrices.ContainsKey(selectedMonths))
                {
                    // Handle invalid selectedMonths value
                    throw new ArgumentException("Invalid selectedMonths value.");
                }

                decimal totalAmount = subscriptionPrices[selectedMonths];

                itemList.items.Add(new Item()
                {
                    name = $"Subscription ({selectedMonths} Month(s))",
                    currency = "USD",
                    price = totalAmount.ToString("0.00", CultureInfo.InvariantCulture), // Format the total amount
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
                    subtotal = totalAmount.ToString("0.00", CultureInfo.InvariantCulture) // Format the subtotal
                };

                var amount = new Amount()
                {
                    currency = "USD",
                    total = totalAmount.ToString("0.00", CultureInfo.InvariantCulture),
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

                // Log payment details before making the API call
                System.Diagnostics.Debug.WriteLine($"Payment details: {Newtonsoft.Json.JsonConvert.SerializeObject(this.payment)}");

                // Make the API call to create the payment
                var createdPayment = this.payment.Create(apiContext);

                // Log the created payment details
                System.Diagnostics.Debug.WriteLine($"Created Payment details: {Newtonsoft.Json.JsonConvert.SerializeObject(createdPayment)}");

                return createdPayment;
            }
            catch (Exception ex)
            {
                // Log any exceptions that occur during the payment creation
                System.Diagnostics.Debug.WriteLine($"Exception during payment creation: {ex.Message}");
                throw; // Re-throw the exception to propagate it to the calling code
            }
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