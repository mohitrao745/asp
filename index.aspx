<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>INVENTORY MANAGEMENT</title>
    <link rel="icon" href="img/logo.jfif" />
    <style type="text/css">
    body
{   
    background-image:url(img/img18.jpg);
    background-attachment:fixed;
    background-size:cover;
    
    }
    textbox 
    {
        text-align:center;
        }
       
    table
    {
        text-align:center;
        color:White;
        }
        
                table,tr,td
        {
                  
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

    </style>

    <script type="text/javascript">
        window.history.forward();
        function noback() {
            window.history.forward();
            window.history.back();
        }

    </script>
</head>
<body>
    <form id="Form1"  runat="server">
    <div>
    <h1 style="text-align:center; color:black; font-weight:bolder; background-color:White;">INVENTORY MANAGEMENT</h1>
    </div>
    <div>
    <h2 style="text-align:center; color:White; font-weight:bolder;">LOGIN FORM</h2>
    </div>
    <div>
        <table style="width: 100%; height: 169px;">
            <tr>
                <td class="style2" style="font-weight:bolder":>
                    USERNAME</td>
                
            </tr>
            <td class="style3">
                <asp:TextBox ID="TextBox1" runat="server" Height="42px" Width="333px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Please Enter Username" 
                    Font-Names="Algerian" Font-Size="Larger" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>

            <tr>
                <td class="style1" style="font-weight:bolder">
                    &nbsp;PASSWORD&nbsp;
                </td>
                
            </tr>

            <tr>

            <td class="style3">
                <asp:TextBox ID="TextBox2" runat="server" Height="42px" Width="333px" 
                    TextMode="Password" ></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Please Enter Your Password" 
                    Font-Names="Algerian" Font-Size="Larger" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label1" runat="server" BackColor="White" BorderColor="White" 
                    Font-Names="Algerian" Font-Size="Larger" ForeColor="#CC0000"></asp:Label>
                </td>
            
            </tr>


            <tr>
            <th>
            <div align="center">
                <asp:Button ID="Button1" runat="server" Text="Log IN" Height="51px" 
                    Width="115px" BackColor="White" Font-Bold="True" Font-Names="Algerian" 
                    Font-Size="Larger" Font-Strikeout="False" onclick="Button1_Click" />
              </div>
            </tr>
           
        </table>
    </div>
    
    </form>
</body>
</html>