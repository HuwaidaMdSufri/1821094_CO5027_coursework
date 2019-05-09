using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using Microsoft.Owin.Security.Cookies;

namespace WebApplication7
{
    public partial class LogInaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            //create a dbcontext that specified the connection string 
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");

            //create user store and user manager
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);

            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);
            IdentityRole adminRole = new IdentityRole("admin");
            roleManager.Create(adminRole);

            //create user 
            var user = new IdentityUser() { UserName = txtRegUserName.Text };
            IdentityResult result = manager.Create(user, txtRegPassword.Text);
            if (result.Succeeded)
            {
                manager.AddToRole(user.Id, "admin");
                manager.Update(user);
                //todo: Either authentication the user (log them in) or redirect them to log page to log in themselves
                litRegisterError.Text = "Success";

            }
            else
            {
                litRegisterError.Text = "An error has occured:" + result.Errors.FirstOrDefault();
            }


        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);
            var user = userManager.Find(txtLogInUser.Text, txtLogInPassword.Text);
            if (user != null)
            {
                //todo: log user in/ instruct user to log in
                LogInEmail(userManager, user);
                Page.Response.Redirect("Admin2/Default.aspx");
            }
            else
            {
                LitLoginError.Text = "Invalid username or password.";
            }
        }

        private void LogInEmail(UserManager<IdentityUser> usermanager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = usermanager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);
            //Note: user is automatically redirected if trying to access another page 
        }
    }
}
