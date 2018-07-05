using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddCategory : System.Web.UI.Page
{
    GadgetitemsEntities db = new GadgetitemsEntities();
    Tb_Category category = new Tb_Category();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["catid"] != null)
            {
                int id = Convert.ToInt32(Request.QueryString["catid"]);
                fill(id);
            }
        }
    }


    private void fill(int id)
    {
        category = db.Tb_Category.Where(z => z.Id == id).FirstOrDefault();
        txtcatname.Text = category.Cat_name;
      //  drpunit.SelectedValue = category.Unit;
        //chkstatus.Checked = category.Status;
        btnsubmit.Text = "Update";
        ViewState["id"] = category.Id;
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (btnsubmit.Text == "Submit")
        {
            category.Cat_name = txtcatname.Text;
            //category.Unit = drpunit.SelectedValue;
            //category.Status = chkstatus.Checked;
            db.Tb_Category.Add(category);
            db.SaveChanges();
            clear();
            Response.Redirect("~/Admin/ShowCategory.aspx?msg=" + "Svd");

        }
        else
        {

            category= db.Tb_Category.Find(Convert.ToInt32(ViewState["id"]));
            category.Cat_name = txtcatname.Text;
          //  category.Unit = drpunit.SelectedValue;
            //category.Status = chkstatus.Checked;
           
            db.SaveChanges();
            clear();
            Response.Redirect("~/Admin/ShowCategory.aspx?msg=" + "upd");

        }

    }

    public void clear()
    {
        txtcatname.Text = "";
      //  drpunit.SelectedValue = "Select";
        chkstatus.Checked = false;
    }
}


