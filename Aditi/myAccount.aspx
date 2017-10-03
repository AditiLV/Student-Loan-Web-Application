<%@ Page Language="C#" AutoEventWireup="true" CodeFile="myAccount.aspx.cs" Inherits="myAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <link href="StyleSheet_web.css" rel="stylesheet" />
<title>Aum Education Loan Services</title>
      
    <style type="text/css">
     
        .auto-style3 {
            float: right;
            height: 33px;
            padding-top:5%;
        }
    </style>
      
</head>
<body id="top">
    <form id="form2" runat="server">
<table style="width:100%">    
     <tr >
         
        <td colspan="3" ><img src="Images/logo_final.jpg" alt="Aum Education Loan Services" style="vertical-align:middle;width:100%"/></td>        
</tr>
    <tr>
        <td colspan="3">   
             <ul class="breadcrumb">
  <li>
      <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Home</asp:LinkButton>
      &nbsp;&nbsp|&nbsp</li>
  <li><a href="#" class="nevmenu">My Account</a></li>
   <li>
       <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" >Logout</asp:LinkButton>
       </li>
                 
             </ul>
        </td>
    </tr>
    <tr><td colspan="3" style="text-align:center;font-size:35px"> 
        <asp:Label ID="lblyouraccountdetails" runat="server" Text="Your Loan Account Details" ForeColor="#009933"></asp:Label>

        </td></tr>

    </table>
        <hr />
        <table style="width:45%;margin-left:2%">
            <tr>
                <td class="auto-style1">

                    <asp:Label ID="Label1" runat="server" Font-Bold="true" Text=" Account Number:" Font-Size="X-Large" ForeColor="#000066"></asp:Label>

                </td>
                <td class="auto-style3">

                    <asp:Label ID="txtaccountnumber"  runat="server" Font-Bold="True" Text="9999999999999999" Font-Size="X-Large"></asp:Label>

                </td>
            </tr>
              <tr>
                <td class="auto-style1">

                    <asp:Label ID="Label3" runat="server" Font-Bold="true" Text="Full Name:" Font-Size="X-Large" ForeColor="#000066"></asp:Label>

                </td>
                <td class="auto-style3">

                    <asp:Label ID="lblfullname"  runat="server" Font-Bold="True" Text="Anvixa L Patel" Font-Size="X-Large"></asp:Label>

                </td>
            </tr>
              <tr>
                <td class="auto-style1">

                    <asp:Label ID="Label5" runat="server"  Font-Bold="true" Text="Last Updated Date:" Font-Size="X-Large" ForeColor="#000066"></asp:Label>

                </td>
                <td class="auto-style3">

                    <asp:Label ID="lbldate" runat="server" Font-Bold="True" Text="10/26/2016" Font-Size="X-Large"></asp:Label>

                </td>
            </tr>

        </table>
            <hr />
        <asp:Table ID="Table1" runat="server" CellPadding="10" Width="90%" BorderStyle="Solid" CaptionAlign="Left" style="margin-left:2%" BorderColor="#6699FF" BorderWidth="1px">
            <asp:TableRow runat="server" Font-Size="X-Large" BackColor="#B1E7E7" BorderColor="#6699FF">
                <asp:TableCell runat="server" BorderColor="#6699FF">Current Balance</asp:TableCell>
                <asp:TableCell ID="cell1" runat="server" BorderColor="#6699FF" ForeColor="#005500" HorizontalAlign="Right">9999.99</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server" Font-Size="X-Large" BackColor="#6699FF" BorderColor="#6699FF">
                <asp:TableCell runat="server" BorderColor="#6699FF">Last Updated</asp:TableCell>
                <asp:TableCell ID="cell2" runat="server" BorderColor="#6699FF" ForeColor="#005500" HorizontalAlign="Right">10/26/2016</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server" Font-Size="X-Large" BackColor="#B1E7E7" BorderColor="#6699FF">
                <asp:TableCell runat="server" BorderColor="#6699FF"> Regular Monthly Payment Amount</asp:TableCell>
                <asp:TableCell ID="cell3" runat="server" BorderColor="#6699FF" ForeColor="#005500" HorizontalAlign="Right">999.99</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server" Font-Size="X-Large" BackColor="#6699FF" BorderColor="#6699FF">
                <asp:TableCell runat="server" BorderColor="#6699FF">Amount Satisfied by Extra Payment</asp:TableCell>
                <asp:TableCell ID="cell4" runat="server" BorderColor="#6699FF" ForeColor="#005500" HorizontalAlign="Right">999.99</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server" Font-Size="X-Large" BackColor="#B1E7E7" BorderColor="#6699FF">
                <asp:TableCell runat="server" BorderColor="#6699FF">Past Due Amount(If Applicable)</asp:TableCell>
                <asp:TableCell ID="cell5" runat="server" BorderColor="#6699FF" ForeColor="#005500" HorizontalAlign="Right">99.99</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server" Font-Size="X-Large" Font-Bold="true" BackColor="#6699FF" BorderColor="#6699FF" >
                <asp:TableCell runat="server" BorderColor="#6699FF">Current Amount Due</asp:TableCell>
                <asp:TableCell ID="cell6" runat="server" BorderColor="#6699FF" ForeColor="#005500" HorizontalAlign="Right" >180.99</asp:TableCell>
            </asp:TableRow>
          
        </asp:Table>
        <asp:Table runat="server" style="padding-top:2.5%;margin-left:2%" Width="65%">
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" ForeColor="#0000CC" >
                    <asp:Label ID="Label19" runat="server" Font-Size="XX-Large" Text="Current Statment Due Date:"></asp:Label>
                    
</asp:TableCell>
                <asp:TableCell runat="server" ForeColor="Red">

                    <asp:Label ID="Label20" runat="server" Font-Size="XX-Large" Text="11/26/2016"></asp:Label>
      
</asp:TableCell>
                 </asp:TableRow>
        </asp:Table>
        <hr />

    </form>
</body>
</html>
