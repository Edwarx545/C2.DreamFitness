using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
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
            string mke = EncryptPassword(mk);
            string sql = "select user_email,user_password from Users where user_email = '" + tk + "' and user_password = '" + mke + "'";
            string sqlid = "select user_id from Users where user_email = '"+ tk + "'";
            DataTable dt = new DataTable();
            try
            {
                dt = cn.docdulieu(sql);
            }
            catch (SqlException ex) { Response.Write(ex.Message); }
            if (dt != null && dt.Rows.Count > 0)
            {
                var idget = cn.Scalar(sqlid);
                string id = Convert.ToString(idget);
                HttpCookie authCookie = new HttpCookie("AuthCookie");
                authCookie.Values["Userid"] = id;
                authCookie.Expires = DateTime.Now.AddDays(30); // Thời gian hết hạn của Cookie
                // Thêm Cookie vào Response
                Response.Cookies.Add(authCookie);
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                lblErrorMessage.Text = "Email or password not correct";
                lblErrorMessage.Visible = true;
            }
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
    }
}