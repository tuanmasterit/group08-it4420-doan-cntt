using System;
using System.Collections;
using System.Collections.Generic;
using System.Reflection;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Linq;

using DotNetNuke;
using DotNetNuke.Common.Utilities;
using DotNetNuke.Entities.Modules;
using DotNetNuke.Entities.Modules.Actions;
using DotNetNuke.Security;
using DotNetNuke.Services.Exceptions;
using DotNetNuke.Services.Localization;
using Linq;

namespace DotNetNuke.Modules.mLogin
{
    public class Tintuc
    {
        public Tintuc()
        {

        }
        public static IQueryable getTinTuc()
        {
            MyLinqDataContext data = new MyLinqDataContext();
            var tintuc = from c in data.zNews
                         select new
                         {
                             c.NewsID,
                             c.CatID,
                             c.Title,
                             c.Content
                         };
            return tintuc;
        }
    }
    partial class mLogin : PortalModuleBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = Tintuc.getTinTuc();
            GridView1.DataBind();
        }
    }
}