using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ShowCategory : System.Web.UI.Page
{
    GadgetitemsEntities db = new GadgetitemsEntities();
    Tb_Category category = new Tb_Category();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnconfirm_Click(object sender, EventArgs e)
    {
        try
        {
            int id = Convert.ToInt32(hdndel.Value);
            category = db.Tb_Category.Where(z => z.Id == id).FirstOrDefault();
            db.Tb_Category.Remove(category);
            db.SaveChanges();
            Response.Redirect("~/Admin/ShowCategory.aspx?msg=" + "Dlt");
        }
        catch (Exception ex)
        {
            
        }

    }
}