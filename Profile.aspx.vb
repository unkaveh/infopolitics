Imports Microsoft.AspNet.Identity
Imports Microsoft.AspNet.Identity.EntityFramework
Imports Microsoft.Owin.Security
Imports System
Imports System.Web.UI
Imports System.Linq
Imports System.Web
Imports Owin
Imports System.Data
Imports System.Data.SqlClient
Imports BillSearchModel
Imports BillDetailModel


Partial Class Profile
    Inherits System.Web.UI.Page
    Dim conn As New Data.SqlClient.SqlConnection("Data Source=(LocalDb)\v11.0;AttachDbFilename=|DataDirectory|\UserProfileDB.mdf;Initial Catalog=UserProfileDB;Integrated Security=True")

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Page.User.Identity.IsAuthenticated Then
            
            Dim temp = String.Format("Hello {0}!!", Page.User.Identity.GetUserName())
            StatusText.Text = temp
            lblName.Text = Page.User.Identity.GetUserName()
        ElseIf Page.User.Identity.IsAuthenticated = False Then
            Response.Redirect("Register.aspx")
        End If
    End Sub

    
    Public Sub showBills()
        testing.Text = "works"
    End Sub

    Protected Sub btnInfo_Click(sender As Object, e As EventArgs)
    End Sub

    Protected Sub btnInfo_Command(sender As Object, e As CommandEventArgs)
        Dim legID As String = e.CommandArgument.ToString
        holding.Text = legID
        Dim controller As CallControllers = New CallControllers
        Dim billResponse = controller.connectBillAPI(legID)
        Dim legResponse = controller.connectDetailAPI("/" & legID)
        lblNameTitle.Text = legResponse.full_name
        billsVisible.Visible = True
        holding.Text = legID
        Dim tempString As String = ""
        For Each elem As BillSearch In billResponse
            Dim c As Integer = 0
            Dim billDetail = controller.connectionBillDetailApi(elem.id)

            tempString += "<div class='col-sm-12 '><br/><div class='panel panel-success'><div class='panel-heading'>" & elem.title.ToString & "</div><div class='panel-body'> Bill Created: " & elem.created_at.ToString & "<br/> Chamber : " & elem.chamber & "<br/>State :" & elem.state.ToString.ToUpper & "<br /> <a href='" & billDetail.versions(c).url & "'>Read Bill Text</a><br /> " & elem.id & "<br /> Description: " & billDetail.description & "<br /> URL: " & billDetail.versions(c).url & "</div></div></div>"
            If c = 2 Then
                tempString += "<div class=row>"
            End If
            If c = 5 Then
                tempString += "</div><div class=row>"
            End If
            If c = 8 Then
                tempString += "</div>"
            End If
            c = c + 1
        Next
        testing.Text = tempString
    End Sub

    Public Sub SeachClick()
        Dim url = holding.Text
        Dim search = searchBar.Text
        Dim controller As CallControllers = New CallControllers
        Dim searchResponse = controller.connectSearchAPI(url, search)
        Dim tempString As String = ""

        For Each elem As BillSearch In searchResponse
            Dim c As Integer = 0
            Dim billDetail = controller.connectionBillDetailApi(elem.id)

            tempString += "<div class='col-sm-12 '><br/><div class='panel panel-success'><div class='panel-heading'>" & elem.title.ToString & "</div><div class='panel-body'> Bill Created: " & elem.created_at.ToString & "<br/> Chamber : " & elem.chamber & "<br/>State :" & elem.state.ToString.ToUpper & "<br /> <a href='" & billDetail.versions(c).url & "'>Read Bill Text</a><br /> " & elem.id & "<br /> Description: " & billDetail.description & "<br /> URL: " & billDetail.versions(c).url & "</div></div></div>"
            If c = 2 Then
                tempString += "<div class=row>"
            End If
            If c = 5 Then
                tempString += "</div><div class=row>"
            End If
            If c = 8 Then
                tempString += "</div>"
            End If
            c = c + 1
        Next
    End Sub

    Protected Sub btnSearch_Click(sender As Object, e As EventArgs) Handles btnSearch.Click
        Dim url = holding.Text
        Dim search As String = searchBar.Text
        Dim controller As CallControllers = New CallControllers
        Dim searchResponse = controller.connectSearchAPI(url, search)
        Dim tempString As String = ""
        For Each elem As BillSearch In searchResponse
            Dim c As Integer = 0
            Dim billDetail = controller.connectionBillDetailApi(elem.id)

            tempString += "<div class='col-sm-4 '><br/><div class='panel panel-success'><div class='panel-heading'>" & elem.title.ToString & "</div><div class='panel-body'> Bill Created: " & elem.created_at.ToString & "<br/> Chamber : " & elem.chamber & "<br/>State :" & elem.state.ToString.ToUpper & "<br /> <a href='" & billDetail.versions(c).url & "'>Read Bill Text</a><br /> " & elem.id & "<br /> Description: " & billDetail.description & "<br /> URL: " & billDetail.versions(c).url & "</div></div></div>"
            If c = 2 Then
                tempString += "<div class=row>"
            End If
            If c = 5 Then
                tempString += "</div><div class=row>"
            End If
            If c = 8 Then
                tempString += "</div>"
            End If
            c = c + 1
        Next
        testing.Text = tempString
    End Sub



    Protected Sub btnEnergySeach_Click(sender As Object, e As EventArgs) Handles btnEnergySeach.Click
        Dim url = holding.Text
        Dim search As String = btnEnergySeach.Text
        Dim controller As CallControllers = New CallControllers
        Dim searchResponse = controller.connectSearchAPI(url, search)
        Dim tempString As String = ""
        For Each elem As BillSearch In searchResponse
            Dim c As Integer = 0
            Dim billDetail = controller.connectionBillDetailApi(elem.id)

            tempString += "<div class='col-sm-12 '><br/><div class='panel panel-success'><div class='panel-heading'>" & elem.title.ToString & "</div><div class='panel-body'> Bill Created: " & elem.created_at.ToString & "<br/> Chamber : " & elem.chamber & "<br/>State :" & elem.state.ToString.ToUpper & "<br /> <a href='" & billDetail.versions(c).url & "'>Read Bill Text</a><br /> " & elem.id & "<br /> Description: " & billDetail.description & "<br /> URL: " & billDetail.versions(c).url & "</div></div></div>"
            If c = 2 Then
                tempString += "<div class=row>"
            End If
            If c = 5 Then
                tempString += "</div><div class=row>"
            End If
            If c = 8 Then
                tempString += "</div>"
            End If
            c = c + 1
        Next
        testing.Text = tempString
    End Sub

    Protected Sub btnEducationSearch_Click(sender As Object, e As EventArgs) Handles btnEducationSearch.Click
        Dim url = holding.Text
        Dim search As String = btnEducationSearch.Text
        Dim controller As CallControllers = New CallControllers
        Dim searchResponse = controller.connectSearchAPI(url, search)
        Dim tempString As String = ""
        For Each elem As BillSearch In searchResponse
            Dim c As Integer = 0
            Dim billDetail = controller.connectionBillDetailApi(elem.id)

            tempString += "<div class='col-sm-12 '><br/><div class='panel panel-success'><div class='panel-heading'>" & elem.title.ToString & "</div><div class='panel-body'> Bill Created: " & elem.created_at.ToString & "<br/> Chamber : " & elem.chamber & "<br/>State :" & elem.state.ToString.ToUpper & "<br /> <a href='" & billDetail.versions(c).url & "'>Read Bill Text</a><br /> " & elem.id & "<br /> Description: " & billDetail.description & "<br /> URL: " & billDetail.versions(c).url & "</div></div></div>"
            If c = 2 Then
                tempString += "<div class=row>"
            End If
            If c = 5 Then
                tempString += "</div><div class=row>"
            End If
            If c = 8 Then
                tempString += "</div>"
            End If
            c = c + 1
        Next
        testing.Text = tempString
    End Sub

    Protected Sub btnPolice_Click(sender As Object, e As EventArgs) Handles btnPolice.Click
        Dim url = holding.Text
        Dim search As String = btnPolice.Text
        Dim controller As CallControllers = New CallControllers
        Dim searchResponse = controller.connectSearchAPI(url, search)
        Dim tempString As String = ""
        For Each elem As BillSearch In searchResponse
            Dim c As Integer = 0
            Dim billDetail = controller.connectionBillDetailApi(elem.id)

            tempString += "<div class='col-sm-12 '><br/><div class='panel panel-success'><div class='panel-heading'>" & elem.title.ToString & "</div><div class='panel-body'> Bill Created: " & elem.created_at.ToString & "<br/> Chamber : " & elem.chamber & "<br/>State :" & elem.state.ToString.ToUpper & "<br /> <a href='" & billDetail.versions(c).url & "'>Read Bill Text</a><br /> " & elem.id & "<br /> Description: " & billDetail.description & "<br /> URL: " & billDetail.versions(c).url & "</div></div></div>"
            If c = 2 Then
                tempString += "<div class=row>"
            End If
            If c = 5 Then
                tempString += "</div><div class=row>"
            End If
            If c = 8 Then
                tempString += "</div>"
            End If
            c = c + 1
        Next
        testing.Text = tempString
    End Sub

    Protected Sub btnTaxSearch_Click(sender As Object, e As EventArgs) Handles btnTaxSearch.Click
        Dim url = holding.Text
        Dim search As String = btnTaxSearch.Text
        Dim controller As CallControllers = New CallControllers
        Dim searchResponse = controller.connectSearchAPI(url, search)
        Dim tempString As String = ""
        For Each elem As BillSearch In searchResponse
            Dim c As Integer = 0
            Dim billDetail = controller.connectionBillDetailApi(elem.id)

            tempString += "<div class='col-sm-12 '><br/><div class='panel panel-success'><div class='panel-heading'>" & elem.title.ToString & "</div><div class='panel-body'> Bill Created: " & elem.created_at.ToString & "<br/> Chamber : " & elem.chamber & "<br/>State :" & elem.state.ToString.ToUpper & "<br /> <a href='" & billDetail.versions(c).url & "'>Read Bill Text</a><br /> " & elem.id & "<br /> Description: " & billDetail.description & "<br /> URL: " & billDetail.versions(c).url & "</div></div></div>"
            If c = 2 Then
                tempString += "<div class=row>"
            End If
            If c = 5 Then
                tempString += "</div><div class=row>"
            End If
            If c = 8 Then
                tempString += "</div>"
            End If
            c = c + 1
        Next
        testing.Text = tempString
    End Sub
End Class
