<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="search_default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Poem %>" SelectCommand="SELECT * FROM [Poem2]"></asp:SqlDataSource>
    <br />
   <% If Not IsPostBack Then%>
     Search poems by Author:
    <asp:TextBox ID="TB_search" runat="server"></asp:TextBox>
    <br />
    <% Else%>
    Search for more poems by Author:
    <asp:TextBox ID="TB_search2" runat="server"></asp:TextBox>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Width="735px">
        <Columns>
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
            <asp:BoundField DataField="Dynasty" HeaderText="Dynasty" SortExpression="Dynasty" />
        </Columns>
    </asp:GridView>
    <% End If %>
</asp:Content>

