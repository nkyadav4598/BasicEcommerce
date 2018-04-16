<?php
include("connect.php");
include("session.php");
if ($_SERVER["REQUEST_METHOD"] == "POST" && empty($_FILES) && empty($_POST)) {
  $error = ini_get("post_max_filesize");
  $pesan = "Ukuran total file telah melebihi batas maksimum {$error} ";
  echo $pesan;
}

if (isset($_POST["submit"])) {
  $jenis_error = array (
      0 => "Berhasil",
      1 => "Ukuran file melebihi 2 MB",
      2 => "Ukuran file melebihi batas maksimal",
      3 => "FIle hanya terupload sebagian",
      4 => "Tidak ada file yang terupload",
      6 => "Server error",
      7 => "Server error",
      8 => "Server error"
    );
    $error = $_FILES["file_gambar"]["error"];
    $pesan_error = $jenis_error[$error];
    echo $pesan_error;

    $temp = $_FILES["file_gambar"]["tmp_name"];
    $nama_file = $_FILES["file_gambar"]["name"];
    $flag = false;

    $query = "SELECT * FROM promo";
    $result = mysqli_query($connectdb, $query);
    $cnt = mysqli_num_rows($result);
    $cnt = $cnt + 1;
    $ext = "promo".$cnt.".jpg";

    $check = getimagesize($_FILES["file_gambar"]["tmp_name"]);
    if (!$check) {
      echo "Upload jenis gambar yang sesuai permintaan <br>";
      $flag = true;
    }
    if (!$flag AND move_uploaded_file($temp, "img/$ext")) {
      echo "File sukses diupload";
      $nama_brg = $_POST["nama_barang"];
      $harga = $_POST["harga"];
      $query = "INSERT INTO promo VALUES ($cnt,'$nama_brg', $harga,'$ext')";
      $result = mysqli_query($connectdb, $query);
      if ($result) header("promo.php");
      else echo "GAGAL TAMBAH";
    } else echo "File gagal diupload";

}
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

 </style>
</head>
<body>
<div class="container-fluid">

  <div class="jumbotron">
  	<h1> eRation </h1>
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
			<li><a href="best.php">Best Seller</a></li>
			<li><a href="add.php">My Things</a></li>
			<li><a href="Account.php">Account</a></li>
			<li><a href="chat.php">Chat</a></li>
			<li><a class="active b" href="cart.php"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
		<ul>
	</div>

<div class="content2">

    <h1>Insert Items </h1>
    <p>NB: Item will enter in Promo category </p>
    <form action="add.php" method="post" enctype="multipart/form-data">
    <p><label for="nama_barang">Name of goods : </label>
        <input type="text" name="nama_barang" id="nama_barang">
    </p>
    <p><label for="harga">price : </label>
        <input type="text" name="harga" id="harga">
    </p>
    <p><input type="file" name="file_gambar" accept = ".jpg, .png, .gif"></p>
    <input type="submit" name="submit" value="upload" >
  </form>
  </body>
  </html>

</div>
<div class="footer">
<p>&copy; 2018 |  eRation </p>
</div>
</body>
</html>
