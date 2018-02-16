using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net.Mail;
using System.Web.Services;

namespace EmailTemplateEditor
{
    public partial class Editor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Login"] == null)
            {
                Response.Redirect("login");
            }            

        }

        [WebMethod()]
        //[ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static string SendEmail(EmailSender emailSender)
        {
            try
            {
                using (MailMessage mail = new MailMessage())
                {
                    using (SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com"))
                    {
                        mail.From = new MailAddress(ConfigurationManager.AppSettings["From"]);
                        emailSender.To.ForEach((x) => { mail.To.Add(x); });
                        mail.Subject = emailSender.Subject;
                        mail.Body = emailSender.Body;
                        mail.IsBodyHtml = emailSender.IsBodyHtml;
                        SmtpServer.Port = 587;
                        SmtpServer.Credentials = new System.Net.NetworkCredential(ConfigurationManager.AppSettings["Username"], ConfigurationManager.AppSettings["Password"]);
                        SmtpServer.EnableSsl = true;
                        SmtpServer.Send(mail);
                    }
                }

                return JsonConvert.SerializeObject("sent");
            }
            catch (Exception ex)
            {
                return JsonConvert.SerializeObject(ex);
            }            
        }

        [WebMethod()]
        public void Logout()
        {
            Session.RemoveAll();
            Response.Redirect("login");
        }


    }

    public class EmailSender
    {
        public List<string> To { get; set; }
        public string Body { get; set; }
        public bool IsBodyHtml { get; set; } = true;
        public string Subject { get; set; }
    }
}