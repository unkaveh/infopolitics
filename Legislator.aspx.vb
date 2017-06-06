Imports CallControllers
Imports DetailsModel
Imports BillSearchModel
Imports Newtonsoft.Json
Imports BillDetailModel


Partial Class Legislator
    Inherits System.Web.UI.Page
    Public emailHolder As String = ""
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim controller As CallControllers = New CallControllers
        Dim URL As String = HttpContext.Current.Request.Url.AbsoluteUri
        Dim relativeURL As String = URL.Substring(URL.LastIndexOf("/"))
        Dim billURL As String = relativeURL.Replace("/", "")
        Dim response = controller.connectDetailAPI(relativeURL)
        Dim billResponse = controller.connectBillAPI(billURL)

        Dim tempString As String = ""
        For Each elem As BillSearch In billResponse
            Dim c As Integer = 0
            Dim billDetail = controller.connectionBillDetailApi(elem.id)
            tempString += "<div class='col-sm-12 '><br/><div class='panel panel-success'><div class='panel-heading'>" & elem.title.ToString & "</div><div class='panel-body'> Bill Created: " & elem.created_at.ToString & "<br/> Chamber : " & elem.chamber & "<br/>State:" & elem.state.ToString & "<br /> <a href='" & billDetail.versions(c).url & "'>Read Bill Text</a></div></div></div>"
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
        results.Text = tempString
        lblFullName.Text = response.full_name
        lblParty.Text = response.party
        lblDistrict.Text = response.district
        lblChambers.Text = response.chamber
        lblState.Text = response.state
        If response.offices(0) IsNot "" Then
            lblCapitalAddress.Text = response.offices(0).address
            myMap.Attributes("src") += response.offices(0).address
        End If
        linkWeb.HRef = response.url
        lblOffice.Text = response.office_phone
        emailHolder = response.email
        lblEmail.HRef = "mailto:" & response.email
        lblSource.HRef = response.sources(0).url
        imgProfile.ImageUrl = response.photo_url

        If User.Identity.IsAuthenticated Then
            saveStatus.Visible = True

        Else
            saveStatus.Visible = False
        End If
    End Sub

    Protected Sub SaveProfile(sender As Object, e As EventArgs)
        Dim URL As String = HttpContext.Current.Request.Url.AbsoluteUri

        Dim relativeURL As String = URL.Substring(URL.LastIndexOf("/"))
        Dim billURL As String = relativeURL.Replace("/", "")
        Using conn As New Data.SqlClient.SqlConnection("Data Source=(LocalDb)\v11.0;AttachDbFilename=|DataDirectory|\UserProfileDB.mdf;Initial Catalog=UserProfileDB;Integrated Security=True")

            conn.Open()

            Dim cmd As New Data.SqlClient.SqlCommand(("INSERT INTO SavedLeg (Name, District, Party, Email, PhoneNumber, UserName, Leg_Id) Values ('" & lblFullName.Text.ToString & "','" & lblDistrict.Text.ToString & "','" & lblParty.Text.ToString & "','" & emailHolder & "','" & lblOffice.Text.ToString & "','" & User.Identity.Name.ToString & "','" & billURL & "')"), conn)
            cmd.ExecuteNonQuery()
            conn.Close()
            lblSave.Text = "<i class='fa fa-heart' aria-hidden='true'></i>  Saved to Your Profile!"

        End Using
    End Sub

End Class
