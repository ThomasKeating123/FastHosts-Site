<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UsersInterests.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentplaceholder1" Runat="Server">
    <form class="Data-Form" runat="server">
        <div class="Heading-Container">
            <asp:Label runat="server" CssClass="Label-Heading" ID="lbl_TLD">TLD Name's</asp:Label>
        </div>
        <asp:GridView ID="GridView1" CssClass="Gridview-interests" runat="server" ShowHeader="false"></asp:GridView>
    </form>
</asp:Content>

