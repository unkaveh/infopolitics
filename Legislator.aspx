<%@ Page Title="<%# lblFullName %>" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Legislator.aspx.vb" Inherits="Legislator" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <%--    <script>
        function myFunction() {
            var x = document.getElementsByIdName("lblCapitalAddress").textContent;
            document.getElementById("myMap").src = "" + x;
        }

    </script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
        <div class="row">
	    <div class="col-sm-6">
            <h1>Profile</h1>
            <div class="row">
                <div class="col-sm-6"><asp:Image ID="imgProfile" runat="server" CssClass="img-responsive" /></div>
                <div class="col-sm-6">
                    <h3><asp:Label ID="lblFullName" runat="server" Text=""></asp:Label></h3>
                    <h4>Party: <asp:Label ID="lblParty" runat="server" Text=""></asp:Label></h4>
                    <asp:Placeholder ID="saveStatus" runat="server" Visible="true">
                        <asp:Button ID="btnSave" runat="server" Text="Save to Profile" OnClick="SaveProfile" class="btn btn-default"/> <br />
                        <asp:label id="lblSave" runat="server" Text=""></asp:label>
                    </asp:Placeholder>
                    <p>Chambers: <asp:Label ID="lblChambers" runat="server" Text=""></asp:Label>
                    <br />
                    Representing District: # <asp:Label ID="lblDistrict" runat="server" Text=""></asp:Label>
                    <br />
                    State: <asp:Label ID="lblState" runat="server" Text=""></asp:Label></p>
                    </div>
            </div>
            <h3>Contact Information</h3>

                <ul>
                    <li>Website: <a href="#" runat="server" id="linkWeb">Go to Site</a></li> 
                    <li>Office Phone: <asp:Literal ID="lblOffice" runat="server"></asp:Literal></li> 
                    <li>Email: <a href="#" id="lblEmail" runat="server">Email Here</a></li> 
                    <li>Information Sources: <a href="#" id="lblSource" runat="server">Go to source</a></li> 
                </ul>
	    </div>
	    <div class="col-sm-6">
            <div class="embed-responsive embed-responsive-16by9">

            <iframe src="https://www.google.com/maps/embed/v1/place?key=AIzaSyDD3V5quGDspTf1mMHYmNf60KeEmA8D85s&q="  class="embed-responsive-item" style="margin-top:8%; border:2px solid #ffefdd;" id="myMap" runat="server"></iframe>
              
            </div>
            <h4>Capital Address: <asp:Label ID="lblCapitalAddress" runat="server" Text=""></asp:Label></h4>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <h3>Recent Bills Sponsered</h3>
            <div class="row">
            <asp:Label runat="server" ID="results" Text=""></asp:Label>
                </div>
        </div>
    </div>
