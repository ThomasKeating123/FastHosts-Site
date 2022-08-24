 <%@ Page Title="Homepage" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="Scripts/jquery-1.9.1.js"></script>
    <script src="Scripts/bootstrap.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server">
        <center>
            <div class="container" style="margin: 0px; height: 100%; padding-top: 10px; padding-bottom: 10px;">
                <div id="myCarousel" class="carousel slide" data-ride="carousel" style="margin:0;">
                    <!-- Indicators -->
                    <ol class="carousel-indicators" >
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="Assets/Img/StockImage1.jpg" alt="Landscape 1">
                        </div>

                        <div class="item">
                            <img src="Assets/Img/StockImage2.jpg" alt="Landscape 2">
                        </div>
    
                        <div class="item">
                            <img src="Assets/Img/StockImage3.jpg" alt="Landscape 3">
                        </div>
                    </div>

                    <!-- Left and right controls -->
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
            <script src="Scripts/jquery-1.9.1.js"></script>
            <script src="Scripts/bootstrap.js"></script>
        </center>
    </form>
</asp:Content>

