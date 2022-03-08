<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="issuedto.aspx.cs" Inherits="issuedto" %>

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
        .auto-style1 {
            width: 748px;
        }
        .auto-style2 {
            width: 667px;
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
    <h1 style="text-align:center; color:White; font-weight:bolder;">Issued-To</h1>
 </div>
    
<table style="width: 63%;">
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label1" runat="server" Text="ISSUER NAME:" Font-Bold="False" 
                Font-Names="Algerian" Font-Size="20px"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:DropDownList ID="DropDownList1" runat="server" Height="27px" Width="188px" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="name">
        </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name] FROM [issuer]"></asp:SqlDataSource>
        </td>
        
        <td class="style4">
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Please Select a Issuer." ControlToValidate="DropDownList1" 
                Font-Names="Algerian" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label2" runat="server" Text="Item:" Font-Bold="False" 
                Font-Names="Algerian" Font-Size="20px"></asp:Label>
        </td>
        <td class="auto-style1">
        <asp:DropDownList ID="DropDownList2" runat="server" Height="27px" Width="188px" DataSourceID="SqlDataSource3" DataTextField="name" DataValueField="name">
        </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name] FROM [items] WHERE ([qty] &gt; @qty)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="0" Name="qty" Type="Decimal" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        
        <td class="style4">
           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage="Please Select a Item" ControlToValidate="DropDownList2" 
                Font-Names="Algerian" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
        
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label3" runat="server" Text="QTY:" Font-Bold="False" 
                Font-Names="Algerian" Font-Size="20px"></asp:Label>
        </td>

        <td>
                       <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        
        </td>

       <td class="style4">
           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="Please Enter Qty." ControlToValidate="TextBox1" 
                Font-Names="Algerian" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Date:-" Font-Bold="False" 
                Font-Names="Algerian" Font-Size="20px"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Date" Width="188px"></asp:TextBox>
        </td>
        
        <td class="style4">
           <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ErrorMessage="Please Select a Date" ControlToValidate="TextBox2" 
                Font-Names="Algerian" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td></td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Save" Font-Bold="True" Font-Names="Algerian" Font-Size="Larger" Height="49px" Width="133px" OnClick="Button1_Click1" />
        </td>
        <td>
                    
    
        </td>
    </tr>
</table>
</asp:Content>

