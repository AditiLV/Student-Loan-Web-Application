<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="text/javascript" src="JavaScript.js" ></script>
    <link href="StyleSheet_web.css" rel="stylesheet" />
     <title>Aum Education Loan Services</title></head>
<body onload="loadDoc()">
    <script src="JavaScript.js"></script>
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
  <li><a href="#" class="nevmenu">Contact Us</a></li>
   <li>
       <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" >Login</asp:LinkButton>
       </li>
                 
             </ul>
        </td>
    </tr>

    </table>
        <table id="demo" class="contactus" border="1">
            
        </table>
        &nbsp;<div style="text-align:center;position:center">
             <p style="text-align:center;color:green;font-size:20px;"><b>You must be logged in to send us a message </b></p>
        <p style="text-align:center;color:red;font-size:20px;"><b>Please type your message below and click the Send Message button</b></p>
       
             <br />
             <b>
             <asp:TextBox ID="TextBox1" runat="server" style="margin-top: 0px" TextMode="MultiLine" Width="390px"></asp:TextBox>
             </b>
            <br />
            <asp:Button ID="Button1" runat="server" Height="40px" Text="Send Message" Width="101px" Enabled="False" OnClick="Button1_Click" />
            </div>
    </form>
</body>
</html>
