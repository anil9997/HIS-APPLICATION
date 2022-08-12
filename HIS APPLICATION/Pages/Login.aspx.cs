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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cont = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ConnectionString);

            try
            {
                SqlCommand cmd = new SqlCommand("select * from Emp_Data where EmpID = @EmployeID and PASSWORD = @Password ", cont);
                cmd.Parameters.AddWithValue("@EmployeID", TextUser.Text);
                cmd.Parameters.AddWithValue("@Password", TextPass.Text);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Session["username"] = dt.Rows[0]["FIRST_NAME"].ToString();
                    Response.Redirect("Homes.aspx");
                    
                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "Wrong Details";
                }
            }
            catch (Exception ex)
            {
                Label1.Visible = true;
                Label1.Text = ex.Message;
            }
        }
    }
}