using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Detail_Form : System.Web.UI.Page
{
    GadgetitemsEntities db = new GadgetitemsEntities();
    Tb_Order order = new Tb_Order();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        order.Name = txtname.Text;
        order.Email = txtemail.Text;
        order.Phone_Number = txtphone.Text;
        order.City = txtcity.Text;
        order.Country = txtcountry.Text;
        order.Address = txtaddress.Text;
        order.Zip_Code = txtzip.Text;
        db.Tb_Order.Add(order);
        db.SaveChanges();
      
    }
}