<%@ Page Title="Add Exercise" Language="C#" MasterPageFile="~/Pages/Main.Master" AutoEventWireup="true" CodeBehind="Add_Exercise.aspx.cs" Inherits="masterr.Pages.Add_Exercise" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

          <style>

        body
        
  {

    background-image:url("../Images/white.jpg");
            background-size:cover;
        display: block;
        max-width: 100%;
        height: auto;

    /*background:radial-gradient(rgb(153,217,220) 50%, rgb(83,203,255) 70%);
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
<legend>Exercise Form</legend>

    <!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Title:</label>
    <asp:RequiredFieldValidator  ID="usr" runat="server" ErrorMessage="Required!" ValidationGroup="add" ControlToValidate="title"></asp:RequiredFieldValidator>
  <div class="col-md-4">
      <asp:TextBox CssClass="form-control input-md" placeholder="Enter exercise title" ID="title" runat="server"></asp:TextBox> 
  </div>
</div>

    <!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Target Muscles</label>  
    <asp:RequiredFieldValidator  ID="pswrd" runat="server" ErrorMessage="Required!" ValidationGroup="add" ControlToValidate="target_muscle"></asp:RequiredFieldValidator>
  <div class="col-md-4">
      <asp:TextBox CssClass="form-control input-md" placeholder="Enter Target Muscle" ID="target_muscle" runat="server"></asp:TextBox> 
  </div>
</div>


<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Action </label>  
  <div class="col-md-4">
      <asp:Button CssClass=" btn btn-default" ID="Submit_" runat="server" ValidationGroup="add" Text="Submit" OnClick="Submit__Click" />
    
  </div>
</div>


</fieldset>
</div>





   </div>

    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
