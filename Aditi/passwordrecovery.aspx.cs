using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;


public partial class passwordrecovery : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void linkmainpage_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void btnrecoverpassword_Click(object sender, EventArgs e)
    {

        if (Session["currentuser"] != null)
        {
        }
        else
        {

            string email = txtemailid1.Text;

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
                            String header = "Acknowledgement";
                            String subject = "We have recovered your password!";
                            String body = "Dear Valued Student,<br/>You are receiving this email because you requested to recover your password.<br/>Your current password is :" + allUsersList[i].Password + "<br/><br/>Thank you.<br>Aum Education Loan Services";

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
}