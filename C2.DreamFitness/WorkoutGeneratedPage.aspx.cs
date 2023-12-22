using C2.DreamFitness.constant;
using C2.DreamFitness.model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C2.DreamFitness
{
    public partial class WorkoutGeneratedPage : System.Web.UI.Page
    {
        public Connector ketnoi = new Connector();
        public string[] muscleGroups;
        public List<Exercise> exercises = new List<Exercise>();
        public string age;
        public string weight;
        public string gender;
        public static string fitnessLevel;
        public string userId;
        string userid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            age = Request.QueryString["age"];
            weight = Request.QueryString["weight"];
            gender = Request.QueryString["gender"];
            fitnessLevel = Request.QueryString["fitnessLevel"];
            string muscleGroupsJson = Request.QueryString["muscleGroups"];
            muscleGroups = Newtonsoft.Json.JsonConvert.DeserializeObject<string[]>(muscleGroupsJson);

            Exercises = exercises;

            if (muscleGroups.Length == 0)
            {
                getFullBodyExercises();
            }
            else if (muscleGroups.Length == 1)
            {
                getOneIsolationOneCompoundAndFourFullBody(muscleGroups);
            }
            else if (muscleGroups.Length == 2)
            {
                getTwoDifferentMuscleIsolationAndFourFullBody(muscleGroups);
            }
            else if (muscleGroups.Length == 3)
            {
                getThreeDifferentMuscleIsolationAndFourFullBody(muscleGroups);
            }
            else if (muscleGroups.Length == 4)
            {
                getFourDifferentMuscleIsolationAndFourFullBody(muscleGroups);
            }
            else
            {
                get3FirstDifferentMuscleIsolationAnd3CompoundAnd2FullBody(muscleGroups);
            }

            removeDups();

            bindData();

            errorMessage.Visible = false;
            Label2.Visible = false;
            Label2.Text = muscleGroups.Length + "";
        }

        protected void bindData()
        {
            DataList1.DataSource = ketnoi.docdulieu(getExerciseQuery());
            DataList1.DataBind();
        }

        protected void removeDups()
        {
            for (int i = 0; i < exercises.Count; i++)
            {
                for (int j = i + 1; j < exercises.Count; j++)
                {
                    if (exercises[i].exerciseName == exercises[j].exerciseName)
                    {
                        exercises.RemoveAt(j);
                        j--;
                    }
                }
            }

        }

        protected void getFullBodyExercises()
        {
            getFullBodyExercises(3, ConstantData.UPPER_BODY_TEXT);
            getFullBodyExercises(3, ConstantData.LOWER_BODY_TEXT);
        }

        protected void getOneIsolationOneCompoundAndFourFullBody(string[] muscleGroups)
        {

            getExercises(1, ConstantData.ISOLATION_TEXT, muscleGroups[0]);
            getExercises(1, ConstantData.COMPOUND_TEXT, muscleGroups[0]);

            getFullBodyExercises(2, ConstantData.UPPER_BODY_TEXT);
            getFullBodyExercises(2, ConstantData.LOWER_BODY_TEXT);

        }

        protected void getTwoDifferentMuscleIsolationAndFourFullBody(string[] muscleGroups)
        {

            getExercises(1, ConstantData.ISOLATION_TEXT, muscleGroups[0]);
            getExercises(1, ConstantData.ISOLATION_TEXT, muscleGroups[1]);

            getFullBodyExercises(2, ConstantData.UPPER_BODY_TEXT);
            getFullBodyExercises(2, ConstantData.LOWER_BODY_TEXT);

        }

        protected void getThreeDifferentMuscleIsolationAndFourFullBody(string[] muscleGroups)
        {
            for (int i = 0; i < 3; i++)
            {
                getExercises(1, ConstantData.ISOLATION_TEXT, muscleGroups[i]);
            }
            getFullBodyExercises(2, ConstantData.UPPER_BODY_TEXT);
            getFullBodyExercises(2, ConstantData.LOWER_BODY_TEXT);

        }

        protected void getFourDifferentMuscleIsolationAndFourFullBody(string[] muscleGroups)
        {
            for (int i = 0; i < 4; i++)
            {
                getExercises(1, ConstantData.ISOLATION_TEXT, muscleGroups[i]);
            }
            for (int i = 0; i < 1; i++)
            {
                getFullBodyExercises(1, ConstantData.UPPER_BODY_TEXT);
                getFullBodyExercises(1, ConstantData.LOWER_BODY_TEXT);
            }
        }

        protected void get3FirstDifferentMuscleIsolationAnd3CompoundAnd2FullBody(string[] muscleGroups)
        {

            for (int i = 0; i < muscleGroups.Length; i++)
            {
                if (i < 3)
                {
                    getExercises(1, ConstantData.ISOLATION_TEXT, muscleGroups[i]);
                }
                else if (i < 6)
                {
                    getExercises(1, ConstantData.COMPOUND_TEXT, muscleGroups[i]);
                }
                else break;
            }
            getFullBodyExercises(1, ConstantData.UPPER_BODY_TEXT);
            getFullBodyExercises(1, ConstantData.LOWER_BODY_TEXT);
        }

        protected string getExerciseInputStringQuery()
        {
            String query = "AND(dbo.Exercise.exercise_gender LIKE '%" + gender + "%') AND(dbo.Exercise.exercise_age_start < " + age.Trim().ToString() + " AND dbo.Exercise.exercise_age_end > " + age.Trim().ToString() + ")";
            return query;
        }
        protected void getExercises(int index, string type, string muscleGroup)
        {
            string sql = "";
            sql = "SELECT DISTINCT TOP (" + index + ") dbo.Exercise.exercise_id, dbo.Exercise.exercise_name, dbo.MuscleGroup.muscle_group_name, dbo.Exercise.exercise_category\r\nFROM     dbo.Exercise INNER JOIN\r\n                  dbo.ExerciseMuscleGroup ON dbo.Exercise.exercise_id = dbo.ExerciseMuscleGroup.exercise_id INNER JOIN\r\n                  dbo.MuscleGroup ON dbo.ExerciseMuscleGroup.muscle_group_id = dbo.MuscleGroup.muscle_group_id\r\nWHERE  (dbo.MuscleGroup.muscle_group_name = N'" + muscleGroup + "') AND (dbo.Exercise.exercise_category = N'" + type + "')" + getExerciseInputStringQuery();

            try
            {
                DataTable tb = ketnoi.docdulieu(sql);
                foreach (DataRow row in tb.Rows)
                {
                    string tempId = row["exercise_id"].ToString();
                    string tempName = row["exercise_name"].ToString();
                    Exercise newEx = new Exercise(tempId, tempName);
                    exercises.Add(newEx);
                }
            }
            catch (Exception e)
            {
                Label2.Text = "Oops! Something went wrong!\nPlease try again!";
            }
        }
        protected void getFullBodyExercises(int index, string type)
        {
            string sql = "";
            sql = "SELECT DISTINCT TOP (" + index + ") exercise_id, exercise_name, exercise_category\r\nFROM     dbo.Exercise\r\nWHERE  (exercise_category = N'" + type + "')" + getExerciseInputStringQuery();
            try
            {
                DataTable tb = ketnoi.docdulieu(sql);
                foreach (DataRow row in tb.Rows)
                {
                    string tempId = row["exercise_id"].ToString();
                    string tempName = row["exercise_name"].ToString();
                    Exercise newEx = new Exercise(tempId, tempName);
                    exercises.Add(newEx);
                }
            }
            catch (Exception e)
            {
                Label2.Text = "Oops! Something went wrong!\nPlease try again!";
            }
        }

        protected string printExercises()
        {
            string str = "";
            foreach (Exercise exercise in exercises)
            {
                str += "ID: " + exercise.exerciseId + " Name: " + exercise.exerciseName + "<br />";

            }
            return str;
        }

        protected String getExerciseQuery()
        {
            String query = "select * from Exercise where ";
            string exerciseIds = "";

            for (int i = 0; i < exercises.Count; i++)
            {
                exerciseIds += "exercise_id = " + exercises[i].exerciseId;
                if (exercises.Count - 1 != i)
                {
                    exerciseIds += " or ";
                }
            }

            return query + exerciseIds;
        }

        protected string GetExerciseRep(object exerciseName)
        {
            String sql = "SELECT DISTINCT * \r\n FROM     dbo.Exercise\r\nWHERE  (exercise_name = '" + exerciseName.ToString() + "') ";
            DataTable dt = ketnoi.docdulieu(sql);

            string rep = null;
            if (fitnessLevel == "Beginner")
            {
                rep = dt.Rows[0]["basic_rep"].ToString();
            }
            else if (fitnessLevel == "intermediate")
            {
                rep = dt.Rows[0]["intermidiate_rep"].ToString();
            }
            else if (fitnessLevel == "advanced")
            {
                rep = dt.Rows[0]["advanced_rep"].ToString();
            }

            return rep;
        }

        protected string GetExerciseSet(object exerciseName)
        {
            String sql = "SELECT DISTINCT * \r\n FROM     dbo.Exercise\r\nWHERE  (exercise_name = '" + exerciseName.ToString() + "') ";
            DataTable dt = ketnoi.docdulieu(sql);

            string rep = dt.Rows[0]["exercise_set"].ToString(); ;
            return rep;
        }

        private string GetUserIdFromSession()
        {
            if (Request.Cookies["AuthCookie"] != null)
            {
                return userid = Request.Cookies["authCookie"]["userid"];
            }
            return null;
        }
        protected void SaveWorkout(object sender, EventArgs e)
        {
            exercises = Exercises;
            userId = GetUserIdFromSession();
            if (title.Text.Length < 10)
            {
                errorMessage.Visible = true;
                return;
            }
            else
            {
                string createWorkoutSql = "INSERT INTO [dbo].[WorkoutTemplate] ([workout_template_name], [workout_template_desc], [workout_template_gender], [workout_template_type], [workout_template_difficulty], [workout_template_img], [workout_template_equipment], [workout_template_age], [workout_template_user_id]) VALUES (N'" + title.Text + "',N'" + desc.Text + "',null,null,null,null,null,null, " + userId + ")";
                ketnoi.CapNhat(createWorkoutSql);

                string getWorkoutIdSql = "SELECT TOP 1 * \r\nFROM WorkoutTemplate\r\nWHERE workout_template_user_id = " + userId + "\r\nORDER BY workout_template_id DESC;";
                DataTable dt = ketnoi.docdulieu(getWorkoutIdSql);

                string workoutId = dt.Rows[0]["workout_template_id"].ToString();

                string addExercisesSQL = "";

                string addUserWorkout = "INSERT INTO [dbo].[UserGeneratedWorkout] ([user_id], [workout_template_id], [user_fitness_level]) VALUES(" + userId + ", " + workoutId + ",'" + fitnessLevel + "')\r\n";

                ketnoi.CapNhat(addUserWorkout);

                for (int i = 0; i < exercises.Count; i++)
                {
                    string sql = "INSERT INTO [dbo].[WorkoutTemplateExercise] ([workout_template_id], [exercise_id]) VALUES (" + workoutId + ", " + exercises[i].exerciseId + ") \r\n";

                    addExercisesSQL += sql;
                }
                ketnoi.CapNhat(addExercisesSQL);

                Response.Redirect("MyWorkouts.aspx");
            }

        }

        public List<Exercise> Exercises
        {
            get
            {
                if (Session["Exercises"] == null)
                {
                    Session["Exercises"] = new List<Exercise>();
                }
                return (List<Exercise>)Session["Exercises"];
            }
            set
            {
                Session["Exercises"] = value;
            }
        }

        protected string getMuscleGroup(string muscle)
        {
            switch (muscle)
            {
                case "Shoulders":
                    return "shoulders";
                case "Chest":
                    return "chest";
                case "Glutes":
                    return "glutes";
                case "Hamstrings":
                    return "hamstrings";
                case "Lowerback":
                    return "lowerback";
                case "Lats":
                    return "lats";
                case "Traps-Middle":
                    return "traps-middle";
                case "Traps":
                    return "traps";
                case "Calves":
                    return "calves";
                case "Triceps":
                    return "triceps";
                case "Forearms":
                    return "forearms";
                case "Abdominals":
                    return "abdominals";
                case "Obliques":
                    return "obliques";
                case "Biceps":
                    return "biceps";
                case "Quads":
                    return "quads";
                default:
                    return "unknown";
            }
        }
    }
}