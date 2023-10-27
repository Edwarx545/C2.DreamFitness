using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C2.DreamFitness
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_Logout(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Default.aspx");
        }
        protected void btn_findfood(object sender, EventArgs e)
        {
            Response.Redirect("Findfood.aspx");
        }
        protected void btn_findexercise(object sender, EventArgs e)
        {
            Response.Redirect("Findexercise.aspx");
        }
        protected void navigateToHomePage(object sender, EventArgs e)
        {
            Server.Transfer("HomePage.aspx");
        }
    }
}