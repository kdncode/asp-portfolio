using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Update : System.Web.UI.Page
{
    protected void Page_Load(object sender, System.EventArgs e)
    {
        if (!IsPostBack)
        {
            // Use the session state object variable to retrieve the user's record
            SqlDataReader MyReader;
            SqlConnection myConnection = new SqlConnection(SqlDataSource1.ConnectionString);
            SqlCommand myCommand = new SqlCommand(SqlDataSource1.SelectCommand);
            myCommand.Connection = myConnection;
            myCommand.Parameters.AddWithValue("@email", Session["UserEmail"]);
            myConnection.Open();
            try
            {
                // populate the labels if the retrieve is successful
                MyReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection);
                while (MyReader.Read())
                {
                    txtFName.Text = MyReader.GetString(2).Trim();
                    txtLName.Text = MyReader.GetString(3).Trim();
                    lblPassword.Text = MyReader.GetString(1).Trim();
                    txtEmail.Text = MyReader.GetString(0).Trim();
                    txtYear.Text = Convert.ToString(MyReader.GetInt32(4));
                }
            }
            catch (Exception)
            {
                // what to do if the retrieval fails
                Response.Redirect("Login.aspx");
            }
            myConnection.Close();
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string FirstName;
        string LastName;
        // Has user changed email (used as primary key)?
        if (txtEmail.Text.Trim() != (String)Session["UserEmail"])
        {
            SqlConnection MyConnection = new SqlConnection(SqlDataSource1.ConnectionString);
            // Destroy the current record with a SQL DELETE using old email as key
            SqlCommand MyCommand = new SqlCommand(SqlDataSource1.DeleteCommand);
            MyCommand.Connection = MyConnection;
            MyCommand.Parameters.AddWithValue("@Email", Session["UserEmail"]);
            SqlDataReader MyReader;
            MyConnection.Open();
            MyReader = MyCommand.ExecuteReader(CommandBehavior.CloseConnection);
            MyConnection.Close();
            // Now start building a completely new record
            SqlCommand MyCommand2 = new SqlCommand(SqlDataSource1.InsertCommand);
            MyCommand2.Connection = MyConnection;
            MyCommand2.Parameters.AddWithValue("@email", txtEmail.Text);
            if ((txtPassword.Text == ""))
            {
                MyCommand2.Parameters.AddWithValue("@Password", lblPassword.Text);
            }
            else
            {
                MyCommand2.Parameters.AddWithValue("@Password", txtPassword.Text);
            }
            MyCommand2.Parameters.AddWithValue("@FName", txtFName.Text);
            FirstName = txtFName.Text.Trim();
            MyCommand2.Parameters.AddWithValue("@LName", txtLName.Text);
            LastName = txtLName.Text.Trim();
            MyCommand2.Parameters.AddWithValue("@YoB", Convert.ToInt32(txtYear.Text));

            SqlDataReader MyReader2;
            MyConnection.Open();
            MyReader2 = MyCommand2.ExecuteReader(CommandBehavior.CloseConnection);
            // Update both session state object variables
            Session["UserEmail"] = txtEmail.Text;
            Session["UserName"] = (FirstName + (" " + LastName));
        }
        else
        {
            // What to do if user keeps email but makes any other change(s)
            SqlConnection MyConnection = new SqlConnection(SqlDataSource1.ConnectionString);
            // change the current record by using a SQL UPDATE
            SqlCommand MyCommand = new SqlCommand(SqlDataSource1.UpdateCommand);
            MyCommand.Connection = MyConnection;
            MyCommand.Parameters.AddWithValue("@email", txtEmail.Text);
            if ((txtPassword.Text == ""))
            {
                MyCommand.Parameters.AddWithValue("@Password", lblPassword.Text);
            }
            else
            {
                MyCommand.Parameters.AddWithValue("@Password", txtPassword.Text);
            }
            MyCommand.Parameters.AddWithValue("@FName", txtFName.Text);
            FirstName = txtFName.Text.Trim();
            MyCommand.Parameters.AddWithValue("@LName", txtLName.Text);
            LastName = txtLName.Text.Trim();
            MyCommand.Parameters.AddWithValue("@YoB", Convert.ToInt32(txtYear.Text));

            // Write the record
            SqlDataReader MyReader;
            MyConnection.Open();
            MyReader = MyCommand.ExecuteReader(CommandBehavior.CloseConnection);
            MyConnection.Close();
            // Update session state object variable in case changed
            Session["UserName"] = (FirstName + (" " + LastName));
        }
        Response.Redirect("Welcome.aspx");
        // either way, redirect
    }
}