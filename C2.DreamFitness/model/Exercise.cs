using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

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

    }
}