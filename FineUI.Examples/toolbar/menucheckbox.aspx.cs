using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Xml;
using System.IO;
using System.Reflection;

namespace FineUI.Examples.toolbar
{
    public partial class menucheckbox : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                UpdateLangResult();
                UpdateSiteResult();
            }
        }

        private void UpdateLangResult()
        {
            string selectedLangName = String.Empty;
            foreach (MenuItem item in btnLangMenu.Menu.Items)
            {
                if (item is MenuCheckBox && (item as MenuCheckBox).Checked)
                {
                    selectedLangName = item.Text;
                    break;
                }
            }
            labLangResult.Text = "你选择的语言：" + selectedLangName;
        }

        private void UpdateSiteResult()
        {
            StringBuilder selectedSites = new StringBuilder();
            foreach (MenuItem item in btnSiteMenu.Menu.Items)
            {
                if (item is MenuCheckBox && (item as MenuCheckBox).Checked)
                {
                    selectedSites.AppendFormat("{0}, ", item.Text);
                }
            }
            labSiteResult.Text = "你选择的站点：" + selectedSites.ToString().TrimEnd(", ".ToCharArray());
        }

        protected void MenuLang_CheckedChanged(object sender, EventArgs e)
        {
            UpdateLangResult();
        }

        protected void MenuSite_CheckedChanged(object sender, EventArgs e)
        {
            UpdateSiteResult();
        }


    }
}
