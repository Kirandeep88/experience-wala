using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ShowProduct : System.Web.UI.Page
{

    GadgetitemsEntities db = new GadgetitemsEntities();
    Tb_Product product = new Tb_Product();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnconfirm_Click(object sender, EventArgs e)
    {
        try
        {
            int id = Convert.ToInt32(hdndel.Value);
            product = db.Tb_Product.Where(z => z.Id == id).FirstOrDefault();
            db.Tb_Product.Remove(product);
            db.SaveChanges();
            Response.Redirect("~/Admin/ShowProduct.aspx?msg=" + "Dlt");
        }
        catch (Exception ex)
        {

        }

    }
}