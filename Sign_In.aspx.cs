using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sign_In : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {

        }
    }
    protected void btnisignin_Click(object sender, EventArgs e)
    {
         GadgetitemsEntities db = new GadgetitemsEntities();

        Tb_Register objuser = new Tb_Register();
        try
        {

            if (db. Tb_Register.Where(z => z.Username == txtusername.Text && z.Password == txtpass.Text).Count() > 0)
            {

                objuser = db. Tb_Register.Where(z => z.Username == txtusername.Text && z.Password == txtpass.Text  ).FirstOrDefault();
                Response.Cookies["UserName"].Value = objuser.Username;
          

                FormsAuthentication.RedirectFromLoginPage(txtusername.Text, false);
                Response.Redirect("Default.aspx");
                Response.Cookies["UserName"].Value = objuser.Username;
                
            }
            else
            {
                Response.Redirect("~/Default.aspx?msg=" + "error");
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
