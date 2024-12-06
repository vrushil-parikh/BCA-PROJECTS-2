<%@ Page Language="VB" AutoEventWireup="false" CodeFile="admin_stock.aspx.vb" Inherits="admin_stock" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <link href="www.root/CSS/stylefile.css" rel="stylesheet" />
    <script src="www.root/JS/javafile.js"></script>
 <style>
        /* Style for the entire GridView */
.form-container {
    padding-left:20px;
    padding-top:60px;
    display: flex;
    align-items:center;
    flex-flow:wrap;  
    gap: 10px;
    max-width:100vw; 
}
.form-container-2 {
    padding:20px;
    display: flex;
    align-items:center;
    flex-flow:wrap;  
    gap: 10px;
    max-width:100vw; 
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
    height:100%;
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
    <a class="navbar-brand" href="ADMIN_HOME.aspx">Quick Mart</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item active">
          <a class="nav-link" href="admin_item.aspx">Items</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="admin_stock.aspx">Stock</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="admin_sales.aspx">Sales</a>
        </li>
        <li class="nav-item">
          <a id="LoginLink" runat="server" class="nav-link" href="login.aspx">Login</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
  <form id="form1" runat="server">
       <div class="form-container">
        <asp:TextBox ID="ItemNameTextBox" runat="server" placeholder="Item Name" ></asp:TextBox>                  
        <asp:TextBox ID="QuntityTextBox" runat="server" placeholder="Quntity"></asp:TextBox>
           <asp:TextBox ID="DesTextBox" runat="server" placeholder="Description"></asp:TextBox></div> 
       <div class="form-container-2">
           <asp:Button ID="AddButton" runat="server" Text="Add" />
           <asp:Button ID="RemoveButton" runat="server" Text="Remove" />
           <asp:Button ID="UpdateButton" runat="server" Text="Update" />
           <asp:Button ID="ClearButton" runat="server" Text="Clear" />
    </div>
    <hr />
     <div>
             <asp:GridView ID="GridItem" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
