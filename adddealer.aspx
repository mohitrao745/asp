<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="adddealer.aspx.cs" Inherits="adddealer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>INVENTORY MANAGEMENT</title>
    <link rel="icon" href="img/logo.jfif" />
<style type="text/css">
    body
{   
    background-image:url(img/img11.jpg);
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
                    borer:2px solid black;
                    border-collapse:collapse;
                    background-color: rgba(0,0,0, 0.1); 
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

    .auto-style1 {
        width: 49%;
        height: 169px;
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
    <h1 style="text-align:center; color:White; font-weight:bolder;">ADD DEALER</h1>
    </div>
    <div>
        <table class="auto-style1">
            <tr>
                <td class="style2" style="font-weight:bolder":>
                    NAME</td>
                
                
           
            <td class="style2">
                <asp:TextBox ID="TextBox1" runat="server" Height="42px" 
                    style="margin-top: 0px" Width="333px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Please Enter Name of Dealer" 
                    Font-Names="Algerian" Font-Size="Larger" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
                 </tr>
            <tr>
                <td class="style1" style="font-weight:bolder">
                    &nbsp;CONTACT&nbsp;
                    </td> 
                 <td class="style3">
                <asp:TextBox ID="TextBox2" runat="server" Height="42px" Width="332px" 
                    style="margin-top: 0px; margin-bottom: 8px" MaxLength="10" TextMode="Number" 
                    ></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Please Enter Contact No." 
                    Font-Names="Algerian" Font-Size="Larger" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>

            

            <tr>
                <td></td>
            <td>
            <div align="center">
                <asp:Button ID="Button1" runat="server" Text="Save" Height="51px" 
                    Width="115px" BorderColor="Black" BorderWidth="2px" Font-Bold="True" 
                    Font-Names="Algerian" Font-Size="Larger" ForeColor="Black" 
                    onclick="Button1_Click" />
              </div>
              </td>
            </tr>
        </table>
    </div>
</asp:Content>

