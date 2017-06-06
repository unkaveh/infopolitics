Imports Microsoft.AspNet.Identity
Imports Microsoft.AspNet.Identity.EntityFramework
Imports Microsoft.Owin.Security
Imports System
Imports System.Web.UI
Imports System.Linq
Imports System.Web
Imports Owin
Imports System.Web.UI.Page


Public Class MasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        If Not IsPostBack Then
            Dim thisUserHere = New System.Web.UI.Page
            If thisUserHere.User.Identity.IsAuthenticated Then
                'StatusText.Text = String.Format("Hello {0}!!", thisUserHere.User.Identity.GetUserName())
                'LoginStatus.Visible = True
                'LogoutButton.Visible = True
                WalterBlack.Visible = False
                WalterWhite.Visible = True
                StatusLoginText.Text = String.Format("{0}", thisUserHere.User.Identity.GetUserName())
            Else
                LoginForm.Visible = True
            End If
        End If
    End Sub

    Protected Sub SignIn(sender As Object, e As EventArgs)
        If (userName.Text = "admin" And Password.Text = "adminadmin") Then
            Response.Redirect("TaBills.aspx")
        Else
            Dim userStore = New UserStore(Of IdentityUser)()
            Dim userManager = New UserManager(Of IdentityUser)(userStore)
            Dim user = userManager.Find(userName.Text, Password.Text)

            If user IsNot Nothing Then
                Dim authenticationManager = HttpContext.Current.GetOwinContext().Authentication
                Dim userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie)
                Dim authProp As New AuthenticationProperties()
                authProp.AllowRefresh = True
                authProp.IsPersistent = False
                authenticationManager.SignIn(authProp, userIdentity)
                Response.Redirect("Profile.aspx")
            Else
                StatusText.Text = "Invalid username or password."
                LoginStatus.Visible = True
            End If
        End If
    End Sub

    Protected Sub SignOut(sender As Object, e As EventArgs)
        Dim authenticationManager = HttpContext.Current.GetOwinContext().Authentication
        authenticationManager.SignOut()
        Response.Redirect("~/Login.aspx")
    End Sub
End Class

