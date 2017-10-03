<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <link href="StyleSheet_web.css" rel="stylesheet" />
<title>Aum Education Loan Services</title>
       <style type="text/css">
           .auto-style1 {
               padding-top:1.5%;
           }
           .auto-style2 {
               width: 279px;
               padding-top: 1.5%;
           }       </style>
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
  <li><a href="#" class="nevmenu">Registration</a></li>
   <li>
       <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" >Login</asp:LinkButton>
       </li>
                 
             </ul>
        </td>
    </tr>

    </table>
       <p style="color:#341f9d;font-size:18px"> <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" /> By providing this information, I certify that I am the person Identified by these items, and that I agree to site Terms of Use.</p>
        <table style="margin:3%;">
            <tr><td style="font-size:18px" class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Full Name" Font-Bold="True" ForeColor="#000077"></asp:Label>
                 <span style="color: red"> * </span> </td><td class="auto-style1">
                <asp:TextBox ID="txtfullname" runat="server" Width="214px"></asp:TextBox>
                     <asp:Label ID="Label14" runat="server" ToolTip="LastName Firstname Middlename." BackColor="Yellow" Text=" ? "></asp:Label>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" validationgroup="group1" runat="server" ControlToValidate="txtfullname" ErrorMessage="Full Name is Required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                </td></tr>
             <tr><td style="font-size:18px" class="auto-style2">
           
                
                 
                 
                 
                  <asp:Label ID="Label1" runat="server" Text="Social Security Number" Font-Bold="True" ForeColor="#000077"></asp:Label>
                 <span style="color: red"> * </span> </td><td class="auto-style1">
                <asp:TextBox ID="txtssn" runat="server" AutoPostBack="True" OnTextChanged="txtssn_TextChanged"></asp:TextBox>
                     <asp:Label ID="Label13" runat="server" BackColor="Yellow" Text=" ? " ToolTip="Once you set up a User Name to access your account, you will no longer need
to provide your complete social security number/account number, birthdate
or zip code to log in. For security, you will need to provide your full
social security number or account number if your forget your User Name or
Password.
"></asp:Label>
                
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" validationgroup="group1"  runat="server" ControlToValidate="txtssn" ErrorMessage="Social Security Number is Required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" validationgroup="group1" runat="server" ErrorMessage="Social Security Number Is Not Valid " ControlToValidate="txtssn" ForeColor="Red" ValidationExpression="^\d{3}-?\d{2}-?\d{4}$" Display="Dynamic"></asp:RegularExpressionValidator>
                
                 
                 
                 
                 </td></tr>
             <tr><td style="font-size:18px" class="auto-style2">
                <asp:Label ID="Label3" runat="server" Text="Confirm Social Security Number" Font-Bold="True" ForeColor="#000077"></asp:Label>
                 <span style="color: red"> * </span> </td><td class="auto-style1">
                <asp:TextBox ID="txtconfirmssn" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" validationgroup="group1" runat="server" ControlToValidate="txtconfirmssn" ErrorMessage="Confirm Social Security is Required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" validationgroup="group1" runat="server" ErrorMessage="Confirm Social Security Number Is Not Valid " ControlToValidate="txtconfirmssn" ForeColor="Red" ValidationExpression="^\d{3}-?\d{2}-?\d{4}$" Display="Dynamic"></asp:RegularExpressionValidator>
               
                     <asp:CompareValidator ID="CompareValidator1" validationgroup="group1" runat="server" ControlToCompare="txtssn" ControlToValidate="txtconfirmssn" ErrorMessage="Social Security Does Not Match" ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
               
                </td></tr>
                 <tr><td style="font-size:18px" class="auto-style2">
                <asp:Label ID="Label4" runat="server" Text="Date of Birth" Font-Bold="True" ForeColor="#000077"></asp:Label>
                 <span style="color: red"> * </span> </td><td class="auto-style1">
                         <asp:DropDownList ID="DropDownList1" runat="server">
                              <asp:ListItem Text="January"  Selected="True" />
                             <asp:ListItem Text="February"  />
                             <asp:ListItem Text="March"  />
                             <asp:ListItem Text="April"  />
                             <asp:ListItem Text="May	"  />
                             <asp:ListItem Text="June"  />
                             <asp:ListItem Text="July"  />
                             <asp:ListItem Text="August"  />
                             <asp:ListItem Text="September"  />
                             <asp:ListItem Text="October"  />
                             <asp:ListItem Text="November"  />
                             <asp:ListItem Text="December"  />



                         </asp:DropDownList>
                      /
                         <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                             

                         </asp:DropDownList>
                     /
                         <asp:DropDownList ID="DropDownList3" runat="server">
                          

                         </asp:DropDownList>
               
                </td></tr>

                
                 <tr><td style="font-size:18px" class="auto-style2">
                <asp:Label ID="Label5" runat="server" Text="Address" Font-Bold="True" ForeColor="#000077"></asp:Label>
                 <span style="color: red"> * </span> </td><td class="auto-style1">
                <asp:TextBox ID="txtaddress" runat="server" Width="299px"></asp:TextBox>
                     <asp:Label ID="Label15" runat="server" BackColor="Yellow" Text=" ? " ToolTip="Many foreign countries do not have a zip code. If you are foreign, you can
