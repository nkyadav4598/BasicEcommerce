<?php
include("session.php");
if(!isset($usr)) header("Location: login.php");
?>
<html>
<head>
<title>eRation</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width , initial-scale= 1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <link type="text/css" rel="stylesheet" href="amajoncss.css" />
 <style>
  div.kiri {
    float:left;
    height:600px;
    width:100%;
    background-color:#f1f1f1;
    margin-right:10px;
    position:relative;
  }
  div.kanan {

    background-image:url("img/sampul.jpg");
    border-radius:20px;
    width:1000px;
    height:300px;
    text-align:center;
    position:absolute;
    left:400px;
    bottom:300px;
    font-size:40px;
  }
 </style>
</head>
<body>
<div class="container-fluid">

  <div class="jumbotron">
  	<h1> eRation</h1>
  	<p>Rates as per government</p>
  	<form action="tampil.php" role="form" method="post" class="form-inline" >
  		<div class="input-group">
  			<input name="nama" type="name" class="form-control" placeholder="Search" size="50">
  		<div class="input-group-btn">
  			<button class="btn btn-danger" type="submit" name="submit" value="submit">Search</button>
  		</div>
  		</div>
    </form>
      <?php
      if (!isset($_SESSION["username"])) {
          echo "<p style='text-align:center; display:inline-block' onclick='kelogin()'>Login &nbsp; |</p>;      }
      else {
          echo "<p style='text-align:center; display:inline-block'>Welcome ";
          echo $usr;
          echo "!&nbsp; |</p><p style='text-align:center; display:inline-block' onclick='kelogout()'>&nbsp;Logout</p>";
      }
      ?>
  	</div>
  </div>

	<div class="navbar">
		<ul>
			<li><a class="active" href="home.php">Home</a></li>
			<li><a href="promo.php">Promo</a></li>
			<li><a href="#">Best Seller</a></li>
			<li><a href="add.php">My Things</a></li>
			<li><a href="Account.php">Account</a></li>
			<li><a href="chat.php">Chat</a></li>
			<li><a class="active b" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
		<ul>
	</div>

<div class="content2">
    <div class="kiri">
      <img src="img/owner.jpeg" style="width:300px; height:300px">
      <?php echo "<h2> About "; echo $usr; echo "</h2>"; ?>
      
      
    </div>

    <div class="clearfix"></div>
</div>
<div class="footer">
<p>&copy; 2018 |  eRation </p>
</div>
</body>
</html>
