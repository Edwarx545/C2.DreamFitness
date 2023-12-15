using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C2.DreamFitness
{
    public partial class UsersWorkoutInformation : System.Web.UI.Page
    {
        Connector ketnoi = new Connector();
        public static string workoutId;
        public static string userId;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            /*workoutId = Context.Items["workout_template_id"] + "";*/
            workoutId = Request.QueryString["workoutId"];

            string sql = "select * from WorkoutTemplate where workout_template_id='" + workoutId + "'";
            DataList1.DataSource = ketnoi.docdulieu(sql);
            DataList1.DataBind();

            string sqlForExercise = "select distinct exercise_name, exercise_desc, exercise_img from WorkoutTemplateExercise wte join Exercise e on wte.exercise_id=e.exercise_id where wte.workout_template_id = " + workoutId;
            DataList2.DataSource = ketnoi.docdulieu(sqlForExercise);
            DataList2.DataBind();
        }

        protected void addToSchedule(object sender, EventArgs e)
        {
            string mondayMorningChecked = MondayMorning.Checked ? workoutId : "";
            string mondayAfternoonChecked = MondayAfternoon.Checked ? workoutId : "";
            string mondayEveningChecked = MondayEvening.Checked ? workoutId : "";

            string tuesdayMorningChecked = TuesdayMorning.Checked ? workoutId : "";
            string tuesdayAfternoonChecked = TuesdayAfternoon.Checked ? workoutId : "";
            string tuesdayEveningChecked = TuesdayEvening.Checked ? workoutId : "";

            string wednesdayMorningChecked = WednesdayMorning.Checked ? workoutId : "";
            string wednesdayAfternoonChecked = WednesdayAfternoon.Checked ? workoutId : "";
            string wednesdayEveningChecked = WednesdayEvening.Checked ? workoutId : "";

            string thursdayMorningChecked = ThursdayMorning.Checked ? workoutId : "";
            string thursdayAfternoonChecked = ThursdayAfternoon.Checked ? workoutId : "";
            string thursdayEveningChecked = ThursdayEvening.Checked ? workoutId : "";

            string fridayMorningChecked = FridayMorning.Checked ? workoutId : "";
            string fridayAfternoonChecked = FridayAfternoon.Checked ? workoutId : "";
            string fridayEveningChecked = FridayEvening.Checked ? workoutId : "";

            string saturdayMorningChecked = SaturdayMorning.Checked ? workoutId : "";
            string saturdayAfternoonChecked = SaturdayAfternoon.Checked ? workoutId : "";
            string saturdayEveningChecked = SaturdayEvening.Checked ? workoutId : "";

            string sundayMorningChecked = SundayMorning.Checked ? workoutId : "";
            string sundayAfternoonChecked = SundayAfternoon.Checked ? workoutId : "";
            string sundayEveningChecked = SundayEvening.Checked ? workoutId : "";

            userId = "1";
            string mergeQuery = $@"
    MERGE INTO [dbo].[UserSchedule] AS target
    USING (VALUES 
        ({userId}, N'workout', 
        '{mondayMorningChecked}', '{mondayAfternoonChecked}', '{mondayEveningChecked}', 
        '{tuesdayMorningChecked}', '{tuesdayAfternoonChecked}', '{tuesdayEveningChecked}', 
        '{wednesdayMorningChecked}', '{wednesdayAfternoonChecked}', '{wednesdayEveningChecked}', 
        '{thursdayMorningChecked}', '{thursdayAfternoonChecked}', '{thursdayEveningChecked}', 
        '{fridayMorningChecked}', '{fridayAfternoonChecked}', '{fridayEveningChecked}', 
        '{saturdayMorningChecked}', '{saturdayAfternoonChecked}', '{saturdayEveningChecked}', 
        '{sundayMorningChecked}', '{sundayAfternoonChecked}', '{sundayEveningChecked}')
    ) AS source([user_id], [schedule_type], [monday_morning], [monday_afternoon], [monday_evening], 
        [tuesday_morning], [tuesday_afternoon], [tuesday_evening], 
        [wednesday_morning], [wednesday_afternoon], [wednesday_evening], 
        [thursday_morning], [thursday_afternoon], [thursday_evening], 
        [friday_morning], [friday_afternoon], [friday_evening], 
        [saturday_morning], [saturday_afternoon], [saturday_evening], 
        [sunday_morning], [sunday_afternoon], [sunday_evening])
    ON target.[user_id] = source.[user_id]
    WHEN MATCHED THEN
        UPDATE SET 
            [schedule_type] = source.[schedule_type],
            [monday_morning] = source.[monday_morning],
            [monday_afternoon] = source.[monday_afternoon],
            [monday_evening] = source.[monday_evening],
            [tuesday_morning] = source.[tuesday_morning],
            [tuesday_afternoon] = source.[tuesday_afternoon],
            [tuesday_evening] = source.[tuesday_evening],
            [wednesday_morning] = source.[wednesday_morning],
            [wednesday_afternoon] = source.[wednesday_afternoon],
            [wednesday_evening] = source.[wednesday_evening],
            [thursday_morning] = source.[thursday_morning],
            [thursday_afternoon] = source.[thursday_afternoon],
            [thursday_evening] = source.[thursday_evening],
            [friday_morning] = source.[friday_morning],
            [friday_afternoon] = source.[friday_afternoon],
            [friday_evening] = source.[friday_evening],
            [saturday_morning] = source.[saturday_morning],
            [saturday_afternoon] = source.[saturday_afternoon],
            [saturday_evening] = source.[saturday_evening],
            [sunday_morning] = source.[sunday_morning],
            [sunday_afternoon] = source.[sunday_afternoon],
            [sunday_evening] = source.[sunday_evening]
    WHEN NOT MATCHED THEN
        INSERT ([user_id], [schedule_type], [monday_morning], [monday_afternoon], [monday_evening], 
            [tuesday_morning], [tuesday_afternoon], [tuesday_evening], 
            [wednesday_morning], [wednesday_afternoon], [wednesday_evening], 
            [thursday_morning], [thursday_afternoon], [thursday_evening], 
            [friday_morning], [friday_afternoon], [friday_evening], 
            [saturday_morning], [saturday_afternoon], [saturday_evening], 
            [sunday_morning], [sunday_afternoon], [sunday_evening])
        VALUES 
            (source.[user_id], source.[schedule_type], source.[monday_morning], source.[monday_afternoon], source.[monday_evening], 
            source.[tuesday_morning], source.[tuesday_afternoon], source.[tuesday_evening], 
            source.[wednesday_morning], source.[wednesday_afternoon], source.[wednesday_evening], 
            source.[thursday_morning], source.[thursday_afternoon], source.[thursday_evening], 
            source.[friday_morning], source.[friday_afternoon], source.[friday_evening], 
            source.[saturday_morning], source.[saturday_afternoon], source.[saturday_evening], 
            source.[sunday_morning], source.[sunday_afternoon], source.[sunday_evening]);";


            ketnoi.CapNhat(mergeQuery);
        }

        protected void customizeWorkout(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {

        }
    }
}