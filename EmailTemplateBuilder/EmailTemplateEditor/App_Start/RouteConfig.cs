using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace EmailTemplateEditor
{
    using System.Linq;
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            var settings = new FriendlyUrlSettings();
            settings.AutoRedirectMode = RedirectMode.Off;

            routes.EnableFriendlyUrls(settings);
            routes.MapPageRoute("", "templatedesigner", "~/Editor.aspx");
            routes.MapPageRoute("", "templatedesignersend", "~/Editor.aspx/SendEmail");
        }
    }
}
