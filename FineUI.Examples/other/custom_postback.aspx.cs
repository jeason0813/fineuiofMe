using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.other
{
    public partial class custom_postback : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
            else
            {
                if (Request.Form["__EVENTTARGET"] == TextBox1.ClientID && Request.Form["__EVENTARGUMENT"] == "specialkey")
                {
                    TextBox2.Text = TextBox1.Text;
                    TextBox2.Focus(true);
                }
            }
        }


    }
}
