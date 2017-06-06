Imports CallControllers
Imports LegislatorsModel
Imports GeoEncodeModel
Imports GeoLegislatorSearchModel
Imports osStateLegislatorsModel
Imports System.Net
Imports System.IO
Imports Newtonsoft.Json


Partial Class Search
    Inherits System.Web.UI.Page

    Protected Sub btnSearch_Click(sender As Object, e As EventArgs) Handles btnSearch.Click
        Dim stillURL As String = "https://openstates.org/api/v1/legislators/?"
        Dim stateURL As String = "state=" & ddlState.SelectedValue.ToString
        Dim chamberUrl As String = "&chamber=" & ddlChambers.SelectedValue.ToString
        Dim partyURL As String = "&party=" & ddlParty.SelectedValue.ToString
        Dim finalURl As String = stillURL + stateURL + chamberUrl + partyURL

        Dim request As WebRequest = WebRequest.Create(finalURl)
        request.ContentType = "application/json; charset=utf-8"
        request.Headers.Add("X-API-KEY", "729c5968-d636-4462-a964-607d1c03854c")
        Dim response As WebResponse = request.GetResponse
        Dim reader As New StreamReader(response.GetResponseStream())
        Dim responseFromStream As String = reader.ReadToEnd

        Dim temp = JsonConvert.DeserializeObject(Of List(Of Standards))(responseFromStream)
        Dim TempString As String = ""


        For Each elem As Standards In temp
            Dim counter As Integer = 0

            TempString += "<div class='col-sm-3'><br/><div class='panel panel-success'><div class='panel-heading'>" & elem.full_name.ToString & "</div><div class='panel-body'>" & "<img src='" & elem.photo_url & "' class='img-responsive' />" & "<br />" & "Party Affliation: " & elem.party & "<br /> Chambers: " & elem.chamber & "<br /> District Number: " & elem.district & "<br />Address: " & elem.offices(counter).address & "<br /> Last Updated: " & elem.updated_at & "<br /> <a href='Legislator.aspx/" & elem.leg_id & "'>More Info</a><br /></div></div></div>"
            counter = counter + 1
        Next
        Results.Text = TempString

        'Dim secondURL As String = "http://www.opensecrets.org/api/?method=getLegislators&output=json&apikey=e75cf3706250507e6adf93815393f685&id=" & ddlState.SelectedValue.ToString
        'Dim secondResponse = controller.callAPI(secondURL)
        'Dim secondTemp = JsonConvert.DeserializeObject(Of List(Of osStateLegislatorsModel.Attributes))(secondResponse)

        'For Each elem As osStateLegislatorsModel.Attributes In secondTemp
        '    Dim c As Integer = 0

        '    tempstring2 += "<div class='col-sm-3'><br/><div class='panel panel-success'><div class='panel-heading'>" & elem(c).firstlast & "</div><div class='panel-body'>" & "<br />" & "Party Affliation: " & elem(c).party & "<br /> First Elected: " & elem(c).first_elected & "<br /> Birthdate: " & elem(c).birthdate & "<br />Address: " & elem(c).congress_office & "<br /> <a href='Legislator.aspx/" & elem(c).cid & "'>More Info</a><br /></div></div></div>"
        '    c = c + 1
        'Next
        
    End Sub


    Protected Sub btnSearchAddress_Click(sender As Object, e As EventArgs) Handles btnSearchAddress.Click
        Dim controller As CallControllers = New CallControllers
        Dim geo As SearchResults = New SearchResults
        Dim pushAddress As String = txtAddress.Text.Replace(" ", "+")
        Dim stillURL As String = "https://maps.googleapis.com/maps/api/geocode/json?key=AIzaSyAu8owLYCrIusM-x5gitoftRc24YWCvzew&address=" & pushAddress
        Dim response = controller.callAPI(stillURL)
        Dim temp = JsonConvert.DeserializeObject(Of SearchResults)(response)
        Dim lngResults = temp.results(0).geometry.location.lng
        Dim latResults = temp.results(0).geometry.location.lat

        Dim openstatesURL As String = "https://openstates.org/api/v1/legislators/geo/?lat=" & latResults.ToString & "&long=" & lngResults.ToString

        Dim searchResults = controller.callAPI(openstatesURL)
        Dim srhResponse = JsonConvert.DeserializeObject(Of List(Of GeoLegislatorSearchModel.GeoLegislatorSearch))(searchResults)
        Dim tempString As String = ""
        For Each elem As GeoLegislatorSearchModel.GeoLegislatorSearch In srhResponse
            Dim counter As Integer = 0

            tempString += "<div class='col-sm-3'><br/><div class='panel panel-success'><div class='panel-heading'>" & elem.full_name.ToString & "</div><div class='panel-body'>" & "<img src='" & elem.photo_url & "' class='img-responsive' />" & "<br />" & "Party Affliation: " & elem.party & "<br /> Chambers: " & elem.chamber & "<br /> District Number: " & elem.district & "<br />Address: " & elem.offices(counter).address & "<br /> Last Updated: " & elem.updated_at & "<br /> <a href='Legislator.aspx/" & elem.leg_id & "'>More Info</a><br /></div></div></div>"
            counter = counter + 1
        Next
        Results.Text = tempString
    End Sub

    'Protected Sub btnSearch2_Click(sender As Object, e As EventArgs) Handles btnSearch2.Click
    'Dim controller As CallControllers = New CallControllers

    'Dim secondURL As String = "https://www.googleapis.com/civicinfo/v2/representatives?key=AIzaSyCdyzj1sFkjF7fcCy0KpUGrej8JhGVyv04&address=" & ddlState.SelectedValue.ToString
    'Dim herethis As goFedStateLegislatorsModel.GeoLegislatorSearch = New goFedStateLegislatorsModel.GeoLegislatorSearch
    'Dim secondResponse = controller.callAPI(secondURL)
    ''Dim request2 As WebRequest = WebRequest.Create(secondURL)
    ''request.ContentType = "application/json; charset=utf-8"
    ''Dim response2 As WebResponse = request2.GetResponse
    ''Dim reader2 As New StreamReader(response2.GetResponseStream())
    ''Dim responseFromStream2 As String = reader2.ReadToEnd
    'Dim secondTemp = JsonConvert.DeserializeObject(Of Type(Of goFedStateLegislatorsModel.GeoLegislatorSearch))(secondResponse)
    'Dim tempstring2 As String = ""
    'For Each elem As goFedStateLegislatorsModel.GeoLegislatorSearch In secondTemp
    '    Dim counter As Integer = 0
    '    tempstring2 += "<div class='col-sm-3'><br/><div class='panel panel-success'><div class='panel-heading'>" & "<img src='" & elem.officials(counter).photoUrl & "' class='img-responsive' />" & "<br />" & elem.officials(counter).name & "</div><div class='panel-body'>" & "<br />" & "Title: " & elem.offices(counter).name & "<br />" & "Party Affliation: " & elem.officials(counter).party & "<br /> <a href='Legislator.aspx/" & elem.offices(counter).name & "'>More Info</a><br /></div></div></div>"
    '    counter = counter + 1
    'Next
    'Results2.Text = tempstring2
    'End Sub


End Class
