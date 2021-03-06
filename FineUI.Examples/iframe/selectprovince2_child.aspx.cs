﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.iframe
{
    public partial class selectprovince2_child : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // 这种方式也支持
                imgChina.Attributes["usemap"] = "#ChinaMap";

                labNote.Text = "图片来源：<a href=\"http://www.sbsm.gov.cn/article/zxbs/dtfw/\" target=\"_blank\">http://www.sbsm.gov.cn/article/zxbs/dtfw/</a>";
            }
            else
            {
                string eventTarget = Request.Form["__EVENTTARGET"];
                string eventArgument = Request.Form["__EVENTARGUMENT"];
                if (eventTarget == imgChina.ClientID && eventArgument.StartsWith("SelectProvince$"))
                {
                    string provinceName = eventArgument.Substring("SelectProvince$".Length);

                    PageContext.RegisterStartupScript("X.wnd.getActiveWindow()[1].selectProvince('" + provinceName + "');" + ActiveWindow.GetHideReference());
                }
            }
        }


    }
}
