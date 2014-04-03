<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>Welcome to Chinese Poetry Library</h3>

    <p>寒蝉凄切，对长亭晚。骤雨初歇，都门帐饮无绪，方留恋处，兰舟催发。执手相看泪眼，竟无语凝噎。念去去，千里烟波，暮霭沉沉楚天阔。
 </p>
    <p>
        多情自古伤离别，更那堪，冷落清秋节。今宵酒醒何处?杨柳岸，晓风残月。此去经年，应是良辰好景虚设。便纵有千种风情，待与何人说!
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Poem %>" SelectCommand="SELECT * FROM [Poem2]"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <asp:GridView ID="GridView1" cssclass="cssgridview" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Width="796px">
         <AlternatingRowStyle CssClass="alt" />
        <Columns>
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
            <asp:BoundField DataField="Dynasty" HeaderText="Dynasty" SortExpression="Dynasty" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
        </Columns>
    </asp:GridView>

</asp:Content>

