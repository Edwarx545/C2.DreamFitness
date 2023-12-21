using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C2.DreamFitness
{
    public partial class Food_Builder_Type : System.Web.UI.Page
    {
        private string userid;
        Connector ketnoi = new Connector();
        protected void Page_Load(object sender, EventArgs e)
        {
            string userId = GetUserIdFromSession();
            string sql = "SELECT * FROM Users WHERE user_id = '" + userid + "' and user_paid = 'Y' ";
            DataTable userData = ketnoi.docdulieu(sql);
            if (userData.Rows.Count > 0)
            {

            }   
            else
            {
                Response.Redirect("HomePage.aspx");
                string script = "alert('Bạn cần thanh toán trước khi sử dụng chức năng này');";
                ClientScript.RegisterStartupScript(this.GetType(), "PaymentAlert", script, true);
            }
        }
        protected void navigateToWorkoutTemplateSelectionPage(object sender, EventArgs e)
        {
            Server.Transfer("FoodTemplateSelectionPage.aspx");
        }
        protected void navigateToCreatePersonalizedWorkoutPage(object sender, EventArgs e)
        {
            Server.Transfer(" ");
        }
        private string GetUserIdFromSession()
        {
            if (Request.Cookies["AuthCookie"] != null)
            {
                return userid = Request.Cookies["authCookie"]["userid"];
            }
            return null;
        }
    }
}