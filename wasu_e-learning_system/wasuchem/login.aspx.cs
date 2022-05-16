using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace wasuchem
{
    public partial class login : System.Web.UI.Page
    {
        wasuchem.ServiceReference1.Service1Client SR = new ServiceReference1.Service1Client();
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            int userID = SR.Login(email.Value, password.Value);

            if (userID == 0)
            {
                //return;
                error.Attributes.Add("style", "color:red;");
                error.Visible = true;
            }
            else
            {
                Session["LoggedInUserID"] = userID;
                Response.Redirect("admin.aspx");
            }

            
        }
    }
}