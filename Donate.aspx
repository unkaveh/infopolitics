<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Donate.aspx.vb" Inherits="Donate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<%--<asp:Content ID="Content2" ContentPlaceHolderID="WalterBlack" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="WalterWhite" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="row">
        <div class="col-lg-12 text-center">
            <h3>Donation Information.</h3>
            <br />
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <table class="table">
                <tr>
                    <td><h4>First Name:</h4></td>
                    <td><asp:TextBox runat="server" CssClass="form-control" ID="txtFirst"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirst" ErrorMessage="First Name Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                    <td><h4>Last Name:</h4></td>
                    <td><asp:TextBox runat="server" CssClass="form-control" ID="txtLast"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtLast" ErrorMessage="Last Name Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h4>Address:</h4>
                    </td>
                    <td><asp:TextBox runat="server" CssClass="form-control" ID="txtAddress"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <h4>City:</h4>
                    </td>
                    <td><asp:TextBox runat="server" CssClass="form-control" ID="txtCity"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCity" ErrorMessage="City Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h4>Zip Code:</h4>
                    </td>
                    <td><asp:TextBox runat="server" CssClass="form-control" ID="txtZip"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtZip" ErrorMessage="Enter Valid Zip" ValidationExpression="\d{5}(-\d{4})?" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtZip" ErrorMessage="Zip Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                    
                    <td><h4>State:</h4></td>
                    <td>
                        <asp:DropDownList ID="ddlState" runat="server" CssClass="dropdown">
                                <asp:ListItem Value="AL">Alabama</asp:ListItem>
	                            <asp:ListItem Value="AK">Alaska</asp:ListItem>
	                            <asp:ListItem Value="AZ">Arizona</asp:ListItem>
	                            <asp:ListItem Value="AR">Arkansas</asp:ListItem>
	                            <asp:ListItem Value="CA">California</asp:ListItem>
	                            <asp:ListItem Value="CO">Colorado</asp:ListItem>
	                            <asp:ListItem Value="CT">Connecticut</asp:ListItem>
	                            <asp:ListItem Value="DC">District of Columbia</asp:ListItem>
	                            <asp:ListItem Value="DE">Delaware</asp:ListItem>
	                            <asp:ListItem Value="FL">Florida</asp:ListItem>
	                            <asp:ListItem Value="GA">Georgia</asp:ListItem>
	                            <asp:ListItem Value="HI">Hawaii</asp:ListItem>
	                            <asp:ListItem Value="ID">Idaho</asp:ListItem>
	                            <asp:ListItem Value="IL">Illinois</asp:ListItem>
	                            <asp:ListItem Value="IN">Indiana</asp:ListItem>
	                            <asp:ListItem Value="IA">Iowa</asp:ListItem>
	                            <asp:ListItem Value="KS">Kansas</asp:ListItem>
	                            <asp:ListItem Value="KY">Kentucky</asp:ListItem>
	                            <asp:ListItem Value="LA">Louisiana</asp:ListItem>
	                            <asp:ListItem Value="ME">Maine</asp:ListItem>
	                            <asp:ListItem Value="MD">Maryland</asp:ListItem>
	                            <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
	                            <asp:ListItem Value="MI">Michigan</asp:ListItem>
	                            <asp:ListItem Value="MN">Minnesota</asp:ListItem>
	                            <asp:ListItem Value="MS">Mississippi</asp:ListItem>
	                            <asp:ListItem Value="MO">Missouri</asp:ListItem>
	                            <asp:ListItem Value="MT">Montana</asp:ListItem>
	                            <asp:ListItem Value="NE">Nebraska</asp:ListItem>
	                            <asp:ListItem Value="NV">Nevada</asp:ListItem>
	                            <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
	                            <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
	                            <asp:ListItem Value="NM">New Mexico</asp:ListItem>
	                            <asp:ListItem Value="NY">New York</asp:ListItem>
	                            <asp:ListItem Value="NC">North Carolina</asp:ListItem>
	                            <asp:ListItem Value="ND">North Dakota</asp:ListItem>
	                            <asp:ListItem Value="OH">Ohio</asp:ListItem>
	                            <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
	                            <asp:ListItem Value="OR">Oregon</asp:ListItem>
	                            <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
	                            <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
	                            <asp:ListItem Value="SC">South Carolina</asp:ListItem>
	                            <asp:ListItem Value="SD">South Dakota</asp:ListItem>
	                            <asp:ListItem Value="TN">Tennessee</asp:ListItem>
	                            <asp:ListItem Value="TX">Texas</asp:ListItem>
	                            <asp:ListItem Value="UT">Utah</asp:ListItem>
	                            <asp:ListItem Value="VT">Vermont</asp:ListItem>
	                            <asp:ListItem Value="VA">Virginia</asp:ListItem>
	                            <asp:ListItem Value="WA">Washington</asp:ListItem>
	                            <asp:ListItem Value="WV">West Virginia</asp:ListItem>
	                            <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
	                            <asp:ListItem Value="WY">Wyoming</asp:ListItem>
                            </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h4>Email Address:</h4>
                    </td>
                    <td>

                        <asp:TextBox runat="server" CssClass="form-control" ID="txtEmailAddress"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmailAddress" ErrorMessage="Enter email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtEmailAddress" ErrorMessage="E-mail Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <h4>Cell Phone:</h4>
                    </td>
                    <td>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtCell" ></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtCell" ErrorMessage="Enter valid phone (###-###-####)" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtCell" ErrorMessage="Phone # Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
            <table class="table">
                
                <tr>
                    <%--<td>
                        <h4>$50.00</h4>
                        <input type="radio" value="50" class="radio" runat="server" id="rdbFiftyDollars"  onclick="radioClick"/>
                    </td>
                    <td>
                        <h4>$100.00</h4>
                        <input type="radio" value="100" class="radio" runat="server" id="rdbOneHundred"  onclick="radioClick"/>
                    </td>--%>
                   <td>&nbsp;</td>
                    <td><h4>Donation Amount:</h4></td>
                    <td colspan="2">
                        
                        <asp:TextBox runat="server" ID="txtOther" CssClass="form-control" Text=""></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h4>Credit Card Number:</h4>
                    </td>
                    <td colspan="3">
                        <asp:TextBox runat="server" ID="txtCCNumber" CssClass="form-control" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtCCNumber" ErrorMessage="Enter  Credit Card #" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h4>Expiration Date:</h4>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtCCExpiration" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtCCExpiration" ErrorMessage="Enter the cards Experation Date" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <h4>Security Code:</h4>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtCCSecurity" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtCCSecurity" ErrorMessage="Enter the cards security code" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" class="text-center">
                        <asp:Button runat="server" ID="btnSubmitPayment" CssClass="btn btn-success " Text="Submit Payment" />
                        <br />
                        <br />
                        <asp:Label runat="server" ID="lblConfirm" Text=""></asp:Label>
                        
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" style="text-align: left" Width="399px" />
                    </td>

                </tr>
            </table>
        </div>
    </div>
    
               
    <%--<div class="row">
        <div class="col-lg-3"></div>
        <div class="col-lg-6">

            <table class="table">
                <tr>
                    <td class="auto-style1">
                        <h3>I would like to make a donation in the amount of:</h3>
                        <p>
                            <asp:RadioButton ID="RadioButton1" runat="server" Text="$15" />
