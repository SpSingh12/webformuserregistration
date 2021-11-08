using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using userform;
using System.Data;

namespace webformuserregistration
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        SQLSP sp = new SQLSP();
        SqlCommand com = new SqlCommand("Data Source=DESKTOP-54G4PFA;Initial Catalog=load_infotech;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string uname = TextBox1.Text;
            string uemail = TextBox2.Text;
            string upassword = TextBox3.Text;
            DataTable dt = sp.InsertForm(uname,uemail,upassword);
            Response.Write("<script>alert('"+dt.Rows[0]["Output"].ToString()+"')</script>");
            sp.InsertForm(uname, uemail, upassword);
        }
    }
}