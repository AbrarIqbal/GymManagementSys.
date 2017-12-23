<%@ Page Title="Home" Language="C#" MasterPageFile="~/Pages/Index.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="masterr.Pages.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<title> Home</title> 
    <style>
        body 
        
        {

            background-image:url("../Images/Main4.jpg");
            background-size:cover;
        display: block;
        max-width: 100%;
        height: auto;


            /*background-size:cover;
            opacity: 0.4;
            background-position:inherit;
            resize:both;
            display:block;
            max-height:100%;
            max-width:100%;
            height:auto;
            width:auto;*/

        }

        .jumbotron {
  margin-bottom: 15px;
  font-size: 15px;
  font-weight: 100;
    opacity: 0.5;
    color:#000000;
}
       

       .col-sm-4{
           
           padding-top:12px;
           width:33.33333333%;
           color: #000000;

       }



    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container-fluid">
 

<p class="h1 text-uppercase"> Welcome to Gym Buddy</p>

   <div class="container-fluid">

  <div class="row">
    <div class="col-sm-4"><h3 class="text-info h3 text-uppercase" >Multi-faceted Gym Software</h3> 
        <div class="text-uppercase" style=" padding-top:40px; color:#1f1f1f">
   
GymBuddy is for gym owners like you.
You want to streamline your business with powerful membership software
that minimizes hassle, increases member retention,
and helps both you and your members to achieve your goals.
You can accomplish your task e.g. Gym-members Biography, Instructors Pay schedule,
Class timmings etc. very easily. 
        </div>
        </div>
        <div class="col-sm-4"></div>


    <div class="col-sm-4">
        <h3 class="text-info h3 text-uppercase">Why You should Gym Buddy?</h3>
        <div class="text-uppercase" style=" padding-top:40px; color:#1f1f1f">
   
You can access it 24/7. You can check your daily workout routine on internet. 
Quick Access to your profile. You can check your daily task assigned by your trainer.

        
        
        </div>
  </div>
</div>
</div>

 

</div>   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">

</asp:Content>
