<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Sales.aspx.vb" Inherits="Sales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href="www.root/CSS/stylefile.css" rel="stylesheet" />
    <script src="www.root/JS/javafile.js"></script>
    <title></title>
   <style>
        

/* Style for the form elements */
.form-container {
    margin-left :20px;
    margin-top:60px;
    display: flex;
    align-items: center;
    gap: 10px;
}

.form-container select,
.form-container input[type="text"],
.form-container input[type="button"] {
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 4px;
}

.form-container input[type="button"] {
    background-color: #007bff;
    color: #fff;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.form-container input[type="button"]:hover {
    background-color: #0056b3;
}

        /* Style for the entire GridView */
#GridItem {
    margin-top : 57px; 
    border-collapse: collapse;
    width: 100%;
}

/* Style for header row */
#GridItem th {
    background-color: #f2f2f2;
    font-weight: bold;
    padding: 8px;
    text-align: center;
}

/* Style for data rows */
#GridItem td {
    padding: 8px;
    border-bottom: 1px solid #ddd;
    text-align: center;
}

/* Alternating row style */
#GridItem tr:nth-child(odd) {
    background-color: #f2f2f2;
}


   </style>
</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
  <div class="container">
    <a class="navbar-brand" href="Default.aspx" >Quick Mart</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item active">
          <a class="nav-link" href="Items.aspx">Items</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Stock.aspx">Stock</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Sales.aspx">Cart</a>
        </li>
        <li class="nav-item">
            <a id="LoginLink" runat="server" class="nav-link" href="login.aspx">Login</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
    <form id="form1" runat="server">
         <asp:ScriptManager ID="ScriptManager1" runat="server" />
     <div class="form-container">
        <asp:DropDownList ID="DropdownItem" runat="server" DataTextField="ITEM_NAME" DataValueField="ITEM_NAME"  OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
        <asp:TextBox ID="CostTextBox" runat="server" placeholder="Cost" ReadOnly="true"></asp:TextBox>
         <asp:TextBox ID="QuantityTextBox" runat="server" placeholder="Quantity"></asp:TextBox>
        <asp:Button ID="AddButton" runat="server" Text="Add" OnClick="AddButton_Click" />
         <asp:Button ID="RemoveButton" runat="server" Text="Remove" />
    </div>
    <hr />
     <div>
             <asp:GridView ID="GridItem" runat="server"></asp:GridView>
        </div>
        <div class="form-container">
            <asp:Button ID="CheckOutButton" runat="server" Text="Check Out" Style="position: absolute; bottom: 30px; right: 30px;" />
        </div> 
    </form>
  

</body>
</html>
