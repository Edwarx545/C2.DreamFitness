using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C2.DreamFitness.App_Start
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void navigateToWorkoutBuilderTypePage(object sender, EventArgs e)
        {
            Server.Transfer("WorkoutBuilderTypePage.aspx");
        }
    }
}