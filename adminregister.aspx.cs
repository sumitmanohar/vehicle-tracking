using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;

public partial class adminregister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        HttpWebRequest hwr = (HttpWebRequest)WebRequest.Create("http://sumit.tecpanda.in/aspcheckuseradmin.php?uname=" + TextBox1.Text + "");
        HttpWebResponse res = (HttpWebResponse)hwr.GetResponse();
        StreamReader input = new StreamReader(res.GetResponseStream());
        string st = input.ReadToEnd();
        string[] x = st.Split(':');
        if (x[0].Equals("fail"))
        {
            Label8.Visible = false;
            //aspinsertuser.php?uname=asd&upass=asd&udetail=asd
            HttpWebRequest hwr1 = (HttpWebRequest)WebRequest.Create("http://sumit.tecpanda.in/aspinsertadmin.php?uname=" + TextBox1.Text + "&upass=" + TextBox2.Text + "&uaddress=" + TextBox4.Text +"&ucontact="+TextBox5.Text+"&uemail="+TextBox6.Text+"&uage="+TextBox7.Text+ "");
            HttpWebResponse res1 = (HttpWebResponse)hwr1.GetResponse();
            Response.Redirect("adminregister.aspx");
        }
        else if (x[0].Equals("pass"))
        {
            Label8.Visible = true;
        }
    
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminlogin.aspx");
    }
}