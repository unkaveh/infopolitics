Imports Microsoft.VisualBasic
Imports System.Net
Imports System.IO
Imports Newtonsoft.Json
Imports DetailsModel
Imports LegislatorsModel
Imports BillSearchModel
Imports BillDetailModel


Public Class CallControllers


    Public Function callAPI(ByVal apiAddress As String) As String
        Dim request As WebRequest = WebRequest.Create(apiAddress)
        request.ContentType = "application/json; charset=utf-8"
        request.Headers.Add("X-API-KEY", "729c5968-d636-4462-a964-607d1c03854c")
        Dim response As WebResponse = request.GetResponse
        Dim reader As New StreamReader(response.GetResponseStream())
        Dim responseFromStream As String = reader.ReadToEnd
        Return responseFromStream
    End Function

    Public Function connectLegislatorAPI(ByVal stateID As String, ByVal chamberID As String, Optional ByVal partyID As String = "") As List(Of Standards)
        Dim stillURL As String = "https://openstates.org/api/v1/legislators?"
        Dim apiRequest As String = callAPI(stillURL)
        Dim temp = JsonConvert.DeserializeObject(Of List(Of Standards))(apiRequest)
        Return temp
    End Function

    Public Function connectDetailAPI(ByVal legID As String) As Detail
        Dim stillURL As String = "https://openstates.org/api/v1/legislators" & legID
        Dim apiRequest As String = callAPI(stillURL)
        Dim temp = JsonConvert.DeserializeObject(Of Detail)(apiRequest)
        Return temp
    End Function

    Public Function connectBillAPI(ByVal legID As String) As List(Of BillSearch)
        Dim stillURL As String = "https://openstates.org/api/v1/bills/?per_page=10&sponsor_id=" & legID
        Dim apiRequest As String = callAPI(stillURL)
        Dim temp = JsonConvert.DeserializeObject(Of List(Of BillSearch))(apiRequest)
        Return temp
    End Function

    Public Function connectionBillDetailApi(ByVal billID As String) As BillDetail
        Dim stillURL As String = "https://openstates.org/api/v1/bills/" & billID
        Dim apiRequest As String = callAPI(stillURL)
        Dim temp = JsonConvert.DeserializeObject(Of BillDetail)(apiRequest)
        Return temp
    End Function

    Public Function connectGeoLegAPI(ByVal locationID As String) As String
        Dim stillURL As String = locationID
        Return stillURL
    End Function

    Public Function connectSearchAPI(ByVal legID As String, ByVal searchTerm As String) As List(Of BillSearch)
        Dim stillURL As String = "https://openstates.org/api/v1/bills/?per_page=10&sponsor_id=" & legID & "&q=" & searchTerm
        Dim apiRequest As String = callAPI(stillURL)
        Dim temp = JsonConvert.DeserializeObject(Of List(Of BillSearch))(apiRequest)
        Return temp
    End Function

    'Public Function getLongLat(ByVal address As String) As Tuple(Of Double, Double)

    '    Dim stillURL As String = "https://api.mapbox.com/geocoding/v5/mapbox.places/" & address & ".json?access_token=pk.eyJ1IjoiYWZyb3VraHRlaCIsImEiOiJjajFvZzcxYzEwMTRhMnFwNmY2c3czbG55In0.QgHleJc1ge3BtA3FZDxC1A"
    '    Dim apiRequest As String = callAPI(stillURL)
    '    Dim temp = JsonConvert.DeserializeObject(Of GeoAPI)(apiRequest)
    '    Dim lona = temp.features(0)

    '    Dim longitude As Double = temp.features(0).center(0)
    '    Dim latitude As Double = temp.features(0).center(1)
    '    Return New Tuple(Of Double, Double)(longitude, latitude)
    'End Function


    'Public Function lookupAddress(ByVal address As String) As String
    '    Dim stillURL As String = "http://www.datasciencetoolkit.org/street2coordinates/" & HttpUtility.UrlEncode(address)
    '    Dim apiRequest = callAPI(stillURL)
    '    Return apiRequest
    'End Function
End Class
