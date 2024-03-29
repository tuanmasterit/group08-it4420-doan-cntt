<%@ Control language="C#" Inherits="DotNetNuke.Modules.C_CreateModule.C_CreateModule" CodeFile="C_CreateModule.ascx.cs" AutoEventWireup="true"%>
<table >
    <tr>
        <td colspan="3">
            <asp:Label ID="LabelMessage" runat="server" ForeColor="Blue"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            Module Name</td>
        <td>
            <asp:TextBox ID="TextBoxName" runat="server" Width="258px" 
                ontextchanged="TextBoxName_TextChanged" TabIndex="1"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Nhập tên module." ControlToValidate="TextBoxName" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="ButtonOK" runat="server" Text="OK" onclick="ButtonOK_Click" TabIndex="1" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
