using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        GadgetitemsEntities db = new GadgetitemsEntities();

        Tb_login objuser = new Tb_login();
        try
        {

            if (db.Tb_login.Where(z => z.Username == txtusername.Text && z.Password == txtpass.Text && z.UserType=="Admin").Count() > 0)
            {

                objuser = db.Tb_login.Where(z => z.Username == txtusername.Text && z.Password == txtpass.Text && z.UserType=="Admin" ).FirstOrDefault();
                Response.Cookies["UserName"].Value = objuser.Username;
                Response.Cookies["Usertype"].Value = objuser.UserType;

                FormsAuthentication.RedirectFromLoginPage(txtusername.Text, false);
                Response.Redirect("~/Admin/Default.aspx");
                Response.Cookies["UserName"].Value = objuser.Username;
                
            }
            else
            {
                Response.Redirect("~/Adminlogin.aspx?msg=" + "error");
                Clear();
            }
        }
        catch (Exception ex)
        {

        }
    }

    private void Clear()
    {
        txtusername.Text = "";
        txtpass.Text = "";
    }
}