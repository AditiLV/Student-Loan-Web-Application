using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class myAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["currentuser"] != null)
        {
            StudentInfor stu = Session["currentuser"] as StudentInfor;
            txtaccountnumber.Text = Convert.ToString(stu.AccountNumber);
            lbldate.Text = Convert.ToString(stu.LastUpdatedDate);
            lblfullname.Text = Convert.ToString(stu.FullName);
            cell1.Text = Convert.ToString(stu.CurrentBalance);
            cell2.Text = Convert.ToString(stu.LastUpdatedDate);
            cell3.Text = Convert.ToString(stu.RegularMonthlyPaymentAmount);
            cell4.Text = Convert.ToString(stu.AmountSatisfiedByExtraPayment);
            cell5.Text = Convert.ToString(stu.PastDueAmount);
            cell6.Text = Convert.ToString(stu.CurrentAmountDue);
            Label20.Text = Convert.ToString(stu.CurrentStatementDueDate);
        }
        else
        {
            Table1.Visible = false;
            lbldate.Visible = false;
            lblfullname.Visible = false;
            txtaccountnumber.Visible = false;
            Label20.Visible = false;
            Response.Redirect("Login.aspx");

        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");

    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Table1.Visible = false;
        lbldate.Visible = false;
        lblfullname.Visible = false;
        txtaccountnumber.Visible = false;
        Label20.Visible = false;
        ScriptManager.RegisterStartupScript(this, this.GetType(),
"alert",
"alert('You are now Logged Out.');window.location ='Login.aspx';",
true);
      //  Response.Redirect("Login.aspx");

    }
    protected void loggedin(object sender,EventArgs e)
    {
        List<StudentInfor> allUsersList = Application["AllUserList"] as List<StudentInfor>;

    }
}