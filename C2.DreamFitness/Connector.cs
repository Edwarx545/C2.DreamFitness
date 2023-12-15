using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace C2.DreamFitness
{
    public class Connector : System.Web.UI.Page
    {
        SqlConnection cn;
        private void layketnoi()
        {
            string sqlCon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=" + Server.MapPath("/App_Data/CapstoneDatabase.mdf") + ";Integrated Security=True";
            cn = new SqlConnection(sqlCon);
            cn.Open();
        }
        private void dongketnoi()
        {
            if (cn.State == ConnectionState.Open)
                cn.Close();
        }
        public DataTable docdulieu(string sql)
        {
            DataTable dt = new DataTable();
            try
            {
                layketnoi();
                SqlDataAdapter da = new SqlDataAdapter(sql, cn);
                da.Fill(dt);
            }
            catch
            {
                Response.Write("Lỗi");
                dt = null;
            }
            finally
            {
                dongketnoi();
            }
            return dt;
        }
        public int CapNhat(string sql)
        {
            int kq = 0;
            try
            {
                layketnoi();
                SqlCommand cmd = new SqlCommand(sql, cn);
                kq = cmd.ExecuteNonQuery();
            }
            catch
            {
                kq = 0;
            }
            finally
            {
                dongketnoi();
            }
            return kq;
        }
    }
}