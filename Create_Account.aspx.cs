using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Create_Account : System.Web.UI.Page
{
    GadgetitemsEntities db = new GadgetitemsEntities();
    Tb_Register register = new Tb_Register();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnaccount_Click(object sender, EventArgs e)
    {
        register.Username = txtname.Text;
        register.Password = txtpassword.Text;
        register.Phone_No = txtphone.Text;
        db.Tb_Register.Add(register);
        db.SaveChanges();
    }
}