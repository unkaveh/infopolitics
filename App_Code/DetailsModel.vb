Imports Microsoft.VisualBasic
Imports Newtonsoft.Json


Namespace DetailsModel
    Public Class Source
        Public Property url As String
    End Class

    Public Class fifteentosixteen
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
        <JsonProperty("2015-2016")>
        Public Property fifteentosixteen As fifteentosixteen()
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
    End Class

    Public Class Office
        Public Property fax As Object
        Public Property name As String
        Public Property phone As String
        Public Property address As String
        Public Property type As String
        Public Property email As String
    End Class

    Public Class Detail
        <JsonProperty("last_name")>
        Public Property last_name As String
        Public Property updated_at As String
        Public Property sources As Source()
        Public Property full_name As String
        Public Property old_roles As OldRoles
        Public Property id As String
        Public Property first_name As String
        Public Property middle_name As String
        Public Property district As String
        Public Property office_address As String
        Public Property state As String
        Public Property votesmart_id As String
        Public Property chamber As String
        Public Property party As String
        Public Property email As String
        Public Property all_ids As String()
        Public Property leg_id As String
        Public Property active As Boolean
        Public Property transparencydata_id As String
        Public Property photo_url As String
        Public Property roles As Role()
        Public Property level As String
        Public Property url As String
        Public Property country As String
        Public Property created_at As String
        Public Property office_phone As String
        Public Property offices As Office()
        Public Property suffixes As String
    End Class


End Namespace
