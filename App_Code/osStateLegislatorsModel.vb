Imports Microsoft.VisualBasic

Namespace osStateLegislatorsModel
    Public Class Attributes
        Public Property cid As String
        Public Property firstlast As String
        Public Property lastname As String
        Public Property party As String
        Public Property office As String
        Public Property gender As String
        Public Property first_elected As String
        Public Property exit_code As String
        Public Property comments As String
        Public Property phone As String
        Public Property fax As String
        Public Property website As String
        Public Property webform As String
        Public Property congress_office As String
        Public Property bioguide_id As String
        Public Property votesmart_id As String
        Public Property feccandid As String
        Public Property twitter_id As String
        Public Property youtube_url As String
        Public Property facebook_id As String
        Public Property birthdate As String
    End Class

    Public Class Legislator
        Public Property attributes As Attributes
    End Class

    Public Class Response
        Public Property legislator As Legislator()
    End Class

    Public Class Example
        Public Property response As Response
    End Class

End Namespace
