<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="purchase.aspx.cs" Inherits="purchase" %>

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
        margin-left:20%;
        margin-right:20%;
        
        }
        
      table,tr,td
        {
                   
                    border-collapse:collapse;
                    background-color: rgba(0,0,0,0.1);
                    padding:5px 0 0 0;
        }
          .style4
        {
            width: 949px;
        }
         .grid {
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
    <h1 style="text-align:center; color:White; font-weight:bolder;">PURCHASING</h1>
 </div>
    
<table style="width: 63%;">
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Bill No." Font-Bold="False" 
                Font-Names="Algerian" Font-Size="20px"></asp:Label>
        </td>
        <td>
           <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        
        <td class="style4">
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Please Enter Bill No." ControlToValidate="TextBox1" 
                Font-Names="Algerian" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Date:-" Font-Bold="False" 
                Font-Names="Algerian" Font-Size="20px"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" TextMode="Date" />
        </td>
        
        <td class="style4">
           <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ErrorMessage="Please Select a Date" ControlToValidate="TextBox2" 
                Font-Names="Algerian" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Dealer:-" Font-Bold="False" 
                Font-Names="Algerian" Font-Size="20px"></asp:Label>
        </td>
        <td>
        <asp:DropDownList ID="DropDownList2" runat="server" Height="27px" Width="188px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
        </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name] FROM [dealer]"></asp:SqlDataSource>
        </td>
        
        <td class="style4">
           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage="Please Select a Dealer" ControlToValidate="DropDownList2" 
                Font-Names="Algerian" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        
        <td class="style4">
            &nbsp;</td>
    </tr>
</table>
<table width="63%">
<tr>
    <td>
     ITEM
    </td>
    <td>
     QTY.
    </td>

    <td>
    PRICE
    </td>
    <td>
        GST(%)
    </td>

    <td >
        &nbsp;</td>
</tr>
<tr>
    <td>
        <asp:DropDownList ID="DropDownList1" runat="server" Height="27px" Width="188px" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="name">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name] FROM [items]"></asp:SqlDataSource>
    </td>
    <td>
        <asp:TextBox ID="TextBox5" runat="server"  TextMode="Number"></asp:TextBox>
    </td>
   
    <td>
        <asp:TextBox ID="TextBox6" runat="server"  TextMode="Number"></asp:TextBox>
        </td>
     <td>

        <asp:DropDownList ID="DropDownList3" runat="server" Height="27px" Width="188px">
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
            <asp:ListItem>18</asp:ListItem>
            <asp:ListItem>24</asp:ListItem>
        </asp:DropDownList>

       </td>
    
    <td class="auto-style1">
        <asp:Button ID="Button1" runat="server" Text="Save" Height="51px" 
                    Width="115px" BackColor="White" Font-Bold="True" Font-Names="Algerian" 
                    Font-Size="Larger" Font-Strikeout="False" onclick="Button1_Click" />
    </td>
</tr>
<tr>
    <td>
        &nbsp;</td>
    <td>
        &nbsp;</td>
    <td>
        &nbsp;</td>
    <td>

    </td>
    <td >
        &nbsp;</td>
</tr>

</table>
    <asp:GridView ID="GridView1" runat="server" AlternatingRowStyle-Height="10px" Width="63%" OnDataBound="GridView1_DataBound" ShowFooter="True"></asp:GridView>
    <table Width="63%">>
                
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" BackColor="White" BorderColor="White" 
                    Font-Names="Algerian" Font-Size="Larger" ForeColor="#CC0000"></asp:Label>
            </td>
            <td>

            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="SUBMIT" Height="51px"
                    Width="115px" BackColor="White" Font-Bold="True" Font-Names="Algerian"
                    Font-Size="Larger" Font-Strikeout="False" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>
    </asp:Content>

