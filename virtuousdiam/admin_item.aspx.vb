
Imports System.Data.SqlClient

Partial Class admin_item
    Inherits System.Web.UI.Page

    Dim user_name As String
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


        user_name = Session("user_name")
        Displaydata()
    End Sub

    Protected Sub ShowClientAlert(ByVal message As String)
        Dim script As String = "alert('" & message.Replace("'", "\'") & "');"
        ScriptManager.RegisterStartupScript(Me, Me.GetType(), "ShowAlert", script, True)
    End Sub
    Protected Sub Displaydata()
        Dim connectionString As String = ConfigurationManager.ConnectionStrings("MyDB").ConnectionString
        Using connection As New SqlConnection(connectionString)
            Dim query As String = "SELECT * FROM ITEM"
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










    Protected Sub AddButton_Click(sender As Object, e As EventArgs) Handles AddButton.Click
        Dim connectionString As String = ConfigurationManager.ConnectionStrings("MyDb").ConnectionString
        Dim query As String = "INSERT INTO ITEM(PRODUCT_NAME,TYPE,COST,DESCRIPTION) VALUES('" & ItemNameTextBox.Text & "','" & TypeTextBox.Text & "'," & CostTextBox.Text & ",'" & DesTextBox.Text & "')"
        Using connection As New SqlConnection(connectionString)
            Using command As New SqlCommand(query, connection)
                Try
                    connection.Open()
                    command.ExecuteNonQuery()
                    Displaydata()
                    Clear()
                Catch ex As Exception
                    ShowClientAlert(ex.ToString)
                End Try

            End Using

        End Using


    End Sub

    Protected Sub UpdateButton_Click(sender As Object, e As EventArgs) Handles UpdateButton.Click
        Dim connectionString As String = ConfigurationManager.ConnectionStrings("MyDb").ConnectionString
        Dim query As String = "UPDATE ITEM SET TYPE='" & TypeTextBox.Text & "',COST=" & CostTextBox.Text & ",DESCRIPTION='" & DesTextBox.Text & "' WHERE PRODUCT_NAME='" & ItemNameTextBox.Text & "'"
        Using connection As New SqlConnection(connectionString)
            Using command As New SqlCommand(query, connection)
                Try
                    connection.Open()
                    command.ExecuteNonQuery()
                    Displaydata()
                    Clear()
                Catch ex As Exception
                    ShowClientAlert(ex.ToString)
                End Try

            End Using

        End Using

    End Sub


    Sub Clear()
        ItemNameTextBox.Text = ""
        TypeTextBox.Text = ""
        CostTextBox.Text = ""
        DesTextBox.Text = ""
    End Sub

    Protected Sub ClearButton_Click(sender As Object, e As EventArgs) Handles ClearButton.Click
        Clear()
    End Sub

    Protected Sub RemoveButton_Click(sender As Object, e As EventArgs) Handles RemoveButton.Click
        Dim connectionString As String = ConfigurationManager.ConnectionStrings("MyDb").ConnectionString
        Dim query As String = "DELETE FROM ITEM WHERE PRODUCT_NAME='" & ItemNameTextBox.Text & "'"
        Using connection As New SqlConnection(connectionString)
            Using command As New SqlCommand(query, connection)
                Try
                    connection.Open()
                    command.ExecuteNonQuery()
                    Displaydata()
                    Clear()
                Catch ex As Exception
                    ShowClientAlert(ex.ToString)
                End Try

            End Using

        End Using
    End Sub
End Class
