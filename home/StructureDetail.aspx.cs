using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Cleveral.Models;

namespace Cleveral
{
    public partial class StructureDetail : Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            AlertsManager alMng = new AlertsManager();
            string[] parameters = { "IdStatus" };
            string[] values = { ((int)AlertsManager.AlertStatus.ToBeVerified).ToString() };

            //dt = alMng.GetAlerts(Master.IdApplication, Master.PageLanguage, parameters, values);
            //if (dt.Rows.Count > 0)
            //{
            //    NumRecords.Visible = false;
            //    if (dt.Rows[0]["TotRecords"] != DBNull.Value)
            //    {
            //        NumRecords.Text = dt.Rows[0]["TotRecords"].ToString();
            //        NumRecords.Visible = true;
            //    }
            //    Alerts.DataSource = dt;
            //    Alerts.DataBind();
            //}

        }

        public string GetDate(string myDate) { 
            string clearDate = "";
            try 
	        {	        
		        DateTime date1;
                DateTime.TryParse(myDate, out date1);
                clearDate = date1.ToString("dd/MM/yyyy HH:ss");
	        }
	        catch (Exception)
	        {
		        clearDate = myDate;
	        }

            return clearDate;
        }

        //protected void Alerts_RowDataBound(object sender, GridViewRowEventArgs e)
        //{
        //    if (e.Row.RowType == DataControlRowType.DataRow)
        //    {
        //        Image AnomalyImg = e.Row.FindControl("AnomalyImg") as Image;
        //        HiddenField IdAnomaly = e.Row.FindControl("IdAnomaly") as HiddenField;
        //        switch (IdAnomaly.Value)
        //        {
        //            case "2":
        //                AnomalyImg.ImageUrl = Master.ImgApp + "warningMini.png";
        //                break;
        //            case "3":
        //                AnomalyImg.ImageUrl = Master.ImgApp + "alarmMini.png";
        //                break;
        //            default:
        //                break;
        //        }
        //    }
        //}
    }
}