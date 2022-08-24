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
        if (Session["User"] == null)
        {
            Response.Redirect("Redirect.aspx");

        }
    }

    protected void BTN_Express_Interest_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridView1.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                CheckBox check = (CheckBox)row.FindControl("CB_Select");
                if (check.Checked)
                {
                    Label lbl_TldName = (Label)row.FindControl("LBL_TLD_Name");
                    string tldName = lbl_TldName.Text;

                    User sessionUser = Session["User"] as User;

                    string userName = sessionUser.Username;

                    string select_TLD_ID = "SELECT tldID from TLDs WHERE tldName = '" + tldName + "'";
                    string select_User_ID = "SELECT UserID from UserInfo Where Username = '" + userName + "'";

                    string insertInterest = "INSERT into interests (UserID, tldID) Values(@userID, @tldID)";

                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FastHostsV1ConnectionString"].ConnectionString);

                    SqlCommand cmd_TLD = new SqlCommand(select_TLD_ID, con);
                    SqlDataReader TLD_reader;

                    SqlCommand cmd_User = new SqlCommand(select_User_ID, con);
                    SqlDataReader User_reader;

                    SqlCommand interestInsert = new SqlCommand(insertInterest, con);

                    con.Open();

                    TLD_reader = cmd_TLD.ExecuteReader();

                    string tldID = "";
                    string userID = "";

                    while (TLD_reader.Read())
                    {
                        tldID = TLD_reader["tldID"].ToString();
                    }
                    TLD_reader.Close();

                    User_reader = cmd_User.ExecuteReader();

                    while (User_reader.Read())
                    {
                        userID = User_reader["UserID"].ToString();
                    }
                    User_reader.Close();


                    string interestCheck = "SELECT COUNT(tldID) FROM interests WHERE tldID = '" + tldID + "' AND UserID = '" + userID + "'";
                    SqlCommand cmd_Check = new SqlCommand(interestCheck, con);
                    int temp = Convert.ToInt32(cmd_Check.ExecuteScalar().ToString());

                    if (temp != 0)
                    {
                        Response.Write("You have already expressed interest in this TLD");
                        con.Close();
                    }
                    else
                    {
                        interestInsert.Parameters.AddWithValue("@userID", userID);
                        interestInsert.Parameters.AddWithValue("@tldID", tldID);

                        interestInsert.ExecuteNonQuery();

                        con.Close();
                    }
                }
            }
        }
    }
}