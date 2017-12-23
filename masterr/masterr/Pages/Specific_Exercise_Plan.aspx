<%@ Page Title="Specific Exercise Plan" Language="C#" MasterPageFile="~/Pages/Main.Master" AutoEventWireup="true" CodeBehind="Specific_Exercise_Plan.aspx.cs" Inherits="masterr.Pages.Specific_Exercise_Plan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>

        body
        
  {


        background-image:url("../Images/white5.jpg");
        background-size:cover;
        display: block;
        max-width: 100%;
        height: auto;
    
    /*background:radial-gradient(rgb(153,217,220) , rgb(83,203,255) );
        display: block;
        max-width: 100%;
        height: auto;
        padding-bottom:150px;*/

    }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <div class="container">
      <div class="jumbotron">
    
<div class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>Specific Exercise Plan Form</legend>

    <!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Title:</label>
    <asp:RequiredFieldValidator  ID="usr" runat="server" ErrorMessage="Required!" ValidationGroup="add" ControlToValidate="title"></asp:RequiredFieldValidator>
  <div class="col-md-4">
      <asp:TextBox CssClass="form-control input-md" placeholder="Enter Plan title" ID="title" runat="server"></asp:TextBox> 
  </div>
</div>

    <!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Description</label>  
    <asp:RequiredFieldValidator  ID="pswrd" runat="server" ErrorMessage="Required!" ValidationGroup="add" ControlToValidate="E_Description"></asp:RequiredFieldValidator>
  <div class="col-md-4">
      <asp:TextBox CssClass="form-control input-md" placeholder="Enter Description" ID="E_Description" runat="server" TextMode="MultiLine"></asp:TextBox> 
  </div>
</div>


    <!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Member</label>  
  <div class="col-md-4">
      <asp:dropdownlist runat="server" ID="Member" DataSourceID="Members" DataTextField="Name" DataValueField="Name"></asp:dropdownlist>
      <asp:SqlDataSource ID="Members" runat="server" ConnectionString="<%$ ConnectionStrings:GYMConnectionString %>" SelectCommand="SELECT [Name] FROM [Users] where role_id='3'"></asp:SqlDataSource>
  </div>
</div>


<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Action </label>  
  <div class="col-md-4">
      <asp:Button CssClass="btn btn-default" ID="Submit_" runat="server" Text="Submit" ValidationGroup="add" OnClick="Submit__Click" />
  </div>
</div>


</fieldset>
</div>





   </div>

    </div>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
