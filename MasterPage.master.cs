using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
          
        }
        Set_Control_State();
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session["userType"] = ""; 
        Session["u_id"] = "";
        Session["email"] = "";
        Response.Redirect("default.aspx");

    }
    protected void Set_Control_State()
    {
        String user = (String)(Session["userType"]) ?? ""; 

        if (user != null && user != "") 
        {
            btnLogout.Visible = true;
            loginLink.Visible = false;

            if (user == "user") {
                docList.Visible = true;
                appointment.Visible = false;
                todayApp.Visible = false;
                pharmaOrders.Visible = false;
            }
            else if (user == "doctor")
            {
                docList.Visible = true;
                appointment.Visible = true;
                todayApp.Visible = true;
                pharmaOrders.Visible = false;
                doctorPrescription.Visible = true;

            }
            else if (user == "pharma")
            {
                docList.Visible = true;
                appointment.Visible = false;
                todayApp.Visible = false;
                pharmaOrders.Visible = true;
            }
        }
        else
        {
            btnLogout.Visible = false;
            loginLink.Visible = true;
            appointment.Visible = false;
            todayApp.Visible = false;
            pharmaOrders.Visible = false;
        }
    }
}
