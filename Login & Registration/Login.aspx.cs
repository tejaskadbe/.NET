using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Login___Registration
{
    public partial class Login : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(cs);


            try
            {

            string query = "select * from user_signup  where username=@username and password=@password";

            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@username", username.Text);
            cmd.Parameters.AddWithValue("@password", password.Text);

            conn.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {


                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Success','Logged In','success')", true);

                    //Response.Write("<script>alert('Succesfull Login');</script>");
                }
                else
            {

                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Try again','error')", true);
                    //Response.Write("<script>alert('Please try Again');</script>");


            }
            }
            catch (SqlException ex)
            {

                Console.Write(ex.Message);
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Try different Username','error')", true);

                //Response.Write("<script>alert('Something went wrong');</script>");

            }
            finally
            {
                conn.Close();
            }
        }
    }
}