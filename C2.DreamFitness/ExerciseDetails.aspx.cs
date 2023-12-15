using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C2.DreamFitness
{
    public partial class ExerciseDetails : System.Web.UI.Page
    {
        Connector ketnoi = new Connector();
        string exerciseid;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            exerciseid = Context.Items["exercise_id"] + "";
            string sql = "SELECT * FROM Exercise WHERE exercise_id ='" + exerciseid + "'";
            DataList1.DataSource = ketnoi.docdulieu(sql);
            DataList1.DataBind();
            string sql2 = "select m.muscle_group_name from Exercise e join ExerciseMuscleGroup g on e.exercise_id= g.exercise_id join MuscleGroup m on g.muscle_group_id=m.muscle_group_id where e.exercise_id = '" + exerciseid + "'";
            DataTable dt1 = ketnoi.docdulieu(sql2);
            var muscleGroupNames = dt1.AsEnumerable().Select(row => row.Field<string>("muscle_group_name")).ToArray();
            DataList3.DataSource = new[] { new { items = muscleGroupNames } };
            DataList3.DataBind();
        }
        //private void DisplayExerciseDetails(string exerciseId)
        //{
        //    string sql = "SELECT * FROM Exercise e JOIN ExerciseMuscleGroup g ON e.exercise_id = g.exercise_id JOIN MuscleGroup m ON g.muscle_group_id = m.muscle_group_id WHERE e.exercise_id = @ExerciseId";
        //    SqlParameter parameter = new SqlParameter("@ExerciseId", SqlDbType.Int);
        //    parameter.Value = exerciseId;
        //    DataTable dt = ketnoi.docdulieu(sql, parameter);
        //    DataList1.DataSource = dt;
        //    DataList1.DataBind();
        //}
    }
}