skip the zip code in the address."></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" validationgroup="group1" runat="server" ControlToValidate="txtaddress" ErrorMessage="Address is Required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
               
                </td></tr>
                
                 <tr><td style="font-size:18px" class="auto-style2">
                <asp:Label ID="Label6" runat="server" Text="User Name" Font-Bold="True" ForeColor="#000077"></asp:Label>
                 <span style="color: red"> * </span> </td><td class="auto-style1">
                <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                     <asp:Label ID="Label16"  runat="server" BackColor="Yellow" Text=" 6 to 64 characters "></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" validationgroup="group1" runat="server" ControlToValidate="txtusername" ErrorMessage="User Name is Required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" validationgroup="group1" runat="server" ErrorMessage="User Name Is Not Valid " ControlToValidate="txtusername" ForeColor="Red" ValidationExpression="^[a-zA-Z][a-zA-Z0-9]{5,11}$" Display="Dynamic"></asp:RegularExpressionValidator>

                 </td></tr>

                 <tr><td style="font-size:18px" class="auto-style2">
                <asp:Label ID="Label7" runat="server" Text="Password" Font-Bold="True" ForeColor="#000077"></asp:Label>
                 <span style="color: red"> * </span> </td><td class="auto-style1">
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                     <asp:Label ID="Label17" runat="server" BackColor="Yellow" ToolTip="Password must be between 8 and 10 characters, contain at least one digit
and one alphabetic character, and must not contain special characters
" Text=" Password Rules "></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" validationgroup="group1" runat="server" ControlToValidate="txtpassword" ErrorMessage="Password is Required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" validationgroup="group1" runat="server" ErrorMessage="Password Is Not Valid " ControlToValidate="txtpassword" ForeColor="Red" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" Display="Dynamic"></asp:RegularExpressionValidator>


                 </td></tr>

                 <tr><td style="font-size:18px" class="auto-style2">
                <asp:Label ID="Label8" runat="server" Text="Confirm Password" Font-Bold="True" ForeColor="#000077"></asp:Label>
                 <span style="color: red"> * </span> </td><td class="auto-style1">
                <asp:TextBox ID="txtconfirmpwd" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" validationgroup="group1" ControlToValidate="txtconfirmpwd" ErrorMessage="Confirm Password is Required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" validationgroup="group1" runat="server" ErrorMessage="Confirm Password Is Not Valid " ControlToValidate="txtconfirmpwd" ForeColor="Red" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,10}$" Display="Dynamic"></asp:RegularExpressionValidator>
                     <asp:CompareValidator ID="CompareValidator2" validationgroup="group1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtconfirmpwd" ErrorMessage="Password Does Not Match" ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
                 </td></tr>

                 <tr><td style="font-size:18px" class="auto-style2">
                <asp:Label ID="Label9" runat="server" Text="Email Address" Font-Bold="True" ForeColor="#000077"></asp:Label>
                 <span style="color: red"> * </span> </td><td class="auto-style1">
                <asp:TextBox ID="txtemail" runat="server" Width="183px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" validationgroup="group1" runat="server" ControlToValidate="txtemail" ErrorMessage="Email Id is Required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" validationgroup="group1" runat="server" ErrorMessage="Email ID Is Not Valid " ControlToValidate="txtemail" ForeColor="Red" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" Display="Dynamic"></asp:RegularExpressionValidator>

                 </td></tr>

                 <tr><td style="font-size:18px" class="auto-style2">
                <asp:Label ID="Label10" runat="server" Text="Confirm Email Address" Font-Bold="True" ForeColor="#000077"></asp:Label>
                 <span style="color: red"> * </span> </td><td class="auto-style1">
                <asp:TextBox ID="txtconfirmemail" runat="server" Width="183px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" validationgroup="group1" runat="server" ControlToValidate="txtconfirmemail" ErrorMessage="Confirm Email Address is Required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator7" validationgroup="group1" runat="server" ErrorMessage="Confirm Email ID Is Not Valid " ControlToValidate="txtconfirmemail" ForeColor="Red" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" Display="Dynamic"></asp:RegularExpressionValidator>
                     <asp:CompareValidator ID="CompareValidator3" validationgroup="group1" runat="server" ControlToCompare="txtemail" ControlToValidate="txtconfirmemail" ErrorMessage="Email Does Not Match" ForeColor="Red" Display="Dynamic"></asp:CompareValidator>

                 </td></tr>

              <tr><td style="font-size:18px" class="auto-style2">
                <asp:Label ID="Label11" runat="server" Text="Security Question" Font-Bold="True" ForeColor="#000077"></asp:Label>
                 <span style="color: red"> * </span> </td><td class="auto-style1">
                      <asp:DropDownList ID="DropDownList4" runat="server">
                              <asp:ListItem Text="What is your mother's maiden name?"  Selected="True" />
                              <asp:ListItem Text="What was your childhood nickname?"/>
                              <asp:ListItem Text="What is the name of your favorite childhood friend?"/>
                              <asp:ListItem Text="What is your favorite sport team?"/>
                              <asp:ListItem Text="What was the make and model of your first car?"/>
                              <asp:ListItem Text="What school did you attend for sixth grade?"/>
                              <asp:ListItem Text="What was the last name of your third grade teacher?"/>
                              <asp:ListItem Text="In what town was your first job?"/>
                              <asp:ListItem Text="What is your favorite movie?"/>
                              <asp:ListItem Text="Who is your childhood sports hero?"/>
                              <asp:ListItem Text="In what year was your father born?"/>
                             </asp:DropDownList>
                     <asp:Label ID="Label18" runat="server" BackColor="Yellow" Text=" ? " ToolTip="Single word answers are best. John, red, green, drum, for example."></asp:Label>

                 </td></tr>

              <tr><td style="font-size:18px" class="auto-style2">
                <asp:Label ID="Label12" runat="server" Text="Answer" Font-Bold="True" ForeColor="#000077"></asp:Label>
                 <span style="color: red"> * </span> </td><td class="auto-style1">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" validationgroup="group1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Answer is Required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

                 </td></tr>
            <tr><td  class="auto-style2" >  <span style="color: red"> * </span><asp:Label ID="labelred" runat="server" Font-Size="Large" ForeColor="Red" Text="DENOTES REQUIRED ITEMS"></asp:Label></td></tr>
            <tr><td style="padding-left:15%;padding-top:1.5%">
                <asp:Button ID="btnsubmit1" runat="server" validationgroup="group1" Height="36px" OnClick="btnsubmit1_Click" Text="Submit" Width="99px" />
                </td></tr>

        </table>
    </form>
</body>
</html>
