using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using userform;

namespace webformuserregistration
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        SQLSP sp = new SQLSP();
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-54G4PFA;Initial Catalog=load_infotech;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButPwd_Click(object sender, EventArgs e)
        {
            string uemail = TextBox1.Text;
            string upassword = TextBox2.Text;
            DataTable st = sp.forgetPass(uemail, upassword);
            Response.Write("<script>alert('"+st.Rows[0]["Output"].ToString()+"')</script>");
        }
      
    }
}