Imports Microsoft.AspNet.Identity
Imports Microsoft.AspNet.Identity.EntityFramework
Imports System
Imports System.Linq

Partial Public Class Register
    Inherits System.Web.UI.Page
    Dim conn As New Data.SqlClient.SqlConnection("Data Source=(LocalDb)\v11.0;AttachDbFilename=|DataDirectory|\UserProfileDB.mdf;Initial Catalog=UserProfileDB;Integrated Security=True")
    Protected Sub CreateUser_Click(sender As Object, e As EventArgs)
        Dim userStore = New UserStore(Of IdentityUser)()
        Dim manager = New UserManager(Of IdentityUser)(userStore)
        Dim user = New IdentityUser() With {.UserName = userName.Text, .Email = Email.Text}
        Dim result As IdentityResult = manager.Create(user, Password.Text)

        If result.Succeeded Then
            StatusMessage.Text = String.Format("User {0} was created successfully!", user.UserName)
            conn.Open()
            Dim cmd As New Data.SqlClient.SqlCommand(("INSERT INTO UserAccess (Username, FirstName, LastName, Address, Political, Email) VALUES ('" & userName.Text & "','" & txtFirst.Text & "','" & txtLast.Text & "','" & txtAddress.Text & "','" & txtPol.Text & "','" & Email.Text & "');INSERT INTO SavedLeg (UserName) VALUES ('" & userName.Text & "');"), conn)
            cmd.ExecuteNonQuery()
            conn.Close()

            Response.Redirect("Login.aspx")
        Else
            StatusMessage.Text = result.Errors.FirstOrDefault()
        End If
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        btnSub.Focus()
    End Sub
End Class
