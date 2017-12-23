<%@ Page Title="Add Anouncement" Language="C#" MasterPageFile="~/Pages/Main.Master" AutoEventWireup="true" CodeBehind="Add_Announcement.aspx.cs" Inherits="masterr.Pages.Add_Announcement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

          <style>

        body
        
  {

            background-image:url("../Images/white4.jpg");
            background-size:cover;
        display: block;
        max-width: 100%;
        height: auto;

    /*background:radial-gradient(rgb(153,217,220) 50%, rgb(83,203,255) 79%);
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
<legend>Anouncement Form</legend>

    <!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Title:</label>
    <asp:RequiredFieldValidator  ID="usr" runat="server" ErrorMessage="Required!" ValidationGroup="add" ControlToValidate="title"></asp:RequiredFieldValidator>
  <div class="col-md-4">
      <asp:TextBox CssClass="form-control input-md" placeholder="Enter Announcement title" ID="title" runat="server"></asp:TextBox> 
  </div>
</div>

    <!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Anouncement:</label>  
    <asp:RequiredFieldValidator  ID="pswrd" runat="server" ErrorMessage="Required!" ValidationGroup="add" ControlToValidate="Announcement_"></asp:RequiredFieldValidator>
  <div class="col-md-4">
      <asp:TextBox CssClass="form-control input-md" placeholder="Enter Anouncement" ID="Announcement_" runat="server" TextMode="MultiLine"></asp:TextBox> 
  </div>
</div>


    <!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Date:</label>  
    <asp:RequiredFieldValidator  ID="Required_Date" runat="server" ErrorMessage="Required!" ValidationGroup="add" ControlToValidate="Date_"></asp:RequiredFieldValidator>
  <div class="col-md-4">
      <asp:TextBox CssClass="form-control input-md" placeholder="Enter Date" ID="Date_" runat="server" TextMode="Date"></asp:TextBox> 
  </div>
</div>


<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Action </label>  
  <div class="col-md-4">
      <asp:Button CssClass=" btn btn-default" ID="Submit_" runat="server" ValidationGroup="add" Text="Submit" OnClick="Submit_Click" />
    
  </div>
</div>


</fieldset>
</div>





   </div>

    </div>




</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
