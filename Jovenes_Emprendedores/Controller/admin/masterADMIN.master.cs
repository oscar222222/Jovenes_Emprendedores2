using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_view_admin_masterADMIN : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void BT_RedREGIS_Click(object sender, EventArgs e)
    {
        Response.Redirect("/View/view_admin/Edit_Admin.aspx");
    }

    protected void BT_reg_Click(object sender, EventArgs e)
    {
        Response.Redirect("/View/view_admin/ConditionUser.aspx");
    }
}

