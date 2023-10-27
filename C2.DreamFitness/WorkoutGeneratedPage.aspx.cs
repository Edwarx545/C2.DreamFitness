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
        Connector ketnoi = new Connector();
        string[] muscleGroups;
        List<Exercise> exercises = new List<Exercise>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            muscleGroups = Context.Items["muscleGroups"] as string[];
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
            Label1.Text = printExercises();
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
            for (int i = 0; i < 3; i++)
            {
                getExercises(1, ConstantData.ISOLATION_TEXT, muscleGroups[i]);
            }
            for (int i = 3; i < 6; i++)
            {
                getExercises(1, ConstantData.COMPOUND_TEXT, muscleGroups[i]);
            }
            for (int i = 0; i < 1; i++)
            {
                getFullBodyExercises(1, ConstantData.UPPER_BODY_TEXT);
                getFullBodyExercises(1, ConstantData.LOWER_BODY_TEXT);
            }
        }
        protected void getExercises(int index, string type, string muscleGroup)
        {
            string sql = "";
            sql = "SELECT DISTINCT TOP (" + index + ") dbo.Exercise.exercise_id, dbo.Exercise.exercise_name, dbo.MuscleGroup.muscle_group_name, dbo.Exercise.exercise_category\r\nFROM     dbo.Exercise INNER JOIN\r\n                  dbo.ExerciseMuscleGroup ON dbo.Exercise.exercise_id = dbo.ExerciseMuscleGroup.exercise_id INNER JOIN\r\n                  dbo.MuscleGroup ON dbo.ExerciseMuscleGroup.muscle_group_id = dbo.MuscleGroup.muscle_group_id\r\nWHERE  (dbo.MuscleGroup.muscle_group_name = N'" + muscleGroup + "') AND (dbo.Exercise.exercise_category = N'" + type + "')";

            DataTable tb = ketnoi.docdulieu(sql);
            foreach (DataRow row in tb.Rows)
            {
                string tempId = row["exercise_id"].ToString();
                string tempName = row["exercise_name"].ToString();
                Exercise newEx = new Exercise(tempId, tempName);
                exercises.Add(newEx);
            }
        }
        protected void getFullBodyExercises(int index, string type)
        {
            string sql = "";
            sql = "SELECT DISTINCT TOP (" + index + ") exercise_id, exercise_name, exercise_category\r\nFROM     dbo.Exercise\r\nWHERE  (exercise_category = N'" + type + "')";

            DataTable tb = ketnoi.docdulieu(sql);
            foreach (DataRow row in tb.Rows)
            {
                string tempId = row["exercise_id"].ToString();
                string tempName = row["exercise_name"].ToString();
                Exercise newEx = new Exercise(tempId, tempName);
                exercises.Add(newEx);
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