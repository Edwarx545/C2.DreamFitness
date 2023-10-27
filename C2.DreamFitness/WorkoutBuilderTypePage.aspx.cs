using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C2.DreamFitness
{
    public partial class Workout_Builder_Type : System.Web.UI.Page
    {
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
    }
}