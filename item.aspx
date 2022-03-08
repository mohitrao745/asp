<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="item.aspx.cs" Inherits="item" %>

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
         <script type="text/javascript">
         window.history.forward();
         function noback() {
             window.history.forward();
         }

     </script>
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <h1 style="text-align:center; color:White; font-weight:bolder;">ADD ITEMS</h1>
    </div>
    <div>
        <table style="width: 100%; height: 169px;">
            <tr>
                <td class="style2" style="font-weight:bolder":>
                    ITEMS</td>
                
            </tr>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="42px" 
                    style="margin-top: 0px" Width="333px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Please Enter An Item Name" 
                    Font-Names="Algerian" Font-Size="Medium" Font-Strikeout="False" 
                    ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label1" runat="server" BackColor="White" BorderColor="White" 
                    Font-Names="Algerian" Font-Size="Larger" ForeColor="#CC0000"></asp:Label>
            </td>

            

            <tr>
            <th>
            <div align="center">
                <asp:Button ID="Button1" runat="server" Text="Save" Height="50px" 
                    Width="115px" BorderColor="Black" BorderWidth="2px" Font-Bold="True" 
                    Font-Names="Algerian" Font-Size="Larger" ForeColor="Black" onclick="Button1_Click" 
                   />
              
              </div>
              </th>
            </tr>
        </table>
    </div>
</asp:Content>

