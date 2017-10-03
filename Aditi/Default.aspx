<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet_web.css" rel="stylesheet" />
<title>Aum Education Loan Services</title></head>
<body>
    <form id="form1" runat="server">
<table>    
    
     <tr>
         
        <td colspan="5" ><img src="Images/logo_final.jpg" alt="Aum Education Loan Services" style="vertical-align:middle;width:100%"/></td>        
</tr>
  
    <tr>
        <td class="sidebar">
            <ul class="ulhomepage">
    <li class="lihomepage" >
        <asp:LinkButton ID="Loginlink" runat="server" OnClick="Loginlink_Click">Login</asp:LinkButton></li>
                              <div class="dropdown">

    <li class="lihomepage"><a href="#">Infor Center &#9660</a>  </li>
        
           <ul>
                    <div class="dropdown-content">
            <li class="lihomepage"><a  href="Glossary.aspx">Glossary </a></li>
            <li class="lihomepage"><a href="FAQ.aspx">FAQ</a></li>

  </div>
        </ul>
            </div>
  
    <li class="lihomepage"><a href="myAccount.aspx">My Account</a></li>
    <li class="lihomepage"><a href="Forms.aspx">Forms</a></li>
    <li class="lihomepage"><a href="ContactUs.aspx">Contact Us</a></li>
</ul>
        </td>
        <td colspan="4" class="infoblock">
            <h1> Who we are ...</h1>
       <p class="info">Aum Education Loan Service provides loan services for the one who look for financial help to get his/her education goals completed. We provide services for Campus Based Loans, Private Education Loans and Federal Family Education Loans. We work hard with you to get the Loan You Deserve, Maintain Loan Activities, Send Payment Reminders and Process payments.</p>
   
            
        </td>
  
    <tr >
    <td class="comodoblock copyright">
     <a href="https://ssl.comodo.com/">   <img src="Images/comodo_secure_113x59_transp.png" /></a></td>
    <td colspan="2">
        <img src="Images/center-education.jpg" class="img2"/>
    </td>
        <td colspan="2">
            <img src="Images/center-education.png"  class="img3"/></td>
        </tr>
          </tr>
        <tr>
        <td>
                   <asp:AdRotator id="AdRotator5" runat="server" AdvertisementFile="~/adsCustomerService.xml" Target="_blank" KeywordFilter="loan5" height="170px" Width="220px" />

        </td>
        <td>
                    <asp:AdRotator id="AdRotator1" runat="server" AdvertisementFile="~/adsCustomerService.xml" Target="_blank" KeywordFilter="loan1" height="170px" Width="200px" />

        </td>
        <td>
                    <asp:AdRotator id="AdRotator2" runat="server" AdvertisementFile="~/adsCustomerService.xml" Target="_blank" KeywordFilter="loan2" height="170px" Width="200px" />

        </td>
           <td>
                    <asp:AdRotator id="AdRotator3" runat="server" AdvertisementFile="~/adsCustomerService.xml" Target="_blank" KeywordFilter="loan3" height="170px" Width="200px" />

        </td>
           <td>
                    <asp:AdRotator id="AdRotator4" runat="server" AdvertisementFile="~/adsCustomerService.xml" Target="_blank" KeywordFilter="loan4" height="170px" Width="200px" />

        </td>
     

    </tr>
    
    <tr><td colspan="5" class="copyright"> <hr />
         <p style="color:forestgreen">&copy;Aum Education Loan Services,Inc. All rights reserved. 2016-2020</p></td></tr>
    
    </table>     
        <table id="XYZ" >
           
   
        </table>
    </form>
    
</body>
</html>
