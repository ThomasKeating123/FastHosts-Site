using System;
using System.Collections.Generic;
using System.Configuration;
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

    protected void BTN_Register_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FastHostsV1ConnectionString"].ConnectionString);
            con.Open();

            string inserQuery = "INSERT into UserInfo (First_Name, Surname, Username, Email, Password, Country) Values(@First_Name, @Surname, @Username, @Email, @Password, @Country)";
            SqlCommand cmd = new SqlCommand(inserQuery, con);
            cmd.Parameters.AddWithValue("@First_Name", TB_Firstname.Text);
            cmd.Parameters.AddWithValue("@Surname", TB_Surname.Text);
            cmd.Parameters.AddWithValue("@Username", TB_Username.Text);
            cmd.Parameters.AddWithValue("@Email", TB_Email.Text);
            cmd.Parameters.AddWithValue("@Password", TB_Password.Text);
            cmd.Parameters.AddWithValue("@Country", DDL_Country.SelectedItem.ToString());

            string checkUser = "SELECT COUNT(*) FROM UserInfo WHERE Username = '" + TB_Username.Text + "'";
            SqlCommand cmd_Check = new SqlCommand(checkUser, con);
            int temp = Convert.ToInt32(cmd_Check.ExecuteScalar().ToString());

            if (temp != 0)
            {
                Response.Write("User already exists, try a different username");
                con.Close();
            }
            else
            {
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("HomePage.aspx");
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine("Error is as follows: " + ex.ToString());
            throw;
        }
    }
}