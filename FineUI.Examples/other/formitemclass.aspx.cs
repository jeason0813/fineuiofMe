using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.other
{
    public partial class formitemclass : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnSwitchClass_Click(object sender, EventArgs e)
        {
            tbxUseraName.CssClass = tbxUseraName.CssClass == "red" ? "blue" : "red";
            tbxUseraName.FormItemClass = tbxUseraName.FormItemClass == "red" ? "blue" : "red";

            tbxPassword.CssClass = tbxPassword.CssClass == "red" ? "blue" : "red";
            tbxPassword.FormItemClass = tbxPassword.FormItemClass == "red" ? "blue" : "red";
        }

    }
}