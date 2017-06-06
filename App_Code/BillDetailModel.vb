Imports Microsoft.VisualBasic
Imports Newtonsoft.Json

Public Class BillDetailModel
    Public Class RelatedEntity
        Public Property type As String
        Public Property name As String
        Public Property id As String
    End Class

    Public Class Action
        Public Property related_entities As RelatedEntity()
        Public Property actor As String
        Public Property _date As String
        Public Property type As String()
        Public Property action As String
        Public Property related_votes As String()
    End Class

    Public Class Source
        Public Property url As String
    End Class


    Public Class YesVote
        Public Property leg_id As Object
        Public Property name As String
    End Class

    Public Class OtherVote
        Public Property leg_id As Object
        Public Property name As String
    End Class

    Public Class Vote
        Public Property sources As Source()

        'Public Property _session As String
        Public Property id As String
        Public Property other_count As Integer
        Public Property _session As String
        Public Property state As String
        Public Property passed As Boolean
        'Public Property _bill_id As String
        Public Property type As String
        Public Property no_count As Integer
        Public Property yes_votes As YesVote()
        Public Property _date As String
        Public Property no_votes As Object()
        Public Property _bill_chamber As String
        Public Property other_votes As OtherVote()
        Public Property yes_count As Integer
        Public Property motion As String
        Public Property chamber As String
        Public Property vote_id As String
        Public Property bill_id As String
    End Class

    Public Class Sponsor
        Public Property leg_id As String
        Public Property type As String
        Public Property name As String
        Public Property committee_id As Object
    End Class

    Public Class ActionDates
        Public Property passed_upper As String
        Public Property passed_lower As String
        Public Property last As String
        Public Property signed As String
        Public Property first As String
    End Class

    Public Class Version
        Public Property mimetype As String
        Public Property name As String
        Public Property url As String
        Public Property doc_id As String
    End Class

    Public Class BillDetail
        Public Property actions As Action()
        Public Property sources As Source()
        Public Property session As String
        Public Property id As String
        Public Property votes As Vote()
        Public Property documents As Object()
        Public Property title As String
        Public Property scraped_subjects As String()

        Public Property alternate_titles As Object()
        Public Property companions As Object()
        Public Property all_ids As String()
        Public Property state As String
        Public Property subjects As Object()
        Public Property type As String()
        <JsonProperty(PropertyName:="+description")>
        Public Property description As String
        Public Property sponsors As Sponsor()
        Public Property updated_at As String
        Public Property action_dates As ActionDates
        Public Property created_at As String
        Public Property versions As Version()
        Public Property chamber As String
        Public Property bill_id As String
    End Class
End Class
