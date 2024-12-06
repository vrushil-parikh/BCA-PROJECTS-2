
Imports System.Data.SqlClient

Partial Class Stock
    Inherits System.Web.UI.Page

    Protected Sub ShowClientAlert(ByVal message As String)
        Dim script As String = "alert('" & message.Replace("'", "\'") & "');"
        ScriptManager.RegisterStartupScript(Me, Me.GetType(), "ShowAlert", script, True)
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Session("user_name") Is Nothing Then
            Response.Redirect("Login.aspx") ' Redirect to the login page
        Else
            ' Continue loading the page since the user is logged in
            ' You can also use the Session("username") value if needed
        End If

        If Session("user_name") IsNot Nothing Then
            LoginLink.HRef = "Logout.aspx" ' Set the link to the logout page
            LoginLink.InnerText = "Logout" ' Change the link text
        Else
            LoginLink.HRef = "Login.aspx" ' Set the link to the login page
            LoginLink.InnerText = "Login" ' Change the link text
        End If

        Displaydata()
    End Sub
    Protected Sub Displaydata()
        Dim connectionString As String = ConfigurationManager.ConnectionStrings("MyDB").ConnectionString
        Using connection As New SqlConnection(connectionString)
            Dim query As String = "SELECT * FROM STOCK"
            Using command As New SqlCommand(query, connection)
                connection.Open()
                Try
                    Dim reader As SqlDataReader = command.ExecuteReader()
                    GridItem.DataSource = reader
                    GridItem.DataBind()
                    reader.Close()
                Catch ex As Exception
                    ShowClientAlert(ex.ToString)
                End Try
            End Using
            connection.Close()
        End Using
    End Sub
End Class
