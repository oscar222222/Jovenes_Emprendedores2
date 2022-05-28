using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_view_young_innova_InnovatorPage1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    bool ca1, ca2;


    protected void GV_edit_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        if (e.NewValues["Date_idea"] == null)
        {
            e.NewValues["Date_idea"] = DateTime.Parse(e.OldValues["Date_idea"].ToString());
        }


        //FL_Logo

        ClientScriptManager cm = this.ClientScript;
        string extension1 = System.IO.Path.GetExtension(((FileUpload)GV_edit.Rows[e.RowIndex].FindControl("FileUpload2")).PostedFile.FileName);
        string extension = System.IO.Path.GetExtension(((FileUpload)GV_edit.Rows[e.RowIndex].FindControl("FL_Logo")).PostedFile.FileName);
        var guid = Guid.NewGuid();


        if (extension != null)
        {
            if ((extension.Equals(".jpg") || extension.Equals(".gif") || extension.Equals(".jpge") || extension.Equals(".png")))
            {


                string saveLocation = Server.MapPath("~\\file_types_section\\image_logo") + "\\" + Session["username"] + extension;
                ((FileUpload)GV_edit.Rows[e.RowIndex].FindControl("FL_Logo")).PostedFile.SaveAs(saveLocation);

                e.NewValues["Image_logo"] = "~\\file_types_section\\image_logo" + "\\" + Session["username"] + extension;
                GV_edit.DataBind();
            }
            else
            {

                cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Error:Tipo de archivo no valido ');</script>");
                GV_edit.DataBind();
            }
        }


        if (extension1 != null)
        {
            if ((extension1.Equals(".docx") || extension1.Equals(".pdf") || extension1.Equals(".pptx") || extension1.Equals(".txt")))
            {


                string saveLocation1 = Server.MapPath("~\\file_types_section\\file_idea") + "\\" + Session["username"] + extension;
                ((FileUpload)GV_edit.Rows[e.RowIndex].FindControl("FileUpload2")).PostedFile.SaveAs(saveLocation1);

                e.NewValues["File_idea"] = "~\\file_types_section\\file_idea" + "\\" + Session["username"] + extension;
                GV_edit.DataBind();
            }
            else
            {

                cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Error:Tipo de archivo no valido ');</script>");
                GV_edit.DataBind();
            }
        }



    }
}