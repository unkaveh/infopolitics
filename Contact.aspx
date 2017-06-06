<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Contact Us</title>
    <style>
        #contactImage{
            height: 350px;
            background-image: url('../Images/contact_bg.jpg');
            background-attachment:fixed;
            background-position: center 15%;
            background-size: cover;
            background-repeat: no-repeat;
            color: white;
        }
        #contactImage:not(h1):not(h4){
            opacity: .9;
            filter: alpha(opacity=80);
        }
        .first-words{
            text-shadow: 0px 2px 3px #101820;
        }
        #contactImage h1{
            font-weight:700;
            text-shadow: 0px 2px 3px #101820;
        }
        #contactImage h4{
            font-weight:700;
            color:white;
        }
        .lower-title{
    margin-bottom:5%;
}
    </style>
    <script src="Scripts/ContactScript.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row text-center">
        <div class="jumbotron" id="contactImage">
            <h1 id="intro">Contact Us</h1>
            <h4 class="first-words">Reach out to us with your thoughts, concerns and ideas.</h4>
            <br />
            <br />
           <h4 class="first-words"><a href="#lblFirst" style="color:white;"><span class="glyphicon glyphicon-triangle-bottom
" aria-hidden="true"></span></a></h4>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="row">
        <div class="col-xs-12 text-center lower-title" >
            <h2>Reach Out To Us</h2>
            <hr class="bookends" />
        </div>
    </div> <%--End Row for Lower Title--%>
    <div class="row lower-title">
        <div class="col-lg-6 col-sm-3">
            <p>
                Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui
            </p>
            
            <h4><b>Contact us for these cool reasons</b></h4>
            <ul>
                <li>Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular.</li>
                <li>The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc,</li>
                <li>The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps.</li>
            </ul>
        </div>
        <div class="col-lg-6 col-sm-9">
	        <div class="form-group">
		        <label for="lblName">Name</label> 
		        <input class="form-control" id="iptName" placeholder="Name" type="text" runat="server" name="name"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Your Name" ControlToValidate="iptName" ForeColor="Red">*</asp:RequiredFieldValidator>
	        </div>

            <div>
                <div class="form-group">
		        <label for="lblEmail">Email</label> 
		        <input class="form-control" id="iptEmail" placeholder="Email" type="email" runat="server" name="_replyto"/>
                    </div>
	        </div>
	        <div class="form-group">
		        <label for="lblMessage">Message</label> 
                <textarea class="form-control" id="iptMessage" placeholder="Enter Your Message Here" rows="6" name="_textarea"></textarea>
                </div>
            <%--<asp:Button ID="Button1" runat="server" Text="Button" />
	        <button class="btn btn-default" type="submit" runat="server" id="btnSun">Send</button>--%>
            <asp:Button ID="btnSubmit" type="submit" value="Send" runat="server" Text="Send" />
            <br />
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </div>
        <asp:Label ID="labelSuccess" runat="server" Text="Label" Visible="False"></asp:Label>
    </div> 
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

