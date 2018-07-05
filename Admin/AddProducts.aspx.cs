using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddProducts : System.Web.UI.Page
{
    GadgetitemsEntities db = new GadgetitemsEntities();
    Tb_Product product = new Tb_Product();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            binddrp();
            if (Request.QueryString["catid"] != null)
            {
                int id = Convert.ToInt32(Request.QueryString["catid"]);
                fill(id);
            }
        }

    }
    private void binddrp()
    {
        drpcat.DataSource = db.Tb_Category.ToList();
        drpcat.DataTextField = "Cat_name";
        drpcat.DataValueField = "Id";
        drpcat.DataBind();
        drpcat.Items.Insert(0, "Select");

    }

    private void fill(int id)
    {
        product = db.Tb_Product.Where(z => z.Id == id).FirstOrDefault();

      txtproductname.Text = product.Product_name;
      drpcat.SelectedValue = product.Cat_id.ToString();
      //chkstatus.Checked = product.Status;
      txtdescription.Text = product.Product_Dec;
      btnsubmit.Text = "Update";
      ViewState["id"] = product.Id;
      ViewState["image"] = product.Product_Image;
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (btnsubmit.Text == "Submit")
        {

            product.Product_name = txtproductname.Text;
            product.Cat_id = Convert.ToInt32(drpcat.SelectedValue);
            product.Status = chkstatus.Checked;
            //product.Cdate = Convert.ToDateTime(DateTime.Now.ToShortDateString());
            
            product.Our_latest_product = chklatest.Checked;
            product.OurBestProduct = chkbest.Checked;
            product.HomePage = chkhome.Checked;
            product.HomePage2 = chkhome2.Checked;
            product.Product_Dec = txtdescription.Text;
            product.Product_Price = txtprice.Text;
            product.Product_Unit = txtunit.Text;

            string gid = Guid.NewGuid().ToString().Substring(0, 4);

            if (FileUpload1.HasFile)
            {
                string filename = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("~\\Upload\\Product\\" + gid + filename.ToString()));
                //  jp.IPath = Server.MapPath("~\\Upload\\Product\\" + gid + filename.ToString());
                product.Product_Image = gid + filename;
            }



            if (FileUpload2.HasFile)
            {
                string filename = FileUpload2.FileName;
                FileUpload2.SaveAs(Server.MapPath("~\\Upload\\Product\\" + gid + filename.ToString()));
                //  jp.IPath = Server.MapPath("~\\Upload\\Product\\" + gid + filename.ToString());
                product.Product_Image1 = gid + filename;
            }


            if (FileUpload3.HasFile)
            {
                string filename = FileUpload3.FileName;
                FileUpload3.SaveAs(Server.MapPath("~\\Upload\\Product\\" + gid + filename.ToString()));
                //  jp.IPath = Server.MapPath("~\\Upload\\Product\\" + gid + filename.ToString());
                product.Product_Image2 = gid + filename;
            }


            if (FileUpload4.HasFile)
            {
                string filename = FileUpload4.FileName;
                FileUpload4.SaveAs(Server.MapPath("~\\Upload\\Product\\" + gid + filename.ToString()));
                //  jp.IPath = Server.MapPath("~\\Upload\\Product\\" + gid + filename.ToString());
                product.Product_Image3 = gid + filename;
            }


            if (FileUpload5.HasFile)
            {
                string filename = FileUpload5.FileName;
                FileUpload5.SaveAs(Server.MapPath("~\\Upload\\Product\\" + gid + filename.ToString()));
                //  jp.IPath = Server.MapPath("~\\Upload\\Product\\" + gid + filename.ToString());
                product.Product_Image4 = gid + filename;
            }

            db.Tb_Product.Add(product);
            db.SaveChanges();
            clear();
            Response.Redirect("~/Admin/ShowProduct.aspx?msg=" + "Svd");

        }
        else
        {

            product = db.Tb_Product.Find(Convert.ToInt32(ViewState["id"]));
            product.Product_name = txtproductname.Text;
            product.Cat_id = Convert.ToInt32(drpcat.SelectedValue);
            product.Status = chkstatus.Checked;
            //product.Cdate = Convert.ToDateTime(DateTime.Now.ToShortDateString());
            product.Status = chkstatus.Checked;
            product.Product_Dec = txtdescription.Text;
            product.Product_Price = txtprice.Text;
            product.Product_Unit = txtunit.Text;

            string gid = Guid.NewGuid().ToString().Substring(0, 4);

            if (FileUpload1.HasFile)
            {
                string filename = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("~\\Upload\\Product\\" + gid + filename.ToString()));
                //  jp.IPath = Server.MapPath("~\\Upload\\Product\\" + gid + filename.ToString());
                product.Product_Image = gid + filename;
            }



            if (FileUpload2.HasFile)
            {
                string filename = FileUpload2.FileName;
                FileUpload2.SaveAs(Server.MapPath("~\\Upload\\Product\\" + gid + filename.ToString()));
                //  jp.IPath = Server.MapPath("~\\Upload\\Product\\" + gid + filename.ToString());
                product.Product_Image1 = gid + filename;
            }


            if (FileUpload3.HasFile)
            {
                string filename = FileUpload3.FileName;
                FileUpload3.SaveAs(Server.MapPath("~\\Upload\\Product\\" + gid + filename.ToString()));
                //  jp.IPath = Server.MapPath("~\\Upload\\Product\\" + gid + filename.ToString());
                product.Product_Image2 = gid + filename;
            }


            if (FileUpload4.HasFile)
            {
                string filename = FileUpload4.FileName;
                FileUpload4.SaveAs(Server.MapPath("~\\Upload\\Product\\" + gid + filename.ToString()));
                //  jp.IPath = Server.MapPath("~\\Upload\\Product\\" + gid + filename.ToString());
                product.Product_Image3 = gid + filename;
            }


            if (FileUpload5.HasFile)
            {
                string filename = FileUpload5.FileName;
                FileUpload5.SaveAs(Server.MapPath("~\\Upload\\Product\\" + gid + filename.ToString()));
                //  jp.IPath = Server.MapPath("~\\Upload\\Product\\" + gid + filename.ToString());
                product.Product_Image4 = gid + filename;
            }
            else
            {
                product.Product_Image = ViewState["image"].ToString();
            }
            db.SaveChanges();
            clear();
            Response.Redirect("~/Admin/ShowProduct.aspx?msg=" + "upd");

        }
    }
    public void clear()
    {
        txtproductname.Text = "";
        drpcat.SelectedValue = "Select";
        chkstatus.Checked = false;
    }

}