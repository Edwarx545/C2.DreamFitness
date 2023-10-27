using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C2.DreamFitness
{
    public partial class WorkoutInformationPage : System.Web.UI.Page
    {
        Connector ketnoi = new Connector();
        string workoutId;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            workoutId = Context.Items["workout_template_id"] + "";

            string sql = "select * from WorkoutTemplate where workout_template_id='" + workoutId + "'";
            DataList1.DataSource = ketnoi.docdulieu(sql);
            DataList1.DataBind();

            string sqlForExercise = "select distinct exercise_name, exercise_desc, exercise_img from WorkoutTemplateExercise wte join Exercise e on wte.exercise_id=e.exercise_id where wte.workout_template_id = " + workoutId;
            DataList2.DataSource = ketnoi.docdulieu(sqlForExercise);
            DataList2.DataBind();


        }
    }
}