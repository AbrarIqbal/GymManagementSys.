<%@ Page Title="Set Target" Language="C#" MasterPageFile="~/Pages/Main.Master" AutoEventWireup="true" CodeBehind="Set_Target.aspx.cs" Inherits="masterr.Pages.Set_Target" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

        body
        
  {

    
            background-image:url("../Images/white.jpg");
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
<legend>Target Form</legend>

    <!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Title:</label>
    <asp:RequiredFieldValidator  ID="TIT" runat="server" ErrorMessage="Required!" ValidationGroup="add" ControlToValidate="title"></asp:RequiredFieldValidator>
  <div class="col-md-4">
      <asp:TextBox CssClass="form-control input-md" placeholder="Enter exercise title" ID="title" runat="server"></asp:TextBox> 
  </div>
</div>

    <!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Description:</label>  
    <asp:RequiredFieldValidator  ID="DES" runat="server" ErrorMessage="Required!" ValidationGroup="add" ControlToValidate="Description"></asp:RequiredFieldValidator>
  <div class="col-md-4">
      <asp:TextBox CssClass="form-control input-md" placeholder="Enter Description" ID="Description" runat="server"></asp:TextBox> 
  </div>
</div>

    <!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Current Date:</label>  
    <asp:RequiredFieldValidator  ID="S_D" runat="server" ErrorMessage="Required!" ValidationGroup="add" ControlToValidate="S_Date"></asp:RequiredFieldValidator>
  <div class="col-md-4">
      <asp:TextBox CssClass="form-control input-md" placeholder="Enter Start Date" ID="S_Date" runat="server" TextMode="Date"></asp:TextBox> 
  </div>
</div>


        <!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">End(Expected) Date:</label>  
    <asp:RequiredFieldValidator  ID="E_D" runat="server" ErrorMessage="Required!" ValidationGroup="add" ControlToValidate="E_Date"></asp:RequiredFieldValidator>
  <div class="col-md-4">
      <asp:TextBox CssClass="form-control input-md" placeholder="Enter Start Date" ID="E_Date" runat="server" TextMode="Date"></asp:TextBox> 
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Current Weight:</label>  
    <asp:RequiredFieldValidator  ID="C_W" runat="server" ErrorMessage="Required!" ValidationGroup="add" ControlToValidate="C_Weight"></asp:RequiredFieldValidator>
  <div class="col-md-4">
      <asp:TextBox CssClass="form-control input-md" placeholder="Enter Weight in kg" ID="C_Weight" runat="server"></asp:TextBox> 
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Target Weight:</label>  
    <asp:RequiredFieldValidator  ID="T_W" runat="server" ErrorMessage="Required!" ValidationGroup="add" ControlToValidate="T_Weight"></asp:RequiredFieldValidator>
  <div class="col-md-4">
      <asp:TextBox CssClass="form-control input-md" placeholder="Enter Weight in kg" ID="T_Weight" runat="server"></asp:TextBox> 
  </div>
</div>


<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Action </label>  
  <div class="col-md-4">
      <asp:Button CssClass=" btn btn-default" ID="Submit_" runat="server" ValidationGroup="add" Text="Submit" OnClick="Submit__Click"/>
    
  </div>
</div>


</fieldset>
</div>





   </div>

    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
