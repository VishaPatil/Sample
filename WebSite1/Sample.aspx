<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Sample.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            margin-left: 30px;
        }
        .style2
        {
            margin-left: 209px;
        }
        .style3
        {
            margin-left: 34px;
        }
        .style4
        {
            margin-left: 86px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Welcome to SAMPLE ASP.NET APPLICATION!
    </h2>
    FIRSTNAME&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="firstname" runat="server" CssClass="style1" 
        Width="153px"></asp:TextBox>
&nbsp;<br />
    LASTNAME&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="lastname" runat="server" CssClass="style3" 
        Width="151px"></asp:TextBox>
    <br />
    ID(PRIMARY KEY)<asp:TextBox ID="id" runat="server" CssClass="style4" 
         Width="152px"></asp:TextBox>
    <br />
    <asp:Button ID="Add" runat="server" CssClass="style2" onclick="Add_Click" 
        Text="Add" Width="66px" />
&nbsp;<asp:Button ID="Del" runat="server" CssClass="style2" onclick="Del_Click" 
        Text="Delete" Width="66px" />
    <asp:Button ID="Update" runat="server" CssClass="style2" onclick="Update_Click" 
        Text="Update" Width="66px" />
    <br />
</asp:Content>
