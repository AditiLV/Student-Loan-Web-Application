using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for StudentInfor
/// </summary>
public class StudentInfor
{
    String userName;
    String password;
    String certifiedchecked;
    String socialSecurityNumber;
    String fullName;
    String dateOfBirth;
    String address;
    String emailAddress;
    String securityQuestion;
    String securityQuestionAnswer;
    int accountNumber;
    String lastUpdatedDate;
    double currentBalance;
    double regularMonthlyPaymentAmount;
    double amountSatisfiedByExtraPayment;
    double pastDueAmount;
    double currentAmountDue;
    String currentStatementDueDate;

    public StudentInfor()
    {
        //just a constructor
    }
 
    public StudentInfor(String userName,    
                        String password, 
                        String certifiedchecked,    
                        String socialSecurityNumber,
                        String fullName,
                        String dateOfBirth,
                        String address, 
                        String emailAddress,
                        String securityQuestion,
                        String securityQuestionAnswer,   
                        int accountNumber, 
                        String lastUpdatedDate,    
                        double currentBalance,
                        double regularMonthlyPaymentAmount,
                        double amountSatisfiedByExtraPayment,
                        double pastDueAmount,
                        double currentAmountDue,
                        String currentStatementDueDate)
    {
        //
        // TODO: Add constructor logic here
        //
        this.userName = userName;
        this.password = password;
        this.certifiedchecked = certifiedchecked;
        this.socialSecurityNumber = socialSecurityNumber;
        this.fullName = fullName;
        this.dateOfBirth= dateOfBirth;
        this.address = address;
        this.emailAddress = emailAddress;
        this.securityQuestion = securityQuestion;
        this.securityQuestionAnswer = securityQuestionAnswer;
        this.accountNumber = accountNumber;
        this.lastUpdatedDate = lastUpdatedDate;
        this.currentBalance = currentBalance;
        this.regularMonthlyPaymentAmount = regularMonthlyPaymentAmount;
        this.amountSatisfiedByExtraPayment = amountSatisfiedByExtraPayment;
        this.pastDueAmount = pastDueAmount;
        this.currentAmountDue = pastDueAmount;
        this.currentStatementDueDate = currentStatementDueDate;
    }
    public String UserName
    {
        get
        {
            return userName;
        }
        set
        {
            userName = value;
        }
    }
    public String Password
    {
        get
        {
            return password;
        }
        set
        {
            password = value;
        }
    }
    public string Certifiedchecked
    {
        get
        {
            return certifiedchecked;
        }
        set
        {
            certifiedchecked = value;
        }
    }
    public string SocialSecurityNumber
    {
        get
        {
            return socialSecurityNumber;
        }
        set
        {
            socialSecurityNumber = value;
        }
    }
    public string FullName
    {
        get
        {
            return fullName;
        }
        set
        {
            fullName = value;
        }
    }
    public string DateOfBirth
    {
        get
        {
            return dateOfBirth;
        }
        set
        {
            dateOfBirth = value;
        }

    }
    public string Address
    {
        get
        {
            return address;
        }
        set
        {
            address = value;
        }
    }
    public string EmailAddress
    {
        get
        {
            return emailAddress;
        }
        set
        {
            emailAddress = value;
        }

    }
    public string SecurityQuestion
    {
        get
        {
            return securityQuestion;
        }
        set
        {
            securityQuestion = value;
        }

    }
    public string SecurityQuestionAnswer
    {
        get
        {
            return securityQuestionAnswer;
        }
        set
        {
            securityQuestionAnswer = value;
        }
    }
    public int AccountNumber
    {
        get
        {

            return accountNumber;
        }
        set
        {
            accountNumber = value;
        }

    }
    public string LastUpdatedDate
    {

        get
        {
            return lastUpdatedDate;
        }
        set
        {
            lastUpdatedDate = value;
        }


    }
    public double CurrentBalance
    {
        get
        {
            return currentBalance;
        }
        set
        {
            currentBalance = value;
        }

    }
    public double RegularMonthlyPaymentAmount
    {
        get
        {
            return regularMonthlyPaymentAmount;
        }
        set
        {
            regularMonthlyPaymentAmount = value;
        }

    }
    public double AmountSatisfiedByExtraPayment
    {
        get
        {
            return amountSatisfiedByExtraPayment;
        }
        set
        {
            amountSatisfiedByExtraPayment = value;
        }
    }
    public double PastDueAmount
    {
        get
        {
            return pastDueAmount;
        }
        set
        {
            pastDueAmount = value;
        }
    }
    public double CurrentAmountDue
    {
        get
        {
            return currentAmountDue;
        }
        set
        {
            currentAmountDue = value;
        }

    }
    public string CurrentStatementDueDate
    {
        get
        {
            return currentStatementDueDate;
        }
        set
        {
            currentStatementDueDate = value;
        }
    }
}