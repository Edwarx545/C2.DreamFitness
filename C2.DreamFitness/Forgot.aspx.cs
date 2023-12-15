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
    public partial class Forgot : System.Web.UI.Page
    {
        LopKetNoi cn = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Reset(object sender, EventArgs e)
        {
            string tk = Forgot_email.Text.Trim().ToString();
            string mk = Forgot_password.Text.Trim().ToString();
            string mkx = EncryptPassword(mk);
            string sqlcheck1 = "select user_email from Users where user_email = '" + tk + "'";
            DataTable dt = new DataTable();
            try
            {
                dt = cn.docdulieu(sqlcheck1);
            }
            catch (SqlException ex) { Response.Write(ex.Message); }
            if (dt.Rows.Count > 0)
            {
                string sqlupdate = "update Users set user_password= '" + mkx + "' where user_email = '" + tk + "' ";
                cn.ExecuteNonQuery(sqlupdate);
                lblErrorMessage2.Text = "Reset Password successfull.";
                lblErrorMessage2.Visible = true;
            }
            else
            {
                lblErrorMessage2.Text = "This Email not exit. Try another Email";
                lblErrorMessage2.Visible = true;
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