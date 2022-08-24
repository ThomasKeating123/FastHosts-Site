<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Logout.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta http-equiv="Refresh" content="1;url=HomePage.aspx" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentplaceholder1" Runat="Server">
    <% Session["User"] = null; %>
</asp:Content>

