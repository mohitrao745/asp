<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>INVENTORY MANAGEMENT</title>
    <link rel="icon" href="img/logo.jfif" />
    <style>
        body
{   
    background-image:url(img/img19.jpg);
    background-attachment:fixed;
    background-size:cover;
    
    }
       
    table
    {
        text-align:center;
        color:White;
        margin-left:20%;
        margin-right:20%;
        }
        
                table,tr,td
        {
                   
                    border-collapse:collapse;
                    background-color:rgba(0,0,0,0.1);
 
            }

        .style1
        {
            height: 61px;
        }
        .style2
        {
            height: 51px;
        }

        .style3
        {
            height: 52px;
        }
        GridView{
        text-align:center;
        color:White;
        margin-left:20%;
        margin-right:20%;
         }

    </style>
     <script type="text/javascript">
         window.history.forward();
         function noback() {
             window.history.forward();
         }

     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
         <div id="div1" align="center" runat="server">
        <asp:Label ID="Label3" runat="server" Text="Report" Font-Bold="True" Font-Names="Algerian" Font-Size="X-Large" ForeColor="White" ></asp:Label>
    </div>
        <table width="63%">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="From" Font-Bold="False" Font-Names="Algerian"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="To" Font-Bold="False" Font-Names="Algerian"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Select a Date" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Select a Date" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="GET" Height="51px" 
                    Width="115px" BorderColor="Black" BorderWidth="2px" 
                    Font-Names="Algerian" Font-Size="Larger" OnClick="Button2_Click"/>
                    
                </td>
            </tr>
            </table>
       
                <asp:GridView ID="GridView1" runat="server" AlternatingRowStyle-Height="10px" Width="63%" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
<AlternatingRowStyle Height="10px"></AlternatingRowStyle>
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="ID" />
                        <asp:BoundField DataField="bill" HeaderText="BILL NO." />
                        <asp:BoundField DataField="dealername" HeaderText="DEALER" />
                        <asp:BoundField DataField="total" HeaderText="AMMOUNT" />
                        <asp:BoundField DataField="dop" HeaderText="DATE" />
                        <asp:ButtonField ButtonType="Button" CommandName="show" Text="SHOW" />
                    </Columns>
         </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [bill], [dealername], [total], [dop] FROM [purchase] WHERE (([dop] &lt; @dop) AND ([dop] &lt; @dop2))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="dop" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="TextBox2" Name="dop2" PropertyName="Text" Type="String" />
                    </SelectParameters>
         </asp:SqlDataSource>
        <div align="center">
        <asp:Label ID="Label4" runat="server" Text="Label" Font-Names="Algerian" ></asp:Label>
            </div> 
            <asp:GridView ID="GridView2" runat="server" AlternatingRowStyle-Height="10px" Width="63%"></asp:GridView>
        <table width="63%">
        <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Print" Height="51px" 
                    Width="115px" BorderColor="Black" BorderWidth="2px" 
                    Font-Names="Algerian" Font-Size="Larger"  OnClientClick="window.print()" Visible="False"/>
                    
                </td>
        </tr>
      </table>

    </div>
</asp:Content>

