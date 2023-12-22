using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C2.DreamFitness
{
    public partial class MySchedule : System.Web.UI.Page
    {
        public static string userid;
        public LopKetNoi ketnoi = new LopKetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            userid = GetUserIdFromSession();
            string sql = "select * from UserSchedule where user_id=" + userid + " and schedule_type='workout'";

            DataTable dt = ketnoi.docdulieu(sql);

            if (int.Parse(dt.Rows[0]["monday_morning"].ToString()) > 0)
            {
                
                string exNameSql = "Select * from WorkoutTemplate where workout_template_id = " + int.Parse(dt.Rows[0]["monday_morning"].ToString());
                DataTable ex = ketnoi.docdulieu(exNameSql);
                monday_morning_workout.Text = ex.Rows[0]["workout_template_name"].ToString();
            }
            if (int.Parse(dt.Rows[0]["monday_afternoon"].ToString()) > 0)
            {

                string exNameSql = "Select * from WorkoutTemplate where workout_template_id = " + int.Parse(dt.Rows[0]["monday_afternoon"].ToString());
                DataTable ex = ketnoi.docdulieu(exNameSql);
                monday_afternoon_workout.Text = ex.Rows[0]["workout_template_name"].ToString();
            }
            if (int.Parse(dt.Rows[0]["monday_evening"].ToString()) > 0)
            {

                string exNameSql = "Select * from WorkoutTemplate where workout_template_id = " + int.Parse(dt.Rows[0]["monday_evening"].ToString());
                DataTable ex = ketnoi.docdulieu(exNameSql);
                monday_evening_workout.Text = ex.Rows[0]["workout_template_name"].ToString();
            }


            // Tuesday morning
            if (int.Parse(dt.Rows[0]["tuesday_morning"].ToString()) > 0)
            {
                string exNameSql = "Select * from WorkoutTemplate where workout_template_id = " + int.Parse(dt.Rows[0]["tuesday_morning"].ToString());
                DataTable ex = ketnoi.docdulieu(exNameSql);
                tuesday_morning_workout.Text = ex.Rows[0]["workout_template_name"].ToString();
            }

            // Tuesday afternoon
            if (int.Parse(dt.Rows[0]["tuesday_afternoon"].ToString()) > 0)
            {
                string exNameSql = "Select * from WorkoutTemplate where workout_template_id = " + int.Parse(dt.Rows[0]["tuesday_afternoon"].ToString());
                DataTable ex = ketnoi.docdulieu(exNameSql);
                tuesday_afternoon_workout.Text = ex.Rows[0]["workout_template_name"].ToString();
            }

            // Tuesday evening
            if (int.Parse(dt.Rows[0]["tuesday_evening"].ToString()) > 0)
            {
                string exNameSql = "Select * from WorkoutTemplate where workout_template_id = " + int.Parse(dt.Rows[0]["tuesday_evening"].ToString());
                DataTable ex = ketnoi.docdulieu(exNameSql);
                tuesday_evening_workout.Text = ex.Rows[0]["workout_template_name"].ToString();
            }

            // Wednesday morning
            if (int.Parse(dt.Rows[0]["wednesday_morning"].ToString()) > 0)
            {
                string exNameSql = "Select * from WorkoutTemplate where workout_template_id = " + int.Parse(dt.Rows[0]["wednesday_morning"].ToString());
                DataTable ex = ketnoi.docdulieu(exNameSql);
                wednesday_morning_workout.Text = ex.Rows[0]["workout_template_name"].ToString();
            }

            // Wednesday afternoon
            if (int.Parse(dt.Rows[0]["wednesday_afternoon"].ToString()) > 0)
            {
                string exNameSql = "Select * from WorkoutTemplate where workout_template_id = " + int.Parse(dt.Rows[0]["wednesday_afternoon"].ToString());
                DataTable ex = ketnoi.docdulieu(exNameSql);
                wednesday_afternoon_workout.Text = ex.Rows[0]["workout_template_name"].ToString();
            }

            // Wednesday evening
            if (int.Parse(dt.Rows[0]["wednesday_evening"].ToString()) > 0)
            {
                string exNameSql = "Select * from WorkoutTemplate where workout_template_id = " + int.Parse(dt.Rows[0]["wednesday_evening"].ToString());
                DataTable ex = ketnoi.docdulieu(exNameSql);
                wednesday_evening_workout.Text = ex.Rows[0]["workout_template_name"].ToString();
            }

            // Thursday morning
            if (int.Parse(dt.Rows[0]["thursday_morning"].ToString()) > 0)
            {
                string exNameSql = "Select * from WorkoutTemplate where workout_template_id = " + int.Parse(dt.Rows[0]["thursday_morning"].ToString());
                DataTable ex = ketnoi.docdulieu(exNameSql);
                thursday_morning_workout.Text = ex.Rows[0]["workout_template_name"].ToString();
            }

            // Thursday afternoon
            if (int.Parse(dt.Rows[0]["thursday_afternoon"].ToString()) > 0)
            {
                string exNameSql = "Select * from WorkoutTemplate where workout_template_id = " + int.Parse(dt.Rows[0]["thursday_afternoon"].ToString());
                DataTable ex = ketnoi.docdulieu(exNameSql);
                thursday_afternoon_workout.Text = ex.Rows[0]["workout_template_name"].ToString();
            }

            // Thursday evening
            if (int.Parse(dt.Rows[0]["thursday_evening"].ToString()) > 0)
            {
                string exNameSql = "Select * from WorkoutTemplate where workout_template_id = " + int.Parse(dt.Rows[0]["thursday_evening"].ToString());
                DataTable ex = ketnoi.docdulieu(exNameSql);
                thursday_evening_workout.Text = ex.Rows[0]["workout_template_name"].ToString();
            }

            // Friday morning
            if (int.Parse(dt.Rows[0]["friday_morning"].ToString()) > 0)
            {
                string exNameSql = "Select * from WorkoutTemplate where workout_template_id = " + int.Parse(dt.Rows[0]["friday_morning"].ToString());
                DataTable ex = ketnoi.docdulieu(exNameSql);
                friday_morning_workout.Text = ex.Rows[0]["workout_template_name"].ToString();
            }

            // Friday afternoon
            if (int.Parse(dt.Rows[0]["friday_afternoon"].ToString()) > 0)
            {
                string exNameSql = "Select * from WorkoutTemplate where workout_template_id = " + int.Parse(dt.Rows[0]["friday_afternoon"].ToString());
                DataTable ex = ketnoi.docdulieu(exNameSql);
                friday_afternoon_workout.Text = ex.Rows[0]["workout_template_name"].ToString();
            }

            // Friday evening
            if (int.Parse(dt.Rows[0]["friday_evening"].ToString()) > 0)
            {
                string exNameSql = "Select * from WorkoutTemplate where workout_template_id = " + int.Parse(dt.Rows[0]["friday_evening"].ToString());
                DataTable ex = ketnoi.docdulieu(exNameSql);
                friday_evening_workout.Text = ex.Rows[0]["workout_template_name"].ToString();
            }

            // Saturday morning
            if (int.Parse(dt.Rows[0]["saturday_morning"].ToString()) > 0)
            {
                string exNameSql = "Select * from WorkoutTemplate where workout_template_id = " + int.Parse(dt.Rows[0]["saturday_morning"].ToString());
                DataTable ex = ketnoi.docdulieu(exNameSql);
                saturday_morning_workout.Text = ex.Rows[0]["workout_template_name"].ToString();
            }

            // Saturday afternoon
            if (int.Parse(dt.Rows[0]["saturday_afternoon"].ToString()) > 0)
            {
                string exNameSql = "Select * from WorkoutTemplate where workout_template_id = " + int.Parse(dt.Rows[0]["saturday_afternoon"].ToString());
                DataTable ex = ketnoi.docdulieu(exNameSql);
                saturday_afternoon_workout.Text = ex.Rows[0]["workout_template_name"].ToString();
            }

            // Saturday evening
            if (int.Parse(dt.Rows[0]["saturday_evening"].ToString()) > 0)
            {
                string exNameSql = "Select * from WorkoutTemplate where workout_template_id = " + int.Parse(dt.Rows[0]["saturday_evening"].ToString());
                DataTable ex = ketnoi.docdulieu(exNameSql);
                saturday_evening_workout.Text = ex.Rows[0]["workout_template_name"].ToString();
            }

            // Sunday morning
            if (int.Parse(dt.Rows[0]["sunday_morning"].ToString()) > 0)
            {
                string exNameSql = "Select * from WorkoutTemplate where workout_template_id = " + int.Parse(dt.Rows[0]["sunday_morning"].ToString());
                DataTable ex = ketnoi.docdulieu(exNameSql);
                sunday_morning_workout.Text = ex.Rows[0]["workout_template_name"].ToString();
            }

            // Sunday afternoon
            if (int.Parse(dt.Rows[0]["sunday_afternoon"].ToString()) > 0)
            {
                string exNameSql = "Select * from WorkoutTemplate where workout_template_id = " + int.Parse(dt.Rows[0]["sunday_afternoon"].ToString());
                DataTable ex = ketnoi.docdulieu(exNameSql);
                sunday_afternoon_workout.Text = ex.Rows[0]["workout_template_name"].ToString();
            }

            // Sunday evening
            if (int.Parse(dt.Rows[0]["sunday_evening"].ToString()) > 0)
            {
                string exNameSql = "Select * from WorkoutTemplate where workout_template_id = " + int.Parse(dt.Rows[0]["sunday_evening"].ToString());
                DataTable ex = ketnoi.docdulieu(exNameSql);
                sunday_evening_workout.Text = ex.Rows[0]["workout_template_name"].ToString();
            }


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