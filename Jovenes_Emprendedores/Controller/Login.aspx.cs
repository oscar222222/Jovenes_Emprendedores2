using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        EUserInformation user = new EUserInformation();
        user.Username = Login1.UserName;
        user.Password = Login1.Password;
        user = new Daologin().login(user);
        if (user == null)
        {
            Login1.FailureText = "USUARIO O CLAVE INCORRECTA";
            return;
        }
        else
        {
            Session["user"] = user;



            switch (user.Id_role1) /*
                                        COMPARE FOREIGN KEYS TO ESTABLISH ROLE TYPE*/
            {
                case 1:

                    ClientScriptManager cm = this.ClientScript;
                    cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('INICIO SESIÓN COMO ADMINISTRADOR'); window.location = '/View/view_admin/ConditionUser.aspx';</script>");
                    new DAOProyectos().obtenerIdeas(user.Id);
                    Session["UserID"] = user.Id;
                    Session["usuario"] = user.Username;
                    Response.Redirect("/View/view_admin/ConditionUser.aspx");

                    break;
                case 2:
                    ClientScriptManager n = this.ClientScript;

                    n.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('BIENVENIDO INVERSOR '); </script>");
                    new DAOProyectos().obtenerIdeas(user.Id);
                    Session["UserID"] = user.Id;
                    Session["usuario"] = user.Username;
                    Response.Redirect("/View/view_investor/edite_profile.aspx");
                    break;
                case 3:
                    ClientScriptManager j = this.ClientScript;
                    j.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('BIENVENIDO JOVEN EMPRENDEDOR');</script>");

                    new DAOProyectos().obtenerIdeas(user.Id);
                    Session["UserID"] = user.Id;
                    Session["usuario"] = user.Username;
                    Response.Redirect("/View/view_young_innova/InnovatorPage1.aspx");
                    break;



            }


        }


    }


}