&nbsp;&nbsp;&nbsp;
                            <asp:RadioButton ID="RadioButton2" runat="server" Text="$25" />
&nbsp;&nbsp;&nbsp;
                            <asp:RadioButton ID="RadioButton3" runat="server" Text="$50" />
                        </p>
                        <h3>
                            How often?</h3>
                        <p>
                            <asp:RadioButton ID="RadioButton4" runat="server" Text="One Time" />
&nbsp;&nbsp;&nbsp;
                            <asp:RadioButton ID="RadioButton5" runat="server" Text="Monthly" />
&nbsp;&nbsp;&nbsp;
                            <asp:RadioButton ID="RadioButton6" runat="server" Text="Quarterly " />
&nbsp;&nbsp;&nbsp;
                            <asp:RadioButton ID="RadioButton7" runat="server" Text="Yearly" />
                        </p>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <h3>Donor Information:</h3>
                        <h3>Name:
                            <asp:TextBox ID="txtdonorname" runat="server"></asp:TextBox>
                        </h3>
                    </td>
                    <td>&nbsp;</td>
                       
                </tr>
                <tr>
                    <td class="auto-style1">
                        <h3>Email:
                            <asp:TextBox ID="txtdonoremail" runat="server"></asp:TextBox>
                        </h3>
                        <h3>Phone:
                            <asp:TextBox ID="txtdonorphone" runat="server"></asp:TextBox>
                        </h3>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                       <h3>Street Address:
                           <asp:TextBox ID="txtdonoraddress" runat="server"></asp:TextBox>
                        </h3>
                        <h3>City:
                            <asp:TextBox ID="txtdonorcity" runat="server"></asp:TextBox>
                        </h3>
                        <h3>State:
                            <asp:TextBox ID="txtdonorstate" runat="server"></asp:TextBox>
                        </h3>
                        <h3>Zip Code:
                            <asp:TextBox ID="txtdonorZip" runat="server"></asp:TextBox>
                        </h3>
                    </td>
                    <td>
                        <h3>Payment Options:</h3>
                        
                            <h3>PayPal:<asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="True" NavigateUrl="https://www.paypal.com/yt">Donate Now!</asp:HyperLink>
                       
                        </h3>
                       
                        <h3>Credit Card Information:</h3>
                        <h3>
                            Cardholder&#39;s Name:<asp:TextBox ID="Textcustomercardname" runat="server"></asp:TextBox>
                        </h3>
                        <h3>
                            Credit Card Number:<asp:TextBox ID="txtcustomercardno" runat="server"></asp:TextBox>
                        </h3>
                        <h3>
                            Credit Card Type:<asp:DropDownList ID="drpdwncardtype" runat="server" AutoPostBack="True">
                                <asp:ListItem>Visa</asp:ListItem>
                                <asp:ListItem>MasterCard</asp:ListItem>
                                <asp:ListItem>AmericanExpress</asp:ListItem>
                                <asp:ListItem>Discover</asp:ListItem>
                            </asp:DropDownList>
                        </h3>
                        <h3>
                            Credit Card Expiration<asp:TextBox ID="txtcardexpire" runat="server"></asp:TextBox>
                        </h3>
                        <h3>
                            Credit Card Security Code:<asp:TextBox ID="txtcardcode" runat="server"></asp:TextBox>
                        </h3>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                          <asp:Button ID="btndonate" runat="server" Text="Donate" Height="37px" Width="112px" />
                    </td>
                </tr>
                
            </table>
        </div>
     
        <div class="col-lg-3"></div>
    </div>--%>

</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

