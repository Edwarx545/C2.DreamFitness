using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Linq;

namespace C2.DreamFitness.model
{
    public class Exercise
    {
        public string exerciseId { get; set; }
        public string exerciseName { get; set; }
        public Exercise(string exerciseId, string exerciseName)
        {
            this.exerciseId = exerciseId;
            this.exerciseName = exerciseName;
        }
        public override bool Equals(object obj)
        {
            if (obj == null || GetType() != obj.GetType())
                return false;

            Exercise other = (Exercise)obj;
            return exerciseName == other.exerciseName;
        }

        public override int GetHashCode()
        {
            return exerciseName.GetHashCode();
        }
    }
}