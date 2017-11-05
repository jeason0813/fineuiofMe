using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace FineUI.Examples
{
    public partial class test2 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                BindGrid1();
                BindGrid2();
            }
        }

        /// <summary>
        /// 显示或隐藏详细信息
        /// </summary>
        protected void btnShowRowExpanders_Click(object sender, EventArgs e)
        {
            switch (TabStrip1.ActiveTabIndex)
            {
                /// 自停
                case 0:
                    ZtGrid.ExpandAllRowExpanders = !ZtGrid.ExpandAllRowExpanders;
                    break;
                /// 信号异常
                case 1:
                    XhycGrid.ExpandAllRowExpanders = !XhycGrid.ExpandAllRowExpanders;
                    break;
            };

        }

        private void BindGrid1()
        {
            DataTable table;
            DataRow row;

            table = new DataTable();
            table.Columns.Add(new DataColumn("Remarks", typeof(String)));

            row = table.NewRow();

            row[0] = DateTime.Now.ToString();
            table.Rows.Add(row);

            ZtGrid.DataSource = table;
            ZtGrid.DataBind();
        }

        private void BindGrid2()
        {
            DataTable table;
            DataRow row;

            table = new DataTable();
            table.Columns.Add(new DataColumn("Remarks", typeof(String)));

            row = table.NewRow();

            row[0] = DateTime.Now.ToString();
            table.Rows.Add(row);

            XhycGrid.DataSource = table;
            XhycGrid.DataBind();
        }


        /// <summary>
        /// 刷新
        /// </summary>
        protected void butRefresh_Click(object sender, EventArgs e)
        {
            //DataTable table;
            //DataRow row;
            switch (TabStrip1.ActiveTabIndex)
            {

                /// 自停
                case 0:

                    BindGrid1();

                    Alert.Show("TabStrip1.ActiveTabIndex 0");
                    break;
                /// 信号异常
                case 1:

                    BindGrid2();


                    Alert.Show("TabStrip1.ActiveTabIndex 1");
                    break;
            };

        }

    }
}
