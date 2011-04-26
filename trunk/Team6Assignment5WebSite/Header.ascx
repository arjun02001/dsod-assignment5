<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Header.ascx.cs" Inherits="Header" %>
<div>
    <asp:Table runat="server" Width="100%">
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                <img alt="" src="Images/title.jpg"/>
            </asp:TableCell>
            <asp:TableCell>
                <asp:LinkButton runat="server" OnClick="logoutButton_Click" Text="Logout"></asp:LinkButton>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</div>