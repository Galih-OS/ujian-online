<?php
include 'header.php';
 if(isset($_COOKIE['PESERTA'])&&isset($_COOKIE['KUNCI'])){
include "../config/server.php";
 $user = "$_COOKIE[PESERTA]";
 $pass = "$_COOKIE[KUNCI]";
 $txtuser = $user;
 $txtpass = $pass;
$sql1 = mysql_query("SELECT XKodeKelas FROM cbt_siswa WHERE XNomerUjian='$txtuser'");
$xadm1 = mysql_fetch_array($sql1);
$a= $xadm1['XKodeKelas'];

 } else {	 
 //$user = "$_REQUEST[UserName]";
 $txtuser = str_replace(" ","",$_REQUEST['UserName']);
 $txtpass = str_replace(" ","",$_REQUEST['Password']);
 setcookie('PESERTA',$txtuser);
 setcookie('KUNCI',$txtpass);
 $user = "$txtuser";
 $pass = "$txtpass";
 }
?>
	<!-- Page Title Start -->		
		<div class="page-title-area shop-page">
			<div class="image-overlay"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-sm-6 col-xs-12">
						<span class="page-title">Review dan Hasil Soal</span>
					</div>					
					<div class="col-md-6 col-sm-6 col-xs-12">
						<div class="breadcumb">
							<ul>
								<li><a href="home.php">Review dan Hasil Soal</a></li>
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
					<table width="100%" class="table table-striped table-bordered table-hover" id="example">
						<thead>
							<tr>
								<th width="7%">No.</th>
								<th width="10%">Kode</th>
								<th width="27%">Mata Pelajaran</th>
								<th width="8%">Soal</th>	
								<th width="8%">Kelas</th>
								<th width="8%">Guru</th>                                           
								<th width="8%">Rekap</th>    
								<th width="8%">Hasil</th>                                                                              
								<th width="8%">Status</th>
							</tr>
						</thead>
                        <tbody>
						<?php
						$no = 1;
						$sql = mysql_query("select p.*, m.*, p.Urut as Urutan, p.XKodeKelas as kokel FROM cbt_paketsoal p, cbt_mapel m WHERE m.XKodeMapel = p.XKodeMapel AND p.XKodeKelas='$a' ORDER BY p.Urut desc");				
						while($s = mysql_fetch_array($sql)){
							$sqlsoal = mysql_num_rows(mysql_query("select * from cbt_soal where XKodeSoal = '$s[XKodeSoal]'"));
							$sqljawab = mysql_num_rows(mysql_query("select * from cbt_jawaban where XKodeSoal = '$s[XKodeSoal]'"));			
							$sqlpakai = mysql_num_rows(mysql_query("select * from cbt_nilai where XKodeSoal = '$s[XKodeSoal]'"));
							$sqlpakai2 = mysql_num_rows(mysql_query("select * from cbt_siswa_ujian where XKodeSoal = '$s[XKodeSoal]' and XStatusUjian = '1'"));
							if($sqlsoal<1){$kata="disabled";$alink="";}  else {$kata=""; $alink = "rekapexcel.php?soal=$s[XKodeSoal]&mapel=$s[XKodeMapel]&kelas=$s[XKodeKelas]";}	
							if($sqlpakai2>0){$katapakai="disabled";$alink="";}  else {$katapakai="";$alink = "rekapexcel.php?soal=$s[XKodeSoal]&mapel=$s[XKodeMapel]&kelas=$s[XKodeKelas]";}
							if($sqljawab<1){$katapakai="disabled";$alink="";}  else {$katapakai="";$alink = "rekapexcel.php?soal=$s[XKodeSoal]&mapel=$s[XKodeMapel]&kelas=$s[XKodeKelas]";}
							if($sqlpakai2>0){$katapakai2="disabled";$alink2="";}  else {$katapakai2="";$alink2 = "hasil.php?soal=$s[XKodeSoal]&no=$txtuser";}								
						?>
							<tr>
								<td><input type="hidden" value="<?php echo $s['Urutan']; ?>" id="txt_mapel<?php echo $s['Urutan']; ?>"><?php echo $no.'.'; $no++; ?></td>
								<td><?php echo $s['XKodeSoal'];?></td>
								<td><?php echo $s['XNamaMapel']; ?></td>
								<td><?php echo "$sqlsoal (". $s['XJumPilihan']." Pilihan)"; ?></td>                                           
								<td><?php echo $s['kokel']." | ".$s['XKodeJurusan']."."; ?></td> 
								<td align="center">
								<?php // if($s['XAcakSoal']=="Y"){ echo "Acak";} else {echo "Tidak";} ?>                                        
								<?php echo "$s[XGuru]"; ?>
								</td>                                    
								<td align="center"><a href=<?php echo $alink; ?> target="_blank">
								<button type="button" class="btn btn-info btn-small" <?php echo $katapakai; ?>><i class="fa fa-list-alt"></i></button></a></td>											
								<td align="center"><a href=<?php echo $alink2; ?>>
								<button type="button" class="btn btn-primary btn-small" <?php echo $katapakai2; ?>><i class="fa fa-bar-chart-o"></i></button></a></td>
								<td>													
								<?php if($s['XStatusSoal']=="Y"){ ?>
								Aktif
								<?php } else { ?>
								Non Aktif                                        
								<?php } ?>
								</td>     
							</tr>
						<?php } ?>
						</tbody>
					</table>
				</div>		
			</div>	
		</div>
		<!-- Check Out Page End -->
<?php
	include 'footer.php';
?>