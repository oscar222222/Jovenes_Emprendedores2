using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_view_investor_MasterPageInvestor : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("/View/view_investor/edite_profile.aspx");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("/View/view_investor/FORMSearch.aspx");
    }
}
