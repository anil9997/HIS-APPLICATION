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
    public partial class Register : System.Web.UI.Page
    {
        string ConnectionString = ConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindStateDDL();
            }
        }

        void BindStateDDL()
        {
            SqlConnection connection = new SqlConnection(ConnectionString);
            string query = "select * from State";
            SqlDataAdapter adapter = new SqlDataAdapter(query, connection);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            DropDownListState.DataSource = dt;
            DropDownListState.DataTextField = "State_Name";
            DropDownListState.DataValueField = "State_ID";
            DropDownListState.DataBind();

            ListItem selectItem = new ListItem("Select State", "Select State");
            selectItem.Selected = true;
            DropDownListState.Items.Insert(0, selectItem);
        }

        void BindCityDDL(int state_no)
        {
            SqlConnection connection = new SqlConnection(ConnectionString);
            string query = "select * from CityState where State_ID = @State_num";
            SqlDataAdapter adap = new SqlDataAdapter(query, connection);
            adap.SelectCommand.Parameters.AddWithValue("State_num", state_no);
            DataTable dt = new DataTable();
            adap.Fill(dt);
            DropDownListCity.DataSource = dt;
            DropDownListCity.DataTextField = "City_Name";
            DropDownListCity.DataValueField = "City_ID";
            DropDownListCity.DataBind();

            ListItem selectItem = new ListItem("Select City", "Select City");
            selectItem.Selected = true;
            DropDownListCity.Items.Insert(0, selectItem);
        }

        void RegisterPatient()
        {
            SqlConnection insertpatient = new SqlConnection(ConnectionString);
            string Register = "insert into Patient ()";

        }

        protected void DropDownListState_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                int state_number = Convert.ToInt32(DropDownListState.SelectedValue);
                BindCityDDL(state_number);
            }
            
            catch (Exception ex)
            {
                Response.Write("<script>alert('State is required')</script");
            }
        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            string name = DropDownListSalutation.SelectedItem.ToString() + " \t " + TextBoxName.Text;
            Label1.Text = name;
            Label1.Visible = true;
        }

        protected void ButtonCancel_Click(object sender, EventArgs e)
        {
            //DropDownListSalutation.Items.Clear();
            //TextBoxName.Text = "";
            //TextBoxEmail.Text = "";
            //TextBoxMobile.Text = "";
            //DropDownListGender.Items.Clear();
            //TextBoxAge.Text = "";
            //TextBoxAddress.Text = "";
            //DropDownListCity.Items.Clear();
            //DropDownListState.Items.Clear();
            Response.Redirect("Register.aspx");
        }
    }
}