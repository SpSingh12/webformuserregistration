using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using userform;

namespace webformuserregistration
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        DataSet ds = new DataSet();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();


        SQLSP sp = new SQLSP();
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-54G4PFA;Initial Catalog=load_infotech;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uname"] == null)
                Response.Redirect("WebForm2.aspx");
            lblUserDetails.Text = "uname : " + Session["uname"];
            con.Open();
            if (!Page.IsPostBack)
            {
                DataShow();
            }
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            string uname = TextBox1.Text;
            string uemail = TextBox2.Text;
            string upassword = TextBox3.Text;
            DataTable dt = sp.InsertForm(uname, uemail, upassword);
            Response.Write("<script> alert ('"+dt.Rows[0]["Output"].ToString()+"')</script>");
            //sp.InsertForm(uname, uemail, upassword);
            DataShow();
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            string uname = TextBox1.Text;
            string uemail = TextBox2.Text;
            string upassword = TextBox3.Text;
            DataTable dt = sp.updateQuery(uname, uemail, upassword);
            Response.Write("<script> alert('"+ dt.Rows[0]["Output"].ToString() + "')</script>");
            //sp.updateQuery(uname, uemail, upassword);
            DataShow();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string uname = TextBox1.Text;
            DataTable dt = sp.Deletequery(uname);
            Response.Write("<script>alert('"+dt.Rows[0]["Output"].ToString()+"')</script>");
            sp.Deletequery(uname);
            DataShow();
        }

        public void DataShow()
        {
            ds = new DataSet();
            cmd.CommandText = "select * from user_registration";
            cmd.Connection = con;
            sda = new SqlDataAdapter(cmd);
            sda.Fill(ds);
            cmd.ExecuteNonQuery();
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("WebForm2.aspx");
        }

        //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;

        //    TextBox1.Text = GridView1.Rows[rowind].Cells[1].Text;
        //    TextBox2.Text = GridView1.Rows[rowind].Cells[2].Text;
        //    TextBox3.Text = GridView1.Rows[rowind].Cells[3].Text;
        //}
    }
}