using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;



public partial class purchase : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\mydb.mdf;Integrated Security=True;Connect Timeout=30");

    DataTable dt=new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!Page.IsPostBack)
        {
            if (ViewState["Records"] == null)
            {
                dt.Columns.Add("ITEMS");
                dt.Columns.Add("QTY");
                dt.Columns.Add("PRICE");
                dt.Columns.Add("GST");
                dt.Columns.Add("TOTAL");
                ViewState["Records"] = dt;
            }
        }

    }
   void calsum()
    {
        Int64 gtt = 0;
        foreach (GridViewRow row in GridView1.Rows)
        {
            gtt = gtt + Convert.ToInt64(row.Cells[4].Text);
        }
        GridView1.FooterRow.Cells[3].Text = "Grand Total";
        GridView1.FooterRow.Cells[4].Text = gtt.ToString();
    }

   

    protected void Button1_Click(object sender, EventArgs e)
    {
        int n1 = Convert.ToInt32(TextBox5.Text);
        int n2 = Convert.ToInt32(TextBox6.Text);
        int t = n1 * n2;
        int g = Convert.ToInt32(DropDownList3.Text);
        float f = (t*g)/100;
        float gt = t + f;
        dt = (DataTable)ViewState["Records"];
        dt.Rows.Add(DropDownList1.SelectedItem,TextBox5.Text,TextBox6.Text,f.ToString(),gt.ToString());
        GridView1.DataSource = dt;
        GridView1.DataBind();
        TextBox5.Text = "";
        TextBox6.Text = "";
       

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            conn.Open();
            try
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from " + TextBox1.Text + "", conn);
                DataSet ds = new DataSet();
                da.Fill(ds);
                Label4.Text = "Bill No. Already Have";
            }
            catch
            {

                SqlCommand cmd = new SqlCommand("insert into purchase values('" + TextBox1.Text + "','" + DropDownList2.SelectedItem + "'," + GridView1.FooterRow.Cells[4].Text + ",@DOP)", conn);
                cmd.Parameters.AddWithValue("@DOP", TextBox2.Text);
                cmd.ExecuteNonQuery();

                SqlCommand cmd2 = new SqlCommand("CREATE TABLE[dbo].[" + TextBox1.Text + "]([Id] INT NOT NULL PRIMARY KEY IDENTITY,[items] VARCHAR(50),[qty] int,[price] int,[gst] float,[total] int)", conn);
                cmd2.ExecuteNonQuery();

                foreach (GridViewRow gr in GridView1.Rows)
                {
                    SqlCommand cmd3 = new SqlCommand("insert into " + TextBox1.Text + "(items,qty,price,gst,total) values('" + gr.Cells[0].Text + "'," + gr.Cells[1].Text + "," + gr.Cells[2].Text + "," + gr.Cells[3].Text + "," + gr.Cells[4].Text + ")", conn);
                    cmd3.ExecuteNonQuery();
                    SqlCommand cmd4 = new SqlCommand("update items set qty = qty + " + gr.Cells[1].Text + " where name='" + gr.Cells[0].Text + "' ", conn);
                    cmd4.ExecuteNonQuery();
                }

                Response.Write("<script>alert('Success')</script>");

                TextBox1.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                Label4.Controls.Clear();
                GridView1.Controls.Clear();
            }
            conn.Close();
        }
        catch {
            Response.Write("<script>alert('Please Try After Some Time...')</script>");
            conn.Close();
        }
        }
        

    protected void GridView1_DataBound(object sender, EventArgs e)
    {
        calsum();
    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}