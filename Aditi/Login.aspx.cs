using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //clearall();

        if (Session["currentuser"] != null)
        {
            Response.Redirect("myAccount.aspx");
        }


    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        int userexist = 0;
        string validateemail = txtuserid.Text;
        string validatepassword = txtpassword.Text;
        if (Application["AllUsersList"] != null)
        {
            //database




            //with object
            List<StudentInfor> allUsersList = Application["AllUsersList"] as List<StudentInfor>;
            if (allUsersList != null)
            {
                for (int i = 0; i < allUsersList.Count; i++)
                {
                    if (allUsersList[i].EmailAddress == validateemail && allUsersList[i].Password == validatepassword)
                    {
                         userexist = 1;
                        Session["currentuser"] = allUsersList[i];
                        StudentInfor stu = Session["currentuser"] as StudentInfor;
                        string message = "You have successfully logged in. Welcome ";
                        System.Text.StringBuilder sb = new System.Text.StringBuilder();
                        sb.Append("<script type = 'text/javascript'>");
                        sb.Append("window.onload=function(){");
                        sb.Append("alert('");
                        sb.Append(stu.FullName);
                        sb.Append(message);
                        sb.Append("')};");
                        sb.Append("</script>");
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                        Response.Redirect("myAccount.aspx");


                    }
                  
                }
            }
           
        }
     if(userexist != 1)
        {
            string message = "The user you have entered is not in our database, please try again or click on Register Link";
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append("<script type = 'text/javascript'>");
            sb.Append("window.onload=function(){");
            sb.Append("alert('");
            sb.Append(message);
            sb.Append("')};");
            sb.Append("</script>");
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            clearall();
        }


    }
    protected void clearall()
    {
        txtpassword.Text = "";
        txtuserid.Text = "";

    }

    protected void btnregister_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");

    }

    protected void RecoberPWD_Click(object sender, EventArgs e)
    {
        Response.Redirect("passwordrecovery.aspx");
    }
}