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
using System.IO;

namespace DotNetNuke.Modules.C_CreateModule
{
    partial class C_CreateModule : PortalModuleBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ButtonOK_Click(object sender, EventArgs e)
        {
            if (Directory.Exists(Server.MapPath("~/DesktopModules/" + TextBoxName.Text)))
            {
                LabelMessage.Text = "Thư mục này đã tồn tại.";
                return;
            }

            string contentASCX = @"<%@ Control language=|C#| Inherits=|DotNetNuke.Modules.V_Chung.V_Chung| CodeFile=|V_Chung.ascx.cs| AutoEventWireup=|true|%>
Hello <br>
How are you?".Replace("|", "\"").Replace("V_Chung", TextBoxName.Text);

            string contentCS = @"using System;
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

namespace DotNetNuke.Modules.V_Chung
{
    partial class V_Chung : PortalModuleBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}".Replace("V_Chung", TextBoxName.Text);

            string contentDNN = @"<dotnetnuke version=|3.0| type=|Module|>
  <folders>
    <folder>
      <name>V_Chung</name>
      <friendlyname>V_Chung</friendlyname>
      <foldername>V_Chung</foldername>
      <modulename>V_Chung</modulename>
      <description>A V_Chung module</description>
      <version>01.00.00</version>
      <modules>
        <module>
          <friendlyname>V_Chung</friendlyname>
          <cachetime>0</cachetime>
          <controls>
            <control>
              <src>DesktopModules/V_Chung/V_Chung.ascx</src>
              <type>View</type>
              <helpurl></helpurl>
            </control>
          </controls>
        </module>
      </modules>
      <files>
        <file>
          <name>V_Chung.ascx</name>
        </file>
        <file>
          <name>V_Chung.ascx.cs</name>
        </file>
      </files>
    </folder>
  </folders>
</dotnetnuke>".Replace("|", "\"").Replace("V_Chung", TextBoxName.Text);

            Directory.CreateDirectory(Server.MapPath("~/DesktopModules/" + TextBoxName.Text));

            File.WriteAllText(Server.MapPath("~/DesktopModules/" + TextBoxName.Text) + "\\"+TextBoxName.Text+".ascx", contentASCX);
            File.WriteAllText(Server.MapPath("~/DesktopModules/" + TextBoxName.Text) + "\\" + TextBoxName.Text + ".ascx.cs", contentCS);
            File.WriteAllText(Server.MapPath("~/DesktopModules/" + TextBoxName.Text) + "\\" + TextBoxName.Text + ".dnn", contentDNN);

            LabelMessage.Text = "Tạo module thành công.";
        }
        protected void TextBoxName_TextChanged(object sender, EventArgs e)
        {
            //ButtonOK_Click(null, null);
        }
}
}

