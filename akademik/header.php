<?php
include "../config/server.php";
include "../ip.php";

$sqlcekdb = mysql_query("SELECT * FROM `cbt_siswa` limit 1");
if (!$sqlcekdb){
header('Location:login.php?salah=2');} 
	if(isset($_COOKIE['PESERTA'])&&isset($_COOKIE['KUNCI'])){
	$user = "$_COOKIE[PESERTA]";
	$pass = "$_COOKIE[KUNCI]";
	$txtuser = $user;
	$txtpass = $pass;
	} else {	 
	//$user = "$_REQUEST[UserName]";
	$txtuser = str_replace(" ","",$_REQUEST['UserName']);
	$txtpass = str_replace(" ","",$_REQUEST['Password']);
	setcookie('PESERTA',$txtuser);
	setcookie('KUNCI',$txtpass);
	$user = "$txtuser";
	$pass = "$txtpass";
}

$sqllogin = mysql_query("SELECT * FROM  `cbt_siswa` WHERE XNomerUjian = '$txtuser' and XPassword = '$txtpass'");
$sis = mysql_fetch_array($sqllogin);

$val_siswa = $sis['XNamaSiswa'];
$xjeniskelamin= $sis['XJenisKelamin']; 
$xkelz = $sis['XKodeKelas'];
$xjurz = $sis['XKodeJurusan']; 
$xsesi = $sis['XSesi'];

$c = mysql_query("SELECT * FROM cbt_setid WHERE XStatus='1'");
$d = mysql_fetch_array($c);
$ta = $d[1];

$a = mysql_query("SELECT * FROM cbt_nilai WHERE XNomerUjian='$txtuser' AND XSetId='$ta'");
$b = mysql_fetch_array($a);
?>
<html dir="ltr" lang="en">
<head>
	<!-- Meta Tags -->	
	<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
	<meta http-equiv="content-type" content="text/php; charset=UTF-8"/>
	<meta name="description" content="EduLight - University and Education php5 Template">
	<meta name="keywords" content="business, course, education, event, shopping, classes, e-learning, instructor, lessons, Online Learning, school, studying, teaching, tutoring, university">
	<meta name="author" content="a3z_themes">
	<!-- Title -->
	<title>SMK IPIEMS Surabaya</title>	
	<!-- Favicon 
	<link rel="icon" type="image/png" href="img/logo-stikom.PNG">-->
	<!-- Apple Touch Icons -->
	<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
	<link rel="apple-touch-icon" sizes="57x57" href="img/apple-touch-icon-57x57.png">
	<link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="76x76" href="img/apple-touch-icon-76x76.png">
	<link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">
	<link rel="apple-touch-icon" sizes="120x120" href="img/apple-touch-icon-120x120.png">
	<link rel="apple-touch-icon" sizes="144x144" href="img/apple-touch-icon-144x144.png">
	<link rel="apple-touch-icon" sizes="152x152" href="img/apple-touch-icon-152x152.png">
	<link rel="apple-touch-icon" sizes="180x180" href="img/apple-touch-icon-180x180.png">
	
	<link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.15/css/dataTables.bootstrap.min.css">
	
	<!-- Stylesheets 
	<link rel="stylesheet" href="css/bootstrap.min.css">-->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<!--<link rel="stylesheet" href="css/animate.css"> penyakit-->
	<link rel="stylesheet" href="css/magnific-popup.css">
	<link rel="stylesheet" href="css/meanmenu.min.css">
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/responsive.css">
	<link rel="stylesheet" href="style.css">
	
	<script src="//cdn.ckeditor.com/4.5.10/standard/ckeditor.js"></script>
	<!-- php5 shim and Respond.js for IE8 support of php5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/php5shiv/3.7.2/php5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	<div id="preloader">
		<div id="status"></div>
	</div>	

	<!-- Header Start -->
	<header>
		<div id="sticky" class="header">
			<div class="container">
				<div class="row">
					<div class="col-md-3 col-sm-12">
						<div class="logo">
							<a href="home.php"><img src="../images/1.png" alt=""></a>
						</div>
					</div>
					<div class="col-md-9 col-sm-12">
						<div class="nav-menu">

							<!-- Nav Start -->
							<nav>
								<ul>
									<li><a href="home.php">Home</a></li>
									<li><a href="e-resources.php">e-resources</a></li>
									<li><a href="laporan.php">Laporan Nilai</a></li>
									<li><a href="jadwal.php">Jadwal Ujian</a></li>
									<li><a href="review.php">Review Hasil dan Soal</a></li>
									<li><a href="#"><?php echo $val_siswa; ?><span class="nav-arrow"><i class="fa fa-angle-down" aria-hidden="true"></i></span></a>
										<ul>
											<li><a href="../logout.php">Log Out</a></li>
										</ul>
									</li>
								</ul>
							</nav>
							<!-- Nav End -->
						</div>			
					</div>
				</div>
			</div>
		</div>
		<!-- Mobile start -->
		<div class="mobile-menu-area">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="mobile-menu">
							<nav id="mobile-nav">
								<ul>
									<li><a href="home.php">Home</a></li>
									<li><a href="e-resources.php">e-resources</a></li>
									<li><a href="laporan.php">Laporan Nilai</a></li>
									<li><a href="jadwal.php">Jadwal Ujian</a></li>
									<li><a href="review.php">Review Hasil dan Soal</a></li>
									<li><a href="#"><?php
										include '../../include/connect.php';
										$query = "SELECT nama_dosen FROM dosen WHERE nik='".$_SESSION['nik']."'";
										$exec = mysql_query($query);
										$res = mysql_fetch_array($exec);
										$nama_dosen = $res[0];
										echo $nama_dosen;
										?><span class="nav-arrow"><i class="fa fa-angle-down" aria-hidden="true"></i></span></a>
										<ul>
											<li><a href="logout.php">Log Out</a></li>
										</ul>
									</li>
								</ul>
							</nav>
						</div>                  
					</div>
				</div>
			</div>
		</div>
		<!-- Mobile End -->					
	</header>
	<!-- Header End -->	