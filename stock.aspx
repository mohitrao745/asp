<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="stock.aspx.cs" Inherits="stock" %>

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
        color:black;
        margin-left:20%;
        margin-right:20%;
        }
        
                table,tr,td
        {
                    border:2px solid black;
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
        color:black;
        margin-left:20%;
        margin-right:20%;
         }

    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div>
        <div id="div1" align="center" runat="server">
        <asp:Label ID="Label1" runat="server" Text="STOCK" Font-Bold="True" Font-Names="Algerian" Font-Size="X-Large" ForeColor="White" ></asp:Label>
    </div>

        <div align="center">
                <asp:GridView ID="GridView1" runat="server" AlternatingRowStyle-Height="10px" Width="49%" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
<AlternatingRowStyle Height="10px"></AlternatingRowStyle>
                    <Columns>
                        <asp:BoundField DataField="name" HeaderText="NAME" SortExpression="name" />
                        <asp:BoundField DataField="qty" HeaderText="QTY" SortExpression="qty" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name], [qty] FROM [items]"></asp:SqlDataSource>
        </div>
            
            <div id="divtoprint" runat="server" align="center">
               
              
                <asp:Button ID="Button1" runat="server"  Text="Print" Font-Bold="True" Font-Names="Algerian" Height="39px" Width="96px"  OnClientClick="window.print()" />
               
              
              </div>
              
    </div>
</asp:Content>

