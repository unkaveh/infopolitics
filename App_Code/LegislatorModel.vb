Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Data.Entity
Imports System.ComponentModel.DataAnnotations
Imports System.Web
Imports Newtonsoft.Json

Namespace LegislatorsModel
    Public Class container
        Public offices As Office()
        Public standard As Standards()
    End Class

    Public Class Office
        Public Property fax As String
        Public Property name As String
        Public Property phone As String
        Public Property address As String
        Public Property type As String
        Public Property email As Object
    End Class

    Public Class Standards
        Public Property last_name As String
        Public Property updated_at As String
        Public Property full_name As String
        Public Property id As String
        Public Property first_name As String
        Public Property middle_name As String
        Public Property district As String
        Public Property state As String
        Public Property votesmart_id As String
        Public Property party As String
        Public Property email As String
        Public Property all_ids As String()
        Public Property leg_id As String
        Public Property active As Boolean
        Public Property transparencydata_id As String
        Public Property level As String
        Public Property nickname As String
        Public Property photo_url As String
        Public Property url As String
        Public Property country As String
        Public Property created_at As String
        Public Property suffix As String
        Public Property chamber As String
        Public Property offices As Office()

        <JsonProperty(PropertyName:="+city")> Public Property city As String

        Public Property suffixes As String
        Public Property csrfmiddlewaretoken As String
        Public Property sworn_in_date As String
        Public Property facebook_url As String
        Public Property office_phone As String
        Public Property address As String
    End Class
End Namespace