using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_view_young_innova_Registration_of_idea : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BSave_Click1(object sender, EventArgs e)
    {
        EIdea idea = new EIdea();
        EUserInformation user1 = (EUserInformation)Session["user"];

        if (CHB1.Checked == false && CHB2.Checked == false && CHB3.Checked == false && CHB4.Checked == false && CHB5.Checked == false && CHB6.Checked == false && CHB7.Checked == false && CHB8.Checked == false)
        {
            ClientScriptManager m1 = this.ClientScript;
            m1.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Querido usuario tiene que almenos seleccionar uno.');</script>");

        }

        string image_name = System.IO.Path.GetFileName(FU_Image.PostedFile.FileName);
        string ext1 = System.IO.Path.GetExtension(FU_Image.PostedFile.FileName);
        string flie_name = System.IO.Path.GetFileName(FU_idea.PostedFile.FileName);
        string ext3 = System.IO.Path.GetExtension(FU_idea.PostedFile.FileName);

        if ((ext1.Equals(".jpg") || ext1.Equals(".gif") || ext1.Equals(".jpg") || ext1.Equals(".jpge") || ext1.Equals(".png")) && (
             ext3.Equals(".docx") || ext3.Equals(".pdf") || ext3.Equals(".pptx") || ext3.Equals(".txt") || ext3.Equals(".md")))
        {

            //_____________se utiliza para la extención de la imagen
            string saveLocation = Server.MapPath("~\\file_types_section\\image_logo") + "\\" + image_name;
            idea.Image_logo = "~\\file_types_section\\image_logo\\" + image_name;
            //_____________se utiliza para la extención de los archivos de texto
            string saveLocation3 = Server.MapPath("~\\file_types_section\\file_idea") + "\\" + flie_name;
            idea.File_idea = "~\\file_types_section\\file_idea\\" + flie_name;
            try
            {
                FU_Image.PostedFile.SaveAs(saveLocation);
                FU_idea.PostedFile.SaveAs(saveLocation3);
                idea.Id_user2 = user1.Id;
                idea.Name_idea = TB_NameProject.Text;
                idea.Registred_idea = TB_Smallidea.Text;
                idea.Elevator_P = TB_Elevator.Text;
                idea.Date_idea = DateTime.Now;

                /*________________________________SE AGREGO LA LOGICA DE LOS CHB*/

                if (CHB1.Checked == true)
                {
                    idea.Type = idea.Type + " -" + "TECNOLOGIA";
                }

                if (CHB2.Checked == true)
                {
                    idea.Type = idea.Type + " -" + "SOFTWARE";
                }

                if (CHB3.Checked == true)
                {
                    idea.Type = idea.Type + " -" + "HADWARE";
                }


                if (CHB4.Checked == true)
                {
                    idea.Type = idea.Type + " -" + "NETWORKING";
                }

                if (CHB5.Checked == true)
                {
                    idea.Type = idea.Type + " -" + "CUIDADO AMBIENTAL";
                }

                if (CHB6.Checked == true)
                {
                    idea.Type = idea.Type + " -" + "SALUD";
                }

                if (CHB7.Checked == true)
                {
                    idea.Type = idea.Type + " -" + "VENTAS";
                }

                if (CHB8.Checked == true)
                {
                    idea.Type = idea.Type + " -" + "EDUCACIÓN";
                }

                new DAORegis().InsertIdea(idea);
                ClientScriptManager m = this.ClientScript;
                m.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Se a guardado correctamente tu idea innovadora.');</script>");
                Response.Redirect("InnovatorPage1.aspx");
            }
            catch
            {
                ClientScriptManager m = this.ClientScript;
                m.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Error.');</script>");
            }
        }
        else
        {
            ClientScriptManager m = this.ClientScript;
            m.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Error la ingresar el tipo de archivo, revice si la extención es correcta.');</script>");

        }


    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        Response.Redirect("InnovatorPage1.aspx");
    }

}
