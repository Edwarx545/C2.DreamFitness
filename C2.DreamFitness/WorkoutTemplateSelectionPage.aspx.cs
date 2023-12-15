using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C2.DreamFitness
{
    public partial class WorkoutTemplateSelectionPage : System.Web.UI.Page
    {
        Connector ketnoi = new Connector();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            string sql;
            sql = "select * from WorkoutTemplate";


            DataList1.DataSource = ketnoi.docdulieu(sql);
            DataList1.DataBind();
        }
        protected void btnXemThongTin_Click(object sender, EventArgs e)
        {
            string workoutId = ((LinkButton)sender).CommandArgument;
            Context.Items["workout_template_id"] = workoutId;
            Server.Transfer("WorkoutInformationPage.aspx");
        }
    }
}