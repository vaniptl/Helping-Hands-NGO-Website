using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO; //For images

public partial class Admin_AddEvents : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    String strCon, isql;
    protected void Page_Load(object sender, EventArgs e)
    {
        strCon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\HHNGO\\HHNGO_2\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True";
        con = new SqlConnection(strCon);
    }
    protected void btnAddEvent_Click(object sender, EventArgs e)
    {
        String fpath = "";
        String fname = "";
        String UploadFolder = Request.PhysicalApplicationPath + "Images\\";
        if (fileImage.HasFile)
        {
            fname = Path.GetFileName(fileImage.PostedFile.FileName);
            fileImage.SaveAs(UploadFolder+fname);

        }
        fpath = "~\\Images\\" + fname;
        isql = "INSERT INTO EVENT(EventName, Description, Address, City, State, Date, Time, Duration, EImage) VALUES('"
            + txtEventName.Text + "','"
            + txtDesc.Text + "','"
            + txtAddress.Text + "','"
            + txtCity.Text + "','"
            + txtState.Text + "','"
            + txtTime.Text + "','"
            + txtDate.Text + "','"
            + txtDuratiion.Text + "','"
            + fpath + "')";

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