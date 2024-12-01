using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Donor_UpdatePassword : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    String strCon, ssql, usql;
    protected void Page_Load(object sender, EventArgs e)
    {
        strCon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\HHNGO\\HHNGO_2\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True";
        con = new SqlConnection(strCon);
    }

    protected void btnChange_Click(object sender, EventArgs e)
    {
        ssql = "select * from donor where Password='" + txtOld.Text + "'and Emailid='" + Session["DEmail"].ToString() + "'";
        SqlDataAdapter sdap = new SqlDataAdapter(ssql, con);
        DataTable dt = new DataTable();
        sdap.Fill(dt);
        if (dt.Rows.Count == 0) //if password not match with prev pass
        {
            lblpass.Text = "Invalid Password";
            lblpass.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            usql = "update donor set Password ='" + txtNew.Text + "' where Emailid='" + Session["DEmail"].ToString() + "'";
            sdap = new SqlDataAdapter(usql, con);
            dt = new DataTable();
            sdap.Fill(dt);
            lblpass.Text = "Password Changed Successfully";
        }
    }
}