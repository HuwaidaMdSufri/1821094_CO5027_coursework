using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace WebApplication7
{
    public partial class Loginadmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);
            var user = userManager.Find(txtloginadmin.Text, txtloginadminpassword.Text);
            if (user != null)
            {
                LogUserIn(userManager, user);
                Page.Response.Redirect("Admin2/Default.aspx");
            }
            else
            {

                LitLoginError1.Text = "Invalid username or password";
            }
          
        }
        private void LogUserIn(UserManager<IdentityUser> usermanager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = usermanager.CreateIdentity(
                user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);

                if (Request.QueryString["~/Login.aspx"]!=null)
               {
                Response.Redirect(Request.QueryString["~/Login.aspx"]);

               }
            else
            {
                string UserRoles = usermanager.GetRoles(user.Id).FirstOrDefault();
                if (UserRoles.Equals("Admin"))
                {
                    Response.Redirect("~/Admin2/Default.aspx");
                }
            }
        }
    }
}