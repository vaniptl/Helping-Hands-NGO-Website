using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class DVRegister : System.Web.UI.Page
{
    SqlConnection con;
    string str, isql;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        str = "Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\HHNGO\\HHNGO_2\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True";
        con = new SqlConnection(str);
    }
    protected void btnReg_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string table_name = "";
            if (rdoDonor.Checked == true)
            {
                table_name = "Donor";
            }
            
            isql = "INSERT INTO " + table_name + " (Fullname,Address,Emailid,ContactNo,UserName,password) Values('"
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
                lblregister.Text = "Registration Successfull. Please Login";
            }
            finally
            {
                con.Close();
            }
        }
        else { lblregister.Text = "Select User Type - Donor or Volunteer"; }
    }
  
}
    
