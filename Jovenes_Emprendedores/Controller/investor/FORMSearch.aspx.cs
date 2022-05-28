using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_view_investor_FORMSearch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["search"] = null;
        Session["search1"] = null;
    }

    protected void BSearch_Click(object sender, EventArgs e)
    {
        Session["search"] = TBSearch.Text;
        DataList1.Visible = true;
        DataList2.Visible = false;
    }

    protected void Bfil_Click(object sender, EventArgs e)
    {

        DataList2.Visible = true;
        DataList1.Visible = false;

        if (CHB1.Checked == true)
        {
            Session["search1"] = "TECNOLOGIA";
        }

        if (CHB2.Checked == true)
        {
            Session["search1"] = "SOFTWARE";
        }

        if (CHB3.Checked == true)
        {
            Session["search1"] = "HADWARE";
        }


        if (CHB4.Checked == true)
        {
            Session["search1"] = "NETWORKING";
        }

        if (CHB5.Checked == true)
        {
            Session["search1"] = "CUIDADO AMBIENTAL";
        }

        if (CHB6.Checked == true)
        {
            Session["search1"] = "SALUD";
        }

        if (CHB7.Checked == true)
        {
            Session["search1"] = "VENTAS";
        }

        if (CHB8.Checked == true)
        {
            Session["search1"] = "EDUCACIÓN";
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

 
}