using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab1_Temperature
{
    public partial class temperatureconv : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConv_Click(object sender, EventArgs e)
        {
            if(txttempIn.Text!="")
            {
                double dtempin = Convert.ToDouble(txttempIn.Text);
                double dtempout = 0;
                switch (drdlsttempFrom.SelectedItem.Text)
                {
                    case "Celsius":
                        switch(drdlsttempTo.SelectedValue)
                        {
                            case "C":
                                dtempout = dtempin;
                                txttempOut.Text = Convert.ToString(dtempout);
                                break;
                            case "F":
                               dtempout = (dtempin*9/5)+32;
                                txttempOut.Text = Convert.ToString(dtempout);
                                break;
                            case "K":
                                dtempout = dtempin +273.15;
                                txttempOut.Text = Convert.ToString(dtempout);
                                break;
                            default:
                                dtempout = dtempin;
                                txttempOut.Text = Convert.ToString(dtempout);
                                break;
                        }
                        break;
                    case "Fahrenheit":
                        switch (drdlsttempTo.SelectedValue)
                        {
                            case "C":
                                dtempout = (dtempin-32)*5/9;
                                txttempOut.Text = Convert.ToString(dtempout);
                                break;
                            case "F":
                                dtempout = dtempin;
                                txttempOut.Text = Convert.ToString(dtempout);
                                break;
                            case "K":
                                dtempout = (dtempin - 32) * 5 / 9 + 273.15;
                                txttempOut.Text = Convert.ToString(dtempout);
                                break;
                            default:
                                dtempout = dtempin;
                                txttempOut.Text = Convert.ToString(dtempout);
                                break;
                        }
                        break;
                    case "Kelvin":
                        switch (drdlsttempTo.SelectedValue)
                        {
                            case "C":
                                dtempout = dtempin - 273.15;
                                txttempOut.Text = Convert.ToString(dtempout);
                                break;
                            case "F":
                                dtempout = (dtempin-273.15)*9/5+32;
                                txttempOut.Text = Convert.ToString(dtempout);
                                break;
                            case "K":
                                dtempout = dtempin;
                                txttempOut.Text = Convert.ToString(dtempout);
                                break;
                            default:
                                dtempout = dtempin;
                                txttempOut.Text = Convert.ToString(dtempout);
                                break;
                        }
                        break;
                    default:
                        txttempOut.Text = "";
                        break;
                }
            }
        }

        protected void btnClr_Click(object sender, EventArgs e)
        {
            txttempIn.Text = "";
            txttempOut.Text = "";
            drdlsttempFrom.SelectedValue = "C";
            drdlsttempTo.SelectedValue = "C";

        }
    }
}