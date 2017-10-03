<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet_web.css" rel="stylesheet" />
<title>Aum Education Loan Services</title></head>
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
  <li><a href="#" class="nevmenu">Login</a></li>
  
   <li>
              <!--   <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Login</asp:LinkButton> -->
       </li>      
       </ul>
        </td>
    </tr>
    </table>
        <h1 style="text-align:center;margin-top:-2.5%;color:#6b0c0c">User Login</h1>
    <p style="color:red;font-size:20px">if you are not a registered user, please click here: 
        <asp:LinkButton ID="btnregister" runat="server" OnClick="btnregister_Click">Register Now</asp:LinkButton>
        </p>
        <p style="color:#060b6b;font-size:20px">if you are a registered user, please enter your credentials below </p>
        <p style="color:#060b6b;font-size:17px">if you forgot your password plaese click here <asp:LinkButton ID="RecoberPWD" runat="server" OnClick="RecoberPWD_Click">Recover My Password</asp:LinkButton></p>      
        

    
        <br />
      
         <table>
             <tr>
                 <td > <asp:Label ID="Label1" runat="server" Text="User Id (Email Address):" Font-Size="Large" Font-Bold="True" ForeColor="#000066"></asp:Label>
                <span style="color: red"> * </span> 
                     </td>
                 <td>
                 <asp:TextBox ID="txtuserid" runat="server" 
></asp:TextBox>

                        <asp:RequiredFieldValidator 
             id="RequiredFieldValidator3" runat="server" 
             ErrorMessage="User Id cannot be empty!" validationgroup="LocationInfoGroup"
             ControlToValidate="txtuserid">
            </asp:RequiredFieldValidator>

                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1"  validationgroup="LocationInfoGroup" runat="server" ControlToValidate="txtuserid" ErrorMessage="Email Id is not valid" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"></asp:RegularExpressionValidator>

                 </td>
             </tr>
             <tr><td>
                  <asp:Label ID="Label2" runat="server"  Text="Password:" Font-Size="Large" Font-Bold="True" ForeColor="#000066"></asp:Label>
                <span style="color: red"> * </span> 
                 </td><td>
        <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" ></asp:TextBox>

                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password cannot be empty" validationgroup="LocationInfoGroup"
 ControlToValidate="txtpassword"></asp:RequiredFieldValidator>

                      </td></tr>
         </table>
       

    
        <br />

    

                <span style="color: red"> * </span> 

        <asp:Label ID="labelred" runat="server" Font-Size="Medium" ForeColor="Red" Text="DENOTES REQUIRED ITEMS"></asp:Label>
              <br />
          <div style="margin-left: 200px; width: 64px;">
            <asp:Button ID="btnlogin" validationgroup="LocationInfoGroup"
 runat="server" OnClick="btnlogin_Click" Text="Log In" Height="34px" Width="69px"  />
        </div>

    
    </form>
</body>
</html>
