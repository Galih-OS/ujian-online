<?php session_start();
include_once 'header.php';
?>
		<!-- Page Title Start -->		
		<div class="page-title-area shop-page">
			<div class="image-overlay"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-sm-6 col-xs-12">
						<span class="page-title">E-Resources</span>
					</div>					
					<div class="col-md-6 col-sm-6 col-xs-12">
						<div class="breadcumb">
							<ul>
								<li><a href="home.php">E-Resources</a></li>
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
						<li class="active"><a data-toggle="tab" href="#dokumen">Dokumen</a></li>
						<li><a data-toggle="tab" href="#gambar">Gambar</a></li>
						<li><a data-toggle="tab" href="#audio">Audio</a></li>
						<li><a data-toggle="tab" href="#video">Video</a></li>
					</ul>
					<div class="tab-content"><br>
						<div id="dokumen" class="tab-pane fade in active">
							<div class="title">
								<h1>e-Resources Document</h1>
								<div class="border-shape"></div>
							</div>
							<table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
								<thead>
									<tr>
										<th>No.</th>
										<th>Nama File</th>
										<th>Jenis File</th>
										<th>Tanggal Upload</th>
										<th>Aksi</th>
									</tr>
								</thead>
								<tbody>
									<?php
									$no=1;
									$result = mysql_query("SELECT * FROM cbt_upload_file WHERE XFolder='document'");
									while($data=mysql_fetch_array($result)){?>
									<tr>
										<form class="form-signin" action="" method="POST">
											<td width="50px"><?php echo $no; $no++;?></td>
											<td><input hidden type='text' value='<?php echo $data[3];?>'><?php echo $data[3];?></input></td>
											<td><input hidden type='text' value='<?php echo $data[2];?>'><?php echo ucwords($data[2]);?></input></td>
											<td><input hidden type='text' value='<?php echo $data[4];?>'><?php echo $data[4];?></input></td>
											<td width="75px"><center><button name='download' class='btn btn-default btn-sm' title='Download' value='true'><a href="<?php echo '../document/'.$data[1];?>" target="_blank">Download</a></button></td>
										</form>
									</tr>
									<?php	
									}
									?>
								</tbody>
							</table>
						</div>
						<div id="gambar" class="tab-pane fade">
							<div class="title">
								<h1>e-Resources Gambar</h1>
								<div class="border-shape"></div>
							</div>
							<table id="example1" class="table table-striped table-bordered" cellspacing="0" width="100%">
								<thead>
									<tr>
										<th>No.</th>
										<th>Nama File</th>
										<th>Jenis File</th>
										<th>Aksi</th>
									</tr>
								</thead>
								<tbody>
									<?php
									$no=1;
									$result = mysql_query("SELECT * FROM cbt_upload_file WHERE XFolder='pictures'");
									while($data=mysql_fetch_array($result)){?>
									<tr>
										<form class="form-signin" action="" method="POST">
											<td width="50px"><?php echo $no; $no++;?></td>
											<td><input hidden type='text' value='<?php echo $data[1];?>'><img src="../pictures/<?php echo $data[1];?>" width="70px"></input></td>
											<td><input hidden type='text' value='<?php echo $data[2];?>'><?php echo ucwords($data[2]);?></input></td>
											<td width="75px"><center><button name='download' class='btn btn-default btn-sm' title='Download' value='true'><a href="<?php echo '../pictures/'.$data[1];?>" target="_blank">Download</a></button></td>
										</form>
									</tr>
									<?php	
									}
									?>
								</tbody>
							</table>
						</div>
						<div id="audio" class="tab-pane fade">
							<div class="title">
								<h1>e-Resources Audio</h1>
								<div class="border-shape"></div>
							</div>
							<table id="example2" class="table table-striped table-bordered" cellspacing="0" width="100%">
								<thead>
									<tr>
										<th>No.</th>
										<th>Nama File</th>
										<th>Jenis File</th>
										<th>Tanggal Upload</th>
										<th>Aksi</th>
									</tr>
								</thead>
								<tbody>
									<?php
									$no=1;
									$result = mysql_query("SELECT * FROM cbt_upload_file WHERE XFolder='audio'");
									while($data=mysql_fetch_array($result)){?>
									<tr>
										<form class="form-signin" action="" method="POST">
											<td width="50px"><?php echo $no; $no++;?></td>
											<td><input hidden type='text' value='<?php echo $data[3];?>'><?php echo $data[3];?></input></td>
											<td><input hidden type='text' value='<?php echo $data[2];?>'><?php echo ucwords($data[2]);?></input></td>
											<td><input hidden type='text' value='<?php echo $data[4];?>'><?php echo $data[4];?></input></td>
											<td width="75px"><center><button name='download' class='btn btn-default btn-sm' title='Download' value='true'><a href="<?php echo '../audio/'.$data[1];?>" target="_blank">Download</a></button></td>
										</form>
									</tr>
									<?php	
									}
									?>
								</tbody>
							</table>
						</div>
						<div id="video" class="tab-pane fade">
							<div class="title">
								<h1>e-Resources Video</h1>
								<div class="border-shape"></div>
							</div>
							<table id="example3" class="table table-striped table-bordered" cellspacing="0" width="100%">
								<thead>
									<tr>
										<th>No.</th>
										<th>Nama File</th>
										<th>Jenis File</th>
										<th>Tanggal Upload</th>
										<th>Aksi</th>
									</tr>
								</thead>
								<tbody>
									<?php
									$no=1;
									$result = mysql_query("SELECT * FROM cbt_upload_file WHERE XFolder='video'");
									while($data=mysql_fetch_array($result)){?>
									<tr>
										<form class="form-signin" action="" method="POST">
											<td width="50px"><?php echo $no; $no++;?></td>
											<td><input hidden type='text' value='<?php echo $data[3];?>'><?php echo $data[3];?></input></td>
											<td><input hidden type='text' value='<?php echo $data[2];?>'><?php echo ucwords($data[2]);?></input></td>
											<td><input hidden type='text' value='<?php echo $data[4];?>'><?php echo $data[4];?></input></td>
											<td width="75px"><center><button name='download' class='btn btn-default btn-sm' title='Download' value='true'><a href="<?php echo '../video/'.$data[1];?>" target="_blank">Download</a></button></td>
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
		</div>
		<!-- Check Out Page End -->
<?php
	include 'footer.php';
?>