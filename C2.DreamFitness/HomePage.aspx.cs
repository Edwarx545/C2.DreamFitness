using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C2.DreamFitness.App_Start
{
    public partial class HomePage : System.Web.UI.Page
    {
        private string userid;
        Connector ketnoi = new Connector();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)    
            {
                if (Request.Cookies["AuthCookie"] == null)
                {
                    Response.Redirect("Default.aspx");
                    // Thực hiện các thao tác cần thiết với thông tin đăng nhập
                }
                else
                {
                    string userid = Request.Cookies["AuthCookie"]["Userid"];
                }
            }
        }
        protected void navigateToWorkoutBuilderTypePage(object sender, EventArgs e)
        {
            string userId = GetUserIdFromSession();
            string sql = "SELECT * FROM Users WHERE user_id = '" + userid + "' and user_paid = 'Y' ";
            DataTable userData = ketnoi.docdulieu(sql);
            if (userData.Rows.Count > 0)
            {
                Server.Transfer("WorkoutBuilderTypePage.aspx");
            }
            else
            {
                string script = "alert('You need to pay before using this function');";
                ClientScript.RegisterStartupScript(this.GetType(), "PaymentAlert", script, true);
            }
        }
        private string GetUserIdFromSession()
        {
            if (Request.Cookies["AuthCookie"] != null)
            {
                return userid = Request.Cookies["authCookie"]["userid"];
            }
            return null;
        }
        protected void FoodBuilderTypePage_OnClick(object sender, EventArgs e)
        {
            string userId = GetUserIdFromSession();
            string sql = "SELECT * FROM Users WHERE user_id = '" + userid + "' and user_paid = 'Y' ";
            DataTable userData = ketnoi.docdulieu(sql);
            if (userData.Rows.Count > 0)
            {
                Response.Redirect("FoodBuilderTypePage.aspx");
            }
            else
            {
                string script = "alert('You need to pay before using this function');";
                ClientScript.RegisterStartupScript(this.GetType(), "PaymentAlert", script, true);
            }
           
        }

    }
}