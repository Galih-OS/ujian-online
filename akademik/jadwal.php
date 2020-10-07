<?php session_start();
include_once 'header.php';
?>
		<!-- Page Title Start -->		
		<div class="page-title-area shop-page">
			<div class="image-overlay"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-sm-6 col-xs-12">
						<span class="page-title">Jadwal Ujian</span>
					</div>					
					<div class="col-md-6 col-sm-6 col-xs-12">
						<div class="breadcumb">
							<ul>
								<li><a href="home.php">Jadwal Ujian</a></li>
								<!-- <li><a href="pengelolaan-website.php">Pengelolaan Website</a></li> -->		
							</ul>
						</div>		
					</div>
				</div>		
			</div>		
		</div>		
		<!-- Page Title End -->	
		
		<!-- Check Out Page Start -->
		<div class="check-out-page-area padding-tp-70-bt-50">
			<div class="container">
				<div class="row">
					<div class="title">
						<h1>Jadwal Ujian</h1>
						<div class="border-shape"></div>
					</div>
					<table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
						<thead>
							<tr>
								<th>No.</th>
								<th>Tanggal</th>
								<th>Kelas</th>
								<th>Tempat</th>
								<th>Sesi Ujian</th>
								<th>Waktu Mulai</th>
								<th>Durasi Ujian</th>
								<th>Mata Pelajaran</th>
							</tr>
						</thead>
						<tbody>
							<?php
							$no=1;
							$result = mysql_query("SELECT DISTINCT(u.XTglUjian), u.XKodeKelas, s.XRuang, u.XSesi, u.XJamUjian, u.XLamaUjian, m.XNamaMapel FROM cbt_ujian u, cbt_siswa s, cbt_mapel m, cbt_kelas k WHERE k.XKodeKelas=u.XKodeKelas AND m.XKodeMapel=u.XKodeMapel AND k.XKodeKelas=s.XKodeKelas AND s.XNomerUjian='$txtuser'") or die("e-Resource query error!");
							while($data=mysql_fetch_array($result)){?>
							<tr>
								<form class="form-signin" action="" method="POST">
								<td width="50px"><?php echo $no; $no++;?></td>
								<td><input hidden type='text' value='<?php echo $data[0];?>'><?php 
								$timestamp = strtotime($data[0]); 
								$new_date = date('d - F - Y', $timestamp);
								echo $new_date;
								?></input></td>
								<td><input hidden type='text' value='<?php echo $data[1];?>'><?php echo $data[1];?></input></td>
								<td><input hidden type='text' value='<?php echo $data[2];?>'><?php echo $data[2];?></input></td>
								<td><input hidden type='text' value='<?php echo $data[3];?>'><?php echo $data[3];?></input></td>
								<td><input hidden type='text' value='<?php echo $data[4];?>'><?php echo $data[4];?></input></td>
								<td><input hidden type='text' value='<?php echo $data[5];?>'><?php echo $data[5];?></input></td>
								<td><input hidden type='text' value='<?php echo $data[6];?>'><?php echo $data[6];?></input></td>
								</form>
							</tr>
							<?php	
							}
							?>
						</tbody>
					</table>
				</div><br><br><hr><br>
				<div class="row">		
					<div class="title">
						<h1>Back Up Jadwal Ujian</h1>
						<div class="border-shape"></div>
					</div>
					<table id="example1" class="table table-striped table-bordered" cellspacing="0" width="100%">
							<thead>
							<tr>
								<th>No.</th>
								<th>Keterangan</th>
								<th>Tanggal Upload</th>
								<th>Aksi</th>
							</tr>
						</thead>
						<tbody>
							<?php
							$no=1;
							$cari = mysql_query("SELECT * FROM cbt_upload_file WHERE XFolder = 'jadwal-tes' ORDER BY urut DESC") or die("e-Resource query error!");
							while($data=mysql_fetch_array($cari)){?>
							<tr>
								<form class="form-signin" action="" method="POST">
								<td width="50px"><?php echo $no; $no++;?></td>
								<td><input hidden type='text' name='nb' value='<?php echo $data['XCreated'];?>'><?php echo $data['XKeterangan'];?></input></td>
								<td><input hidden type='text' name='nb' value='<?php echo $data['XCreated'];?>'><?php
								$timestamp = strtotime($data['XCreated']); 
								$new_date = date('d - F - Y', $timestamp);
								echo $new_date;?></input></td>
								<td width="75px"><center><button name='download' class='btn btn-default btn-sm' title='Download' value='true'><a href="<?php echo '../panel/pages/jadwal-tes/'.$data['XNamaFile'];?>" target="_blank">Download</a></button></td>
							</form>
							</tr>
							<?php	
							}
							?>
						</tbody>
					</table>
				</div>		
			</div>	
		</div>
		<!-- Check Out Page End -->
<?php
	include 'footer.php';
?>