using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Donor_Feedback : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    String strCon, isql;
    protected void Page_Load(object sender, EventArgs e)
    {
        strCon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\HHNGO\\HHNGO_2\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True";
        con = new SqlConnection(strCon);
    }
    protected void btnFeedback_Click(object sender, EventArgs e)
    {
        isql = 

        cmd = new SqlCommand(isql, con);
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            lblAddEvent.Text = "Information Added";
        }
        catch (Exception ex)
        {
            lblAddEvent.Text = "Information not Added" + ex.Message;
        }
        finally
        {
            con.Close();
        }
    }
}