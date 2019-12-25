using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration; 

public partial class pharma_orders : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineHealthCareConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        show();
    }
    protected void show()
    {
        string strSQL = "Select * from doc_prescription";
        SqlDataAdapter dt = new SqlDataAdapter(strSQL, conn);
        DataSet ds = new DataSet();
        dt.Fill(ds, "doc_prescription");
        conn.Close();
        gvOrders.DataSource = ds;
        gvOrders.DataBind();
    }
    protected void gvOrders_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
      protected void LinkButton1_Click(object sender, EventArgs e)
      {
          var pname="";
                 
        var lb = (LinkButton)sender;
        var row = (GridViewRow)lb.NamingContainer;

        if (row != null)
        {
            var name = row.FindControl("lblName") as Label;
            if (name != null)
            {
                //Get values
                pname = name.Text;
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Dear "+pname+" your medicine will be delivered to your following address shortly.Thank You!');", true);
            }
        }
         
      }

      

      protected void LinkButton2_Click(object sender, EventArgs e)
      {
          int ID = Convert.ToInt32(((LinkButton)sender).CommandArgument);

          SqlCommand cmd = new SqlCommand("delete from doc_prescription where prescription_id=@prescription_id", conn);
          cmd.Parameters.AddWithValue("prescription_id", ID);
          conn.Open();
          int id = cmd.ExecuteNonQuery();
          conn.Close();
          Response.Redirect("pharma_orders.aspx");
      } 
}