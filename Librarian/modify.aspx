<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="modify.aspx.vb" Inherits="Librarian_modify" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Poem %>" DeleteCommand="DELETE FROM [Poem2] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Poem2] ([Title], [Author], [Dynasty], [Year], [DateRecorded], [Recorder], [Description]) VALUES (@Title, @Author, @Dynasty, @Year, @DateRecorded, @Recorder, @Description)" SelectCommand="SELECT * FROM [Poem2] ORDER BY [Recorder]" UpdateCommand="UPDATE [Poem2] SET [Title] = @Title, [Author] = @Author, [Dynasty] = @Dynasty, [Year] = @Year, [DateRecorded] = @DateRecorded, [Recorder] = @Recorder, [Description] = @Description WHERE [ID] = @ID">
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
    <asp:DetailsView ID="DetailsView1" cssclass="cssgridview" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Height="50px" Width="416px">
        <AlternatingRowStyle CssClass="alt" />
         <Fields>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
            <asp:BoundField DataField="Dynasty" HeaderText="Dynasty" SortExpression="Dynasty" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
            <asp:BoundField DataField="DateRecorded" HeaderText="DateRecorded" SortExpression="DateRecorded" />
            <asp:BoundField DataField="Recorder" HeaderText="Recorder" SortExpression="Recorder" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    </asp:Content>

