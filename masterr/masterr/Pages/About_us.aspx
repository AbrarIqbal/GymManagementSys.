<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Pages/Index.Master" AutoEventWireup="true" CodeBehind="About_us.aspx.cs" Inherits="masterr.Pages.About_us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>

    body 
        
        {

            background-image:url("../Images/hero111111.jpg");
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
    
    
    
    
    
    /*.ll 
    {
    /* The image used */
    background-image: url("../Images/hero111111.jpg");

    background-size:cover;
            /*opacity: 0.4;*/
            background-position:inherit;
            resize:both;
            display:block;
            max-height:100%;
            max-width:100%;
            height:auto;
            width:100%;
            padding:440px;
            
    
    
    }*/

    .img {
    max-width: 100% !important;
    background-image: url("../Images/hero111111.jpg");

  }

</style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
    <div class="ll"></div>

    <div class="text-uppercase text-center  h1">
        About us!

    </div> 
    <div class="container">
         <div class="row">
             <div class="col-md-4 text-center" style="color:#bf7947; padding-top:90px;">

                  <div class="jumbotron">
      <img class="img-circle" src="../Images/Profile2.jpg" width="150" height="120" />
  <h2>Saram Iqbal</h2>
  <p>Saram Iqbal is student of BS-Computer Science and athlete</p>
  <p>He is specialized with pulling and pushing strengths. He is master at handstand pushups, backlever, front lever</p>
  <p>He  has also started phyton as a startup language. </p>
      </div>
             </div>

             <div class="col-md-4 text-center" style="color:#bf7947; padding-top:90px;">
  <%--<div class="jumbotron">
      <img class="img-circle" src="../Images/Profile.jpg" width="120" height="120" />
  <h2>Abrar Iqbal</h2>
  <p>I am student of BS-Software Engineering.I have started calisthenics. The guy in background picture is my brother.</p>
  <p>My brothers' name is Saram Iqbal. He is doing backlever in the background Picture. It requires so much strength, consistency and most important, patience.</p>
  <p></p>
      </div>--%>
             </div>

             <div class="col-md-4 text-center" style="color:#bf7947; padding-top:90px;">
  <div class="jumbotron">
      <img class="img-circle" src="../Images/Profile.jpg" width="120" height="120" />
  <h2>Abrar Iqbal</h2>
  <p>I am student of BS-Software Engineering. I student of 8th semester enrolled in Virtual University of Pakistan.  I have assigned an project which is based on web based application..</p>
  <p>Name of my project is Gym Buddy. This is for managemnt of gym tasks. </p>
  <p></p>
      </div>
             </div>

   

             </div>
  <%--<div class="row">
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="/w3images/lights.jpg" target="_blank">
          <img src="/w3images/lights.jpg" alt="Lights" style="width:100%"/>
          <div class="caption">
            <p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="/w3images/nature.jpg" target="_blank">
          <img src="/w3images/nature.jpg" alt="Nature" style="width:100%"/>
          <div class="caption">
            <p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="/w3images/fjords.jpg" target="_blank">
          <img src="/w3images/fjords.jpg" alt="Fjords" style="width:100%"/>
          <div class="caption">
            <p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>
          </div>
        </a>
      </div>
    </div>
  </div>--%>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
