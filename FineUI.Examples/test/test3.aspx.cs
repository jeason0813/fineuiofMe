using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using AspNet = System.Web.UI.WebControls;
using System.Data;

namespace FineUI.Examples
{
    public partial class test3 : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid1();
            }
        }

        private void BindGrid1()
        {
            DataTable table;
            DataRow row;

            table = new DataTable();
            table.Columns.Add(new DataColumn("Remarks", typeof(String)));

            for (int i = 0; i < 100; i++)
            {
                row = table.NewRow();

                row[0] = DateTime.Now.ToString();
                table.Rows.Add(row);
            }

            Grid1.DataSource = table;
            Grid1.DataBind();
        }


        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            //Grid1.DataSource = null;
            //Grid1.DataBind();
            

            //DataTable table;
            //DataRow row;

            //table = new DataTable();
            //table.Columns.Add(new DataColumn("Remarks", typeof(String)));

            Grid1.DataSource = null;
            Grid1.DataBind();
        }

        protected void Grid1_PageIndexChange(object sender, FineUI.GridPageEventArgs e)
        {
            Grid1.PageIndex = e.NewPageIndex;
        }
    }
}
