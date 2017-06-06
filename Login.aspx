<%@ Page Title="Login" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" %>

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
                    <h1>Login</h1>
                </div>
                <div class="panel-body">
                    <div class="form-group">
                        <asp:PlaceHolder runat="server" ID="LoginStatus" Visible="false">
                            <p>
                               <asp:Literal runat="server" ID="StatusText" />
                            </p>
                         </asp:PlaceHolder>
                    </div>
                    <div class="form-group">
                        <asp:PlaceHolder runat="server" ID="LoginForm" Visible="false">
                            <label for="userName">User Name</label>
                            <asp:TextBox ID="userName" runat="server" CssClass="form-control"></asp:TextBox>
                    
                            <label for="Password">Password</label>
                            <asp:TextBox ID="Password" runat="server" CssClass="form-control" textmode="Password"></asp:TextBox>
                             <asp:Button  runat="server" OnClick="SignIn" Text="Log in" CssClass="btn btn-default" id="btnSub" TabIndex="1" />
                        </asp:PlaceHolder>
                        <asp:PlaceHolder runat="server" ID="LogoutButton" Visible="false">
                             <asp:Button runat="server" OnClick="SignOut" Text="Log out" CssClass="btn btn-default" PostBackUrl="~/Terms.aspx" TabIndex="0" />
                         </asp:PlaceHolder>
                  </div>

                  <%--  <div class="form-group">
                        <asp:CheckBox ID="chkRemember" runat="server" Text="Remember Me?" CssClass="checkbox text-center" />
                  </div>
                  <div class="form-group">
                    <p class="text-center"><a href="~/Forgot.aspx">Forgot your password?</a> | <a href="~/Register.aspx">New? Sign Up Here.</a></p>
                  </div>--%>
                   
                </div>
            </div>
        </div>
        <div class="col-sm-1 col-md-3"></div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

