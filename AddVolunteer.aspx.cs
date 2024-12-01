using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_AddVolunteer : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    String strCon, isql;
    protected void Page_Load(object sender, EventArgs e)
    {
        strCon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\HHNGO\\HHNGO_2\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True";
        con = new SqlConnection(strCon);
    }
    protected void btnReg_Click(object sender, EventArgs e)
    {
        isql = "INSERT INTO Volunteer (Fullname,Address,Emailid,ContactNo,UserName,password) Values('"
            + txtname.Text + "','"
            + txtAdd.Text + "','"
            + txtEmail.Text + "','"
            + txtContact.Text + "','"
            + txtUsername.Text + "','"
            + txtPass.Text + "')";
        cmd = new SqlCommand(isql, con);

        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            lblregister.Text = "Information Added";
        }
        catch (Exception ex)
        {
            lblregister.Text = "Information not Added" + ex.Message;
        }
        finally
        {
            con.Close();
        }
 
    }
}
