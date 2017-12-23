<%@ Page Title="Add Member" Language="C#" MasterPageFile="~/Pages/Main.Master" AutoEventWireup="true" CodeBehind="AddMember.aspx.cs" Inherits="masterr.Pages.Add_parent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

      <style>

        body
        
  {
                        background-image:url("../Images/white.jpg");
            background-size:cover;
        display: block;
        max-width: 100%;
        height: auto;

    /*background:linear-gradient(rgb(153,217,220), rgb(83,203,255));
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
<legend>Member Registration Form</legend>

    <!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Username</label>
    <asp:RequiredFieldValidator  ID="usr" runat="server" ErrorMessage="Required!" ValidationGroup="add" ControlToValidate="User_name"></asp:RequiredFieldValidator>
  <div class="col-md-4">
      <asp:TextBox CssClass="form-control input-md" placeholder="Enter members' Login Username" ID="User_name" runat="server"></asp:TextBox> 
  </div>
</div>

    <!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Password</label>  
    <asp:RequiredFieldValidator  ID="pswrd" runat="server" ErrorMessage="Required!" ValidationGroup="add" ControlToValidate="User_password"></asp:RequiredFieldValidator>
  <div class="col-md-4">
      <asp:TextBox CssClass="form-control input-md" placeholder="Enter members' password" ID="User_password" runat="server"></asp:TextBox> 
  </div>
</div>



    <!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Full Name</label>  
      <asp:RequiredFieldValidator  ID="names" runat="server" ErrorMessage="Required!" ValidationGroup="add" ControlToValidate="Full_Name"></asp:RequiredFieldValidator>
    <div class="col-md-4">
      <asp:TextBox CssClass="form-control input-md" placeholder="Enter members' full name" ID="Full_Name" runat="server"></asp:TextBox> 
  </div>
</div>


    <!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Age</label>  
      <asp:RequiredFieldValidator  ID="Age_V" runat="server" ErrorMessage="Required!" ValidationGroup="add" ControlToValidate="Age"></asp:RequiredFieldValidator>
    <div class="col-md-4">
      <asp:TextBox CssClass="form-control input-md" placeholder="Enter members' Age" ID="Age" runat="server" TextMode="Number"></asp:TextBox> 
  </div>
</div>


    <!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Height</label>  
      <asp:RequiredFieldValidator  ID="Height_V" runat="server" ErrorMessage="Required!" ValidationGroup="add" ControlToValidate="Height"></asp:RequiredFieldValidator>
    <div class="col-md-4">
      <asp:TextBox CssClass="form-control input-md" placeholder="Enter members' height in cm" ID="Height" runat="server" TextMode="Number"></asp:TextBox> 
  </div>
</div>

    <!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Weight</label>  
      <asp:RequiredFieldValidator  ID="Weight_V" runat="server" ErrorMessage="Required!" ValidationGroup="add" ControlToValidate="Weight"></asp:RequiredFieldValidator>
    <div class="col-md-4">
      <asp:TextBox CssClass="form-control input-md" placeholder="Enter members' weight in kg" ID="Weight" runat="server"></asp:TextBox> 
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Medical Condition</label>  
      <asp:RequiredFieldValidator  ID="MC_V" runat="server" ErrorMessage="Required!" ValidationGroup="add" ControlToValidate="MC"></asp:RequiredFieldValidator>
    <div class="col-md-4">
      <asp:TextBox CssClass="form-control input-md" placeholder="Enter medical condition" ID="MC" runat="server"></asp:TextBox> 
  </div>
</div>



<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Email ID</label>  
      <asp:RequiredFieldValidator ID="mails" runat="server" ErrorMessage="Required!" ValidationGroup="add" ControlToValidate="Email_id"></asp:RequiredFieldValidator>
    <div class="col-md-4">
      <asp:TextBox CssClass="form-control input-md" placeholder="Enter members' Email ID" ID="Email_id" runat="server" TextMode="Email"></asp:TextBox>
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Address</label>  
        <asp:RequiredFieldValidator ID="addresss" runat="server" ErrorMessage="Required!" ValidationGroup="add" ControlToValidate="Address"></asp:RequiredFieldValidator>
  <div class="col-md-4">
      <asp:TextBox CssClass="form-control input-md" placeholder="Enter members' Address" ID="Address" runat="server"></asp:TextBox>
    
  </div>
</div>

    <!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Date Of Birth</label>  
        <asp:RequiredFieldValidator ID="dob_" runat="server" ErrorMessage="Required!" ValidationGroup="add" ControlToValidate="DOB"></asp:RequiredFieldValidator>
  <div class="col-md-4">
        <asp:TextBox CssClass="form-control input-md" placeholder="Enter members' D.O.B" ID="DOB" runat="server" TextMode="Date"></asp:TextBox>
    
  </div>
</div>




<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Contact number </label>
        <asp:RequiredFieldValidator ID="cntct" runat="server" ErrorMessage="Required!" ValidationGroup="add" ControlToValidate="Contact"></asp:RequiredFieldValidator>  
  <div class="col-md-4">
  <asp:TextBox CssClass="form-control input-md" placeholder="Enter members' phone No." ID="Contact" runat="server"></asp:TextBox>
    
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
