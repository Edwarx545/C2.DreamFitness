using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C2.DreamFitness
{
    public partial class MyWorkouts : System.Web.UI.Page
    {
        public static Connector ketnoi = new Connector();
        string userid;
        protected void Page_Load(object sender, EventArgs e)
        {
            string userId = GetUserIdFromSession();
            if (IsPostBack) return;
            string sql = "SELECT dbo.UserGeneratedWorkout.user_id, dbo.UserGeneratedWorkout.workout_template_id, dbo.WorkoutTemplate.workout_template_id AS Expr1, dbo.WorkoutTemplate.workout_template_name, \r\n                  dbo.WorkoutTemplate.workout_template_desc, dbo.WorkoutTemplate.workout_template_gender, dbo.WorkoutTemplate.workout_template_type, dbo.WorkoutTemplate.workout_template_difficulty, \r\n                  dbo.WorkoutTemplate.workout_template_img, dbo.WorkoutTemplate.workout_template_equipment, dbo.WorkoutTemplate.workout_template_age, dbo.WorkoutTemplate.workout_template_user_id\r\nFROM     dbo.UserGeneratedWorkout INNER JOIN\r\n                  dbo.WorkoutTemplate ON dbo.UserGeneratedWorkout.workout_template_id = dbo.WorkoutTemplate.workout_template_id\r\nWHERE  (dbo.UserGeneratedWorkout.user_id = " + userId + ") order by user_generated_workout_id desc";
            DataTable dt = ketnoi.docdulieu(sql);

            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
        private string GetUserIdFromSession()
        {
            if (Request.Cookies["AuthCookie"] != null)
            {
                return userid = Request.Cookies["authCookie"]["userid"];
            }
            return null;
        }

        protected void btnXemThongTin_Click(object sender, EventArgs e)
        {
            string workoutId = ((LinkButton)sender).CommandArgument;


            Session["workoutId"] = workoutId;

            // Redirect to the new page with query parameters
            Response.Redirect($"UsersWorkoutInformation.aspx?workoutId={workoutId}");

            /*string workoutId = ((LinkButton)sender).CommandArgument;
            Context.Items["workout_template_id"] = workoutId;
            Server.Transfer("UsersWorkoutInformation.aspx");*/
        }
    }
}