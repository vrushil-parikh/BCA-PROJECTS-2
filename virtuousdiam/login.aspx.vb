Imports System
Imports System.Collections.Generic
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Web.SessionState

Partial Class login
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



    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles btnSignIn.ServerClick
        Dim connectionString As String = ConfigurationManager.ConnectionStrings("MyDB").ConnectionString

        Using connection As New SqlConnection(connectionString)
            connection.Open()

            Dim adminQuery As String = "SELECT COUNT(*) FROM ADMIN_MASTER WHERE ADMIN_EMAIL='" & txtInEmail.Value & "'  AND ADMIN_PASSWORD='" & txtInPassword.Value & "'"
            Dim userQuery As String = "SELECT COUNT(*) FROM USER_MASTER WHERE user_email='" & txtInEmail.Value & "' AND user_password ='" & txtInPassword.Value & "'"

            Using adminCommand As New SqlCommand(adminQuery, connection)

                Using userCommand As New SqlCommand(userQuery, connection)


                    Try
                        Dim adminResult As Integer = Convert.ToInt32(adminCommand.ExecuteScalar())

                        If adminResult > 0 Then
                            ' Admin credentials are valid
                            Session("user_name") = "Admin"
                            ShowClientAlert("Admin Sign In Successful", "ADMIN_HOME.aspx")
                        Else
                            ' Check user credentials
                            Dim userResult As Integer = Convert.ToInt32(userCommand.ExecuteScalar())

                            If userResult > 0 Then
                                ' User credentials are valid
                                Dim userNameQuery As String = "SELECT user_name FROM USER_MASTER WHERE user_email='" & txtInEmail.Value & "'"
                                Using userNameCommand As New SqlCommand(userNameQuery, connection)
                                    Dim userName As String = TryCast(userNameCommand.ExecuteScalar(), String)
                                    Session("user_name") = userName
                                    ShowClientAlert("User Sign In Successful: " & userName, "Default.aspx")
                                End Using
                            Else
                                ' Invalid credentials
                                ShowClientAlert("Invalid Email Or Password")
                            End If
                        End If
                    Catch ex As Exception
                        ShowClientAlert(ex.ToString())
                    End Try
                End Using
            End Using
        End Using


    End Sub

End Class
