
Partial Class Logout
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        Session.Remove("user_name") ' Clear the session variable
        Response.Redirect("Login.aspx")
    End Sub

End Class
