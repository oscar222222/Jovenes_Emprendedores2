using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_view_admin_ConditionUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void bt_adminUNi_Click(object sender, EventArgs e)
    {

        if (RD_IDEA.Checked == true)
        {

            gv_IdeAdmin.Visible = true;

            gv_UsuAdmin.Visible = false;
            gv_UsuAdmin0.Visible = false;
            gv_UsuAdmin1.Visible = false;

        }

    }



    protected void bt_adminUNi0_Click(object sender, EventArgs e)
    {
        if (RD_user1.Checked == true)
        {
            gv_IdeAdmin.Visible = false;
            gv_UsuAdmin.Visible = true;
            gv_UsuAdmin0.Visible = false;
            gv_UsuAdmin1.Visible = false;
        }

        if (RD_user2.Checked == true)
        {
            gv_IdeAdmin.Visible = false;
            gv_UsuAdmin.Visible = false;
            gv_UsuAdmin0.Visible = true;
            gv_UsuAdmin1.Visible = false;
        }

        if (RD_usera3.Checked == true)
        {
            gv_IdeAdmin.Visible = false;
            gv_UsuAdmin.Visible = false;
            gv_UsuAdmin0.Visible = false;
            gv_UsuAdmin1.Visible = true;
        }



    }

    protected void bt_adminUNi1_Click(object sender, EventArgs e)
    {

        if (RD_USER.Checked == true)

        {
            gv_IdeAdmin.Visible = false;
            gv_UsuAdmin.Visible = false;
            gv_UsuAdmin0.Visible = false;
            gv_UsuAdmin1.Visible = false;

            RD_user1.Visible = true;
            RD_user2.Visible = true;
            RD_usera3.Visible = true;

            bt_adminUNi0.Visible = true;
        }

    }



    protected void gv_UsuAdmin1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        e.NewValues["Date_of_birth"] = e.OldValues["Date_of_birth"];



        if (((RadioButton)gv_UsuAdmin1.Rows[e.RowIndex].FindControl("RD_user1")).Checked == true)
        {
            e.NewValues["Condition"] = "ACTIVADO";
        }


        if (((RadioButton)gv_UsuAdmin1.Rows[e.RowIndex].FindControl("RD_user2")).Checked == true)
        {
            e.NewValues["Condition"] = "DESACTIVADO";

        }




    }

    protected void gv_UsuAdmin0_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        e.NewValues["Date_of_birth"] = e.OldValues["Date_of_birth"];

        if (((RadioButton)gv_UsuAdmin0.Rows[e.RowIndex].FindControl("RD_user1")).Checked == true)
        {
            e.NewValues["Condition"] = "ACTIVADO";
        }

        if (((RadioButton)gv_UsuAdmin0.Rows[e.RowIndex].FindControl("RD_user2")).Checked == true)
        {
            e.NewValues["Condition"] = "DESACTIVADO";
        }




    }

    protected void gv_UsuAdmin_RowUpdating1(object sender, GridViewUpdateEventArgs e)
    {
        e.NewValues["Date_of_birth"] = e.OldValues["Date_of_birth"];



        if (((RadioButton)gv_UsuAdmin.Rows[e.RowIndex].FindControl("RD_user1")).Checked == true)
        {
            e.NewValues["Condition"] = "ACTIVADO";
        }

        if (((RadioButton)gv_UsuAdmin.Rows[e.RowIndex].FindControl("RD_user2")).Checked == true)
        {
            e.NewValues["Condition"] = "DESACTIVADO";
        }


    }
}

