<?php
	require 'fungsi.php';
	$data_mobil = query("SELECT * FROM mobil ORDER BY NO_PELANGGAN");

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>SI Bengkel</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>

	<div class="topnav cf" id="myTopnav">
			<a href="index.php" class="active">Home</a>
			<a href="input_data.php">Insert Data Baru</a>
			<h6>SI BENGKEL: TABEL MOBIL</h6>
	</div>


	<div class="container">
		

		<div class="konten">
			<h1 style="text-align: center;">Tabel Mobil</h1>

			<table border="1" cellpadding="10" cellspacing="0">

				<tr class="judul_tabel">
					<th>No.</th>
					<th>PLAT MOBIL</th>
					<th>NO. PELANGGAN</th>
					<th>NAMA MOBIL</th>
					<th>MERK MOBIL</th>
					<th>AKSI</th>
				</tr>

				<?php $i = 1; ?>
				<?php foreach($data_mobil as $row) : ?>
				<tr>
					<td><?php echo $i; ?></td>
					<td><?php echo $row["PLAT_MOBIL"] ?></td>
					<td><?php echo $row["NO_PELANGGAN"] ?></td>
					<td><?php echo $row["NAMA_MOBIL"] ?></td>
					<td><?php echo $row["MERK_MOBIL"] ?></td>
					<td>
						<a href="ubah.php?PLAT_MOBIL=<?php echo $row["PLAT_MOBIL"] ?>">UPDATE</a> |
						<a href="hapus.php?PLAT_MOBIL=<?php echo $row["PLAT_MOBIL"] ?>"
						onclick="return confirm('Apakah anda yakin ingin menghapus data ini?');">DELETE</a>
					</td>
				</tr>
				<?php $i++; ?>
				<?php endforeach; ?>

			</table>
		</div>


	</div>

	
</body>
</html>