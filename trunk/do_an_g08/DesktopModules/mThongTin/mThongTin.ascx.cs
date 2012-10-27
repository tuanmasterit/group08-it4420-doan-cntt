using System;
using System.Collections;
using System.Collections.Generic;
using System.Reflection;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Linq;
using System.Data;
using Linq;

using DotNetNuke;
using DotNetNuke.Common.Utilities;
using DotNetNuke.Entities.Modules;
using DotNetNuke.Entities.Modules.Actions;
using DotNetNuke.Security;
using DotNetNuke.Services.Exceptions;
using DotNetNuke.Services.Localization;

namespace DotNetNuke.Modules.mThongTin
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
    partial class mThongTin : PortalModuleBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ListTintuc.DataSource = TinTuc.getTintuc();
            ListTintuc.DataBind();
            ListLink.DataSource = TinTuc.getTintuc();
            ListLink.DataBind();
        }
    }
}