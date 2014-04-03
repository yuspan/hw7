<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="View.aspx.vb" Inherits="Patron_View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Poem %>" SelectCommand="SELECT * FROM [Poem2]"></asp:SqlDataSource>
    <br />
    <asp:DetailsView ID="DetailsView1" cssclass="cssgridview" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Height="55px" Width="427px">
        <AlternatingRowStyle CssClass="alt" />
        <Fields>
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
            <asp:BoundField DataField="Dynasty" HeaderText="Dynasty" SortExpression="Dynasty" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        </Fields>
    </asp:DetailsView>
</asp:Content>

