using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace WebForms3
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connstr = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(connstr);
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select count(*) from Users where UserName='"+txtuser.Text+"' and Password='"+txtpass.Text+"'",conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                if(dt.Rows[0][0].ToString()=="1")
                {
                    Response.Write("<script>alert('successful Login')</script>");
                   // Response.Redirect("~/Login.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Error in Login')</script>");
                }
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}