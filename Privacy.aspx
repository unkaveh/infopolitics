<%@ Page Title="Privacy Policy" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Privacy.aspx.vb" Inherits="Privacy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #etcImage{
                height: 300px;
                background-image: url('../Images/flag_bg.png');
                background-position: bottom center;
                background-size: cover;
                background-repeat: no-repeat;
                color: white;
            }
            #etcImage:not(h1):not(h4){
                opacity: .8;
                filter: alpha(opacity=80);
            }
  
        #etcImage h1 {
            font-weight: 700;
            text-shadow: 0px 2px 3px #101820;
        }
        .lower-title{
            margin-bottom:5%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row text-center">
        <div class="jumbotron" id="etcImage">
            <h1 id="intro">Privacy Policy</h1>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="row lower-title">
        <div class="col-lg-12">
            <h2 style="text-indent:8.5%;">Our Policy Standards</h2>
            <hr class="style17" />
        </div>
        <div class="col-sm-1 col-xs-1"></div>
        <div class="col-sm-7">
            <p>InfoPolitics makes every effort to protect its members' personal information and will not sell or rent it to anyone.</p>
            <p>We occasionally ask for personal information, and may collect non-personal information for the purpose of performing services for your benefit.You may choose not to submit this information and use our Web site and services anonymously but this may prevent you from taking advantage of certain features.</p>
            <ul>
                <li>How we use the information we collect:</li>
                <li>We will use personal information to personalize content and features for you, to process donations that your authorize, and respond to your inquires and requests.</li>
                <li>We may use your contact information to let you know about other programs and services. If you belong to an email list or sign up for notifications, you will receives emails that may include Info Politics updates, related service information,etc.If at any time you would like to unsubscribe from receiving future emails, we include detailed unsubscribe instruction at the bottom of each email, or you may contact us directly.</li>
                
            </ul>
            <p>How we protect your information:</p>
            <ul>
                <li>We adopt appropriate data collection, storage and processing practices and security measures to protect against unauthorized access, alteration, disclosure or destruction of your personal information, username, password, transaction information and data stored on our site. </li>
                <li>Users may also use the site over a secured connection any time by using 'https' in the address bar. </li>
            </ul>
            <p>Donor Specific Privacy Policy</p>
            <ul>
                <li>InfoPolitics protects all its members and their privacy. We never sell, share or divulge any information in any way about those who donate to Vote Smart. This policy pertains to all supporters, contributors and volunteers, including both online and offline donations</li>
                <li>This policy was last updated on April 17,2017.Please contact us with any questions and check back here for future updates.
                        </li>
            </ul>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

