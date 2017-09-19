using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace baruchalumn
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected DataSet dsEvents;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                calEvents.VisibleDate = DateTime.Today;
                FillEventDataset();
            }
        }

        protected void FillEventDataset()
        {
            DateTime firstDate = new DateTime(calEvents.VisibleDate.Year,
                calEvents.VisibleDate.Month, 1);
            DateTime lastDate = GetFirstDayOfNextMonth();
            dsEvents = GetCurrentMonthData(firstDate, lastDate);
        }

        protected DateTime GetFirstDayOfNextMonth()
        {
            int monthNumber, yearNumber;
            if (calEvents.VisibleDate.Month == 12)
            {
                monthNumber = 1;
                yearNumber = calEvents.VisibleDate.Year + 1;
            }
            else
            {
                monthNumber = calEvents.VisibleDate.Month + 1;
                yearNumber = calEvents.VisibleDate.Year;
            }
            DateTime lastDate = new DateTime(yearNumber, monthNumber, 1);
            return lastDate;
        }

        protected DataSet GetCurrentMonthData(DateTime firstDate,
             DateTime lastDate)
        {
            DataSet dsMonth = new DataSet();
            SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
            String query;
            query = "Select * from myEvents;";
            SqlCommand dbCommand = new SqlCommand(query, conn);

            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(dbCommand);
            try
            {
                sqlDataAdapter.Fill(dsMonth);
            }
            catch { }
            return dsMonth;
        }
        protected void calEvents_DayRender(object sender, DayRenderEventArgs e)
        {
            DateTime nextDate;
            if (dsEvents != null)
            {
                foreach (DataRow dr in dsEvents.Tables[0].Rows)
                {
                    nextDate = (DateTime)dr["Start_date"];
                    if (nextDate.Day == e.Day.Date.Day && nextDate.Year == e.Day.Date.Year && nextDate.Month == e.Day.Date.Month)
                    {
                        e.Cell.BackColor = System.Drawing.Color.Yellow;
                        e.Cell.Text = dr["event_name"].ToString();
                    }
                }
            }
        }

        protected void calEvents_VisibleMonthChanged(object sender, MonthChangedEventArgs e)
        {
            FillEventDataset();
        }
    }
}