using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class _Default : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\mydb.mdf;Integrated Security=True;Connect Timeout=30");
    protected void Page_Load(object sender, EventArgs e)
    {
       
       
    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from login where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", conn);
            DataSet ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                Response.Redirect("master.aspx");
            }
            else
            {
                Label1.Text = "Username And Password Incorrect";
            }
            conn.Close();
        }
        catch {
            Response.Write("<script>alert('Please Try After Some Time...')</script>");
            conn.Close();
        }
    }
}