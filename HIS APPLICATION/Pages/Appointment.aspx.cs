using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace HIS_APPLICATION.Pages
{
    public partial class Appointment : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDepartDDL();
            }

        }
        void BindDepartDDL()
        {
            SqlConnection connection = new SqlConnection(cs);
            string query = "select * from Department";
            SqlDataAdapter sda = new SqlDataAdapter(query, connection);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            DropDownDepart.DataSource = dt;
            DropDownDepart.DataTextField = "Depart_Name";
            DropDownDepart.DataValueField = "Depart_ID";
            DropDownDepart.DataBind();

            ListItem selectItem = new ListItem("Select Department", "Select Department");
            selectItem.Selected = true;
            DropDownDepart.Items.Insert(0, selectItem);

        }
        void BindDocDDL(int depart_ID)
        {
            SqlConnection connection = new SqlConnection(cs);
            string query = "select * from Doctors where Depart_ID = @departm_ID";
            SqlDataAdapter sda = new SqlDataAdapter(query, connection);
            sda.SelectCommand.Parameters.AddWithValue("departm_ID", depart_ID);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            DropDownDoc.DataSource = dt;
            DropDownDoc.DataTextField = "Doc_Name";
            DropDownDoc.DataValueField = "Doc_ID";
            DropDownDoc.DataBind();

            ListItem selectItem = new ListItem("Select Doctor", "Select Doctor");
            selectItem.Selected = true;
            DropDownDoc.Items.Insert(0, selectItem);

        }

        protected void DropDownDepart_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                int department_ID = Convert.ToInt32(DropDownDepart.SelectedValue);
                BindDocDDL(department_ID);
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Department is required')</script>");
            }
        }
    }
}