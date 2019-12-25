using Microsoft.VisualBasic;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Net.Mail;
using System.Net;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Text;
using System.Security.Cryptography;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Unnamed1_Click(object sender, EventArgs e)
    {

    }

    public class SendEmail1
{
    MailMessage mail;
    NetworkCredential mailAuthentication;
    static string FromID = "nehaljethwa6@gmail.com";
    static string pwd = "password97";


    public void sendEMail(string ToEmail,string subject,string msg1)
    {
        //mail = new MailMessage(SendEmail1.Decrypt(FromID), SendEmail1.Decrypt(FromID), "Enquiry", msg);
        //mailAuthentication = new NetworkCredential(SendEmail1.Decrypt(FromID), SendEmail1.Decrypt(pwd));
        mail = new MailMessage(FromID,ToEmail, subject, msg1);
        mailAuthentication = new NetworkCredential(FromID,pwd );

        SmtpClient mailClient = new SmtpClient("smtp.gmail.com", 587);
        mailClient.EnableSsl = true;
        mailClient.Credentials = mailAuthentication;
        mail.IsBodyHtml = true;
        mailClient.Send(mail);
    }

    //public void sendEmail()
    //{
    //    mail = new MailMessage("tusharghadge22@gmail.com", "shankarkadam54@gmail.com", "Your Password", "Admin User Name is :ShankarKdm and Password is : shankar");
    //    mailAuthentication = new NetworkCredential("tusharghadge22@gmail.com", "tusharg123");
    //    SmtpClient mailClient = new SmtpClient("smtp.gmail.com", 587);
    //    mailClient.EnableSsl = true;
    //    mailClient.Credentials = mailAuthentication;
    //    mail.IsBodyHtml = true;
    //    mailClient.Send(mail);
    //}

    private static string Encrypt(string clearText)
    {
        string EncryptionKey = "MAKV2SPBNI99212";
        byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                {
                    cs.Write(clearBytes, 0, clearBytes.Length);
                    cs.Close();
                }
                clearText = Convert.ToBase64String(ms.ToArray());
            }
        }
        return clearText;
    }

    private static string Decrypt(string cipherText)
    {

        string EncryptionKey = "MAKV2SPBNI99212";
        byte[] cipherBytes = Convert.FromBase64String(cipherText);
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write))
                {
                    cs.Write(cipherBytes, 0, cipherBytes.Length);
                    cs.Close();
                }
                cipherText = Encoding.Unicode.GetString(ms.ToArray());
            }
        }
        return cipherText;
    }
}
}