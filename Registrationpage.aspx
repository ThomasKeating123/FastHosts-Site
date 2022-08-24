<%@ Page Title="Registration Page" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registrationpage.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form class="Data-Input-Form" runat="server">

            <div class="ImgContainer">
                <center>
                    <img class="Img-Logo" src="Assets/fh_logo.png" />
                </center>
            </div>
            <table class="Form-Layout">
            <tr>
                <td>
                    <h1 class="Form-Title">Register</h1>
                </td>
            </tr>
            <tr>
                <td>
                    <p>First Name:</p>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TB_Firstname" class="Form-Input" runat="server" placeholder="Enter First Name"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RequiredFieldValidator CssClass="Validator" ID="RFV_First_Name" runat="server" ErrorMessage="Enter your First Name" ControlToValidate="TB_Firstname"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Surname:</p>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TB_Surname" class="Form-Input" runat="server" placeholder="Enter Surname"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RequiredFieldValidator CssClass="Validator" ID="RFV_Surname" runat="server" ErrorMessage="Enter your Surname" ControlToValidate="TB_Surname"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Username:</p>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TB_Username" class="Form-Input" runat="server" placeholder="Enter Username"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RequiredFieldValidator CssClass="Validator" ID="RFV_Username" runat="server" ErrorMessage="Enter a Username" ControlToValidate="TB_Username"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Email:</p>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TB_Email" class="Form-Input" runat="server" placeholder="Enter Email"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RegularExpressionValidator CssClass="Validator" ID="REV_Email" runat="server" ErrorMessage="Enter a valid Email" ControlToValidate="TB_Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Password:</p>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TB_Password" class="Form-Input" runat="server" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RequiredFieldValidator CssClass="Validator" ID="RFV_Password" runat="server" ErrorMessage="Enter a Password" ControlToValidate="TB_Password"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Country:</p>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:dropdownlist id="DDL_Country" class="Form-Input" runat="server" placeholder="Select Country"  DataTextField="CountryName" DataValueField="CountryName">
                    </asp:dropdownlist>
                    <!--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FastHostsV1ConnectionString %>" SelectCommand="SELECT [CountryName] FROM [tbl_Countries]"></asp:SqlDataSource>!-->
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RequiredFieldValidator CssClass="Validator" ID="RFV_Country" runat="server" ErrorMessage="Select a Country" ControlToValidate="DDL_Country"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <div class="Form-Separator">
            <center>
                <asp:Button ID="BTN_Register" class="Form-Button" runat="server" Text="Register" OnClick="BTN_Register_Click" />
            </center>
        </div>
        </form>
</asp:Content>

