<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="Scripts/Contact_Form_Validator.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentplaceholder1" Runat="Server">
    <script src="Scripts/Contact_Form_Validator.js"></script>
    <form class="Data-Form" runat="server" onsubmit="validate()" id="Contact_Form" >
        <div class="ImgContainer">
            <center>
                  <img class="Img-Logo" src="Assets/fh_logo.png" />
            </center>
        </div>
        <div class="Form-Layout">
            <p>First Name: <input class="input_contact" name="FName" type="text" /></p>
            <br />
            <p>Last Name:<input class="input_contact" name="LName" type="text" /></p>
            <br />
            <p>Email :<input class="input_contact" name="Email" type="text" /></p>
            <br />
            <p>Comments<textarea class="input_contact" name="Comments" rows="2" cols="20"></textarea></p>
            <br />
            <p>Validate: <input type="checkbox" id="validateCheck"/></p>
            <br />
        </div>
        <div class="Form-Separator">
            <center>
                <input name="Submit" class="Form-Button" type="submit" value="Submit" />
            </center>
        </div>
    </form>
</asp:Content>

