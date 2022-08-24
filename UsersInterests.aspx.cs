using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)
        {
            Response.Redirect("Redirect.aspx");
        }
        lbl_TLD.Visible = false;

        User sessionUser = Session["User"] as User;

        string userName = sessionUser.Username;

        string select_User_ID = "SELECT UserID from UserInfo Where Username = '" + userName + "'";

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FastHostsV1ConnectionString"].ConnectionString);

        SqlCommand cmd_User = new SqlCommand(select_User_ID, con);
        SqlDataReader User_reader;

        con.Open();

        string userID = "";

        User_reader = cmd_User.ExecuteReader();

        while (User_reader.Read())
        {
            userID = User_reader["UserID"].ToString();
        }
        User_reader.Close();

        string select_TLD_ID = "SELECT tldID FROM interests Where UserID = '" + userID + "'";

        SqlCommand cmd_TLD = new SqlCommand(select_TLD_ID, con);
        SqlDataReader TLD_reader;

        List<string> tldID = new List<string>();

        TLD_reader = cmd_TLD.ExecuteReader();

        while (TLD_reader.Read())
        {
            foreach (DbDataRecord item in TLD_reader.Cast<DbDataRecord>())
            {
                tldID.Add(item["tldID"].ToString());
            }
        }
        TLD_reader.Close();

        List<string> tldName = new List<string>();

        foreach (string item in tldID)
        {
            string select_TLD_Name = "SELECT tldName FROM TLDs Where tldID = '" + item + "'";

            SqlCommand cmd_Name = new SqlCommand(select_TLD_Name, con);
            SqlDataReader TLD_Name_reader;

            TLD_Name_reader = cmd_Name.ExecuteReader();

            while (TLD_Name_reader.Read())
            {
                tldName.Add(TLD_Name_reader["tldName"].ToString());
            }
            TLD_Name_reader.Close();
        }
        foreach (string name_TLD in tldName)
        {
            GridView1.DataSource = tldName;
            lbl_TLD.Visible = true;
            GridView1.DataBind();
        }
        con.Close();
    }
}