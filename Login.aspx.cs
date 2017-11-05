using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        string UserID = "";
        string Password = "";
        SqlDataReader MyReader;
        SqlConnection myConnection = new SqlConnection(SqlDataSource1.ConnectionString);
        SqlCommand myCommand = new SqlCommand(SqlDataSource1.SelectCommand);
        myCommand.Connection = myConnection;
        myCommand.Parameters.AddWithValue("@password", TextBox2.Text);
        myCommand.Parameters.AddWithValue("@email", TextBox1.Text);
        myConnection.Open();
        MyReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection);
        while (MyReader.Read())
        {
            UserID = MyReader.GetString(2).Trim() + " " + MyReader.GetString(3).Trim();
            Password = MyReader.GetString(1).Trim();
        }

        myConnection.Close();

        if (TextBox2.Text == "")
            Label1.Text = "Please enter your Username and Password";
        else
        {


            if (TextBox2.Text.Trim() == Password)
            {
                Session["UserName"] = UserID;
                Session["UserEmail"] = TextBox1.Text.Trim();
                Response.Redirect("Welcome.aspx");
            }
            else
            {
                Label1.Text = "Incorrect User Name or Password";
            }
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string UserID = "";
        string Password = "";
        SqlDataReader MyReader;
        SqlConnection myConnection = new SqlConnection(SqlDataSource1.ConnectionString);
        SqlCommand myCommand = new SqlCommand(SqlDataSource1.SelectCommand);
        myCommand.Connection = myConnection;
        myCommand.Parameters.AddWithValue("@password", TextBox2.Text);
        myCommand.Parameters.AddWithValue("@email", TextBox1.Text);
        myConnection.Open();
        MyReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection);
        while (MyReader.Read())
        {
            UserID = MyReader.GetString(2).Trim() + " " + MyReader.GetString(3).Trim();
            Password = MyReader.GetString(1).Trim();
        }

        myConnection.Close();
        if (TextBox2.Text == "")
            Label1.Text = "Please enter your Username and Password";
        else
        {
            if (TextBox2.Text.Trim() == Password)
            {
                Session["Username"] = UserID;
                Session["UserEmail"] = TextBox1.Text.Trim();
                Response.Redirect("Update.aspx");
            }
            else
            {


                Label1.Text = "Incorrect Username or Password";

            }
;        }
 
    }
}