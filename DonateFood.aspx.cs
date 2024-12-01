using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO; //For images

public partial class Donor_DonateFood : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    String strCon, isql;
    protected void Page_Load(object sender, EventArgs e)
    {
        strCon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\HHNGO\\HHNGO_2\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True";
        con = new SqlConnection(strCon);
    }
    protected void btnDonate_Click(object sender, EventArgs e)
    {
        String fpath = "";
        String fname = "";
        String UploadFolder = Request.PhysicalApplicationPath + "Images\\";
        if (fileImgupload.HasFile)
        {
            fname = Path.GetFileName(fileImgupload.PostedFile.FileName);
            fileImgupload.SaveAs(UploadFolder + fname);

        }
        fpath = "~\\Images\\" + fname;
        isql = "INSERT INTO FOODDONATION(Did, Foodtype, Fooddesc, FoodImage, PickupLocation,Status) VALUES('"
            + txtID.Text + "','"
            + txtFoodType.Text + "','"
            + txtDesc.Text + "','"
            + fpath + "','"
            + txtPickupLocation.Text+"','Donated')";
        cmd = new SqlCommand(isql, con);
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            lblMsg.Text = "Information Added";
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
}