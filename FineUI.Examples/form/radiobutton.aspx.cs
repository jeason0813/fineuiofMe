using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FineUI.Examples.form
{
    public partial class radiobutton : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnSelectSingleRadio_Click(object sender, EventArgs e)
        {
            rbtnSingleRadio.Checked = !rbtnSingleRadio.Checked;
        }

        protected void btnSelectSecondRadio_Click(object sender, EventArgs e)
        {
            String[] radios = new String[] { "rbtnFirst", "rbtnSecond", "rbtnThird" };

            for (int i = 0; i < radios.Length; i++)
            {
                if ((SimpleForm1.FindControl(radios[i]) as RadioButton).Checked)
                {
                    int next = i + 1;
                    if (next >= radios.Length)
                    {
                        next = 0;
                    }
                    (SimpleForm1.FindControl(radios[next]) as RadioButton).Checked = true;

                    break;
                }
            }
        }




    }
}
