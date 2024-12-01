using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Login : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    String strCon, ssql;
    SqlDataAdapter da;
    SqlDataReader sdr;
    protected void Page_Load(object sender, EventArgs e)
    {
        strCon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\HHNGO\\HHNGO_2\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True";
        con = new SqlConnection(strCon);
        btnLogin.Enabled= false;
        
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (rdoAdmin.Checked == true)
        {
            ssql = "select Emailid,Fullname,Aid,Address from Admin where Username ='"
                + txtUsername.Text + "' and Password='"
                + txtPass.Text + "'";
        }
        else if (rdoDonor.Checked == true)
        {
            ssql = "select Emailid,Fullname,Did,Address from Donor where Username ='"
                + txtUsername.Text + "' and Password='"
                + txtPass.Text + "'";
        }
        else if (rdoVol.Checked == true)
        {
            ssql = "select Emailid,Fullname,Vid,Address from Volunteer where Username ='"
                + txtUsername.Text + "' and Password='"
                + txtPass.Text + "'";
        }

        try
        {
            cmd=new SqlCommand(ssql,con);
            con.Open();
            da = new SqlDataAdapter(ssql, con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows[0]["Emailid"] == "")
            {
                Response.Redirect("Login.aspx");
            }
            else if(rdoDonor.Checked==true)
            {
                Session["Did"]=dt.Rows[0]["Did"];
                Session["Dname"]=dt.Rows[0]["Fullname"];
                Session["DEmail"]=dt.Rows[0]["Emailid"];
                Session["DAddress"]=dt.Rows[0]["Address"];

                Response.Redirect("~/Donor/FrontPage.aspx");
            }
            else if(rdoAdmin.Checked==true)
            {
                Session["Aid"]=dt.Rows[0]["Aid"];
                Session["Aname"]=dt.Rows[0]["Fullname"];
                Session["AEmail"]=dt.Rows[0]["Emailid"];
                Session["AAddress"]=dt.Rows[0]["Address"];

                Response.Redirect("~/Admin/FrontPage.aspx");
            }
            else if(rdoVol.Checked==true)
            {
                Session["Vid"]=dt.Rows[0]["Vid"];
                Session["Vname"]=dt.Rows[0]["Fullname"];
                Session["VEmail"]=dt.Rows[0]["Emailid"];
                Session["VAddress"]=dt.Rows[0]["Address"];

                Response.Redirect("~/Volunteer/FrontPage.aspx");
            }
            else
            {
                lblLogin.Text="Please select user type or enter correct login details";
            }

        }
        catch(Exception ex)
        {
            lblLogin.Text="No Data Found "+ex.Message;

        }
        finally
        {
            con.Close();
        }
                
        }

    protected void Logintype(object sender, EventArgs e)
    {
        if ((rdoAdmin.Checked == true) || (rdoDonor.Checked == true) || (rdoVol.Checked == true))
        {
            txtPass.Enabled = true;
            txtUsername.Enabled = true;
            btnLogin.Enabled = true;
        }
    }
}