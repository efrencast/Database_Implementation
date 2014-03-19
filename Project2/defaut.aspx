<%@ Page Title="" Language="C#" MasterPageFile="~/project2.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="project2.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="header" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="main">
    Welcome <asp:LoginName ID="LoginName1" runat="server" />
</asp:Content>
