<%@ Page Title="Add Class" Language="C#" MasterPageFile="~/Pages/Main.Master" AutoEventWireup="true" CodeBehind="Add_Class.aspx.cs" Inherits="masterr.Pages.Add_Class" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>

        body
        
  {

            background-image:url("../Images/white2.jpg");
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
<legend>Class Registration Form</legend>

    <!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Class Title</label>
    <asp:RequiredFieldValidator  ID="class" runat="server" ErrorMessage="Required!" ValidationGroup="add" ControlToValidate="Class_name"></asp:RequiredFieldValidator>
  <div class="col-md-4">
      <asp:TextBox CssClass="form-control input-md" placeholder="Enter Class Title" ID="Class_name" runat="server"></asp:TextBox> 
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Class Instructor</label>
  <div class="col-md-4">
      <asp:DropDownList ID="Ins_" runat="server" DataSourceID="Ins_N" DataTextField="Name" DataValueField="Name"></asp:DropDownList>
      <asp:SqlDataSource ID="Ins_N" runat="server" ConnectionString="<%$ ConnectionStrings:GYMConnectionString %>" SelectCommand="SELECT [Name] FROM [Users] where role_id='2'"></asp:SqlDataSource>
      </div>
</div>   

<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Day</label>
  <div class="col-md-4">
      <asp:DropDownList ID="Day_" runat="server">
          <asp:ListItem Selected="True">Monday</asp:ListItem>
          <asp:ListItem>Tuesday</asp:ListItem>
          <asp:ListItem>Wednesday</asp:ListItem>
          <asp:ListItem>Thursday</asp:ListItem>
          <asp:ListItem>Friday</asp:ListItem>
          <asp:ListItem>Saturday</asp:ListItem>
          <asp:ListItem>Sunday</asp:ListItem>
      </asp:DropDownList>
      </div>
</div>   

<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Time</label>
    <asp:RequiredFieldValidator  ID="time_R" runat="server" ErrorMessage="Required!" ValidationGroup="add" ControlToValidate="C_Time"></asp:RequiredFieldValidator>
  <div class="col-md-4">
      <asp:TextBox CssClass="form-control input-md" placeholder="Enter Time" ID="C_Time" runat="server" TextMode="Time"></asp:TextBox> 
  </div>
</div>

    <div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Date</label>
    <asp:RequiredFieldValidator  ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required!" ValidationGroup="add" ControlToValidate="C_Date"></asp:RequiredFieldValidator>
  <div class="col-md-4">
      <asp:TextBox CssClass="form-control input-md" placeholder="Enter End Time" ID="C_Date" runat="server" TextMode="Date"></asp:TextBox> 
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Action </label>  
  <div class="col-md-4">
      <asp:Button CssClass=" btn btn-default" ID="Submit_" runat="server" ValidationGroup="add" Text="Submit" OnClick="Submit__Click" />
    
  </div>
</div>


</fieldset>
</div>


</fieldset>
</div>





   </div>

    </div>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
