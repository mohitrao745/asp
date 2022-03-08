using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class issuedto : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\mydb.mdf;Integrated Security=True;Connect Timeout=30");
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            conn.Open();

            SqlCommand cmd = new SqlCommand("insert into issuedto values('" + DropDownList1.SelectedItem + "','" + DropDownList2.SelectedItem + "',@DOP," + TextBox1.Text + ")", conn);
            cmd.Parameters.AddWithValue("@DOP", TextBox2.Text);
            cmd.ExecuteNonQuery();

            SqlCommand cmd4 = new SqlCommand("update items set qty = qty - " + TextBox1.Text + " where name='" + DropDownList2.SelectedItem + "' ", conn);
            cmd4.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('Success')</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
        catch {
            Response.Write("<script>alert('Please Try After Some Time...')</script>");
            conn.Close();
        }
        }
}