Imports System
Imports System.Collections.Generic
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data.SqlClient
Imports System.Configuration
Partial Class SignUp
    Inherits System.Web.UI.Page
    Protected Sub ShowClientAlert(ByVal message As String)
        Dim script As String = "alert('" & message.Replace("'", "\'") & "');"
        ScriptManager.RegisterStartupScript(Me, Me.GetType(), "ShowAlert", script, True)
    End Sub

    Protected Sub ShowClientAlert(ByVal message As String, ByVal redirectUrl As String)
        Dim script As String =
        "alert('" & message.Replace("'", "\'") & "');" &
        "window.location.href = '" & redirectUrl & "';"
        ScriptManager.RegisterStartupScript(Me, Me.GetType(), "ShowAlertAndRedirect", script, True)
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load




    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles btnSignup.ServerClick
        Dim connectionString As String = ConfigurationManager.ConnectionStrings("MyDB").ConnectionString
        Using connection As New SqlConnection(connectionString)
            connection.Open()
            Try
                Dim Query As String = "INSERT INTO USER_MASTER(User_name,user_email,user_password) values('" & txtUpName.Value & "','" & txtUpEmail.Value & "','" & txtUpPassword.Value & "')"
                Using command As New SqlCommand(Query, connection)
                    command.ExecuteNonQuery()
                End Using
                ShowClientAlert("Sign Up Successful", "login.aspx")
            Catch ex As Exception
                ShowClientAlert("You are already registered", "login.aspx")
            End Try
            connection.Close()
        End Using

    End Sub
End Class
