<%@ Control Language="C#" Inherits="DotNetNuke.Modules.mThongTin.mThongTin" CodeFile="mThongTin.ascx.cs"
    AutoEventWireup="true" %>
<link rel="stylesheet" type="text/css" href="/do_an_g08/DesktopModules/mThongTin/category.css" />
<asp:ListView ID="ListTintuc" runat="server">
    <itemtemplate>
        <div class="ItemCategory">
            <div class="image">
                <a>
                    <img src='<%# Eval("image") %>' width="200px" /></a>
            </div>
            <div class="content">
                <div class="title">
                    <a href='<%#"thongtinchitiet.aspx?id=" +Eval("NewsID") %>'>
                        <%# Eval("Title") %></a>
                </div>
                <br />
                <div class="time">
                    <span>
                        <%# Eval("DateCreated") %></span>
                </div>
                <br />
                <div>
                    <%# Eval("Description") %>
                </div>
                <div style="float: right; font-size: 11px">
                    <a href='<%#"thongtinchitiet.aspx?id=" +Eval("NewsID") %>' class="readon">Xem tiếp</a>
                </div>
            </div>
        </div>
    </itemtemplate>
</asp:ListView>
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
<asp:DataPager ID="DataPagerComment" runat="server" PagedControlID="ListTintuc" PageSize="5">
    <fields>
                         <asp:NumericPagerField />
                    </fields>
</asp:DataPager><!--END DataPagerComment-->
