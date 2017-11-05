using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.iframe
{
    public partial class grid_iframe : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                AutoBindGrid();

                btnCheckSelection.OnClientClick = Grid2.GetNoSelectionAlertReference("请至少选择一项！");
                btnPopupWindow.OnClientClick = Window1.GetShowReference("../grid/grid_iframe_window.aspx") + "return false;";

                btnConfirmButton.OnClientClick = Grid2.GetNoSelectionAlertReference("请至少选择一项！");
                btnConfirmButton.ConfirmText = String.Format("你确定要删除选中的&nbsp;<b><script>{0}</script></b>&nbsp;项吗？", Grid2.GetSelectedCountReference());

                //string confirmScript = FineUI.Confirm.GetShowReference("页面数据发生变化，是否先保存？", "确认关闭", FineUI.MessageBoxIcon.Question, "alert('需要先保存数据。');", "alert('不保存数据。');");
                //btnSimulateClose.OnClientClick = String.Format("if({0}){{{1}}}else{{alert('页面数据，没有变化');}}", FineUI.PageContext.GetPageStateChangedReference(), confirmScript);

                //string confirmText = "是否确认关闭当前页？<br/>您在当前页所做的修改没有保存。继续编辑当前页，请选择“取消”。<br/>选择“确定”关闭当前页，选择“取消”继续编辑当前页。";
                //string closeScript = Window1.GetCloseReference();

                ////string confirmScript2 = FineUI.Confirm.GetShowReference(confirmText, "确认关闭", FineUI.MessageBoxIcon.Warning, closeScript, "return false;");
                ////Window1.OnClientCloseButtonClick = String.Format("if({0}){{{1}}}else{{{2}}}", Window1.GetIFramePageStateChangedReference(), confirmScript2, closeScript);

                //Window1.OnClientCloseButtonClick = Window1.GetIFramePageStateChangedConfirmReference("确认关闭", confirmText, closeScript, "return false;");

                // EnableConfirmOnClose="true"
                //Window1.OnClientCloseButtonClick = Window1.GetConfirmHideReference();

            }

            Panel7.Title = "表格 - 页面加载时间：" + DateTime.Now.ToLongTimeString();

        }

        #region BindGrid

        private void AutoBindGrid()
        {
            if (ViewState["BindGrid1"] != null && Convert.ToBoolean(ViewState["BindGrid1"]))
            {
                BindGrid();
                ViewState["BindGrid1"] = false;
            }
            else
            {
                BindGrid2();
                ViewState["BindGrid1"] = true;
            }
        }

        private void BindGrid()
        {
            DataTable table = GetDataTable();

            Grid2.DataSource = table;
            Grid2.DataBind();
        }

        private void BindGrid2()
        {
            DataTable table = GetDataTable();

            Grid2.DataSource = table;
            Grid2.DataBind();
        }

        #endregion

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindGrid();
        }

        protected void Grid2_Sort(object sender, FineUI.GridSortEventArgs e)
        {
            Alert.ShowInTop(e.SortField);

        }

        protected void Grid2_PageIndexChange(object sender, FineUI.GridPageEventArgs e)
        {
            Alert.ShowInTop(e.NewPageIndex.ToString());
        }

        protected void Window1_Close(object sender, FineUI.WindowCloseEventArgs e)
        {
            AutoBindGrid();
        }


        protected void ttbSearch_Trigger1Click(object sender, EventArgs e)
        {
            AutoBindGrid();

            ttbSearch.Text = String.Empty;
            ttbSearch.ShowTrigger1 = false;
        }

        protected void ttbSearch_Trigger2Click(object sender, EventArgs e)
        {
            AutoBindGrid();

            ttbSearch.ShowTrigger1 = true;
        }

    }
}
