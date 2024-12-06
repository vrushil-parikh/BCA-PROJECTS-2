Imports System.Data.SqlClient
Imports System.Web.Script.Serialization
Imports System.Web.Services

Partial Class admin_sales
    Inherits System.Web.UI.Page
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
        DisplayData()
    End Sub

    Sub DisplayData()
        Dim connectionString As String = ConfigurationManager.ConnectionStrings("MyDB").ConnectionString
        Dim query As String = "SELECT * FROM SALES"
        Using connection As New SqlConnection(connectionString)
            Using command As New SqlCommand(query, connection)
                connection.Open()
                Dim reader As SqlDataReader = command.ExecuteReader()
                GridItem.DataSource = reader
                GridItem.DataBind()
                reader.Close()
            End Using
        End Using
    End Sub


    Sub show()
        Dim connectionString As String = ConfigurationManager.ConnectionStrings("MyDB").ConnectionString
        Dim query As String = "SELECT ITEM_NAME,COST,QUNTITY,TOTAL FROM SOLDLIST WHERE SALE_ID=" & SaleIdTextBox.Text
        Using connection As New SqlConnection(connectionString)
            Using command As New SqlCommand(query, connection)
                connection.Open()
                Dim reader As SqlDataReader = command.ExecuteReader()
                SOLDDATA.DataSource = reader
                SOLDDATA.DataBind()
                reader.Close()
            End Using
        End Using
    End Sub

    Protected Sub ShowButton_Click(sender As Object, e As EventArgs) Handles ShowButton.Click
        show()
    End Sub
End Class
