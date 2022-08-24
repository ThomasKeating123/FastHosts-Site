using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        User sessionUser = Session["User"] as User;
        if (sessionUser != null)
        {
            LBL_User.Text = "Logged in as " + sessionUser.Username;
        }
        else
        {
            LBL_User.Text = "You are not logged in";
        }
        if (IsPostBack)
        {

            if (sessionUser != null)
            {
                LBL_User.Text = "Logged in as " + sessionUser.Username;
            }
            else
            {
                LBL_User.Text = "You are not logged in";
            }
        }
    }
}
