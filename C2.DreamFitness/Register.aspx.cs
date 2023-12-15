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
    public partial class Register : System.Web.UI.Page
    {
        LopKetNoi cn = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_register_Onclick(object sender, EventArgs e)
        {
            string name = Register_name.Text.Trim().ToString();
            string tk = Register_email.Text.Trim().ToString();
            string mk = Register_password.Text.Trim().ToString();
            string mkconfirm = Confirm_password.Text.Trim().ToString();
            string sqlcheck = "select user_email from Users where user_email = '" + tk + "'";
            DataTable dt = new DataTable();
            if (mk.Equals(mkconfirm))
            {
                
                try
                {
                    dt = cn.docdulieu(sqlcheck);
                }
                catch (SqlException ex) { Response.Write(ex.Message); }
                if (dt != null && dt.Rows.Count > 0)
                {
                    lblErrorMessage1.Text = "This Email was user. Try another Email";
                    lblErrorMessage1.Visible = true;
                }
                else
                {
                    string sqlthem = "Insert into Users values('" + name + "',01/01/2000,00000000,'" + tk + "','" + mk + "' )";                 
                    cn.ExecuteNonQuery(sqlthem);
                    lblErrorMessage1.Text = "Register successfull";
                    lblErrorMessage1.Visible = true;

                }
            }
            else
            {
                lblErrorMessage1.Text = "Confirm password not match with password";
                lblErrorMessage1.Visible = true;
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