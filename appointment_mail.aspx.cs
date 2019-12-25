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

public partial class appointment_mail : System.Web.UI.Page
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

    protected void show()
    {
        var docId = Convert.ToInt32(Session["doc_id"]);
        string strSQL = "Select * from appointment where confirm='YES' and docId=" + docId;
        SqlDataAdapter dt = new SqlDataAdapter(strSQL, conn);
        DataSet ds = new DataSet();
        dt.Fill(ds, "appointment");
        conn.Close();
        gv_todayappointment.DataSource = ds;
        gv_todayappointment.DataBind();
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
          
}


       
