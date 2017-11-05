using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.iframe
{
    public partial class iframe_iframe_window1 : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Button1.OnClientClick = Window1.GetShowReference("./iframe_iframe_window2.aspx");
                // EnableConfirmOnClose="true"
                //Window1.OnClientCloseButtonClick = Window1.GetConfirmHideReference();

                Button2.OnClientClick = Window2.GetShowReference("./iframe_iframe_window2.aspx");
                // EnableConfirmOnClose="true" and CloseAction="HidePostBack"
                //Window2.OnClientCloseButtonClick = Window2.GetConfirmHidePostBackReference();
            }

            //Button1.Text = "Popup window in current window"; // +DateTime.Now.ToString();
            //Button2.Text = "Popup window in parent window"; // +DateTime.Now.ToString();
        }


        protected void btnPostBackClose_Click(object sender, EventArgs e)
        {
            PageContext.RegisterStartupScript(FineUI.ActiveWindow.GetHidePostBackReference());
        }
    }
}
