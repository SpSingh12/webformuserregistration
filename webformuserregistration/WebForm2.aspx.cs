using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using userform;

namespace webformuserregistration
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        //SQLSP sp = new SQLSP();
        //SqlCommand com = new SqlCommand("Data Source=DESKTOP-54G4PFA;Initial Catalog=load_infotech;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            lblErrorMessage.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using(SqlConnection sqlcon = new SqlConnection(@"Data Source=DESKTOP-54G4PFA;Initial Catalog=load_infotech;Integrated Security=True"))
            {
                sqlcon.Open();
                string query = "Select COUNT(1) from user_registration WHERE uname=@uname AND upassword=@upassword";
                SqlCommand sqlcmd = new SqlCommand(query, sqlcon);
                sqlcmd.Parameters.AddWithValue("@uname", TextBox1.Text.Trim());
                sqlcmd.Parameters.AddWithValue("@upassword", TextBox2.Text.Trim());
                int count = Convert.ToInt32(sqlcmd.ExecuteScalar());
                if(count == 1)
                {
                    Session["uname"] = TextBox1.Text.Trim();
                    Response.Redirect("WebForm1.aspx");
                }
                else
                {
                    lblErrorMessage.Visible = true;
                }
            }
        }
    }
}