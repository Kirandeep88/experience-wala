using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class session : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        Session["UserName"] = "test";

        if (Session["UserName"] != null)
        {
            txtusername.Text = "Welcome : " + Session["UserName"];
        }

    }
}