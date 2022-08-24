<%@ Page Title="Sitemap" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Sitemap.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="CSS/ContentPages.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <h1 class="heading">Sitemap</h1>
    
    <table class="nav-justified">
        <tr>
            <td>
                <h2 class="Links-Heading">Main Menu</h2>
                <ul class="Sitemap-Links">
                    <li class="Links"><a href="HomePage.aspx">Home</a></li>
                    <li class="Links"><a href="Searchpage.aspx">Search</a></li>
                    <li class="Links"><a href="UsersInterests.aspx">Interests</a></li>
                    <li class="Links"><a href="Contact.aspx">Contact us</a></li>
                </ul>
            </td>
            <td>
                <h2 class="Links-Heading">Register & Login</h2>
                <ul class="Sitemap-Links">
                    <li class="Links"><a href="Registrationpage.aspx">Sign up</a></li>
                    <li class="Links"><a href="LoginPage.aspx">Login</a></li>
                </ul>
            </td>
            <td>
                <h2 class="Links-Heading">Footer Menu</h2>
                <ul class="Sitemap-Links">
                    <li class="Links"><a href="HomePage.aspx">Home</a></li>
                    <li class="Links"><a href="Searchpage.aspx">Search</a></li>
                    <li class="Links"><a href="Sitemap.aspx">Sitemap</a></li>
                </ul>
            </td>
        </tr>
    </table>

    </form>

</asp:Content>

