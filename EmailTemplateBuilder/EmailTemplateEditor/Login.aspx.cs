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
        protected void Page_Load(object sender, EventArgs e)
        {


            if(Session["Login"] != null)
            {
                Response.Redirect("templatebuilder");
            }

            if (IsPostBack)
            {
                Session["Login"] = true;
            }
        }

        [WebMethod()]
        //[ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static void userLogin(string user,string pass)
        {
            StreamReader sr = File.OpenText("JSON/user.json");
            {
                String line = sr.ReadToEnd();
               
            }
            HttpContext.Current.Session["Login"] = true;
        }
    }
}