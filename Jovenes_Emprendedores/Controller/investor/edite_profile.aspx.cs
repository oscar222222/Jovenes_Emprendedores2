using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_view_investor_edite_profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }




    protected void FormView1_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        if (e.NewValues["Date_of_birth"].Equals(""))
        {
            e.NewValues["Date_of_birth"] = e.OldValues["Date_of_birth"];
        }

        if (e.NewValues["Password"].Equals(""))
        {
            e.NewValues["Password"] = e.OldValues["Password"];
        }
    }

    protected void LB_DVermas_Click(object sender, EventArgs e)
    {
        LinkButton verIdea = (LinkButton)sender;
        DataListItem item = (DataListItem)verIdea.NamingContainer;
        Label idea = (Label)item.FindControl("L_DNombre");
        Label idea_Emp = (Label)item.FindControl("Label4");
        Session["nombreIdea"] = idea.Text;
        Session["id_Emp"] = int.Parse(idea_Emp.Text);
        Response.Redirect("VerIdea.aspx");

    }













    protected void HPLSearch_Click(object sender, EventArgs e)
    {
        Response.Redirect("FORMSearch.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("FORMSearch.aspx");
    }

    protected void LB_DVermas_Click1(object sender, EventArgs e)
    {
        LinkButton verIdea = (LinkButton)sender;
        DataListItem item = (DataListItem)verIdea.NamingContainer;
        Label idea = (Label)item.FindControl("L_DNombre");
        Label idea_Emp = (Label)item.FindControl("Label4");
        Session["nombreIdea"] = idea.Text;
        Session["id_Emp"] = int.Parse(idea_Emp.Text);
        Response.Redirect("VerIdea.aspx");
    }
}