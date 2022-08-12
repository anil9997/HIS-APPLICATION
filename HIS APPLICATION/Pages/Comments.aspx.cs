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
    public partial class Comments : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        SqlConnection con = new SqlConnection("Data Source = DESKTOP-AGP1EJL; Initial Catalog = Firstdatabase; Integrated Security = True");

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Comments by" + Session["username"].ToString();
            if (!IsPostBack)
            {
                RepeaterData();
            }
        }
        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                cmd = new SqlCommand("insert into Comment (UserName,Subject,CommentOn,Post_Date) values(@userName,@subject,@comment,@date)", con);
                cmd.Parameters.Add("@userName", SqlDbType.NVarChar).Value = TextName.Text.ToString();
                cmd.Parameters.Add("@subject", SqlDbType.NVarChar).Value = TextSubject.Text.ToString();
                cmd.Parameters.Add("@comment", SqlDbType.NVarChar).Value = TextComment.Text.ToString();
                cmd.Parameters.Add("@date", SqlDbType.NVarChar).Value = DateTime.Now.Date;
                cmd.ExecuteNonQuery();
                con.Close();
                TextName.Text = string.Empty;
                TextSubject.Text = string.Empty;
                TextComment.Text = string.Empty;
                RepeaterData();

            }

            catch (Exception ex)
            {
                TextComment.Text = ex.Message;
            }
        }
        public void RepeaterData()
        {
            con.Open();
            cmd = new SqlCommand("Select * from Comment Order By Post_Date desc", con);
            DataSet ds = new DataSet();
            da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            RepeaterComment.DataSource = ds;
            RepeaterComment.DataBind();
            con.Close();
        }


    }
}
