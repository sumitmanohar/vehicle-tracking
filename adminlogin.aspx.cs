using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;
public partial class adminlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        HttpWebRequest hwr = (HttpWebRequest)WebRequest.Create("http://sumit.tecpanda.in/aspchecklogin.php?uname=" + TextBox1.Text + "&upass=" + TextBox2.Text + "");
        HttpWebResponse res = (HttpWebResponse)hwr.GetResponse();
        StreamReader input = new StreamReader(res.GetResponseStream());
        string st = input.ReadToEnd();
        string[] x = st.Split(':');
        if (x[0].Equals("fail"))
        {
            //Response.Write("invalid username and pass");
            Response.Redirect("adminlogin.aspx");
        }
        else if (x[0].Equals("pass"))
        {
            //Response.Write("valid username and pass");
            Response.Redirect("adminadddriver.aspx");
        }

    }
    
}