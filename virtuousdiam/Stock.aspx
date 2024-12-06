<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Stock.aspx.vb" Inherits="Stock" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="www.root/CSS/stylefile.css" rel="stylesheet" />
    <script src="www.root/JS/javafile.js"></script>
    <style>
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
    <form id="form1" runat="server" style=" ">
        <div>
             <asp:GridView ID="GridItem" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
