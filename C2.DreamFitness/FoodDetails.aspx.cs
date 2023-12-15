using C2.DreamFitness.model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C2.DreamFitness
{
    public partial class FoodDetails : System.Web.UI.Page
    {
        Connector ketnoi = new Connector();
        string foodid;
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (IsPostBack) return;
            foodid = Context.Items["food_item_id"] + "";
            string sql = "SELECT * FROM food WHERE food_item_id ='" + foodid + "'";
            DataList1.DataSource = ketnoi.docdulieu(sql);
            DataList1.DataBind();
            string sql2 = "select * from food f join Recipe r on f.food_item_id= r.food_item_id where f.food_item_id = '" + foodid + "'";
            //DataTable dt1 = ketnoi.docdulieu(sql2);
            DataList2.DataSource = ketnoi.docdulieu(sql2);
            DataList2.DataBind();

        }
        protected List<string> ExtractSteps(string steps)
        {
            List<string> stepList = new List<string>();

            // Split the steps based on a delimiter, for example, ". "
            string[] stepArray = steps.Split(new string[] { ". " }, StringSplitOptions.RemoveEmptyEntries);

            // Add the steps to the list
            stepList.AddRange(stepArray);

            return stepList;
        }

        protected void RepeaterSteps_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Label LabelStep = e.Item.FindControl("LabelStep") as Label;
                if (LabelStep != null)
                {
                    string step = (string)e.Item.DataItem;
                    LabelStep.Text = "Step " + (e.Item.ItemIndex + 1) + ": " + step;
                }
            }
        }
    }
}