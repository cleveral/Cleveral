<%@ Page Title="Logout" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="Cleveral.Logout" %>

<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="TopContent" runat="server">
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
            <asp:Label ID="Msg" ForeColor="red" runat="server" />
        </div>
    </div>

</asp:Content>
