using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // clearall();
        
        DropDownList3.Items.Clear();
        for (int jLoop = 2001; jLoop >= 1950; jLoop--)
        {
            DropDownList3.Items.Add(jLoop.ToString());
        }
        DropDownList2.Items.Clear();
        for (int jLoop = 1; jLoop <= 31; jLoop++)
        {
            DropDownList2.Items.Add(jLoop.ToString());
        }

    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");

    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList2.Items.Clear();
        DropDownList2.Items.Add("--Year--");
        for (int jLoop = 1950; jLoop <= DateTime.Now.Year; jLoop++)
        {
            DropDownList1.Items.Add(jLoop.ToString());
        }
    }



    protected void btnsubmit1_Click(object sender, EventArgs e)
    {

        //string message = "Thank you for submitting for registration.You can now \"login\" by clicking the Login link at the top right hand side of this page.";
        string dob = DropDownList1.SelectedValue + DropDownList2.SelectedValue + DropDownList3.SelectedValue;
        Random random = new Random();
        float aNum = 0f;
        int randomaccountnumber = Convert.ToInt32((random.Next(100000, 1000000).ToString("D6")));
        string validatessn = txtssn.Text;
        int flag = 0;
        if (Application["AllUsersList"] != null)
        {

            List<StudentInfor> allUsersList = Application["AllUsersList"] as List<StudentInfor>;
            if (allUsersList != null)
            {

                for (int i = 0; i < allUsersList.Count; i++)
                {
                    if (allUsersList[i].SocialSecurityNumber == validatessn)
                    {
                        string message = ": already exist. Please go to login page.";
                        System.Text.StringBuilder sb = new System.Text.StringBuilder();
                        sb.Append("<script type = 'text/javascript'>");
                        sb.Append("window.onload=function(){");
                        sb.Append("alert('");
                        sb.Append(validatessn);
                        sb.Append(message);
                        sb.Append("')};");
                        sb.Append("</script>");
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                        flag = 1;
                    }
                }

                if (CheckBox1.Checked == true && flag != 1)
                {
                    string chech = "true";
                    StudentInfor aStudentInfor = new StudentInfor(txtusername.Text, txtpassword.Text, chech, txtssn.Text, txtfullname.Text, dob, txtaddress.Text, txtemail.Text, DropDownList4.SelectedValue, TextBox3.Text, randomaccountnumber, "", aNum, aNum, aNum, aNum, aNum, "");
                    aStudentInfor.AccountNumber = randomaccountnumber;
                    aStudentInfor.Address = txtaddress.Text;
                    aStudentInfor.AmountSatisfiedByExtraPayment = 0f;
                    aStudentInfor.Certifiedchecked = chech;
                    aStudentInfor.CurrentAmountDue = 0f;
                    aStudentInfor.CurrentBalance = 0f;
                    aStudentInfor.CurrentStatementDueDate = "NA";
                    aStudentInfor.DateOfBirth = dob;
                    aStudentInfor.EmailAddress = txtemail.Text;
                    aStudentInfor.FullName = txtfullname.Text;
                    aStudentInfor.LastUpdatedDate = "NA";
                    aStudentInfor.Password = txtpassword.Text;
                    aStudentInfor.PastDueAmount = 0f;

                    aStudentInfor.RegularMonthlyPaymentAmount = 0f;
                    aStudentInfor.SecurityQuestion = DropDownList4.SelectedValue;
                    aStudentInfor.SecurityQuestionAnswer = TextBox3.Text;
                    aStudentInfor.SocialSecurityNumber = txtssn.Text;
                    aStudentInfor.UserName = txtusername.Text;
                    allUsersList.Add(aStudentInfor);
                    Application["AllUsersList"] = allUsersList;
                    // Session["currentuser"] = aStudentInfor;
                    Response.Write("<script>alert('Thank you for submitting for registration. You can now login by clicking the \"Login\" link at the top right hand side of this page. An email notification has also been sent to the email address you provided during registration. ')</script>");

                    //add data to database
                    String connectionString = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;
                    SqlConnection conn = new SqlConnection(connectionString);
                    
                    String insToDelv = "Insert into VaghasiaA_WADfl16_StudentInfor(userName,password,certifiedchecked,socialSecurityNumber,fullName,dateOfBirth,address,emailAddress,securityQuestion,securityQuestionAnswer,accountNumber) " + "values('"+txtfullname.Text+"','"+txtpassword.Text+"','true','"+txtssn.Text+"','"+txtusername.Text+"','"+dob+"','"+txtaddress.Text+"','"+DropDownList4.SelectedValue+"','"+TextBox3.Text+"',"+randomaccountnumber+")";
                    String sql1 = "Insert into tp(name,account) " + "values('"+txtfullname.Text+"','"+randomaccountnumber+"')";
                    string Squestion= DropDownList4.SelectedValue;
                    string checked1 = "true";

                    String sql2 = "Insert into VaghasiaA_WADfl16_StudentInfor(userName,password,certifiedchecked,socialSecurityNumber,fullName,dateOfBirth,address,emailAddress,securityQuestion,securityQuestionAnswer,accountNumber) " + "values('" + txtusername.Text + "','" + txtpassword.Text + "','"+checked1+ "','" + txtssn.Text + "','" + txtfullname.Text + "','" + dob + "','" + txtaddress.Text + "','" + txtemail.Text + "','" + txtssn.Text + "','" + TextBox3.Text + "'," + randomaccountnumber + ")";
                  //  String sql2 = "Insert into VaghasiaA_WADfl16_StudentInfor(userName,password,certifiedchecked,socialSecurityNumber,fullName,dateOfBirth,address,emailAddress,securityQuestion,securityQuestionAnswer,accountNumber) " + "values('" + txtusername.Text + "','" + txtpassword.Text + "','" + checked1 + "','" + txtssn.Text + "','" + txtfullname.Text + "','" + dob + "','" + txtaddress.Text + "','" + txtemail.Text + "','" + txtssn.Text + "','" + TextBox3.Text + "'," + randomaccountnumber + ")";

                    SqlCommand cmd = new SqlCommand(sql2, conn);
                  //  SqlCommand cmd1 = new SqlCommand(sql1, conn);

                    try
                    {
                        conn.Open();
                        cmd.BeginExecuteNonQuery();
                      //  cmd1.BeginExecuteNonQuery();

//Response.Write("<script>alert('Seems like')</script>");


                    }
                    finally
                    {
                        conn.Close();
                      //  Response.Write("<script>alert('Nada')</script>");

                    }


                    clearall();
                    email();
                }
                else if (CheckBox1.Checked == false)
                {
                    Response.Write("<script>alert('Plaese Accept the Ceritifaction Statement by Checking the box at the Top Left Hand Side')</script>");
                }
            }


        }
    }
    protected void email()
    {
        string email = txtemail.Text;

        if (Application["AllUsersList"] != null)
        {


            List<StudentInfor> allUsersList = Application["AllUsersList"] as List<StudentInfor>;
            if (allUsersList != null)
            {
                for (int i = 0; i < allUsersList.Count; i++)
                {
                    if (allUsersList[i].EmailAddress == email)
                    {
                        string pwd;
                        pwd = allUsersList[i].Password;
                        String header = "Registration";
                        String subject = "New Registration Notification";
                        String body = "Dear "+allUsersList[i].FullName+ ",<br/> Thank you for registering with us. <br>  You can now access your loan account at <http://dcm.uhcl.edu/c432016fa02vaghasiaa/Login.aspx> < br/>In the meantime, please share the word about Aum Education Loan Services with your friends and neighbors!. Aum Education Loan Services is  open to all eligible college applicants throughout the United States<br/>Thank you again for your registration. If you have any questions, please contact us at <http://dcm.uhcl.edu/c432016fa02vaghasiaa/ContactUs.aspx>.<br/><br/>With Best Wishes, <br/>Aum Education Loan Services";

                        if (send_email(email, header, subject, body))
                        {
                            //  ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "", "alert('Thank you. The email has been sent to the address we have in our file')", true);
                            Response.Write("<script>alert('Thank you. An email has been sent to email address you have provided.');</script>");

                        }
                    }
                }
            }
        }
    }

    public bool send_email(String email, String header, String subject, String body)
    {
        System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
        mail.To.Add(email);
        mail.From = new MailAddress("aditivaghasia20@gmail.com", header, System.Text.Encoding.UTF8);
        mail.Subject = subject;
        mail.SubjectEncoding = System.Text.Encoding.UTF8;
        mail.Body = body;

        mail.BodyEncoding = System.Text.Encoding.UTF8;
        mail.IsBodyHtml = true;
        mail.Priority = MailPriority.High;

        SmtpClient client = new SmtpClient();
        client.Credentials = new System.Net.NetworkCredential("aditivaghasia20@gmail.com", "aditi123");
        client.Port = 587;
        client.Host = "smtp.gmail.com";
        client.EnableSsl = true;
        try
        {
            client.Send(mail);
            return true;

        }
        catch (Exception ex)
        {
            Exception ex2 = ex;
            string errorMessage = string.Empty;
            while (ex2 != null)
            {
                errorMessage += ex2.ToString();
                ex2 = ex2.InnerException;
            }
        }
        return false;
    }

    protected void clearall()
    {
        txtusername.Text = "";
        txtpassword.Text = "";
        CheckBox1.Checked = false;
        txtssn.Text = "";
        txtfullname.Text = "";
        DropDownList1.SelectedIndex = 0;
        DropDownList2.SelectedIndex = 0;
        DropDownList3.SelectedIndex = 0;
        DropDownList4.SelectedIndex = 0;
        txtaddress.Text = "";
        txtemail.Text = "";
        TextBox3.Text = "";
        txtconfirmpwd.Text = "";
        txtconfirmssn.Text = "";

    }
    protected void txtssn_TextChanged(object sender, EventArgs e)
    {
        // List<StudentInfor> allUsersList = Application["AllUserList"] as List<StudentInfor>;


        string validatessn = txtssn.Text;
        if (Application["AllUsersList"] != null)
        {

            List<StudentInfor> allUsersList = Application["AllUsersList"] as List<StudentInfor>;
            if (allUsersList != null)
            {

                for (int i = 0; i < allUsersList.Count; i++)
                {
                    if (allUsersList[i].SocialSecurityNumber == validatessn)
                    {
                        string message = ": already exist. Please go to login page.";
                        System.Text.StringBuilder sb = new System.Text.StringBuilder();
                        sb.Append("<script type = 'text/javascript'>");
                        sb.Append("window.onload=function(){");
                        sb.Append("alert('");
                        sb.Append(validatessn);
                        sb.Append(message);
                        sb.Append("')};");
                        sb.Append("</script>");
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                        txtssn.Text = "";
                    }
                }
            }
            RequiredFieldValidator1.Validate();
            RegularExpressionValidator1.Validate();
        }
    }




    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
       
    }

   
}
