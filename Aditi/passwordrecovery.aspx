<%@ Page Language="C#" AutoEventWireup="true" CodeFile="passwordrecovery.aspx.cs" Inherits="passwordrecovery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <link href="StyleSheet_web.css" rel="stylesheet" />
<title>Aum Education Loan Services</title>
</head>
<body id="top">
    <form id="form2" runat="server">
<table style="width:100%">    
     <tr >
         
        <td colspan="3" ><img src="Images/logo_final.jpg" alt="Aum Education Loan Services" style="vertical-align:middle;width:100%;margin-bottom:4%"/></td>        
</tr>
    </table>
    <table style="margin-bottom:2%"><tr><td>
                <asp:Label ID="Label1" runat="server" Text="Email Address" ForeColor="#000066" Font-Size="Larger"></asp:Label>

               </td>
        <td>
            <asp:TextBox ID="txtemailid1" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" validationgroup="group1" runat="server" ForeColor="Red" ErrorMessage="Email Id Required" ControlToValidate="txtemailid1"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" validationgroup="group1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="txtemailid1" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ForeColor="Red"></asp:RegularExpressionValidator>
        </td>
        <td>
                <asp:Button ID="btnrecoverpassword" validationgroup="group1" runat="server" Text="Recover Password" Font-Size="Medium" OnClick="btnrecoverpassword_Click" />

        </td>
           </tr></table>
           

       
       
            <div style="margin-left:7%">
                <asp:LinkButton ID="linkmainpage"  runat="server" Font-Size="Medium" OnClick="linkmainpage_Click">Go Back to Main Page</asp:LinkButton>
         </div>
    </form>
</body>
</html>
