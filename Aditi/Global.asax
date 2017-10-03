<%@ Application Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %> 
<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        // Code that runs on application startup
        Application["AllUsersList"] = new List<StudentInfor>();
        // Application["AllUsersList"] = null;
        List<StudentInfor> allUsersList = new List<StudentInfor>();

        String connectionString = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            string sql = "SELECT * from VaghasiaA_WADfl16_StudentInfor";
            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                try
                {
                    conn.Open();
                    SqlDataReader sqlReader = cmd.ExecuteReader();

                    while (sqlReader.Read())
                    {
                       
                            StudentInfor stu = new StudentInfor((String)sqlReader["userName"], 
                                            (String)sqlReader["password"], 
                                            (String)sqlReader["certifiedchecked"], 
                                            (String)sqlReader["socialSecurityNumber"],
                                            (String)sqlReader["fullName"], 
                                            (String)sqlReader["dateOfBirth"], 
                                            (String)sqlReader["address"], 
                                            (String)sqlReader["emailAddress"], 
                                            (String)sqlReader["securityQuestion"],
                                            (String)sqlReader["securityQuestionAnswer"], 
                                            (int)sqlReader["accountNumber"], 
                                            (String)sqlReader["lastUpdatedDate"], 
                                            (double)sqlReader["currentBalance"],
                                            (double)sqlReader["regularMonthlyPaymentAmount"], 
                                            (double)sqlReader["amountSatisfiedByExtraPayment"], 
                                            (double)sqlReader["pastDueAmount"],
                                            (double)sqlReader["currentAmountDue"], 
                                            (String)sqlReader["currentStatementDueDate"]);

                        using (SqlConnection conn1 = new SqlConnection(connectionString))
                        {
                            string sql1 = "SELECT * from VaghasiaA_WADfl16_StudentInfor where socialSecurityNumber = " + (String)sqlReader["socialSecurityNumber"];
                            using (SqlCommand cmd1 = new SqlCommand(sql1, conn1))
                            {
                                try
                                {
                                    conn1.Open();
                            

                                }
                                finally
                                {
                                    conn1.Close();
                                }
                                allUsersList.Add(stu);


                            }
                        }
                    }
                }

                finally
                {
                    conn.Close();
                    Application["AllUsersList"] = allUsersList;
                }
            }
        }



    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }


</script>
