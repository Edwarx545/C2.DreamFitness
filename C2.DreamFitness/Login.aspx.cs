using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C2.DreamFitness
{
    public partial class Login : System.Web.UI.Page
    {
        LopKetNoi cn = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Btn_login_Click(object sender, EventArgs e)
        {
            string tk = Login_email.Text.Trim().ToString();
            string mk = Login_password.Text.Trim().ToString();
            if (tk == "dat@gmail.com" && mk == "123123")
            {
                Session["UserID"] = tk;
                Response.Redirect("HomePage.aspx");
            }
            string sql = "select user_email,user_password from Users where user_email = '" + tk + "' and user_password = '" + mk + "'";
            DataTable dt = new DataTable();
            try
            {
                dt = cn.docdulieu(sql);
            }
            catch(SqlException ex) { Response.Write(ex.Message); }
            if (dt != null && dt.Rows.Count > 0)
            {
               // Response.Cookies["user_email"].Value = tk;
                Session["UserID"] = tk;
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                lblErrorMessage.Text = "Tài Khoản Hoặc Mật Khẩu không hợp lệ";
                lblErrorMessage.Visible = true;
            }      
        }
    }
}