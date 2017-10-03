using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["currentuser"] != null)
        {
            StudentInfor stu = Session["currentuser"] as StudentInfor;
            LinkButton2.Text = "Logout";
            TextBox1.Enabled= true;
            Button1.Enabled = true;
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");


    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        if (LinkButton2.Text.Equals("Logout"))
        {
            Session.Abandon();
          //  Response.Redirect("Login.aspx");
            Response.Write("<script>alert('You are now Logged Out.');</script>");
            LinkButton2.Text = "Login";
        }
        else
        {
            Response.Redirect("Login.aspx");

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
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        if (TextBox1.Text != "")
        {
            if (Session["currentuser"] != null)
            {
                StudentInfor stu = Session["currentuser"] as StudentInfor;
                string email = stu.EmailAddress;
                String header = "Acknowledgement";
                String subject = "We have received your message!";
                String body = "Dear valued student,<br/>You are receiving this email because you contacted us with a question and/or a concern.<br/>Our support staff will respond within 48 hours.<br/><br/>Thank you.<br>Aum Education Loan Services";
                if (send_email(email, header, subject, body))
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "", "alert('Thank you. The email has been sent to the address we have in our file')", true);

                }
            }

        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "", "alert('Please write the message.')", true);

        }

    }
}