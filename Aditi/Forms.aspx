<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Forms.aspx.cs" Inherits="Forms" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <link href="StyleSheet_web.css" rel="stylesheet" />
<title>Aum Education Loan Services</title>
       <style type="text/css">
           .auto-style1 {
               border: 1px solid black;
               border-collapse: collapse;
               height: 110px;
           }
       </style>
</head>
<body id="top">
    <form id="form2" runat="server">
<table>    
     <tr >
         
        <td colspan="3" ><img src="Images/logo_final.jpg" alt="Aum Education Loan Services" style="vertical-align:middle;width:100%"/></td>        
</tr>
    
    <tr>
        <td colspan="3">   
             <ul class="breadcrumb">
  <li>
      <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Home</asp:LinkButton>
      &nbsp;&nbsp|&nbsp</li>
  <li><a href="#" class="nevmenu">Forms</a></li>
   <li>
       <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" >Login</asp:LinkButton>
       </li>
                 
             </ul>
        </td>
    </tr>
    </table>
        <table class="formsborder" style="width:90%">
    
    <tr class="formsborder">
        <td colspan="2" class="formsborder">
           <p class="formstitle"> Aum Account Creation Authorization</p>
        </td>
        <td class="formsborder formsaling" >
            <a href="FirstForm.pdf" target="_blank">
                <img src="Images/pdf-page.png" width="100" height="100"/></a>
        </td>
    </tr>
     
    <tr>
        <td colspan="2" class="formsborder">
           <p class="formstitle">Federal Direct Consolidation Loan Application and Promissory Note </p>
        </td>
        <td class="formsborder formsaling" >
            <a href="https://static.studentloans.gov/images/ApplicationAndPromissoryNote.pdf"  target="_blank">
                <img src="Images/pdf-page.png" width="100" height="100"/></a>
        </td>
    </tr>
     
    <tr>
        <td colspan="2" class="formsborder">
           <p class="formstitle">
Direct Consolidation Loan Applications</p>
        </td>
        <td class="formsborder formsaling" >
            <a href="https://studentloans.gov/myDirectLoan/consolidationPaper.action" target="_blank">
                <img src="Images/pdf-page.png" width="100" height="100"/></a>
        </td>
    </tr>
     
    <tr>
        <td colspan="2" class="auto-style1">
           <p class="formstitle">PUBLIC SERVICE LOAN FORGIVENESS (PSLF)</p>
        </td>
        <td class="formsborder formsaling" style="height: 110px" >
            <a href="https://studentaid.ed.gov/sa/sites/default/files/public-service-employment-certification-form.pdf" target="_blank">
                <img src="Images/pdf-page.png" width="100" height="100"/></a>
        </td>
    </tr>
   </table>
    </form>
</body>
</html>
