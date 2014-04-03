<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="Patron_default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Poem %>" DeleteCommand="DELETE FROM [Poem2] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Poem2] ([Title], [Author], [Dynasty], [Year], [DateRecorded], [Recorder], [Description]) VALUES (@Title, @Author, @Dynasty, @Year, @DateRecorded, @Recorder, @Description)" SelectCommand="SELECT * FROM [Poem2]" UpdateCommand="UPDATE [Poem2] SET [Title] = @Title, [Author] = @Author, [Dynasty] = @Dynasty, [Year] = @Year, [DateRecorded] = @DateRecorded, [Recorder] = @Recorder, [Description] = @Description WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="Dynasty" Type="String" />
            <asp:Parameter Name="Year" Type="String" />
            <asp:Parameter DbType="Date" Name="DateRecorded" />
            <asp:Parameter Name="Recorder" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="Dynasty" Type="String" />
            <asp:Parameter Name="Year" Type="String" />
            <asp:Parameter DbType="Date" Name="DateRecorded" />
            <asp:Parameter Name="Recorder" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" cssclass="cssgridview" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Width="582px">
       
         <AlternatingRowStyle CssClass="alt" />
         <Columns>
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
            <asp:BoundField DataField="Dynasty" HeaderText="Dynasty" SortExpression="Dynasty" />
            <asp:HyperLinkField NavigateUrl="~/Patron/View.aspx" Text="Details" />
        </Columns>
    </asp:GridView>
&nbsp;
</asp:Content>

