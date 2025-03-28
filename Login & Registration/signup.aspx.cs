using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace Login___Registration
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignupBtn_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(cs);
           
                string query = "insert into user_signup values (@name, @username, @password, @email)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@name", name.Text.Trim());
               
                cmd.Parameters.AddWithValue("@username", username.Text.Trim());
                cmd.Parameters.AddWithValue("@password", password.Text);
                cmd.Parameters.AddWithValue("@email", email.Text);

            try
            {


                conn.Open();
                int rowsAffected = cmd.ExecuteNonQuery();

                if (rowsAffected > 0)
                {

                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Success','Registered','success')", true);

                    Response.Redirect("~/Login.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Try again ');</script>");
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.Message);
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Try with different username','error')", true);
                    Response.Write("<script>alert('Try again with different username');</script>");


            }

            finally
            {
                conn.Close();
            }

        }
    }
}