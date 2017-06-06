<%@ Page Title="Welcome to InfoPolitics" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row text-center">
        <div class="jumbotron" id="mainImage">
            <h1 id="intro">Welcome to InfoPolitics</h1>
            <h4 class="first-words">Find Information about Local ,State and Federal politicians,legislation and Policies.<br />We're here to provide easy access to becoming an informed citizen.</h4>
            <br />
            <br />
           <h4 class="first-words">Look for your local representatives in your area</h4>
            <asp:Button ID="btnSearchAddress" runat="server" CssClass="first-words btn btn-default" Text="Search" PostBackUrl="~/Search.aspx"/>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
        <div class="row">
         <div class="col-lg-6">
            <h3>About</h3>
            <p>Hello, welcome to InfoPolitics! We are a non-profit startup based in Atlanta, Ga. InfoPolitics stemmed from the heated 2016 presidential election. People want to be more involved in politics than ever before and what better way to start than at your local and state level? Outside of InfoPolitics we struggled to find an effective way to research who represents us here in Georgia. InfoPolitics solves this issue by providing users a clean, simple, and effective solution. Click below to learn more about us or click the link above to start learning more about who represents you! Stay informed and stay politically active!
                <br />
            <a href="Default.aspx">About Us Page </a> 
            </p>
         </div>
         <div class="col-lg-6">   
            <h3>Find your Politician</h3>
            <p>Do you know who represents you? If not, you’re in the right place! Infopolitics offers a simple, and effective way to learn more about your federal, state, and local representatives. We are proud to provide constituents of all United States of America with this free service and will continue to update and stay current with our political data. Click below to start an advanced search for the men and women who represent you!
            <br />
                <a href="Search.aspx">Search Legislators Page</a>
           </p>
         </div>
            </div>
        <div class="row">

        
         <div class="col-lg-6">
            <h3>Contact Us</h3>
            <p>Here at InfoPolitics we’re are a nonprofit, citizen run organization that is here to serve you! We would love your feedback and explanation of what we can do better! Click below to send us an email or reach us at the listed phone number any time between 9 and 5 p.m. EST. We are eager to hear from you!
            <br />
                <a href="Contact.aspx">Contact Us Page</a>
            </p>
         </div>
         <div class="col-lg-6">
            <h3>Create an Account</h3>
            <p>Some benefits belong to those who register! It is your right to stay informed and registering with us is a win-win scenario! We love to know what information members are interested in and provide benefits such as a private profile, email notifications of updates to our site, and exclusive benefits in the pipeline!
            <br />
            <br />
                <a href="Register.aspx">Create an Account</a> <b>or</b> <a href="Login.aspx">Login Here!</a>
            </p>
         </div>
    </div>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

