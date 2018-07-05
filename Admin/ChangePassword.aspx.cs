using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ChangePassword : System.Web.UI.Page
{
    //GadgetitemsEntities db = new GadgetitemsEntities();
    //ChangePassword obnjuser = new ChangePassword();
    //protected void Page_Load(object sender, EventArgs e)
    //{
    //    if (!IsPostBack)
    //    {
    //        clear();    
    //    }
        
    //}
    //protected void btnsubmit_Click(object sender, EventArgs e)
    //{
    //    string text = txtoldpass.Text;
    //    try
    //    {
    //        if (txtnewpass.Text != null && txtoldpass.Text != null)
    //        {
    //            string name = Convert.ToString(Request.Cookies["UserName"].Value);

    //            int count = db.Tb_Login.Where(z => z.Password == txtoldpass.Text && z.Username == name).Count();
    //            if (count > 0)
    //            {
    //                obnjuser = db.Tb_Login.Where(z => z.Username == name && z.Password == txtoldpass.Text).FirstOrDefault();
    //                obnjuser.Password = txtnewpass.Text;
    //                db.SaveChanges();
    //                clear();
    //                Response.Redirect("~/Admin/ChangePassword.aspx?msg=" + "ok");

    //            }
    //            else
    //            {
    //                clear();
    //                Response.Redirect("~/Admin/ChangePassword.aspx?msg=" + "pnotmatch");

    //            }
    //        }
    //        else
    //        {
    //            clear();
    //            Response.Redirect("~/Admin/ChangePassword.aspx?msg=" + "pnotmatch");
    //        }
    //    }
    //    catch (Exception ex)
    //    {


    //    }
    //}

    //public void clear()
    //{
    //    txtconfirmpass.Text = "";
    //    txtnewpass.Text = "";
    //    txtoldpass.Text = "";
    //}
}