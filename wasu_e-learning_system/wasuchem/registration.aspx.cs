using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace wasuchem
{
    public partial class registration : System.Web.UI.Page
    {

        wasuchem.ServiceReference1.Service1Client SR = new ServiceReference1.Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Register_Click(object sender, EventArgs e)
        {
          if(password.Value!= confirmpassword.Value)
            {
                error.Attributes.Add("style", "color:red;");
                error.Text = "Passwords do not match.";
                error.Visible = true;
            }
            else
            {
                int registered = SR.Register(email.Value, name.Value, idnumber.Value, grade.Value, password.Value);
                if (registered == 1)
                {
                    error.Attributes.Add("style", "color:green;");
                    error.Text = "Student successfully registered!";
                    error.Visible = true;
                }
                else if (registered == -1)
                {
                    error.Attributes.Add("style", "color:red;");
                    error.Text = "Something went wrong, please try again later";
                    error.Visible = true;
                }
                else if (registered == 0)
                {
                    error.Attributes.Add("style", "color:red;");
                    error.Text = "The username already exists";
                    error.Visible = true;
                }
            }
        }
       
    }
}