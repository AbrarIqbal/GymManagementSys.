<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Pages/Index.Master" AutoEventWireup="true" CodeBehind="Contact Us.aspx.cs" Inherits="masterr.Pages.Contact_Us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>


       


.social-btn-holder{
  padding:10px;
  margin-top:5px;
  margin-bottom:5px;
}
.social-btn-holder .btn-social{
  font-size:12px;
  font-weight:bold;
}

.btn-social{
  color: white;
  opacity:0.9;
}
.btn-social:hover {
  color: white;
  opacity:1;
}
.btn-facebook {
background-color: #3b5998;
}
.btn-twitter {
background-color: #00aced;
}
.btn-linkedin {
background-color:#0e76a8;
}
.btn-github{
  background-color:#000000;
}
.btn-google {
  background-color: #c32f10;
}
.btn-stackoverflow{
  background-color: #D38B28;
}

.btn-hackerrank{
  background-color: #27AB5B;
}
.btn-soundcloud{
  background-color: #FF7202;
}



.centered-text{
  text-align: center;
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div class="row">
        <div class=" col-lg-offset-3 col-lg-6">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="col-sm-offset-3 col-sm-6 col-md-offset-3 col-md-6 col-lg-offset-3 col-lg-6">
                                    <img class="img-circle img-responsive" src="../Images/Profile.jpg">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="centered-text col-sm-offset-3 col-sm-6 col-md-offset-3 col-md-6 col-lg-offset-3 col-lg-6">
                                    <div itemscope="" itemtype="http://schema.org/Person">
                                        <h2> <span itemprop="name">Abrar Iqbal</span></h2>
                                        <p itemprop="jobTitle">Student of 8th Semester</p>
                                        <p><span itemprop="affiliation">BC130402398</span></p>
                                        <p>
                                            <i class="fa fa-map-marker"></i> <span itemprop="addressRegion">Lahore, Pakistan</span>
                                        </p>
                                        <p itemprop="email"> <i class="fa fa-envelope"> </i> <a href="mailto:you@somedomain.com">bc130402398@vu.edu.pk</a> </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12 centered-text">
                            I am student of Virtual University of Pakistan. I am currently enrolled in 8th semester. This web application is my project. 
                        </div>
                    </div>
                </div>
              
            </div>
        </div>
    </div>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
