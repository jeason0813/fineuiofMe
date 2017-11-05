using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.grid
{
    public partial class grid_iframe_window : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }

        }

        private void LoadData()
        {

            // 关闭按钮的客户端脚本：
            // 1. 首先确认窗体中表单是否被修改（如果已经被修改，则弹出是否关闭的确认对话框）
            // 2. 然后关闭本窗体，回发父窗体
            btnClose.OnClientClick = ActiveWindow.GetConfirmHidePostBackReference();

            #region old code
            // 1.第一种调用方法
            //string confirmText = "是否确认关闭当前页？<br/>您在当前页所做的修改没有保存。继续编辑当前页，请选择“取消”。<br/>选择“确定”关闭当前页，选择“取消”继续编辑当前页。";
            //string closeScript = CurrentActiveWindow.GetCloseReference();
            //string confirmScript = FineUI.Confirm.GetShowReference(confirmText, "确认关闭", FineUI.MessageBoxIcon.Warning, closeScript, "return false;");
            //btnClose.OnClientClick = String.Format("if({0}){{{1}}}else{{{2}}}", FineUI.PageContext.GetPageStateChangedReference(), confirmScript, closeScript);

            //// 2.第二种调用方法
            //string confirmText = "是否确认关闭当前页？<br/>您在当前页所做的修改没有保存。继续编辑当前页，请选择“取消”。<br/>选择“确定”关闭当前页，选择“取消”继续编辑当前页。";
            //string closeScript = CurrentActiveWindow.GetCloseReference();
            //btnClose.OnClientClick = FineUI.PageContext.GetPageStateChangedConfirmReference("确认关闭", confirmText, closeScript, "return false;");

            //// 3.第三种调用方法（并且在父页面中可以简单的 window1.OnClientCloseButtonClick = window1.GetIFramePageStateChangedFunction(); 来注册窗口右上角关闭按钮动作[即先判断IFrame中表单内容是否变化]）
            //PageContext.RegisterPageStateChangedStartupScript(); // 注意这个语句应该放在if的外面，否则回发时会出错
            //btnClose.OnClientClick = PageContext.GetPageStateChangedFunction();

            // 4.第四种调用方法（推荐的做法，页面中的PageManager控件增加属性RegisterPageStateChangedScript="true"，并且在父页面中可以简单的 window1.OnClientCloseButtonClick = window1.GetIFramePageStateChangedFunction(); 来注册窗口右上角关闭按钮动作[即先判断IFrame中表单内容是否变化]）
            //btnClose.OnClientClick = PageContext.GetConfirmFormModifiedReference(); 
            #endregion
        }


        protected void btnSaveContinue_Click(object sender, EventArgs e)
        {
            // 1. 这里放置保存窗体中数据的逻辑
            

            // 2. 关闭本窗体，然后回发父窗体
            PageContext.RegisterStartupScript(ActiveWindow.GetHidePostBackReference());
        }

        protected void btnSaveRefresh_Click(object sender, EventArgs e)
        {
            // 1. 这里放置保存窗体中数据的逻辑

            // 2. 关闭本窗体，然后刷新父窗体
            PageContext.RegisterStartupScript(ActiveWindow.GetHideRefreshReference());
        }


        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    Alert.Show("提示内容");
        //}
    }
}
