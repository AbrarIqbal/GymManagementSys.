﻿<%@ Page Title="View Salary" Language="C#" MasterPageFile="~/Pages/Main.Master" AutoEventWireup="true" CodeBehind="View_Salary.aspx.cs" Inherits="masterr.Pages.View_Salary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>

        body
        
  {

 
        background-image:url("../Images/white7.png");
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
<h3 class="h1 texy-center" style="text-align:center;"> Salary Details</h3>

    <div id="Adminsv">
        <asp:gridview CssClass="table table-striped table-bordered table-condensed" runat="server" ID="Admin_GV" AllowPaging="True" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataKeyNames="Payment_id" DataSourceID="Admin_V">
            <Columns>
                <asp:BoundField DataField="Payment_id" HeaderText="Payment_id" InsertVisible="False" ReadOnly="True" SortExpression="Payment_id" />
                <asp:BoundField DataField="Ammount" HeaderText="Ammount" SortExpression="Ammount" />
                <asp:BoundField DataField="Users_P" HeaderText="Users_P" SortExpression="Users_P" />
            </Columns>
        </asp:gridview>
        <asp:SqlDataSource ID="Admin_V" runat="server" ConnectionString="<%$ ConnectionStrings:GYMConnectionString %>" DeleteCommand="DELETE FROM [Payment] WHERE [Payment_id] = @Payment_id" InsertCommand="INSERT INTO [Payment] ([Ammount], [Users_P]) VALUES (@Ammount, @Users_P)" SelectCommand="SELECT [Payment_id], [Ammount], [Users_P] FROM [Payment] where type_P='Salary'" UpdateCommand="UPDATE [Payment] SET [Ammount] = @Ammount, [Users_P] = @Users_P WHERE [Payment_id] = @Payment_id">
            <DeleteParameters>
                <asp:Parameter Name="Payment_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ammount" Type="Int32" />
                <asp:Parameter Name="Users_P" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ammount" Type="Int32" />
                <asp:Parameter Name="Users_P" Type="String" />
                <asp:Parameter Name="Payment_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>

    <div id="Instructorsv">
        <asp:GridView CssClass="table table-striped table-bordered table-condensed" ID="Instructor_GV" runat="server">
        </asp:GridView>
        <p id="statuss" runat="server" class="active">  <a name='linkPay' href='https://secure.payza.com/checkout?CDdDa21ndnRvZXZnLDdDf3pvenRne3dldmcsQ0NtZ3w4U0dHfGhaWW17fEpZc0t0e01TQ2pveml7anV4dmV2ZwI='>Get Salary Online</a></p>
    </div>

  

<script src="https://secure.payza.com/JS/PayzaCheckout.js"></script>

</div>
</div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
