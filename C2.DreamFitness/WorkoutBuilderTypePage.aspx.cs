using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C2.DreamFitness
{
    public partial class Workout_Builder_Type : System.Web.UI.Page
    {
        private string userid;
        Connector ketnoi = new Connector();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void navigateToWorkoutTemplateSelectionPage(object sender, EventArgs e)
        {
            Server.Transfer("WorkoutTemplateSelectionPage.aspx");
        }

        protected void navigateToCreatePersonalizedWorkoutPage(object sender, EventArgs e)
        {
            Server.Transfer("CreatePersonalizedWorkoutPage.aspx");
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