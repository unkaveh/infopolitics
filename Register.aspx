<%@ Page Title="Register Here" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Register.aspx.vb" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="row upper-title lower-title">
        <div class="col-sm-1 col-md-3"></div>
        <div class="col-sm-10 col-md-6">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h1>Register</h1>
                </div>
                <div class="panel-body">
                    <div class="form-group"> 
		                <label for="txtFirst">First Name</label> 
                        <asp:TextBox ID="txtFirst" runat="server" CssClass="form-control"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Name is Required" ControlToValidate="txtFirst"></asp:RequiredFieldValidator>
	                </div>
	                <div class="form-group">
		                <label for="txtLast">Last Name</label> 
                        <asp:TextBox ID="txtLast" runat="server" CssClass="form-control"></asp:TextBox>
	                </div>
                    <div class="form-group">
		                <label for="txtAddress">Address</label>
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" ></asp:TextBox>
	                </div>
                    <div class="form-group">
		                <label for="txtPol">Political Affliation</label> 
                        <asp:TextBox ID="txtPol" runat="server" CssClass="form-control" ></asp:TextBox>
	                </div>
                    <div class="form-group">
                        <label for="txtEmail">Email address</label>
                        <asp:TextBox ID="Email" runat="server" CssClass="form-control" textmode="Email"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="userName">User Name</label>
                        <asp:TextBox ID="userName" runat="server" CssClass="form-control" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*User Name is Required" ControlToValidate="userName"></asp:RequiredFieldValidator>
                    </div>
                   <div class="form-group">
                        <label for="txtPass">Password</label>
                       <asp:TextBox ID="Password" runat="server" CssClass="form-control" textmode="password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Password is Required" ControlToValidate="Password"></asp:RequiredFieldValidator>
                  </div>
                   <div class="form-group">
                        <label for="txtConPass">Confirm Password</label>
                       <asp:TextBox ID="txtConPass" runat="server" CssClass="form-control" textmode="password"></asp:TextBox><asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="*Passwords do not match" ControlToCompare="Password" ControlToValidate="txtConPass"></asp:CompareValidator>
                  </div>
                  <div class="form-group">
                    <p><a href="Login.aspx">Already a User?</a></p>
                  </div>
                    <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" ID="btnSub" />
                    <asp:Literal runat="server" ID="StatusMessage" />
                </div>
            </div>
        </div>
        <div class="col-sm-1 col-md-3"></div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

