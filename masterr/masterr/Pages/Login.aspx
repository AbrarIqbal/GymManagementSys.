<%@ Page Title="Login" Language="C#" MasterPageFile="~/Pages/Index.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="masterr.Pages.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    
    <style>

        body {
        
        background-image:url(../Images/Main.jpg);
        background-size:cover;
        display: block;
        max-width: 100%;
        height: auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <%--<div style="padding-left:40px;" >
          <img class="img-responsive" src="../Images/Main.jpg" />    
    </div>--%>
    <div class="container">
      <div class="jumbotron">
        <h1>Login to your Account</h1>
        <div class="row">
            <div class="col-md-6">
                
                    <div class="form-group">
                        <label for="email">Username</label>
                        <asp:RequiredFieldValidator ID="Nam_" runat="server" ErrorMessage="Reqruired!" ControlToValidate="Name"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="Name" CssClass="form-control" runat="server" TextMode="SingleLine" placeholder="Enter Username"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <asp:RequiredFieldValidator ID="pas_" runat="server" ErrorMessage="Required!" ControlToValidate="password"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="Password" CssClass="form-control" runat="server" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                    </div>
                <asp:Button CssClass="btn btn-primary btn-lg" ID="login_B" runat="server" Text="Login" OnClick="login_B_Click" />
                
            </div>
        </div>
    </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
