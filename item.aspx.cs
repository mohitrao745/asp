using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class item : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\mydb.mdf;Integrated Security=True;Connect Timeout=30");
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            conn.Open();
            SqlDataAdapter cmd1 = new SqlDataAdapter("select * from items where name='" + TextBox1.Text + "'", conn);
            DataSet ds = new DataSet();
            cmd1.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                Response.Write("<script>alert('Item Already Have in List. Please Enter Another Item to Save')</script>");
            }
            else
            {
                SqlCommand cmd2 = new SqlCommand("insert into items(name,qty) values('" + TextBox1.Text + "',0)", conn);
                cmd2.ExecuteNonQuery();
                Response.Write("<script>alert('Success')</script>");
                TextBox1.Text = "";
            }
            conn.Close();
        }
        catch {
            Response.Write("<script>alert('Please Try After Some Time...')</script>");
            conn.Close();
        }
        }
}