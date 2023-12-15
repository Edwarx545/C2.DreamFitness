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
    public partial class Findfood : System.Web.UI.Page
    {
        Connector ketnoi = new Connector();
        protected void Page_Load(object sender, EventArgs e)
        {

            //if (!IsPostBack) return;
            BindExerciseData();
        }
        private void BindExerciseData()
        {
            //string sql = "select * from Exercise e join ExerciseMuscleGroup g on e.exercise_id= g.exercise_id join MuscleGroup m on g.muscle_group_id=m.muscle_group_id";
            string sql = "select * from Food";
            DataList1.DataSource = ketnoi.docdulieu(sql);
            DataList1.DataBind();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string searchTerm = txtSearch.Text.ToString().Trim();
            SearchFoodByName(searchTerm);
        }

        private void SearchFoodByName(string searchTerm)
        {
            //string sql = "SELECT * FROM Exercise e JOIN ExerciseMuscleGroup g ON e.exercise_id = g.exercise_id JOIN MuscleGroup m ON g.muscle_group_id = m.muscle_group_id WHERE exercise_name LIKE N'%' + @searchTerm + '%'";
            string sql = "select * from Food WHERE food_item_name LIKE N'%' + @searchTerm + '%'";
            SqlParameter parameter = new SqlParameter("@searchTerm", SqlDbType.NVarChar);
            parameter.Value = searchTerm;
            DataTable dt = ketnoi.docdulieu(sql, parameter);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
        protected void btn_ThongTinFood(object sender, EventArgs e)
        {
            string foodID = ((LinkButton)sender).CommandArgument;
            Context.Items["food_item_id"] = foodID;
            Server.Transfer("FoodDetails.aspx");
        }
    }
}