<%@ Page Title="Profile" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Profile.aspx.vb" Inherits="Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="row">
        <div class="col-sm-12">
            <h1>Profile</h1>
    <asp:Literal ID="StatusText" runat="server"></asp:Literal>
            <br />
    Welcome to your profile, <asp:Label ID="lblName" runat="server" Text=""></asp:Label>

            <h4>Here's your personal profile</h4>
            <hr class="style17" />
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="ObjectDataSource1" GroupItemCount="3" >
        <AlternatingItemTemplate>
            <td runat="server" style="">UserName:
                <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
                <br />FirstName:
                <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
                <br />LastName:
                <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
                <br />Address:
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                <br />Political:
                <asp:Label ID="PoliticalLabel" runat="server" Text='<%# Eval("Political") %>' />
                <br />
                Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                <br />Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
            </td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td runat="server" style="">UserName:
                <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
                <br />FirstName:
                <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                <br />LastName:
                <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                <br />Address:
                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                <br />Political:
                <asp:TextBox ID="PoliticalTextBox" runat="server" Text='<%# Bind("Political") %>' />
                <br />
                Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                Id:
                <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br /></td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
<td runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr id="itemPlaceholderContainer" runat="server">
                <td id="itemPlaceholder" runat="server"></td>
            </tr>
        </GroupTemplate>
        <InsertItemTemplate>
            <td runat="server" style="">UserName:
                <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
                <br />FirstName:
                <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                <br />LastName:
                <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                <br />Address:
                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                <br />Political:
                <asp:TextBox ID="PoliticalTextBox" runat="server" Text='<%# Bind("Political") %>' />
                <br />Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br /></td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td runat="server" style="">UserName:
                <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
                <br />FirstName:
                <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
                <br />LastName:
                <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
                <br />Address:
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                <br />Political:
                <asp:Label ID="PoliticalLabel" runat="server" Text='<%# Eval("Political") %>' />
                <br />Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                <br />
                Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                            <tr id="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style=""></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server" style="">UserName:
                <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
                <br />FirstName:
                <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
                <br />LastName:
                <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
                <br />Address:
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                <br />Political:
                <asp:Label ID="PoliticalLabel" runat="server" Text='<%# Eval("Political") %>' />
                <br />Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                <br />
                Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
            </td>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByUser" TypeName="DataSetTableAdapters.UserAccessTableAdapter">
        <SelectParameters>
            <asp:ControlParameter ControlID="lblName" Name="UserName" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
            <br />
            <br />
        </div>
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="table table-hover table-bordered" DataKeyNames="Id" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:TemplateField HeaderText="Email">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("Email", "mailto:{0}") %>' Text='<%# Eval("Email") %>'></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="District" HeaderText="District" SortExpression="District" />
            <asp:BoundField DataField="Party" HeaderText="Party" SortExpression="Party" />
            <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
            <asp:BoundField DataField="Leg_Id" HeaderText="Legislator Id" SortExpression="Leg_Id" />
            <asp:TemplateField HeaderText="More Info">
                <ItemTemplate>
                    <asp:Button ID="btnInfo" runat="server"  CausesValidation="false"  OnCommand="btnInfo_Command" Text="More Info" CommandArgument='<%# Eval("Leg_Id") %>' />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UserProfileDBConnection %>" SelectCommand="SELECT * FROM [SavedLeg] WHERE ([UserName] = @UserName)" DeleteCommand="DELETE FROM [SavedLeg] WHERE ([UserName] = @UserName)">
        <DeleteParameters>
            <asp:Parameter Name="UserName" />
        </DeleteParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="lblName" Name="UserName" PropertyName="Text" Type="String" DefaultValue="" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByUser" TypeName="DataSetTableAdapters.UserProfileTableAdapter">
        <SelectParameters>
            <asp:ControlParameter ControlID="lblName" Name="UserName" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <asp:PlaceHolder ID="billsVisible" runat="server" Visible="false">
    <div class="row">
        <div class="col-lg-12">
            <h1>Bills</h1>
            <hr class="style17" />
            <asp:Label ID="holding" runat="server" Text="blank" Visible="false"></asp:Label>
            <h2><asp:Label runat="server" ID="lblNameTitle" ></asp:Label></h2>
            <h4><u>Check Out Some Hot Topics!</u></h4>
            <br />
        </div>
    </div>
    <div class="row">
        <div class="col-sm-2"><asp:Button runat="server" ID="btnTaxSearch" Text="Tax" CssClass="btn btn-default" /></div>
        <div class="col-sm-2"><asp:Button runat="server" ID="btnPolice" Text="Police" CssClass="btn btn-default" /></div>
        <div class="col-sm-2"><asp:Button runat="server" ID="btnEducationSearch" Text="Education" CssClass="btn btn-default" /></div>
        <div class="col-sm-2"><asp:Button runat="server" ID="btnEnergySeach" Text="Energy" CssClass="btn btn-default" /></div>
        <div class="col-sm-2"><asp:Button runat="server" ID="btnGunSearch" Text="Gun" CssClass="btn btn-default" /></div>
        <div class="col-sm-2"><asp:TextBox runat="server" ID="searchBar" CssClass ="form-control"></asp:TextBox>
    <asp:Button runat="server" ID="btnSearch" Text="Custom Search" CssClass="btn btn-default"/></div>
        <%--<asp:Button runat="server" ID="btnAlcoholSearch" Text="Alcohol" />--%>
    </div>

    
    <br />
    
    <asp:Label ID="testing" runat="server" Text="nothing"></asp:Label>
    </asp:PlaceHolder>
</asp:Content>

