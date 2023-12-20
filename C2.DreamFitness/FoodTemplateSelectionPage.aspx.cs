using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C2.DreamFitness
{
    public partial class FoodTemplateSelectionPage : System.Web.UI.Page
    {
        Connector ketnoi = new Connector();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            string sql;
            sql = "select * from DietTemplate";
            DataList1.DataSource = ketnoi.docdulieu(sql);
            DataList1.DataBind();
        }
        protected void btnXemThongTin_Click(object sender, EventArgs e)
        {
            string dietId = ((LinkButton)sender).CommandArgument.ToString();
            Session["DietId"] = dietId;
            Response.Redirect($"FoodInformationPage.aspx?dietId={dietId}");
        }
    }
}