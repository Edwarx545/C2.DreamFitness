using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C2.DreamFitness
{
    public partial class CreatePersonalizedWorkoutPage : System.Web.UI.Page
    {
        public static String[] muscleGroups;
        protected void Page_Load(object sender, EventArgs e)
        {
            // Set string array from the hidden field's value
            string[] stringArray = hfLabelText.Value.Split(',');
            muscleGroups = stringArray.Take(stringArray.Length - 1).ToArray();
        }

        protected void go(object sender, EventArgs e)
        {
            //Label2.Text = muscleGroups[muscleGroups.Length - 1];
            Context.Items["muscleGroups"] = muscleGroups;
            Server.Transfer("WorkoutGeneratedPage.aspx");
        }
    }
}