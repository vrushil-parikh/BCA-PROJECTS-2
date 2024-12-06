
Partial Class _Default
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Session("user_name") IsNot Nothing Then
            loginLink.HRef = "Logout.aspx" ' Set the link to the logout page
            loginLink.InnerText = "Logout" ' Change the link text
        Else
            loginLink.HRef = "Login.aspx" ' Set the link to the login page
            loginLink.InnerText = "Login" ' Change the link text
        End If
    End Sub

End Class
