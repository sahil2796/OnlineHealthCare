using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration; 

public partial class doc_reg_login : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineHealthCareConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void btnRegister_Click1(object sender, EventArgs e)
    {
        //SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-1DP7V4V;Initial Catalog=OnlineHealthCare;Integrated Security=True");
        try
        
        {
            if (conn.State != ConnectionState.Open)
            {
                conn.Open();
            }
            //int doc_id = Convert.ToInt32(Session["doc_id"]);

            String query = "insert into [doc_reg](f_name,l_name,u_name,email,password,contact,age,degree,city,location,address) values (@fname,@lname,@u_name,@email,@password,@contact,@age,@degree,@city,@location,@address);";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@fname", first_name.Text.Trim());
            cmd.Parameters.AddWithValue("@lname", last_name.Text.Trim());
            cmd.Parameters.AddWithValue("@u_name", user_name.Text.Trim());
            cmd.Parameters.AddWithValue("@email", email.Text.Trim());
            cmd.Parameters.AddWithValue("@password", password.Text.Trim());
            cmd.Parameters.AddWithValue("@contact", contact.Text.Trim());
            cmd.Parameters.AddWithValue("@age", age.Text.Trim());
            cmd.Parameters.AddWithValue("@degree", degree.Text.Trim());
            cmd.Parameters.AddWithValue("@city", city.Text.Trim());
            cmd.Parameters.AddWithValue("@location", location.Text.Trim());
            cmd.Parameters.AddWithValue("@address", address.Text.Trim());
            int i = cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("doc_reg_login.aspx");
        }
        catch (Exception ex)
        {

        }
    }


    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            if (conn.State != ConnectionState.Open)
            {
                conn.Open();
            }

            SqlCommand cmd = new SqlCommand("SELECT doc_id from doc_reg where email = @email and password = @password", conn);
            cmd.Parameters.AddWithValue("@email", l_email.Text.Trim());
            cmd.Parameters.AddWithValue("@password", l_password.Text.Trim());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["doc_id"] = Convert.ToInt32(dr["doc_id"]);
                Session["email"] = l_email.Text.Trim();
                Session["userType"] = "doctor";
                Response.Redirect("appointment.aspx");
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