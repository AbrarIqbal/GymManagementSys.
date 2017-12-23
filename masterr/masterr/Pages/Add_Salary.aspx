<%@ Page Title="Add Salary" Language="C#" MasterPageFile="~/Pages/Main.Master" AutoEventWireup="true" CodeBehind="Add_Salary.aspx.cs" Inherits="masterr.Pages.Add_Salary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


<style>

        body
        
  {

    background-image:url("../Images/white.jpg");
            background-size:cover;
        display: block;
        max-width: 100%;
        height: auto;

    }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<div class="container">
      <div class="jumbotron">
    
<div class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>Salary Form</legend>

    <!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Ammount</label>
    <asp:RequiredFieldValidator  ID="pays" runat="server" ErrorMessage="Required!" ValidationGroup="add" ControlToValidate="payments"></asp:RequiredFieldValidator>
  <div class="col-md-4">
      <asp:TextBox CssClass="form-control input-md" placeholder="Enter payment" ID="payments" runat="server"></asp:TextBox> 
  </div>
</div>

    <!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Instructor</label>
    <asp:RequiredFieldValidator  ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required!" ValidationGroup="add" ControlToValidate="payments"></asp:RequiredFieldValidator>
  <div class="col-md-4">
      <asp:DropDownList ID="Instructor_List" runat="server" DataSourceID="Ins_V" DataTextField="Name" DataValueField="Name"></asp:DropDownList>
      <asp:SqlDataSource ID="Ins_V" runat="server" ConnectionString="<%$ ConnectionStrings:GYMConnectionString %>" SelectCommand="SELECT [Name] FROM [Users] where role_id='2'"></asp:SqlDataSource>
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
