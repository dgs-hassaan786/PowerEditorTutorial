using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmailTemplateEditor
{
    public partial class Login : System.Web.UI.Page
    {
        public class UserInfo
        {
            public string username { get; set; }
            public string password { get; set; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {


            if(Session["Login"] != null)
            {
                Response.Redirect("templatedesigner");
            }

            if (IsPostBack)
            {
                Session["Login"] = true;
            }
        }

      

        protected void BTNLogin_Click(object sender, EventArgs e)
        {
            StreamReader sr = File.OpenText(Path.Combine(
            HttpContext.Current.Server.MapPath("~/JSON"), "user.json"));
            {
                String line = sr.ReadToEnd();
                List<UserInfo> users = new List<UserInfo>();
                users= JsonConvert.DeserializeObject<List<UserInfo>>(line);
                UserInfo user = users.Where(x => x.username == txtUsername.Text && x.password == txtPassword.Text).FirstOrDefault();
                if (user != null)
                {
                    HttpContext.Current.Session["Login"] = true;
                    Response.Redirect("templatedesigner");
                }
                else
                {

                    HttpContext.Current.Session["Login"] = null;
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "ErrorFunc", "$.notify('Invalid username or password','error');", true);
                }
            }
        }
    }
}