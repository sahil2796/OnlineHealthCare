    using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration; 

public partial class find_doc : System.Web.UI.Page
{
         SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineHealthCareConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void insertRow(int a)
    {
        if (Session["u_id"] != null && Session["userType"] == "user")
        {
            var uId = Convert.ToInt32(Session["u_id"]);
            var docId=Convert.ToInt32(a);
            //DateTime dateTimeVariable = DateTime.Now;
                //var dateAndTime = DateTime.Now;
                //var date = dateAndTime;
          //  SqlCommand cmd1 = new SqlCommand("INSERT INTO appointment datetime VALUES (@date)", conn);
           // cmd1.Parameters.AddWithValue("@date",date);
            SqlDataAdapter SDA = new SqlDataAdapter();
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand("insert into appointment (f_name,l_name,email,contact,age,blood_grp,dob,confirm,docId) select f_name,l_name,email,contact,age,blood_grp,dob,'NO',docId=@docId from user_reg where u_id=" + uId, conn);
             cmd.Parameters.AddWithValue("@docId", docId);
            conn.Open();
            cmd.ExecuteNonQuery();
            SDA.SelectCommand = cmd;
            SDA.Fill(dt);
            conn.Close();
            Response.Redirect("user_appoint_revert.aspx");
        }
        else
        {
            Response.Redirect("user_register_login.aspx");
        }
    }
    protected void btnBook1_Click(object sender, EventArgs e)
    {

        insertRow(1);
        
        // MessageBox.Show("Product Added");
    }

    protected void btnBook2_Click(object sender, EventArgs e)
    {
           insertRow(2);
        
    }

    protected void btnBook3_Click(object sender, EventArgs e)
    {
        insertRow(3);
    }

    protected void btnBook4_Click(object snder, EventArgs e)
    {
        insertRow(4);
    }

    protected void btnBook5_Click(object snder, EventArgs e)
    {
        insertRow(5);
    }

    public object u_id { get; set; }
}