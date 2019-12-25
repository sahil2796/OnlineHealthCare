using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration; 

public partial class doc_prescription : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineHealthCareConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //bind your grid here.
            show();
        }
    }
    protected void btnPrescribe_Click(object sender, EventArgs e)
    {
        try
        {
            if (conn.State != ConnectionState.Open)
            {
                conn.Open();
            }
            //int u_id = Convert.ToInt32(Session["u_id"]);

            String query = "insert into [doc_prescription](datetime,patient_name,medicine_name,medicine_type,medicine_sensitive,mobile_no,address) values (@datetime,@name,@medicinename,@medicinetype,@medicinesensitive,@mobile,@address)";
            SqlCommand cmd = new SqlCommand(query, conn);
            DateTime dateTimeVariable = DateTime.Today;
            cmd.Parameters.AddWithValue("@datetime", dateTimeVariable);
            cmd.Parameters.AddWithValue("@name", txtName.Text.Trim());
            cmd.Parameters.AddWithValue("@medicinename", txtMedicineName.Text.Trim());
            cmd.Parameters.AddWithValue("@medicinetype", txtMedicineType.Text.Trim());
            cmd.Parameters.AddWithValue("@medicinesensitive", txtMedicineSensitive.Text.Trim());
            cmd.Parameters.AddWithValue("@mobile", txtMobile.Text.Trim());
            cmd.Parameters.AddWithValue("@address", txtAddress.Text.Trim());
            // cmd.Parameters.Add("@dob", SqlDbType.Date).Value = dob.Value.Date;
            int i = cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("doc_prescription.aspx");
            
        }
        catch (Exception ex)
        {

        }
    }

    protected void show()
    {
        string strSQL = "Select * from doc_prescription";
        SqlDataAdapter dt = new SqlDataAdapter(strSQL, conn);
        DataSet ds = new DataSet();
        dt.Fill(ds, "doc_prescription");
        conn.Close();
        gvPrescription.DataSource = ds;
        gvPrescription.DataBind();
       
       
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        int ID = Convert.ToInt32(((LinkButton)sender).CommandArgument);

        SqlCommand cmd = new SqlCommand("delete from doc_prescription where prescription_id=@prescription_id", conn);
        cmd.Parameters.AddWithValue("prescription_id", ID);
        conn.Open();
        int id = cmd.ExecuteNonQuery();
        conn.Close();
        show();
    }
}