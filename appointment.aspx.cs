using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI.WebControls;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using System.IO;
using System.Text;
using System.Diagnostics;

public partial class appointment : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineHealthCareConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["u_id"] = u_id;
        if (!IsPostBack)
        {
            //bind your grid here.
            show();
        }
        
       
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnViewApp_Click(object sender, EventArgs e)
    {
       
       
    }

    protected void show()
    {
        var docId = Convert.ToInt32(Session["doc_id"]);
        string strSQL = "Select * from appointment where confirm='NO' and docId=" + docId;
        SqlDataAdapter dt = new SqlDataAdapter(strSQL, conn);
        DataSet ds = new DataSet();
        dt.Fill(ds, "appointment");
        conn.Close();
        gv_appoint.DataSource = ds;
        gv_appoint.DataBind();
    }

    public object u_id { get; set; }
    protected void gv_appoint_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

    
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        int ID = Convert.ToInt32(((LinkButton)sender).CommandArgument);

        SqlCommand cmd = new SqlCommand("delete from appointment where appoint_id=@appoint_id", conn);
        cmd.Parameters.AddWithValue("appoint_id", ID);
        conn.Open();
        int id = cmd.ExecuteNonQuery();
        conn.Close();
       show();
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        string toemail;
        string date;
        string time;
        int ID = Convert.ToInt32(((LinkButton)sender).CommandArgument);
        var lb = (LinkButton)sender;
        var row = (GridViewRow)lb.NamingContainer;
        
        if (row != null)
        {
            var email = row.FindControl("lblEmail") as Label;
            TextBox textDateVal = row.FindControl("txtDate") as TextBox;
            TextBox textTimeVal = row.FindControl("txtTime") as TextBox; 
           // var txtDateString = row.FindControl("txtDate") as TextBox;
            //var txtTimeString = row.FindControl("txtTime") as TextBox;


            if (email != null && textDateVal != null && textTimeVal != null)
            {
                //Get values
                toemail = email.Text;
                date = textDateVal.Text;
                time = textTimeVal.Text;
         
                SqlCommand cmd = new SqlCommand("update appointment set confirm='YES', date=@date,time=@time where appoint_id=@appoint_id", conn);
                cmd.Parameters.AddWithValue("appoint_id", ID);
                cmd.Parameters.AddWithValue("date", date);
                cmd.Parameters.AddWithValue("time", time);
                conn.Open();
                int id = cmd.ExecuteNonQuery();

                conn.Close();
                show();        
               // Response.Redirect("appointment_mail.aspx");
                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com");
                smtpClient.EnableSsl = true;
                MailMessage message = new MailMessage();

                try
                {
                    MailAddress fromAddress = new MailAddress("sahilwork2796@gmail.com");

                    // You can specify the host name or ipaddress of your server
                    // Default in IIS will be localhost
                    smtpClient.Host = "localhost";

                    //Default port will be 25
                    smtpClient.Port = 587;
                    smtpClient.Host = "smtp.gmail.com";

                    //From address will be given as a MailAddress Object
                    message.From = fromAddress;

                    // To address collection of MailAddress
                    // message.To.Add(txtMail.Text);  
                   // message.To.Add("sahilwork2796@gmail.com");
                    message.To.Add(toemail);
                    message.Subject = "Confirmation of Appointment";

                    // CC and BCC optional
                    // MailAddressCollection class is used to send the email to various users
                    // You can specify Address as new MailAddress("admin1@yoursite.com")
                    message.CC.Add("sahilwork2796@gmail.com");
                    //message.CC.Add("admin2@yoursite.com");

                    //Body can be Html or text format
                    //Specify true if it  is html message
                    message.IsBodyHtml = false;

                    // Message body content

                    //DOITLATER1
                    // message.Body = txtMessage.Text;
                    message.Body = "Your Appointment Has been Booked on" + date + "at"+ time;


                    smtpClient.UseDefaultCredentials = false;
                    smtpClient.Credentials = new NetworkCredential("sahilwork2796@gmail.com", "JavaLookAndFeel()");


                    // Send SMTP mail
                    smtpClient.Send(message);
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Appointment booked');", true);

                    //DOITLATER2
                    //lblStatus.Text = "Email successfully sent.";
                }
                catch (System.Net.Mail.SmtpException ex)
                {
                    Response.Write(ex.ToString());
                }
            }
            else {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Appointment booking failed');", true);
            }
        }
  
       
       

       

    }
    
    private void sendMessage(string msg)
    {
        try
        {
            string strUrl = "http://api.mVaayoo.com/mvaayooapi/MessageCompose?user=sahilwork2796@gmail.com:Pass@JavaLookAndFeel()&senderID=TEST SMS&receipientno=" + "9820365139" + "&msgtxt=" + msg + "";
            WebRequest request = HttpWebRequest.Create(strUrl);
            HttpWebResponse response = (HttpWebResponse)request.GetResponse();
            Stream s = (Stream)response.GetResponseStream();
            StreamReader readStream = new StreamReader(s);
            string dataString = readStream.ReadToEnd();
            response.Close();
            s.Close();
            readStream.Close();

        }
        catch (Exception ex)
        {
            
        }
    }
   


}