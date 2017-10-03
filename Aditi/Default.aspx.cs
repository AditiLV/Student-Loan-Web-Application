using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["currentuser"] != null)
        {
            StudentInfor stu = Session["currentuser"] as StudentInfor;
            Loginlink.Text = "Logout";
        }
        else
        {
            Loginlink.Text = "Login";
        }


    }

    protected void Loginlink_Click(object sender, EventArgs e)
    {
        if (Loginlink.Text.Equals("Logout"))
        {
            Session.Abandon();
            //Response.Redirect("Login.aspx");
            Response.Write("<script>alert('You are now Logged Out.');</script>");
            Loginlink.Text = "Login";

        }
        else
        {
            Response.Redirect("Login.aspx");

        }

    }

 
}