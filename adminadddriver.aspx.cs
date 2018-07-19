using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;
public partial class adminadddriver : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        HttpWebRequest hwr = (HttpWebRequest)WebRequest.Create("http://sumit.tecpanda.in/aspcheckuser.php?uname=" + TextBox1.Text + "");
        HttpWebResponse res = (HttpWebResponse)hwr.GetResponse();
        StreamReader input = new StreamReader(res.GetResponseStream());
        string st = input.ReadToEnd();
        string[] x = st.Split(':');
        if (x[0].Equals("fail"))
        {
            Label1.Visible = false;
            //aspinsertuser.php?uname=asd&upass=asd&udetail=asd
            HttpWebRequest hwr1 = (HttpWebRequest)WebRequest.Create("http://sumit.tecpanda.in/aspinsertuser.php?uname=" + TextBox1.Text + "&upass=" + TextBox2.Text + "&uadd=" + TextBox4.Text +"&ucontact=" +TextBox5.Text+"&uemail="+TextBox6.Text+"&uage="+TextBox7.Text+"&unumber="+TextBox8.Text+ "");
            HttpWebResponse res1 = (HttpWebResponse)hwr1.GetResponse();
            Response.Redirect("adminadddriver.aspx");
        }
        else if (x[0].Equals("pass"))
        {
            Label1.Visible = true;
        }
    }
    
}