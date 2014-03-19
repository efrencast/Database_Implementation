<%@ Page Title="" Language="C#" MasterPageFile="~/project2.Master" AutoEventWireup="true" CodeBehind="employees.aspx.cs" Inherits="project2.EmployeeData.employees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="header" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="main" runat="server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT u.UserName, r.RoleName, u.Comments FROM aspnet_Users AS u INNER JOIN aspnet_UsersInRoles AS ur ON u.UserId = ur.UserId INNER JOIN aspnet_Roles AS r ON ur.RoleId = r.RoleId WHERE (u.ApplicationId IN (SELECT ApplicationId FROM aspnet_Applications AS a WHERE (ApplicationName = 'Demo')))"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableModelValidation="True">
            <Columns>
                <asp:BoundField DataField="UserName" HeaderText="User Name" SortExpression="UserName" >
                <FooterStyle BorderColor="#006600" BorderStyle="Solid" />
                <HeaderStyle BorderStyle="Solid" ForeColor="#009933" />
                </asp:BoundField>
                <asp:BoundField DataField="RoleName" HeaderText="Role Name" SortExpression="RoleName" >
                <HeaderStyle ForeColor="#009933" />
                </asp:BoundField>
                <asp:BoundField DataField="Comments" HeaderText="User Full Name" SortExpression="Comments">
                <HeaderStyle ForeColor="#009933" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
    </p>
</asp:Content>
