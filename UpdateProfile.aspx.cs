using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Donor_UpdateProfile : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    String strCon, ssql, usql;
    protected void Page_Load(object sender, EventArgs e)
    {
        strCon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\HHNGO\\HHNGO_2\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True";
        con = new SqlConnection(strCon);
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        usql = "UPDATE DONOR  SET Fullname=' " + txtname.Text + "', Address='" + txtAddress.Text + "',ContactNo='" + txtContact.Text + "' where Emailid='" + Session["DEmail"].ToString() + "'";
        cmd = new SqlCommand(usql, con);
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            lblMsg.Text = "Information Updated";
        }
        catch (Exception ex)
        {
            lblMsg.Text = "Information not Updated" + ex.Message;
        }
        finally
        {
            con.Close();
        }
    }
}