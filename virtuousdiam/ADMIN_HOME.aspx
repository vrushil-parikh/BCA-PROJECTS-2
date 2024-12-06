<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ADMIN_HOME.aspx.vb" Inherits="ADMIN_HOME" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <link href="www.root/CSS/stylefile.css" rel="stylesheet" />
    <script src="www.root/JS/javafile.js"></script>
   
    <style>
.carousel-item {
  height: 100vh;
  min-height: 350px;
  background: no-repeat center center scroll;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}
</style>
</head>
<body style ="overflow :hidden ">
   
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

<header>

  <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
      <div class="carousel-item active" style="background-image: url('www.root/images/slide1.jpg')">
        <div class="carousel-caption">
         <h5>QuickMart</h5>
          <p>Get best Items with Ease Online</p>
        </div>
      </div>
      <div class="carousel-item" style="background-image: url('www.root/images/slide2.jpg')">
        <div class="carousel-caption">
           <h5>Online Purchase with COD</h5>
          <p>Select Your Items and Send Request in no time Online</p>
        </div>
      </div>
      <div class="carousel-item" style="background-image: url('www.root/images/slide3.jpg')">
        <div class="carousel-caption">
             <h5>Get Items with zero Efforts</h5>
          <p>The Orders will be deliverd to you in no time </p>
        </div>
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
</header>

<!-- Page Content -->
<section class="py-5">
  <div class="container">

       
  </div>
</section>


</body>
</html>
