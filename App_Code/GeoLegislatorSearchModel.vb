Imports Microsoft.VisualBasic
Imports Newtonsoft.Json

Namespace GeoLegislatorSearchModel
    Public Class Source
        Public Property url As String
    End Class

    Public Class twothousandthirteenandfourteen20132014
        Public Property term As String
        Public Property end_date As Object
        Public Property district As String
        Public Property chamber As String
        Public Property state As String
        Public Property party As String
        Public Property type As String
        Public Property start_date As Object
        Public Property committee_id As String
        Public Property subcommittee As Object
        Public Property committee As String
        Public Property position As String
    End Class

    Public Class twothousandfifteenandsixteen20152016
        Public Property term As String
        Public Property end_date As Object
        Public Property district As String
        Public Property chamber As String
        Public Property state As String
        Public Property party As String
        Public Property type As String
        Public Property start_date As Object
        Public Property committee_id As String
        Public Property subcommittee As Object
        Public Property committee As String
        Public Property position As String
    End Class

    Public Class OldRoles
        <JsonProperty("2013-2014")>
        Public Property twothousandthirteenandfourteen20132014 As twothousandthirteenandfourteen20132014()
        <JsonProperty("2015-2016")>
        Public Property twothousandfifteenandsixteen20152016 As twothousandfifteenandsixteen20152016()
    End Class

    Public Class Role
        Public Property term As String
        Public Property end_date As Object
        Public Property district As String
        Public Property chamber As String
        Public Property state As String
        Public Property party As String
        Public Property type As String
        Public Property start_date As Object
        Public Property committee_id As String
        Public Property subcommittee As Object
        Public Property committee As String
        Public Property position As String
    End Class

    Public Class Office
        Public Property fax As Object
        Public Property name As String
        Public Property phone As String
        Public Property address As String
        Public Property type As String
        Public Property email As String
    End Class

    Public Class GeoLegislatorSearch
        Public Property last_name As String
        Public Property updated_at As String
        <JsonProperty("+notice")>
        Public Property notice As Object
        Public Property sources As Source()
        Public Property full_name As String
        Public Property old_roles As OldRoles
        Public Property id As String
        Public Property first_name As String
        Public Property middle_name As String
        Public Property district As String
        Public Property state As String
        Public Property boundary_id As String
        Public Property email As String
        Public Property all_ids As String()
        Public Property leg_id As String
        Public Property party As String
        Public Property active As Boolean
        Public Property transparencydata_id As String
        Public Property photo_url As String
        Public Property roles As Role()
        Public Property url As String
        Public Property created_at As String
        Public Property chamber As String
        Public Property offices As Office()
        Public Property suffixes As String
    End Class
End Namespace
