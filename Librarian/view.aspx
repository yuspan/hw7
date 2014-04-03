<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="view.aspx.vb" Inherits="Librarian_view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Poem %>" SelectCommand="SELECT * FROM [Poem2]"></asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" cssclass="cssgridview" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
       <AlternatingRowStyle CssClass="alt" />
         <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
            <asp:BoundField DataField="Dynasty" HeaderText="Dynasty" SortExpression="Dynasty" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
            <asp:BoundField DataField="DateRecorded" HeaderText="DateRecorded" SortExpression="DateRecorded" />
            <asp:BoundField DataField="Recorder" HeaderText="Recorder" SortExpression="Recorder" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        </Columns>
    </asp:GridView>
</asp:Content>

