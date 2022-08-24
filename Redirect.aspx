<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Redirect.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <meta http-equiv="Refresh" content="5;url=LoginPage.aspx" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentplaceholder1" Runat="Server">
    <center>
        <h1>You have been redirected, you need to log in before you can access this page</h1>
    </center>
</asp:Content>

