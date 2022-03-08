using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class adddealer : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("insert into dealer(name,contact) values('" + TextBox1.Text + "'," + TextBox2.Text + ")", conn);
            cmd.ExecuteNonQuery();
            /*SqlCommand cmd2 = new SqlCommand("CREATE TABLE[dbo].[" + TextBox1.Text + "]([Id] INT NOT NULL PRIMARY KEY IDENTITY,[bill] VARCHAR(50) NULL,[date] DATE NULL,[total] NUMERIC NULL)", conn);
            cmd2.ExecuteNonQuery();*/
            Response.Write("<script>alert('Success')</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";
            conn.Close();
        }
        catch {
            Response.Write("<script>alert('Please Try After Some Time....')</script>");
            conn.Close();   
        }
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}