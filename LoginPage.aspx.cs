using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BTN_Login_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FastHostsV1ConnectionString"].ConnectionString);
        con.Open();
        
        SqlCommand cmd = new SqlCommand("SELECT * FROM UserInfo WHERE Username = '" + TB_Login_Username.Text + "' AND [Password] = '" + TB_Login_Password.Text + "' ", con);
        SqlDataReader sdr = cmd.ExecuteReader();
        if ((sdr.Read() == true))
        {
            alert.Style.Add("visibility", "visible");
            alert.Style.Add("background-color", "green");
            Info.Text = "Access Granted | You have been successfully logged in";
            Session["User"] = new User(TB_Login_Username.Text);
            Response.AddHeader("REFRESH", "3;URL=HomePage.aspx");
        }

        else

        {
            alert.Style.Add("visibility", "visible");
            alert.Style.Add("background-color", "red");
            Info.Text = "Access Denied | You have entered an incorrect Username or Password";
        }

    }
}