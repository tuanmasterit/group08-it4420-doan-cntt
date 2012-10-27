using System;
using System.Collections;
using System.Collections.Generic;
using System.Reflection;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Linq;
using Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.Services;

using DotNetNuke;
using DotNetNuke.Common.Utilities;
using DotNetNuke.Entities.Modules;
using DotNetNuke.Entities.Modules.Actions;
using DotNetNuke.Security;
using DotNetNuke.Services.Exceptions;
using DotNetNuke.Services.Localization;

namespace DotNetNuke.Modules.mPageContent
{
    class TinTuc
    {
        public TinTuc()
        {

        }

        public static IQueryable getTintuc()
        {
            MyLinqDataContext data = new MyLinqDataContext();
            var tintuc = from c in data.zNews
                         select new
                         {
                             c.Title,
                             c.Content,
                             c.image,
                             c.DateCreated,
                             c.NewsID,
                             c.Description
                         };
            return tintuc;
        }
    }
    partial class mPageContent : PortalModuleBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            MyLinqDataContext data = new MyLinqDataContext();
            var content = from c in data.zNews
                          where c.NewsID == id
                          select new
                          {
                              c.Title,
                              c.Content,
                              c.DateCreated
                          };
            Repeater1.DataSource = content;
            Repeater1.DataBind();
            ListLink.DataSource = TinTuc.getTintuc();
            ListLink.DataBind();
        }
    }
}