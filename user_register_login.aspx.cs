using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration; 


public partial class user_register_login : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineHealthCareConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click1(object sender, EventArgs e)
    {
        try
        {
            if (conn.State != ConnectionState.Open)
            {
                conn.Open();
            }
           // int u_id = Convert.ToInt32(Session["u_id"]);

            String query = "insert into [user_reg](datetime,f_name,l_name,u_name,email,password,contact,city,location,age,blood_grp,dob) values (@datetime,@fname,@lname,@u_name,@email,@password,@contact,@city,@location,@age,@blood_grp,@dob)";
            SqlCommand cmd = new SqlCommand(query, conn);
            DateTime dateTimeVariable = DateTime.Now;
            cmd.Parameters.AddWithValue("@datetime", dateTimeVariable);
            cmd.Parameters.AddWithValue("@fname", first_name.Text.Trim());
            cmd.Parameters.AddWithValue("@lname", last_name.Text.Trim());
            cmd.Parameters.AddWithValue("@u_name", user_name.Text.Trim());
            cmd.Parameters.AddWithValue("@email", email_reg.Text.Trim());
            cmd.Parameters.AddWithValue("@password", password_reg.Text.Trim());
            cmd.Parameters.AddWithValue("@contact", contact.Text.Trim());
            cmd.Parameters.AddWithValue("@city", city.Text.Trim());
            cmd.Parameters.AddWithValue("@location", location.Text.Trim());
            cmd.Parameters.AddWithValue("@age", age.Text.Trim());
            cmd.Parameters.AddWithValue("@blood_grp", blood_grp.Text.Trim());
            cmd.Parameters.AddWithValue("@dob", datePicker.Text.Trim());
            // cmd.Parameters.Add("@dob", SqlDbType.Date).Value = dob.Value.Date;
            int i = cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect   ("user_register_login.aspx");
        }
        catch (Exception ex)
        {

        }
    }

    protected void btnLogin_Click1(object sender, EventArgs e)
    {
       
        try
        {
             if (conn.State != ConnectionState.Open)
             {
                 conn.Open();
             }
          
             SqlCommand cmd = new SqlCommand("SELECT u_id from user_reg where email = @email and password = @password", conn);
             cmd.Parameters.AddWithValue("@email", l_email.Text.Trim());
             cmd.Parameters.AddWithValue("@password", l_password.Text.Trim());
             SqlDataReader dr = cmd.ExecuteReader();
             if (dr.Read())
             {
                 Session["u_id"] = Convert.ToInt32(dr["u_id"]); 
                 Session["email"] = l_email.Text.Trim();
                 Session["userType"] = "user";
                 Response.Redirect("find_doc.aspx");
             }
             else
             {
                 lblLoginFailure.Visible = true;
             }
             dr.Close();
             conn.Close();
         }
         catch (Exception ex)
         {
                throw;
         }
     }
}