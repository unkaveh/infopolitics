Imports Microsoft.AspNet.Identity
Imports Microsoft.Owin
Imports Microsoft.Owin.Security.Cookies
Imports Owin

<Assembly: OwinStartup(GetType(Startup))> 


Public Class Startup
    Public Sub Configuration(app As IAppBuilder)
        Dim AppOptions As New CookieAuthenticationOptions()
        AppOptions.AuthenticationType = DefaultAuthenticationTypes.ApplicationCookie
        AppOptions.CookieName = "InfoLogin"
        'AppOptions.LoginPath = New PathString("/Default")
        app.UseCookieAuthentication(AppOptions)
    End Sub
End Class
