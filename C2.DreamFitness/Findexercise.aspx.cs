using C2.DreamFitness;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C2.DreamFitness.App_Start
{
    public partial class Findexercise : System.Web.UI.Page
    {
        Connector ketnoi = new Connector();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                BindExerciseData();
            }
        }
        private void BindExerciseData()
        {
            //string sql = "select * from Exercise e join ExerciseMuscleGroup g on e.exercise_id= g.exercise_id join MuscleGroup m on g.muscle_group_id=m.muscle_group_id";
            string sql = "select * from Exercise";
            DataList5.DataSource = ketnoi.docdulieu(sql);
            DataList5.DataBind();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string searchTerm = txtSearch.Text.ToString().Trim();
            SearchExerciseByName(searchTerm);
        }

        private void SearchExerciseByName(string searchTerm)
        {
            //string sql = "SELECT * FROM Exercise e JOIN ExerciseMuscleGroup g ON e.exercise_id = g.exercise_id JOIN MuscleGroup m ON g.muscle_group_id = m.muscle_group_id WHERE exercise_name LIKE N'%' + @searchTerm + '%'";
            string sql = "select * from Exercise WHERE exercise_name LIKE N'%' + @searchTerm + '%'";
            SqlParameter parameter = new SqlParameter("@searchTerm", SqlDbType.NVarChar);
            parameter.Value = searchTerm;
            DataTable dt = ketnoi.docdulieu(sql, parameter);
            DataList5.DataSource = dt;
            DataList5.DataBind();
        }
        protected void btn_ThongTinExercise(object sender, EventArgs e)
        {
            string exerciseID = ((LinkButton)sender).CommandArgument;
            Context.Items["exercise_id"] = exerciseID;
            Server.Transfer("ExerciseDetails.aspx");
        }
    }
}