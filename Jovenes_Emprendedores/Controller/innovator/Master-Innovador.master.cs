using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_view_young_innova_Master_Innovador : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("/view/Login.aspx");
        }

    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("/View/view_young_innova/InnovatorPage1.aspx");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("/View/view_young_innova/Registration_of_idea.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
    }
}
