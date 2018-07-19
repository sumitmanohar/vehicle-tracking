using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;
using System.Web.Script.Serialization;
using Newtonsoft.Json;
using System.Data;

public partial class showdrivers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpWebRequest hwr = (HttpWebRequest)WebRequest.Create("http://sumit.tecpanda.in/aspshowusers.php");
        HttpWebResponse res = (HttpWebResponse)hwr.GetResponse();
        StreamReader input = new StreamReader(res.GetResponseStream());
        string st = input.ReadToEnd();
        DataTable myObjectDT = JsonConvert.DeserializeObject<DataTable>(st);
        GridView1.DataSource = myObjectDT;
        GridView1.DataBind();
    }
}