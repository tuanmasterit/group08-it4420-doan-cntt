<%@ Control Language="C#" Inherits="DotNetNuke.Modules.mPageContent.mPageContent"
    CodeFile="mPageContent.ascx.cs" AutoEventWireup="true" %>
<link rel="stylesheet" type="text/css" href="/do_an_g08/DesktopModules/mPageContent/style.css" >
<asp:Repeater ID="Repeater1" runat="server">
    <ItemTemplate>
        <br />
        <div class="time">
            <%# Eval("DateCreated") %>
        </div>
        <br />
        <div class="title">
            <%# Eval("Title") %>
        </div>
        <br />
        <div class="content">
            <%# Eval("Content") %>
        </div>
    </ItemTemplate>
</asp:Repeater>
<div class="blog_more">
    <h2>
        Các bài viết khác..</h2>
    <ul>
        <asp:ListView ID="ListLink" runat="server">
            <ItemTemplate>
                <div>
                    <li><a href='<%#"thongtinchitiet.aspx?id=" +Eval("NewsID") %>'>
                        <%# Eval("Title") %></a></li>
                </div>
            </ItemTemplate>
        </asp:ListView>
    </ul>
</div>
<asp:DataPager ID="DataPagerComment" runat="server" PagedControlID="ListLink" PageSize="5">
    <fields>
                         <asp:NumericPagerField />
                    </fields>
</asp:DataPager><!--END DataPagerComment-->
