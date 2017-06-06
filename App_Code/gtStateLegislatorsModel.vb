Imports Microsoft.VisualBasic

Namespace gtStateLegislatorsModel
    Public Class Meta
        Public Property limit As Integer
        Public Property offset As Integer
        Public Property total_count As Integer
    End Class

    Public Class PartyAffiliation
        Public Property _end As String
        Public Property party As String
        Public Property start As String
    End Class

    Public Class Extra
        Public Property address As String
        Public Property contact_form As String
        Public Property fax As String
        Public Property office As String
        Public Property party_affiliations As PartyAffiliation()
    End Class

    Public Class Person
        Public Property bioguideid As String
        Public Property birthday As String
        Public Property cspanid As Integer?
        Public Property firstname As String
        Public Property gender As String
        Public Property gender_label As String
        Public Property id As Integer
        Public Property lastname As String
        Public Property link As String
        Public Property middlename As String
        Public Property name As String
        Public Property namemod As String
        Public Property nickname As String
        Public Property osid As String
        Public Property pvsid As String
        Public Property sortname As String
        Public Property twitterid As String
        Public Property youtubeid As String
    End Class

    Public Class _Object
        Public Property caucus As Object
        Public Property congress_numbers As Integer()
        Public Property current As Boolean
        Public Property description As String
        Public Property district As Integer
        Public Property enddate As String
        Public Property extra As Extra
        Public Property id As Integer
        Public Property leadership_title As Object
        Public Property party As String
        Public Property person As Person
        Public Property phone As String
        Public Property role_type As String
        Public Property role_type_label As String
        Public Property senator_class As Object
        Public Property senator_rank As Object
        Public Property startdate As String
        Public Property state As String
        Public Property title As String
        Public Property title_long As String
        Public Property website As String
    End Class

    Public Class Example
        Public Property meta As Meta
        Public Property objects As _Object()
    End Class

End Namespace
