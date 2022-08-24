<%@ Page Title="Login Page" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div id="alert" class="alert" style="visibility:hidden; color: white;" runat="server">
            <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
            <asp:Label ID="Info" runat="server" Text=""></asp:Label>
        </div>
        <form class="Data-Input-Form" runat="server">
            <div class="ImgContainer">
                <center>
                    <img class="Img-Logo" src="Assets/fh_logo.png" />
                </center>
            </div>
            <table class="Form-Layout">
            <tr>
                <td>
                    <h1 class="Form-Title">Login</h1>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Username:</p>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TB_Login_Username" class="Form-Input" runat="server" placeholder="Enter Username"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Password:</p>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TB_Login_Password" class="Form-Input" runat="server" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
        </table>
        <div class="Form-Separator">
            <center>
                <asp:Button ID="BTN_Login" class="Form-Button" runat="server" Text="Login" OnClick="BTN_Login_Click" />
                <br />
                <a class="Links-Redirect" href="Registrationpage.aspx">Sign up!</a>
            </center>
        </div>
        </form>
    
</asp:Content>

