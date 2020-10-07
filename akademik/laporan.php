<?php session_start();
include_once 'header.php';
?>
		<!-- Page Title Start -->		
		<div class="page-title-area shop-page">
			<div class="image-overlay"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-sm-6 col-xs-12">
						<span class="page-title">Histori Nilai</span>
					</div>					
					<div class="col-md-6 col-sm-6 col-xs-12">
						<div class="breadcumb">
							<ul>
								<li><a href="home.php">Histori Nilai</a></li>
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
					<ul class="nav nav-tabs" id="myTab">
						<li class="active"><a data-toggle="tab" href="#histori">Histori</a></li>
						<li><a data-toggle="tab" href="#semester">Hasil Semester</a></li>
					</ul>
					<div class="tab-content"><br>
						<div id="histori" class="tab-pane fade in active">
							<div class="title">
								<center><h1>Tahun Ajaran <?php echo "$b[XSetId]"; ?><br><br>Semester 1 (Ganjil)</h1></center>
								<div class="border-shape"></div>
							</div>
							<div class="col-md-6">
								<center><h2>Ujian Tengah Semester (UTS)</h2></center><hr>
								<table class="table table-striped table-bordered" cellspacing="0" width="100%">
									<thead>
										<tr>
											<th>No.</th>
											<th>Mata Pelajaran</th>
											<th>Nilai</th>
										</tr>
									</thead>
									<tbody>
										<?php
										$no=1;
										$cari = $result = mysql_query("SELECT DISTINCT(n.XNomerUjian), n.XTotalNilai, m.XNamaMapel FROM cbt_nilai n, cbt_mapel m WHERE m.XKodeMapel=n.XKodeMapel AND n.XSemester='1' AND n.XKodeUjian='UTS' AND n.XNomerUjian='$txtuser' AND XSetId='$ta' ORDER BY `n`.`Urut` ASC");
										$hitung=mysql_num_rows($cari);
										if($hitung){
											while($data=mysql_fetch_array($cari)){?>
										<tr>
											<form class="form-signin" action="" method="POST">
											<td width="40px"><?php echo $no; $no++;?></td>
											<td><input hidden type='text' name='nm' value='<?php echo $data[2];?>'><?php echo $data[2];?></input></td>
											<td><input hidden type='text' name='nm' value='<?php echo $data[1];?>'><?php echo $data[1];?></input></td>
										</form>
										</tr>
										<?php	
										}
										}else{
											echo "<tr><td colspan=\"4\"><h3><center>Data tidak ada</center></h3></td></tr>";
										}
										?>
									</tbody>
								</table><br>
							</div>
							<div class="col-md-6">
								<center><h2>Ujian Akhir Semester (UAS)</h2></center><hr>
								<table class="table table-striped table-bordered" cellspacing="0" width="100%">
									<thead>
										<tr>
											<th>No.</th>
											<th>Mata Pelajaran</th>
											<th>Nilai</th>
										</tr>
									</thead>
									<tbody>
										<?php
										$no=1;
										$cari = $result = mysql_query("SELECT DISTINCT(n.XNomerUjian), n.XTotalNilai, m.XNamaMapel FROM cbt_nilai n, cbt_mapel m WHERE m.XKodeMapel=n.XKodeMapel AND n.XSemester='1' AND n.XKodeUjian='UAS' AND n.XNomerUjian='$txtuser' AND XSetId='$ta' ORDER BY `n`.`Urut` ASC");
										$hitung=mysql_num_rows($cari);
										if($hitung){
											while($data=mysql_fetch_array($cari)){?>
										<tr>
											<form class="form-signin" action="" method="POST">
											<td width="40px"><?php echo $no; $no++;?></td>
											<td><input hidden type='text' name='nm' value='<?php echo $data[2];?>'><?php echo $data[2];?></input></td>
											<td><input hidden type='text' name='nm' value='<?php echo $data[1];?>'><?php echo $data[1];?></input></td>
										</form>
										</tr>
										<?php	
										}
										}else{
											echo "<tr><td colspan=\"4\"><h3><center>Data tidak ada</center></h3></td></tr>";
										}
										?>
									</tbody>
								</table><br>
							</div>
							<div class="title">
								<center><h1><br><br><br><br><br><br><br><br>Semester 2 (Genap)</h1></center>
								<div class="border-shape"></div>
							</div>
							<div class="col-md-6">
								<center><h2>Ujian Tengah Semester (UTS)</h2></center><hr>
								<table class="table table-striped table-bordered" cellspacing="0" width="100%">
									<thead>
										<tr>
											<th>No.</th>
											<th>Mata Pelajaran</th>
											<th>Nilai</th>
										</tr>
									</thead>
									<tbody>
										<?php
										$no=1;
										$cari = $result = mysql_query("SELECT DISTINCT(n.XNomerUjian), n.XTotalNilai, m.XNamaMapel FROM cbt_nilai n, cbt_mapel m WHERE m.XKodeMapel=n.XKodeMapel AND n.XSemester='2' AND n.XKodeUjian='UTS' AND n.XNomerUjian='$txtuser' AND XSetId='$ta' ORDER BY `n`.`Urut` ASC");
										$hitung=mysql_num_rows($cari);
										if($hitung){
											while($data=mysql_fetch_array($cari)){?>
										<tr>
											<form class="form-signin" action="" method="POST">
											<td width="40px"><?php echo $no; $no++;?></td>
											<td><input hidden type='text' name='nm' value='<?php echo $data[2];?>'><?php echo $data[2];?></input></td>
											<td><input hidden type='text' name='nm' value='<?php echo $data[1];?>'><?php echo $data[1];?></input></td>
										</form>
										</tr>
										<?php	
										}
										}else{
											echo "<tr><td colspan=\"4\"><h3><center>Data tidak ada</center></h3></td></tr>";
										}
										?>
									</tbody>
								</table><br>
							</div>
							<div class="col-md-6">
								<center><h2>Ujian Akhir Semester (UAS)</h2></center><hr>
								<table class="table table-striped table-bordered" cellspacing="0" width="100%">
									<thead>
										<tr>
											<th>No.</th>
											<th>Mata Pelajaran</th>
											<th>Nilai</th>
										</tr>
									</thead>
									<tbody>
										<?php
										$no=1;
										$cari = $result = mysql_query("SELECT DISTINCT(n.XNomerUjian), n.XTotalNilai, m.XNamaMapel FROM cbt_nilai n, cbt_mapel m WHERE m.XKodeMapel=n.XKodeMapel AND n.XSemester='2' AND n.XKodeUjian='UAS' AND n.XNomerUjian='$txtuser' AND XSetId='$ta' ORDER BY `n`.`Urut` ASC");
										$hitung=mysql_num_rows($cari);
										if($hitung){
											while($data=mysql_fetch_array($cari)){?>
										<tr>
											<form class="form-signin" action="" method="POST">
											<td width="40px"><?php echo $no; $no++;?></td>
											<td><input hidden type='text' name='nm' value='<?php echo $data[2];?>'><?php echo $data[2];?></input></td>
											<td><input hidden type='text' name='nm' value='<?php echo $data[1];?>'><?php echo $data[1];?></input></td>
										</form>
										</tr>
										<?php	
										}
										}else{
											echo "<tr><td colspan=\"4\"><h3><center>Data tidak ada</center></h3></td></tr>";
										}
										?>
									</tbody>
								</table><br>
							</div>
						</div>
						<div id="semester" class="tab-pane fade">
							<form action="" method="GET">
								<div class="col-md-2">
									<select type="submit" name="semester" onchange="this.form.submit()" class="form-control">
										<option value="">-- Pilih Semester --</option>
										<?php
											$con = mysql_connect("localhost","root","");
											$db = mysql_select_db("beesmartv3",$con);
											$get = mysql_query("SELECT XKodeAY FROM cbt_setid");
											while($row = mysql_fetch_assoc($get))
											{?>
												<option value="<?php echo($row['XKodeAY'])?>">
													<?php echo($row['XKodeAY'])?>
												</option>
											<?php
											}?>
									</select>
								</div>
							</form>
						<?php if(isset($_GET['semester'])) 
						{?><br><br><hr><br>
							<div class="title">
								<center><h1>Tahun Ajaran <?php echo $_GET['semester']; ?><br><br>Semester 1 (Ganjil)</h1></center>
								<div class="border-shape"></div>
							</div>
							<div class="col-md-6">
								<center><h2>Ujian Tengah Semester (UTS)</h2></center><hr>
								<table class="table table-striped table-bordered" cellspacing="0" width="100%">
									<thead>
										<tr>
											<th>No.</th>
											<th>Mata Pelajaran</th>
											<th>Nilai</th>
										</tr>
									</thead>
									<tbody>
										<?php
										$no=1;
										$cari = $result = mysql_query("SELECT DISTINCT(n.XNomerUjian), n.XTotalNilai, m.XNamaMapel FROM cbt_nilai n, cbt_mapel m WHERE m.XKodeMapel=n.XKodeMapel AND n.XSemester='1' AND n.XKodeUjian='UTS' AND n.XNomerUjian='$txtuser' AND XSetId='".$_GET['semester']."' ORDER BY `n`.`Urut` ASC");
										$hitung=mysql_num_rows($cari);
										if($hitung){
											while($data=mysql_fetch_array($cari)){?>
										<tr>
											<form class="form-signin" action="" method="POST">
											<td width="40px"><?php echo $no; $no++;?></td>
											<td><input hidden type='text' name='nm' value='<?php echo $data[2];?>'><?php echo $data[2];?></input></td>
											<td><input hidden type='text' name='nm' value='<?php echo $data[1];?>'><?php echo $data[1];?></input></td>
										</form>
										</tr>
										<?php	
										}
										}else{
											echo "<tr><td colspan=\"4\"><h3><center>Data tidak ada</center></h3></td></tr>";
										}
										?>
									</tbody>
								</table><br>
							</div>
							<div class="col-md-6">
								<center><h2>Ujian Akhir Semester (UAS)</h2></center><hr>
								<table class="table table-striped table-bordered" cellspacing="0" width="100%">
									<thead>
										<tr>
											<th>No.</th>
											<th>Mata Pelajaran</th>
											<th>Nilai</th>
										</tr>
									</thead>
									<tbody>
										<?php
										$no=1;
										$cari = $result = mysql_query("SELECT DISTINCT(n.XNomerUjian), n.XTotalNilai, m.XNamaMapel FROM cbt_nilai n, cbt_mapel m WHERE m.XKodeMapel=n.XKodeMapel AND n.XSemester='1' AND n.XKodeUjian='UAS' AND n.XNomerUjian='$txtuser' AND XSetId='".$_GET['semester']."' ORDER BY `n`.`Urut` ASC");
										$hitung=mysql_num_rows($cari);
										if($hitung){
											while($data=mysql_fetch_array($cari)){?>
										<tr>
											<form class="form-signin" action="" method="POST">
											<td width="40px"><?php echo $no; $no++;?></td>
											<td><input hidden type='text' name='nm' value='<?php echo $data[2];?>'><?php echo $data[2];?></input></td>
											<td><input hidden type='text' name='nm' value='<?php echo $data[1];?>'><?php echo $data[1];?></input></td>
										</form>
										</tr>
										<?php	
										}
										}else{
											echo "<tr><td colspan=\"4\"><h3><center>Data tidak ada</center></h3></td></tr>";
										}
										?>
									</tbody>
								</table><br>
							</div>
							<div class="title">
								<center><h1><br><br><br><br><br><br><br><br>Semester 2 (Genap)</h1></center>
								<div class="border-shape"></div>
							</div>
							<div class="col-md-6">
								<center><h2>Ujian Tengah Semester (UTS)</h2></center><hr>
								<table class="table table-striped table-bordered" cellspacing="0" width="100%">
									<thead>
										<tr>
											<th>No.</th>
											<th>Mata Pelajaran</th>
											<th>Nilai</th>
										</tr>
									</thead>
									<tbody>
										<?php
										$no=1;
										$cari = $result = mysql_query("SELECT DISTINCT(n.XNomerUjian), n.XTotalNilai, m.XNamaMapel FROM cbt_nilai n, cbt_mapel m WHERE m.XKodeMapel=n.XKodeMapel AND n.XSemester='2' AND n.XKodeUjian='UTS' AND n.XNomerUjian='$txtuser' AND XSetId='".$_GET['semester']."' ORDER BY `n`.`Urut` ASC");
										$hitung=mysql_num_rows($cari);
										if($hitung){
											while($data=mysql_fetch_array($cari)){?>
										<tr>
											<form class="form-signin" action="" method="POST">
											<td width="40px"><?php echo $no; $no++;?></td>
											<td><input hidden type='text' name='nm' value='<?php echo $data[2];?>'><?php echo $data[2];?></input></td>
											<td><input hidden type='text' name='nm' value='<?php echo $data[1];?>'><?php echo $data[1];?></input></td>
										</form>
										</tr>
										<?php	
										}
										}else{
											echo "<tr><td colspan=\"4\"><h3><center>Data tidak ada</center></h3></td></tr>";
										}
										?>
									</tbody>
								</table><br>
							</div>
							<div class="col-md-6">
								<center><h2>Ujian Akhir Semester (UAS)</h2></center><hr>
								<table class="table table-striped table-bordered" cellspacing="0" width="100%">
									<thead>
										<tr>
											<th>No.</th>
											<th>Mata Pelajaran</th>
											<th>Nilai</th>
										</tr>
									</thead>
									<tbody>
										<?php
										$no=1;
										$cari = $result = mysql_query("SELECT DISTINCT(n.XNomerUjian), n.XTotalNilai, m.XNamaMapel FROM cbt_nilai n, cbt_mapel m WHERE m.XKodeMapel=n.XKodeMapel AND n.XSemester='2' AND n.XKodeUjian='UAS' AND n.XNomerUjian='$txtuser' AND XSetId='".$_GET['semester']."' ORDER BY `n`.`Urut` ASC");
										$hitung=mysql_num_rows($cari);
										if($hitung){
											while($data=mysql_fetch_array($cari)){?>
										<tr>
											<form class="form-signin" action="" method="POST">
											<td width="40px"><?php echo $no; $no++;?></td>
											<td><input hidden type='text' name='nm' value='<?php echo $data[2];?>'><?php echo $data[2];?></input></td>
											<td><input hidden type='text' name='nm' value='<?php echo $data[1];?>'><?php echo $data[1];?></input></td>
										</form>
										</tr>
										<?php	
										}
										}else{
											echo "<tr><td colspan=\"4\"><h3><center>Data tidak ada</center></h3></td></tr>";
										}
										?>
									</tbody>
								</table><br>
							</div>
						<?php
						}?>
						</div>
					</div>		
				</div>	
			</div>
		</div>
		<!-- Check Out Page End -->
<?php
	include 'footer.php';
?>