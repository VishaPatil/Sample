using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection myConnection;
    SqlCommand myCommand;

    protected void Page_Load(object sender, EventArgs e)
    {
        myConnection = new SqlConnection("server=localhost;" +
                                       "Trusted_Connection=yes;" +
                                       "database=sample; " +
                                       "connection timeout=30");

        try
        {
            myConnection.Open();
             myCommand = new SqlCommand("Command_String", myConnection);
            Console.WriteLine("Database Connectivity Established");
        }
        catch(Exception ex){
            Console.WriteLine("Error While Connecting to Database"+ex.ToString());
        }


    }


    protected void Add_Click(object sender, EventArgs e)
    {
        Console.WriteLine("Adding Person Information to Database");
       
        string commandText = "INSERT INTO person (firstname, lastname, id) " +
                        "Values ('" + firstname.Text + "','" + lastname.Text + "', " + id.Text + ")";
        myCommand.CommandText = commandText;
        try
        {
            myCommand.ExecuteNonQuery();
            myConnection.Close();
        }
        catch(Exception excp)
        {
            Console.WriteLine(excp.ToString());
        }
    }

    protected void Del_Click(object sender, EventArgs e)
    {
         Console.WriteLine("Deleting Person Information From Database");
         string commandText = "DELETE FROM person " +
                        "WHERE id=" + id.Text + ""; 
         myCommand.CommandText =commandText;
         try
         {
            myCommand.ExecuteNonQuery();
            myConnection.Close();
         }
         catch(Exception excp)
         {
            Console.WriteLine(excp.ToString());
         }
    }
    
    protected void Update_Click(object sender, EventArgs e)
    {
        Console.WriteLine("Updating Person Information From Database");
        string commandText = "UPDATE person " +
                            "SET firstname='"+firstname.Text+"',lastname='"+lastname.Text+
                       "' WHERE id=" + id.Text;
        myCommand.CommandText = commandText;
        try
        {
            myCommand.ExecuteNonQuery();
            myConnection.Close();
        }
        catch (Exception excp)
        {
            Console.WriteLine(excp.ToString());
        }

    }
}
