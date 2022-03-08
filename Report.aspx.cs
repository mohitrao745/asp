using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;



public partial class Report : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\mydb.mdf;Integrated Security=True;Connect Timeout=30");
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

  
   

    protected void Button1_Click1(object sender, EventArgs e)
    {
       
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Button1.Visible = true;

        try
        {
            conn.Open();
            SqlDataAdapter cmd1 = new SqlDataAdapter("select * from purchase where dop between '" + TextBox1.Text + "' and '" + TextBox2.Text + "'", conn);
            DataSet ds = new DataSet();
            cmd1.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            conn.Close();
        }
        catch
        {
            Response.Write("<script>alert('Please Try After Some Time...')</script>");
            conn.Close();
        }
        
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "show")
        {
            try
            {
                conn.Open();
                int crow;
                crow = Convert.ToInt32(e.CommandArgument.ToString());
                string v = GridView1.Rows[crow].Cells[1].Text;
                Label4.Text = "BILL No." + v;
                SqlDataAdapter cmd1 = new SqlDataAdapter("select * from " + v + "", conn);
                DataSet ds = new DataSet();
                cmd1.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();
                conn.Close();
            }
            catch
            {
                Response.Write("<script>alert('Please Try After Some Time...')</script>");
                conn.Close();
            }
           
       }
    }
}