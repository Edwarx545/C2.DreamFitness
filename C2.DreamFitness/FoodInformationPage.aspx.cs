using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace C2.DreamFitness
{
    public partial class FoodInformationPage : System.Web.UI.Page
    {
        Connector ketnoi = new Connector();
        public static string dietId;
        protected void Page_Load(object sender, EventArgs e)
        {
            dietId = Request.QueryString["dietId"];
            string sql = "select * from DietTemplate where DietId='" + dietId + "'";
            DataList1.DataSource = ketnoi.docdulieu(sql);
            DataList1.DataBind();

            string sqlForMondayBF = "SELECT dbo.DietTemplate.[Monday-BF], dbo.Food.food_item_id,dbo.Food.food_item_name, dbo.Food.food_image FROM dbo.DietTemplate INNER JOIN  dbo.Food ON dbo.DietTemplate.[Monday-BF] = dbo.Food.food_item_id WHERE (dbo.DietTemplate.DietID = " + dietId + ")";
            DataList3.DataSource = ketnoi.docdulieu(sqlForMondayBF);
            DataList3.DataBind();

            string sqlForMondayLN = "SELECT dbo.DietTemplate.[Monday-LN], dbo.Food.food_item_id,dbo.Food.food_item_name, dbo.Food.food_image FROM dbo.DietTemplate INNER JOIN  dbo.Food ON dbo.DietTemplate.[Monday-LN] = dbo.Food.food_item_id WHERE (dbo.DietTemplate.DietID = " + dietId + ")";
            DataList4.DataSource = ketnoi.docdulieu(sqlForMondayLN);
            DataList4.DataBind();

            string sqlForMondayDN = "SELECT dbo.DietTemplate.[Monday-DN], dbo.Food.food_item_id,dbo.Food.food_item_name, dbo.Food.food_image FROM dbo.DietTemplate INNER JOIN  dbo.Food ON dbo.DietTemplate.[Monday-DN] = dbo.Food.food_item_id WHERE (dbo.DietTemplate.DietID = " + dietId + ")";
            DataList5.DataSource = ketnoi.docdulieu(sqlForMondayDN);
            DataList5.DataBind();

            string sqlForTuesdayBF = "SELECT dbo.DietTemplate.[Tuesday-BF], dbo.Food.food_item_id,dbo.Food.food_item_name, dbo.Food.food_image FROM dbo.DietTemplate INNER JOIN  dbo.Food ON dbo.DietTemplate.[Tuesday-BF] = dbo.Food.food_item_id WHERE (dbo.DietTemplate.DietID = " + dietId + ")";
            DataList6.DataSource = ketnoi.docdulieu(sqlForTuesdayBF);
            DataList6.DataBind();

            string sqlForTuesdayLN = "SELECT dbo.DietTemplate.[Tuesday-LN], dbo.Food.food_item_id,dbo.Food.food_item_name, dbo.Food.food_image FROM dbo.DietTemplate INNER JOIN  dbo.Food ON dbo.DietTemplate.[Tuesday-LN] = dbo.Food.food_item_id WHERE (dbo.DietTemplate.DietID = " + dietId + ")";
            DataList7.DataSource = ketnoi.docdulieu(sqlForTuesdayLN);
            DataList7.DataBind();

            string sqlForTuesdayDN = "SELECT dbo.DietTemplate.[Tuesday-DN], dbo.Food.food_item_id,dbo.Food.food_item_name, dbo.Food.food_image FROM dbo.DietTemplate INNER JOIN  dbo.Food ON dbo.DietTemplate.[Tuesday-DN] = dbo.Food.food_item_id WHERE (dbo.DietTemplate.DietID = " + dietId + ")";
            DataList8.DataSource = ketnoi.docdulieu(sqlForTuesdayDN);
            DataList8.DataBind();

            string sqlForWednessdayBF = "SELECT dbo.DietTemplate.[Wednesday-BF], dbo.Food.food_item_id,dbo.Food.food_item_name, dbo.Food.food_image FROM dbo.DietTemplate INNER JOIN  dbo.Food ON dbo.DietTemplate.[Wednesday-BF] = dbo.Food.food_item_id WHERE (dbo.DietTemplate.DietID = " + dietId + ")";
            DataList9.DataSource = ketnoi.docdulieu(sqlForWednessdayBF);
            DataList9.DataBind();

            string sqlForWednessdayLN = "SELECT dbo.DietTemplate.[Wednesday-LN], dbo.Food.food_item_id,dbo.Food.food_item_name, dbo.Food.food_image FROM dbo.DietTemplate INNER JOIN  dbo.Food ON dbo.DietTemplate.[Wednesday-LN] = dbo.Food.food_item_id WHERE (dbo.DietTemplate.DietID = " + dietId + ")";
            DataList10.DataSource = ketnoi.docdulieu(sqlForWednessdayLN);
            DataList10.DataBind();

            string sqlForWednessdayDN = "SELECT dbo.DietTemplate.[Wednesday-DN], dbo.Food.food_item_id,dbo.Food.food_item_name, dbo.Food.food_image FROM dbo.DietTemplate INNER JOIN  dbo.Food ON dbo.DietTemplate.[Wednesday-DN] = dbo.Food.food_item_id WHERE (dbo.DietTemplate.DietID = " + dietId + ")";
            DataList11.DataSource = ketnoi.docdulieu(sqlForWednessdayDN);
            DataList11.DataBind();

            string sqlForThursdayBF = "SELECT dbo.DietTemplate.[Thursday-BF], dbo.Food.food_item_id,dbo.Food.food_item_name, dbo.Food.food_image FROM dbo.DietTemplate INNER JOIN  dbo.Food ON dbo.DietTemplate.[Thursday-BF] = dbo.Food.food_item_id WHERE (dbo.DietTemplate.DietID = " + dietId + ")";
            DataList12.DataSource = ketnoi.docdulieu(sqlForThursdayBF);
            DataList12.DataBind();

            string sqlForThursdayLN = "SELECT dbo.DietTemplate.[Thursday-LN], dbo.Food.food_item_id,dbo.Food.food_item_name, dbo.Food.food_image FROM dbo.DietTemplate INNER JOIN  dbo.Food ON dbo.DietTemplate.[Thursday-LN] = dbo.Food.food_item_id WHERE (dbo.DietTemplate.DietID = " + dietId + ")";
            DataList13.DataSource = ketnoi.docdulieu(sqlForThursdayLN);
            DataList13.DataBind();

            string sqlForThursdayDN = "SELECT dbo.DietTemplate.[Thursday-DN], dbo.Food.food_item_id,dbo.Food.food_item_name, dbo.Food.food_image FROM dbo.DietTemplate INNER JOIN  dbo.Food ON dbo.DietTemplate.[Thursday-DN] = dbo.Food.food_item_id WHERE (dbo.DietTemplate.DietID = " + dietId + ")";
            DataList14.DataSource = ketnoi.docdulieu(sqlForThursdayDN);
            DataList14.DataBind();

            string sqlForFridayBF = "SELECT dbo.DietTemplate.[Friday-BF], dbo.Food.food_item_id,dbo.Food.food_item_name, dbo.Food.food_image FROM dbo.DietTemplate INNER JOIN  dbo.Food ON dbo.DietTemplate.[Friday-BF] = dbo.Food.food_item_id WHERE (dbo.DietTemplate.DietID = " + dietId + ")";
            DataList15.DataSource = ketnoi.docdulieu(sqlForFridayBF);
            DataList15.DataBind();

            string sqlForFridayLN = "SELECT dbo.DietTemplate.[Friday-LN], dbo.Food.food_item_id,dbo.Food.food_item_name, dbo.Food.food_image FROM dbo.DietTemplate INNER JOIN  dbo.Food ON dbo.DietTemplate.[Friday-LN] = dbo.Food.food_item_id WHERE (dbo.DietTemplate.DietID = " + dietId + ")";
            DataList16.DataSource = ketnoi.docdulieu(sqlForFridayLN);
            DataList16.DataBind();

            string sqlForFridayDN = "SELECT dbo.DietTemplate.[Friday-DN], dbo.Food.food_item_id,dbo.Food.food_item_name, dbo.Food.food_image FROM dbo.DietTemplate INNER JOIN  dbo.Food ON dbo.DietTemplate.[Friday-DN] = dbo.Food.food_item_id WHERE (dbo.DietTemplate.DietID = " + dietId + ")";
            DataList17.DataSource = ketnoi.docdulieu(sqlForFridayDN);
            DataList17.DataBind();

            string sqlForSaturdayBF = "SELECT dbo.DietTemplate.[Saturday-BF], dbo.Food.food_item_id,dbo.Food.food_item_name, dbo.Food.food_image FROM dbo.DietTemplate INNER JOIN  dbo.Food ON dbo.DietTemplate.[Saturday-BF] = dbo.Food.food_item_id WHERE (dbo.DietTemplate.DietID = " + dietId + ")";
            DataList18.DataSource = ketnoi.docdulieu(sqlForSaturdayBF);
            DataList18.DataBind();

            string sqlForSaturdayLN = "SELECT dbo.DietTemplate.[Saturday-LN], dbo.Food.food_item_id,dbo.Food.food_item_name, dbo.Food.food_image FROM dbo.DietTemplate INNER JOIN  dbo.Food ON dbo.DietTemplate.[Saturday-LN] = dbo.Food.food_item_id WHERE (dbo.DietTemplate.DietID = " + dietId + ")";
            DataList19.DataSource = ketnoi.docdulieu(sqlForSaturdayLN);
            DataList19.DataBind();

            string sqlForSaturdayDN = "SELECT dbo.DietTemplate.[Saturday-DN], dbo.Food.food_item_id,dbo.Food.food_item_name, dbo.Food.food_image FROM dbo.DietTemplate INNER JOIN  dbo.Food ON dbo.DietTemplate.[Saturday-DN] = dbo.Food.food_item_id WHERE (dbo.DietTemplate.DietID = " + dietId + ")";
            DataList20.DataSource = ketnoi.docdulieu(sqlForSaturdayDN);
            DataList20.DataBind();

            string sqlForSundayBF = "SELECT dbo.DietTemplate.[Sunday-BF], dbo.Food.food_item_id,dbo.Food.food_item_name, dbo.Food.food_image FROM dbo.DietTemplate INNER JOIN  dbo.Food ON dbo.DietTemplate.[Sunday-BF] = dbo.Food.food_item_id WHERE (dbo.DietTemplate.DietID = " + dietId + ")";
            DataList21.DataSource = ketnoi.docdulieu(sqlForSundayBF);
            DataList21.DataBind();

            string sqlForSundayLN = "SELECT dbo.DietTemplate.[Sunday-LN], dbo.Food.food_item_id,dbo.Food.food_item_name, dbo.Food.food_image FROM dbo.DietTemplate INNER JOIN  dbo.Food ON dbo.DietTemplate.[Sunday-LN] = dbo.Food.food_item_id WHERE (dbo.DietTemplate.DietID = " + dietId + ")";
            DataList22.DataSource = ketnoi.docdulieu(sqlForSundayLN);
            DataList22.DataBind();

            string sqlForSundayDN = "SELECT dbo.DietTemplate.[Sunday-DN], dbo.Food.food_item_id,dbo.Food.food_item_name, dbo.Food.food_image FROM dbo.DietTemplate INNER JOIN  dbo.Food ON dbo.DietTemplate.[Sunday-DN] = dbo.Food.food_item_id WHERE (dbo.DietTemplate.DietID = " + dietId + ")";
            DataList23.DataSource = ketnoi.docdulieu(sqlForSundayDN);
            DataList23.DataBind();

        }

        protected void Label1_Click(object sender, EventArgs e)
        {
            string foodID = ((LinkButton)sender).CommandArgument;
            Context.Items["food_item_id"] = foodID;
            Server.Transfer("FoodDetails.aspx");
        }

        protected void Label4_Click(object sender, EventArgs e)
        {
            string foodID = ((LinkButton)sender).CommandArgument;
            Context.Items["food_item_id"] = foodID;
            Server.Transfer("FoodDetails.aspx");
        }

        protected void Label7_Click(object sender, EventArgs e)
        {
            string foodID = ((LinkButton)sender).CommandArgument;
            Context.Items["food_item_id"] = foodID;
            Server.Transfer("FoodDetails.aspx");
        }

        protected void Label10_Click(object sender, EventArgs e)
        {
            string foodID = ((LinkButton)sender).CommandArgument;
            Context.Items["food_item_id"] = foodID;
            Server.Transfer("FoodDetails.aspx");
        }

        protected void Label13_Click(object sender, EventArgs e)
        {
            string foodID = ((LinkButton)sender).CommandArgument;
            Context.Items["food_item_id"] = foodID;
            Server.Transfer("FoodDetails.aspx");
        }

        protected void Label16_Click(object sender, EventArgs e)
        {
            string foodID = ((LinkButton)sender).CommandArgument;
            Context.Items["food_item_id"] = foodID;
            Server.Transfer("FoodDetails.aspx");
        }

        protected void Label19_Click(object sender, EventArgs e)
        {
            string foodID = ((LinkButton)sender).CommandArgument;
            Context.Items["food_item_id"] = foodID;
            Server.Transfer("FoodDetails.aspx");
        }

        protected void Label2_Click(object sender, EventArgs e)
        {
            string foodID = ((LinkButton)sender).CommandArgument;
            Context.Items["food_item_id"] = foodID;
            Server.Transfer("FoodDetails.aspx");
        }

        protected void Label5_Click(object sender, EventArgs e)
        {
            string foodID = ((LinkButton)sender).CommandArgument;
            Context.Items["food_item_id"] = foodID;
            Server.Transfer("FoodDetails.aspx");
        }

        protected void Label8_Click(object sender, EventArgs e)
        {
            string foodID = ((LinkButton)sender).CommandArgument;
            Context.Items["food_item_id"] = foodID;
            Server.Transfer("FoodDetails.aspx");
        }

        protected void Label11_Click(object sender, EventArgs e)
        {
            string foodID = ((LinkButton)sender).CommandArgument;
            Context.Items["food_item_id"] = foodID;
            Server.Transfer("FoodDetails.aspx");
        }

        protected void Label14_Click(object sender, EventArgs e)
        {
            string foodID = ((LinkButton)sender).CommandArgument;
            Context.Items["food_item_id"] = foodID;
            Server.Transfer("FoodDetails.aspx");
        }

        protected void Label17_Click(object sender, EventArgs e)
        {
            string foodID = ((LinkButton)sender).CommandArgument;
            Context.Items["food_item_id"] = foodID;
            Server.Transfer("FoodDetails.aspx");
        }

        protected void Label20_Click(object sender, EventArgs e)
        {
            string foodID = ((LinkButton)sender).CommandArgument;
            Context.Items["food_item_id"] = foodID;
            Server.Transfer("FoodDetails.aspx");
        }

        protected void Label3_Click(object sender, EventArgs e)
        {
            string foodID = ((LinkButton)sender).CommandArgument;
            Context.Items["food_item_id"] = foodID;
            Server.Transfer("FoodDetails.aspx");
        }

        protected void Label6_Click(object sender, EventArgs e)
        {
            string foodID = ((LinkButton)sender).CommandArgument;
            Context.Items["food_item_id"] = foodID;
            Server.Transfer("FoodDetails.aspx");
        }

        protected void Label9_Click(object sender, EventArgs e)
        {
            string foodID = ((LinkButton)sender).CommandArgument;
            Context.Items["food_item_id"] = foodID;
            Server.Transfer("FoodDetails.aspx");
        }

        protected void Label12_Click(object sender, EventArgs e)
        {
            string foodID = ((LinkButton)sender).CommandArgument;
            Context.Items["food_item_id"] = foodID;
            Server.Transfer("FoodDetails.aspx");
        }

        protected void Label15_Click(object sender, EventArgs e)
        {
            string foodID = ((LinkButton)sender).CommandArgument;
            Context.Items["food_item_id"] = foodID;
            Server.Transfer("FoodDetails.aspx");
        }

        protected void Label18_Click(object sender, EventArgs e)
        {
            string foodID = ((LinkButton)sender).CommandArgument;
            Context.Items["food_item_id"] = foodID;
            Server.Transfer("FoodDetails.aspx");
        }

        protected void Label21_Click(object sender, EventArgs e)
        {
            string foodID = ((LinkButton)sender).CommandArgument;
            Context.Items["food_item_id"] = foodID;
            Server.Transfer("FoodDetails.aspx");
        }
    }
}