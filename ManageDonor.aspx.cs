using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_ManageDonor : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    String strCon, usql, ssql,dsql;
    SqlDataReader rdr;
    protected void Page_Load(object sender, EventArgs e)
    {
        strCon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\HHNGO\\HHNGO_2\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True";
        con = new SqlConnection(strCon);
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        usql = "UPDATE DONOR  SET Fullname=' " + txtName.Text + "', Address='" + txtAddress.Text + "',ContactNo='" + txtContact.Text+ "' where Did=" + drpDonorID.SelectedValue;
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
    protected void drpDonorID_SelectedIndexChanged(object sender, EventArgs e)
    {
        ssql = "select Fullname,Address,ContactNo from donor where Did=" + drpDonorID.SelectedValue;
        cmd = new SqlCommand(ssql, con);
        try
        {
            con.Open();
            rdr = cmd.ExecuteReader();
            rdr.Read();
            txtName.Text = rdr.GetString(0);
            txtAddress.Text = rdr.GetString(1);
            txtContact.Text = rdr.GetString(2);
        }
        catch (Exception ex)
        {
            lblMsg.Text = "Information not Added" + ex.Message;
        }
        finally
        {
            con.Close();
        }

    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        dsql = "delete from donor where Did=" + drpDonorID.SelectedValue;
        cmd = new SqlCommand(dsql, con);
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            lblMsg.Text = "Information deleted";
        }
        catch (Exception ex)
        {
            lblMsg.Text = "Information not deleted" + ex.Message;
        }
        finally
        {
            con.Close();
        }
    }
}