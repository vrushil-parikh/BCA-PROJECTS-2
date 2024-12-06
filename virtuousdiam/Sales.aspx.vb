
Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports System.ServiceModel.Channels

Partial Class Sales
    Inherits System.Web.UI.Page

    Dim user_name As String

    Protected Sub Displaydata()
        Dim connectionString As String = ConfigurationManager.ConnectionStrings("MyDB").ConnectionString
        Using connection As New SqlConnection(connectionString)
            Dim query As String = "SELECT ID,ITEM_NAME,COST,QUNTITY,TOTAL FROM SALEITEMLIST WHERE USER_NAME='" & user_name & "'"
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
            query = "SELECT COST FROM ITEM WHERE PRODUCT_NAME = '" & DropdownItem.SelectedValue & "'"
            Using comman As New SqlCommand(query, connection)
                Try
                    Dim cost As String = comman.ExecuteScalar()
                    CostTextBox.Text = cost
                Catch ex As Exception
                    ShowClientAlert(ex.ToString)
                End Try
            End Using
            connection.Close()
        End Using
    End Sub
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
        If Not IsPostBack Then
            PopulateDropDownList()
        End If
        user_name = Session("user_name")
        Displaydata()
    End Sub

    Private Sub PopulateDropDownList()
        Dim connectionString As String = ConfigurationManager.ConnectionStrings("MyDB").ConnectionString
        Dim query As String = "SELECT * FROM STOCK"

        Using connection As New SqlConnection(connectionString)
            Dim command As New SqlCommand(query, connection)

            connection.Open()
            Dim reader As SqlDataReader = command.ExecuteReader()

            DropdownItem.DataSource = reader
            DropdownItem.DataBind()
            reader.Close()
        End Using
    End Sub

    Protected Sub AddButton_Click(ByVal sender As Object, ByVal e As EventArgs)
        Dim connectionString As String = ConfigurationManager.ConnectionStrings("MyDB").ConnectionString
        Dim maxquntity As Integer
        Dim quntity As String = QuantityTextBox.Text
        Dim reader As SqlDataReader

        ' Fetching the max quntity
        Using connection As New SqlConnection(connectionString)

            Dim query As String = "SELECT QUNTITY FROM STOCK WHERE ITEM_NAME = '" & DropdownItem.SelectedValue & "'"
            Using Command As New SqlCommand(query, connection)
                connection.Open()
                maxquntity = Command.ExecuteScalar()
            End Using
            connection.Close()
        End Using


        If quntity > maxquntity Then    'check if the quntity is available or not

            ShowClientAlert("Out Of Stock")

        Else    'if quntity available

            'check if the item is already added to the saleitemlist
            Using connection As New SqlConnection(connectionString)
                Dim query As String = "SELECT * FROM SALEITEMlIST WHERE ITEM_NAME = '" & DropdownItem.SelectedValue & "' AND USER_NAME='" & user_name & "'"
                Using Command As New SqlCommand(query, connection)
                    connection.Open()
                    reader = Command.ExecuteReader()

                    If reader.HasRows Then  ' if item is already added to the list
                        Using innerConnection As New SqlConnection(connectionString)
                            Dim insertQuery As String = "UPDATE SALEITEMLIST SET QUNTITY = QUNTITY + " & QuantityTextBox.Text & "  WHERE ITEM_NAME='" & DropdownItem.SelectedValue & "' AND USER_NAME='" & user_name & "'"
                            Using insertCommand As New SqlCommand(insertQuery, innerConnection)
                                innerConnection.Open()
                                insertCommand.ExecuteNonQuery()
                            End Using
                            innerConnection.Close()
                        End Using
                        Using innerConnection As New SqlConnection(connectionString)
                            Dim insertQuery As String = "UPDATE STOCK SET QUNTITY = QUNTITY - " & QuantityTextBox.Text & " WHERE ITEM_NAME = '" & DropdownItem.SelectedValue & "'"
                            Using insertCommand As New SqlCommand(insertQuery, innerConnection)
                                innerConnection.Open()
                                insertCommand.ExecuteNonQuery()
                            End Using
                            innerConnection.Close()
                        End Using
                    Else  ' if new item is selected
                        Using innerConnection As New SqlConnection(connectionString)
                            Dim insertQuery As String = "INSERT INTO SALEITEMLIST(USER_NAME,ITEM_NAME,COST,QUNTITY) VALUES('" & user_name & "','" & DropdownItem.SelectedValue & "'," & CostTextBox.Text & "," & QuantityTextBox.Text & ")"
                            Using insertCommand As New SqlCommand(insertQuery, innerConnection)
                                innerConnection.Open()
                                insertCommand.ExecuteNonQuery()
                            End Using
                            innerConnection.Close()
                        End Using

                        Using innerConnection As New SqlConnection(connectionString)
                            Dim insertQuery As String = "UPDATE STOCK SET QUNTITY = QUNTITY - " & QuantityTextBox.Text & " WHERE ITEM_NAME = '" & DropdownItem.SelectedValue & "'"
                            Using insertCommand As New SqlCommand(insertQuery, innerConnection)
                                innerConnection.Open()
                                insertCommand.ExecuteNonQuery()
                            End Using
                            innerConnection.Close()
                        End Using

                    End If

                End Using
                connection.Close()
            End Using
            Response.Redirect(Request.RawUrl)




        End If


    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs)
        Dim connectionString As String = ConfigurationManager.ConnectionStrings("MyDB").ConnectionString
        Using connection As New SqlConnection(connectionString)
            Dim query As String = "SELECT COST FROM ITEM WHERE PRODUCT_NAME = '" & DropdownItem.SelectedValue & "'"
            Using command As New SqlCommand(query, connection)
                connection.Open()
                Try
                    Dim cost As String = command.ExecuteScalar()
                    CostTextBox.Text = cost
                Catch ex As Exception
                    ShowClientAlert(ex.ToString)
                End Try
            End Using
            connection.Close()
        End Using



    End Sub



    Protected Sub RemoveButton_Click(sender As Object, e As EventArgs) Handles RemoveButton.Click

        Dim connectionString As String = ConfigurationManager.ConnectionStrings("MyDB").ConnectionString
        Dim return_quntity As Integer
        Using connection As New SqlConnection(connectionString)
            Dim query As String = "SELECT QUNTITY FROM SALEITEMLIST WHERE ITEM_NAME='" & DropdownItem.SelectedValue & "' AND USER_NAME='" & user_name & "'"
            Using command As New SqlCommand(query, connection)
                Try
                    connection.Open()
                    return_quntity = command.ExecuteScalar()
                Catch ex As Exception
                    ShowClientAlert(ex.ToString)
                End Try
            End Using
            connection.Close()
        End Using

        Using connection As New SqlConnection(connectionString)
            Dim query As String = "UPDATE STOCK SET QUNTITY= QUNTITY + "& return_quntity &" WHERE ITEM_NAME='" & DropdownItem.SelectedValue & "'"
            Using command As New SqlCommand(query, connection)
                Try
                    connection.Open()
                    command.ExecuteNonQuery()
                Catch ex As Exception
                    ShowClientAlert(ex.ToString)
                End Try
            End Using
            connection.Close()
        End Using



        Using connection As New SqlConnection(connectionString)
            Dim query As String = "DELETE FROM SALEITEMLIST WHERE ITEM_NAME='" & DropdownItem.SelectedValue & "' AND USER_NAME='" & user_name & "'"
            Using command As New SqlCommand(query, connection)
                Try
                    connection.Open()
                    command.ExecuteNonQuery()

                Catch ex As Exception
                    ShowClientAlert(ex.ToString)
                End Try
            End Using
            connection.Close()
        End Using
        Response.Redirect(Request.RawUrl)
    End Sub


    Protected Sub CheckOutButton_Click(sender As Object, e As EventArgs) Handles CheckOutButton.Click
        Dim connectionString As String = ConfigurationManager.ConnectionStrings("MyDB").ConnectionString
        Dim total_amt As Integer
        Dim soldId As Integer
        Using connection As New SqlConnection(connectionString)
            Dim query As String = "SELECT SUM(TOTAL) FROM SALEITEMLIST WHERE USER_NAME = '" & user_name & "'"
            Using command As New SqlCommand(query, connection)
                Try
                    connection.Open()
                    total_amt = command.ExecuteScalar

                Catch ex As Exception
                    ShowClientAlert(ex.ToString)
                End Try
            End Using
            connection.Close()
        End Using

        Using connection As New SqlConnection(connectionString)
            Dim query As String = "INSERT INTO SALES(USER_NAME,TOTAL_AMT) VALUES('" & user_name & "'," & total_amt & "); SELECT SCOPE_IDENTITY();"
            Using command As New SqlCommand(query, connection)
                Try
                    connection.Open()
                    soldId = command.ExecuteScalar

                Catch ex As Exception
                    ShowClientAlert(ex.ToString)
                End Try
            End Using
            connection.Close()
        End Using


        Using sourceConnection As New SqlConnection(connectionString)
            Dim selectQuery As String = "SELECT * FROM SALEITEMLIST WHERE USER_NAME='" & user_name & "'"
            sourceConnection.Open()

            Using selectCommand As New SqlCommand(selectQuery, sourceConnection)
                Using reader As SqlDataReader = selectCommand.ExecuteReader()
                    ' Create a new connection for inserting data
                    Using destinationConnection As New SqlConnection(connectionString)
                        Dim insertQuery As String
                        destinationConnection.Open()

                        While reader.Read()
                            Dim username As String = reader("USER_NAME").ToString()
                            Dim itemname As String = reader("ITEM_NAME").ToString()

                            Dim cost As Integer = Convert.ToInt32(reader("COST"))
                            Dim sold_quntity As Integer = Convert.ToInt32(reader("QUNTITY"))
                            Dim total As Integer = Convert.ToInt32(reader("TOTAL"))
                            insertQuery = "INSERT INTO SOLDLIST(USER_NAME,ITEM_NAME,COST,QUNTITY,TOTAL,SALE_ID) VALUES('" & user_name & "','" & itemname & "'," & cost & "," & sold_quntity & "," & total & "," & soldId & ")"

                            Using insertCommand As New SqlCommand(insertQuery, destinationConnection)
                                insertCommand.ExecuteNonQuery()
                            End Using
                        End While
                    End Using
                End Using
            End Using
        End Using

        Using connection As New SqlConnection(connectionString)
            Dim query As String = "DELETE FROM SALEITEMLIST WHERE USER_NAME='" & user_name & "'"
            Using command As New SqlCommand(query, connection)
                Try
                    connection.Open()
                    command.ExecuteNonQuery()

                Catch ex As Exception
                    ShowClientAlert(ex.ToString)
                End Try
            End Using
            connection.Close()
        End Using

        Response.Redirect(Request.RawUrl)
    End Sub
End Class
