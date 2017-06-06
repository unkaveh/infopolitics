Imports Microsoft.VisualBasic

Namespace GeoEncodeModel


    Public Class AddressComponent
        Public Property long_name As String
        Public Property short_name As String
        Public Property types As String()
    End Class

    Public Class Location
        Public Property lat As Double
        Public Property lng As Double
    End Class

    Public Class Northeast
        Public Property lat As Double
        Public Property lng As Double
    End Class

    Public Class Southwest
        Public Property lat As Double
        Public Property lng As Double
    End Class

    Public Class Viewport
        Public Property northeast As Northeast
        Public Property southwest As Southwest
    End Class

    Public Class Geometry
        Public Property location As Location
        Public Property location_type As String
        Public Property viewport As Viewport
    End Class

    Public Class Result
        Public Property address_components As AddressComponent()
        Public Property formatted_address As String
        Public Property geometry As Geometry
        Public Property place_id As String
        Public Property types As String()
    End Class

    Public Class SearchResults
        Public Property results As Result()
        Public Property status As String
    End Class
End Namespace