</asp:Content>
<%--<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server" visible="false">
    <asp:PlaceHolder ID="myPlace" runat="server">
    <div class="row">
        <div class="col-sm-12">
            <hr class="style17"/>
            <div>
                <h3>Details</h3>
                <asp:Label ID="leg_id" runat="server" ></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="leg_id" DataValueField="leg_id">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GeorgiaDBConnection %>" SelectCommand="SELECT DISTINCT [leg_id] FROM [ga_legislators] ORDER BY [leg_id]"></asp:SqlDataSource>
    
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="leg_id" DataSourceID="ObjectDataSource1" >
            <ItemTemplate>
                leg_id:
                <asp:Label ID="leg_idLabel" runat="server" Text='<%# Eval("leg_id") %>' />
                <br />
                full_name:
                <asp:Label ID="full_nameLabel" runat="server" Text='<%# Eval("full_name") %>' />
                <br />
                first_name:
                <asp:Label ID="first_nameLabel" runat="server" Text='<%# Eval("first_name") %>' />
                <br />
                middle_name:
                <asp:Label ID="middle_nameLabel" runat="server" Text='<%# Eval("middle_name") %>' />
                <br />
                last_name:
                <asp:Label ID="last_nameLabel" runat="server" Text='<%# Eval("last_name") %>' />
                <br />
                suffixes:
                <asp:Label ID="suffixesLabel" runat="server" Text='<%# Eval("suffixes") %>' />
                <br />
                nickname:
                <asp:Label ID="nicknameLabel" runat="server" Text='<%# Eval("nickname") %>' />
                <br />
                active:
                <asp:Label ID="activeLabel" runat="server" Text='<%# Eval("active") %>' />
                <br />
                state:
                <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />
                <br />
                chamber:
                <asp:Label ID="chamberLabel" runat="server" Text='<%# Eval("chamber") %>' />
                <br />
                district:
                <asp:Label ID="districtLabel" runat="server" Text='<%# Eval("district") %>' />
                <br />
                party:
                <asp:Label ID="partyLabel" runat="server" Text='<%# Eval("party") %>' />
                <br />
                photo_url:
                <asp:Label ID="photo_urlLabel" runat="server" Text='<%# Eval("photo_url") %>' />
                <br />
                created_at:
                <asp:Label ID="created_atLabel" runat="server" Text='<%# Eval("created_at") %>' />
                <br />
                updated_at:
                <asp:Label ID="updated_atLabel" runat="server" Text='<%# Eval("updated_at") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <br />
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="leg_id" DataSourceID="ObjectDataSource1">
            <Columns>
                <asp:BoundField DataField="leg_id" HeaderText="leg_id" ReadOnly="True" SortExpression="leg_id" />
                <asp:BoundField DataField="full_name" HeaderText="full_name" SortExpression="full_name" />
                <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name" />
                <asp:BoundField DataField="middle_name" HeaderText="middle_name" SortExpression="middle_name" />
                <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
                <asp:BoundField DataField="suffixes" HeaderText="suffixes" SortExpression="suffixes" />
                <asp:BoundField DataField="nickname" HeaderText="nickname" SortExpression="nickname" />
                <asp:CheckBoxField DataField="active" HeaderText="active" SortExpression="active" />
                <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                <asp:BoundField DataField="chamber" HeaderText="chamber" SortExpression="chamber" />
                <asp:BoundField DataField="district" HeaderText="district" SortExpression="district" />
                <asp:BoundField DataField="party" HeaderText="party" SortExpression="party" />
                <asp:BoundField DataField="photo_url" HeaderText="photo_url" SortExpression="photo_url" />
                <asp:BoundField DataField="created_at" HeaderText="created_at" SortExpression="created_at" />
                <asp:BoundField DataField="updated_at" HeaderText="updated_at" SortExpression="updated_at" />
                <asp:HyperLinkField DataNavigateUrlFields="leg_id" DataNavigateUrlFormatString="TaBills.aspx?leg_id={0}" Text="Bills" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByLegislator" TypeName="DataSetTableAdapters.ga_legislatorsTableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="leg_id" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource2">
            <Columns>
                <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                <asp:BoundField DataField="term" HeaderText="term" SortExpression="term" />
                <asp:BoundField DataField="district" HeaderText="district" SortExpression="district" />
                <asp:BoundField DataField="chamber" HeaderText="chamber" SortExpression="chamber" />
                <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                <asp:BoundField DataField="party" HeaderText="party" SortExpression="party" />
                <asp:BoundField DataField="committee_id" HeaderText="committee_id" SortExpression="committee_id" />
                <asp:BoundField DataField="committee" HeaderText="committee" SortExpression="committee" />
                <asp:BoundField DataField="subcommittee" HeaderText="subcommittee" SortExpression="subcommittee" />
                <asp:BoundField DataField="start_date" HeaderText="start_date" SortExpression="start_date" />
                <asp:BoundField DataField="end_date" HeaderText="end_date" SortExpression="end_date" />
                <asp:BoundField DataField="rolesid" HeaderText="rolesid" SortExpression="rolesid" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.ga_legislator_rolesTableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="leg_id" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <br />
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="ObjectDataSource3" DataTextField="committee_id" DataValueField="committee_id" AutoPostBack="True">
        </asp:DropDownList>
        <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDISTINCTDataBy" TypeName="DataSetTableAdapters.ga_committe_infoTableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="leg_id" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <br />
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource4">
            <Columns>
                <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                <asp:BoundField DataField="chamber" HeaderText="chamber" SortExpression="chamber" />
                <asp:BoundField DataField="committee" HeaderText="committee" SortExpression="committee" />
                <asp:BoundField DataField="subcommittee" HeaderText="subcommittee" SortExpression="subcommittee" />
                <asp:BoundField DataField="parent_id" HeaderText="parent_id" SortExpression="parent_id" />
                <asp:BoundField DataField="committee_id" HeaderText="committee_id" SortExpression="committee_id" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByCommittee_Info" TypeName="DataSetTableAdapters.ga_committe_infoTableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" DefaultValue="" Name="committee_id" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <br />
        </div>

    </div>
        </asp:PlaceHolder>
</asp:Content>--%>

