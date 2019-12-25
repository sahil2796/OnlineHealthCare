using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration; 

public partial class pharma_reg_login : System.Web.UI.Page
{
     SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineHealthCareConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
  
     //protected void btnRegister_Click1(object sender, EventArgs e)
     //{
     //    //SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-1DP7V4V;Initial Catalog=OnlineHealthCare;Integrated Security=True");
     //    try
     //    {
     //        if (conn.State != ConnectionState.Open)
     //        {
     //            conn.Open();
     //        }
     //        int pharma_id = Convert.ToInt32(Session["pharma_id"]);

     //        String query = "insert into [pharma_reg](f_name,l_name,u_name,email,password,contact,age,medical_name,licence_no,location,address) values (@fname,@lname,@u_name,@email,@password,@contact,@age,@medical_name,@licence_no,@location,@address);";
     //        SqlCommand cmd = new SqlCommand(query, conn);
     //        cmd.Parameters.AddWithValue("@fname", first_name.Text.Trim());
     //        cmd.Parameters.AddWithValue("@lname", last_name.Text.Trim());
     //        cmd.Parameters.AddWithValue("@u_name", user_name.Text.Trim());
     //        cmd.Parameters.AddWithValue("@email", email.Text.Trim());
     //        cmd.Parameters.AddWithValue("@password", password.Text.Trim());
     //        cmd.Parameters.AddWithValue("@contact", contact.Text.Trim());
     //        cmd.Parameters.AddWithValue("@age", age.Text.Trim());
     //        cmd.Parameters.AddWithValue("@medical_name", medical_name.Text.Trim());
     //        cmd.Parameters.AddWithValue("@licence_no", licence_no.Text.Trim());
     //        cmd.Parameters.AddWithValue("@location", location.Text.Trim());
     //        cmd.Parameters.AddWithValue("@address", address.Text.Trim());
     //        int i = cmd.ExecuteNonQuery();
     //        conn.Close();
     //        Response.Redirect("pharma_orders.aspx");
     //    }
     //    catch (Exception ex)
     //    {

     //    }
     //}


     protected void btnLogin_Click(object sender, EventArgs e)
     {
         try
         {
             if (conn.State != ConnectionState.Open)
             {
                 conn.Open();
             }

             SqlCommand cmd = new SqlCommand("SELECT pharma_id from pharma_login where email = @email and password = @password", conn);
             cmd.Parameters.AddWithValue("@email", l_email.Text.Trim());
             cmd.Parameters.AddWithValue("@password", l_password.Text.Trim());
             SqlDataReader dr = cmd.ExecuteReader();
             if (dr.Read())
             {
                 Session["pharma_id"] = Convert.ToInt32(dr["pharma_id"]);
                 Session["email"] = l_email.Text.Trim();
                 Session["userType"] = "pharma";
                 Response.Redirect("pharma_orders.aspx");
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