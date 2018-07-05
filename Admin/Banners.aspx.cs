using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Banners : System.Web.UI.Page
{
    GadgetitemsEntities db = new GadgetitemsEntities();
    Tb_banners banners = new Tb_banners();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnconfirm_Click(object sender, EventArgs e)
    {

        try
        {
            int id = Convert.ToInt32(hdndel.Value);
            banners = db.Tb_banners.Where(z => z.Id == id).FirstOrDefault();
            db.Tb_banners.Remove(banners);
            db.SaveChanges();
            Response.Redirect("~/Admin/Banners.aspx?msg=" + "Dlt");
        }
        catch (Exception ex)
        {

        }
    }
}