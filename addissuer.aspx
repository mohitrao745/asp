<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addissuer.aspx.cs" Inherits="addissuer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <title>INVENTORY MANAGEMENT</title>
    <link rel="icon" href="img/logo.jfif" />
 <style type="text/css">
     
    body
{   
    background-image:url(img/img24.jpg);
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
                    border:2px solid black;
                    border-collapse:collapse;
                    background-color: rgba(0,0,0,0.1); 
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
    <h1 style="text-align:center; color:White; font-weight:bolder;">ADD ISSUER</h1>
    </div>
    <div>
        <table style="width: 100%; height: 169px;">
            <tr>
                <td class="style2" style="font-weight:bolder":>
                    NAME</NAME</td>
                
            </tr>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="42px" 
                    style="margin-top: 0px" Width="333px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            </td>

            <tr>
                <td class="style1" style="font-weight:bolder">
                    &nbsp;CONTACT&nbsp;
                
                
            </tr>

            <tr>

            <td class="style3">
                <asp:TextBox ID="TextBox2" runat="server" Height="42px" Width="332px" 
                    style="margin-top: 0px; margin-bottom: 8px"></asp:TextBox>
                </td>
            
            </tr>

             <tr>
                <td class="style1" style="font-weight:bolder">
                    &nbsp;DEPARTMENT&nbsp;
                </td>
                
            </tr>

            <tr>

            <td class="style3">
               
                <asp:DropDownList ID="DropDownList1" runat="server" Height="42px" Width="332px" 
                    style="margin-top: 0px; margin-bottom: 8px">
                    <asp:ListItem>Computer Science</asp:ListItem>
                    <asp:ListItem>Science</asp:ListItem>
                    <asp:ListItem>Commerce</asp:ListItem>
                    <asp:ListItem>Arts</asp:ListItem>
                    <asp:ListItem>Law</asp:ListItem>
                    <asp:ListItem>Account</asp:ListItem>
                    <asp:ListItem>Office</asp:ListItem>
                </asp:DropDownList>
            </td>
            
            </tr>

            <tr>
            <th>
            <div align="center">
                <asp:Button ID="Button1" runat="server" Text="Save" Height="51px" 
                    Width="115px" BorderColor="Black" BorderWidth="2px" Font-Bold="True" 
                    Font-Names="Algerian" Font-Size="Larger" ForeColor="Black" onclick="Button1_Click" 
                   />
              </div>
              </th>
            </tr>
        </table>
    </div>
</asp:Content>

