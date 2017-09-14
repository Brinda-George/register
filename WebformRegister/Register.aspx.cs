using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformRegister
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string conString = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection con = new SqlConnection(conString))
                {
                    SqlCommand cmd = new SqlCommand("spRegisterUser", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlParameter username = new SqlParameter("@UserName", txtUserName.Text);
                    string encryptedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(txtUserName.Text, "SHA1");
                    SqlParameter password = new SqlParameter("@Password", encryptedPassword);
                    cmd.Parameters.Add(username);
                    cmd.Parameters.Add(password);
                    con.Open();
                }
            }
        }
    }
}