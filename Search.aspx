<%@ Page Title="Search Here" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Search.aspx.vb" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script>
        $(document).ready(function () {
            $("#myInfo").hide();
            $("#mySearch").hide();

            $("#address").click(function () {
                $("#myInfo").hide();
                $("#mySearch").show();
            });
            $("#parameters").click(function () {
                $("#myInfo").show();
                $("#mySearch").hide();
            });
        });
    </script>
    <style>
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
        <div class="row">
        <div class="col-sm-12 text-center">
            <h1>Search</h1>
            <hr class="bookends"/>
            <br />
            <h3><u>Choose Search Type</u></h3>
            <br />
            <label class="radio-inline"><input type="radio" name="address" id="address" />Address</label>
            <label class="radio-inline"><input type="radio" name="parameters" id="parameters"/>Parameters</label>
            <br />
            <br />
            <div class="table-responsive" id="myInfo">
                <table class="table">
                    <tr>
                        <td class="text-right">State</td>
                        <td class="text-left">
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
                        <td class="text-right">Chambers</td>
                        <td class="text-left">
                            <asp:DropDownList ID="ddlChambers" runat="server" CssClass="dropdown">
                                <asp:ListItem Value="upper">Upper (Local State Senate)</asp:ListItem>
                                <asp:ListItem Value="lower">Lower (Local State Representatives)</asp:ListItem>
                                <asp:ListItem Value="">Both</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-right">Party <i>Optional</i></td>
                        <td class="text-left">
                            <asp:DropDownList ID="ddlParty" runat="server" CssClass="dropdown">
                                <asp:ListItem Value="">Both</asp:ListItem>
                                <asp:ListItem Value="Republican">Republican</asp:ListItem>
                                <asp:ListItem Value="Democratic">Democratic</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-default" />
                        </td>
                    </tr>
                </table>
            </div> <!-- End div table-responsive -->
            <!-- End Paramaters Area -->
        
            <div class="row" id="mySearch">
                <div class="col-sm-12 text-center">
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                    <asp:Button ID="btnSearchAddress" runat="server" Text="Search" />
                    <br />
                   
                    
                </div>
            </div>
       
        </div> <!-- End div col-12 text center -->
    </div><!-- End Row -->
    <div class="row">
        <div class="col-sm-12">
            <asp:Label ID="Results2" runat="server" Text=""></asp:Label><br />
            <asp:Label ID="Results" runat="server" Text=""></asp:Label><p id="test"></p>
            <br />
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

