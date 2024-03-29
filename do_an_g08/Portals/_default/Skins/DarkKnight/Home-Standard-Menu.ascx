<%@ Control Language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="NAV" Src="~/Admin/Skins/Nav.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TEXT" Src="~/Admin/Skins/Text.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LEFTMENU" Src="~/Admin/Skins/LeftMenu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKS" Src="~/Admin/Skins/Links.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="STYLES" Src="~/Admin/Skins/Styles.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKTOMOBILE" Src="~/Admin/Skins/LinkToMobileSite.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.DDRMenu.TemplateEngine" Assembly="DotNetNuke.Web.DDRMenu" %>
<%@ Register TagPrefix="dnn" TagName="MENU" Src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="CONTROLPANEL" Src="~/Admin/Skins/controlpanel.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement"
    Assembly="DotNetNuke.Web.Client" %>
<dnn:STYLES runat="server" ID="StylesIE7" Name="IE7Minus" StyleSheet="ie7skin.css"
    Condition="LT IE 8" UseSkinPath="true" />
<div id="DNN6" class="Home">
    <div id="Background">
    </div>
    <%--start HeaderTop--%>
    <div id="HeaderTop">
        <div>
            <dnn:USER ID="dnnUser" runat="server" LegacyMode="false" />
            <dnn:LOGIN ID="dnnLogin" CssClass="LoginLink" runat="server" LegacyMode="false" />
            <dnn:LANGUAGE runat="server" ID="dnnLANGUAGE" ShowMenu="False" ShowLinks="True" />
        </div>
    </div>
    <div id="Header">
        <div id="ContentBG">
            <div id="ControlPanelWrapper">
                <dnn:CONTROLPANEL runat="server" ID="cp" IsDockable="True" />
            </div>
            <div class="Content">
                <div id="Nav">
                    <dnn:MENU MenuStyle="DNNStandard" runat="server">
                    </dnn:MENU>
                </div>
                <dnn:SEARCH ID="dnnSearch" runat="server" UseDropDownList="true" EnableTheming="true"
                    Submit="Search" />
            </div>
        </div>
    </div>
    <div id="Content">
        <div id="Panes">
            <div id="LogoRow">
                <dnn:LOGO ID="dnnLogo" runat="server" />
                <div class="LogoRowRight">
                    <%-- <div id="Login">
                        <dnn:USER ID="dnnUser" runat="server" LegacyMode="false" /> 
                        <dnn:LOGIN ID="dnnLogin" CssClass="LoginLink" runat="server" LegacyMode="false" />
					    <dnn:LANGUAGE runat="server" id="dnnLANGUAGE"  showMenu="False" showLinks="True" />
                    </div>--%>
                    <div id="SocialMediaPane" runat="server">
                    </div>
                </div>
            </div>
            <div id="ContentPane" runat="server">
            </div>
            <div id="LeftPane" runat="server">
            </div>
            <div id="RightPane" runat="server">
            </div>
            <div id="BottomPane" runat="server">
            </div>
        </div>
    </div>
    <div id="Footer">
        <div class="Content">
            <div id="Footer_LeftPane" runat="server">
            </div>
            <div id="Footer_RightPane" runat="server">
            </div>
            <div id="Footer_BottomPane" runat="server">
            </div>
            <div id="Copyright">
                <dnn:COPYRIGHT ID="dnnCopyright" runat="server" />
                <dnn:TERMS ID="dnnTerms" runat="server" />
                <dnn:PRIVACY ID="dnnPrivacy" runat="server" />
                <dnn:LINKTOMOBILE ID="dnnLinkToMobile" runat="server" />
            </div>
        </div>
    </div>
</div>
<dnn:DnnJsInclude runat="server" FilePath="jquery.cycle.min.js" PathNameAlias="SkinPath" />
<dnn:DnnJsInclude runat="server" FilePath="/DNNStandard/StandardMenu.js" PathNameAlias="SkinPath" />
<dnn:DnnJsInclude runat="server" FilePath="~/Resources/Shared/Scripts/jquery/jquery.hoverIntent.min.js" />
<dnn:DnnCssInclude runat="server" FilePath="/DNNStandard/StandardMenu.css" PathNameAlias="SkinPath" />
