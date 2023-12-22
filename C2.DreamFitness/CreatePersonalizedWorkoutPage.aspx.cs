using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C2.DreamFitness
{
    public partial class CreatePersonalizedWorkoutPage : System.Web.UI.Page
    {
        public static String[] muscleGroups;
        public static string age;
        public static string weight;
        public static string gender;
        public static string fitnessLevel;
        protected void Page_Load(object sender, EventArgs e)
        {
            errorMessage.Visible = false;
            // Set string array from the hidden field's value
            string[] stringArray = hfLabelText.Value.Split(',');
            muscleGroups = stringArray.Take(stringArray.Length - 1).ToArray();
            age = hfAge.Value.Trim();
            weight = hfWeight.Value.Trim();
            gender = hfGender.Value.Trim();
            fitnessLevel = hfLevel.Value.Trim();

            Label1.Visible = false;
        }

        protected void go(object sender, EventArgs e)
        {
            try
            {
                if (int.Parse(age.Trim()) > 9 && int.Parse(age.Trim()) < 121
                && double.Parse(weight) > 14 && double.Parse(weight) < 500)
                {
                    // Serialize the array to a JSON string
                    string muscleGroupsJson = Newtonsoft.Json.JsonConvert.SerializeObject(muscleGroups);

                    // Store data in session
                    Session["age"] = age;
                    Session["weight"] = weight;
                    Session["gender"] = gender;
                    Session["fitnessLevel"] = fitnessLevel;
                    Session["muscleGroups"] = muscleGroupsJson;

                    // Redirect to the new page with query parameters
                    Response.Redirect($"WorkoutGeneratedPage.aspx?age={age}&weight={weight}&gender={gender}&fitnessLevel={fitnessLevel}&muscleGroups={muscleGroupsJson}");

                    /* Context.Items["age"] = age;
                     Context.Items["weight"] = weight;
                     Context.Items["gender"] = gender;
                     Session["fitnessLevel"] = fitnessLevel;
                     Context.Items["muscleGroups"] = muscleGroups;
                     Server.Transfer("WorkoutGeneratedPage.aspx");*/
                }
                else
                {
                    errorMessage.Text = "Please Input Your Attribute!";
                    errorMessage.Visible = true;
                    muscleGroups = new string[] { };
                }
            }
            catch (Exception ex)
            {
                errorMessage.Text = "Please Input Your Attribute!";
                errorMessage.Visible = true;
                muscleGroups = new string[] { };
            }
        }
    }
}