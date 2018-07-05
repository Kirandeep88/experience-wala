using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Add_Banners : System.Web.UI.Page
{

    GadgetitemsEntities db = new GadgetitemsEntities();
    Tb_banners banners = new Tb_banners();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string gid = Guid.NewGuid().ToString().Substring(0, 4);

        if (FileUpload1.HasFile)
        {
            string filename = FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath("~\\Upload_Banners\\" + gid + filename.ToString()));
            //  jp.IPath = Server.MapPath("~\\Upload\\Product\\" + gid + filename.ToString());
            banners.Image1 = gid + filename;
        }

       

        db.Tb_banners.Add(banners);
        db.SaveChanges();
        Response.Redirect("~/Admin/Banners.aspx");

    }
}