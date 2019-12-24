<?php
	require 'fungsi.php';
     $data_mobil = query("SELECT * FROM mobil");
     $pelanggan = query("SELECT * FROM pelanggan");

     $PLAT_MOBIL = $_GET["PLAT_MOBIL"];
     $mobil_ubah = query("SELECT * FROM mobil WHERE PLAT_MOBIL = '$PLAT_MOBIL'")[0];

     if( isset($_POST["submit"]) ){

          if( ubah($_POST) > 0 ){

               echo "
                    <script>
                         alert('Data berhasil diupdate!');
                         document.location.href = 'index.php';
                    </script>
               ";

          } else{

                    echo "
                         <script>
                              alert('Data gagal diupdate!');
                              document.location.href = 'index.php';
                         </script>
                    ";
     
               }

          

     }

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
			<a href="index.php">Home</a>
			<a href="input_data.php">Insert Data Baru</a>
			<h6>SI BENGKEL: TABEL MOBIL</h6>
	</div>


	<div class="container" style="height: 768px">
		

		<div class="konten">
               <h1 style="text-align: center;">Update Data Mobil</h1>
               
               <form action="" method="post">
                    <ul class="form-style-1">
                         <li>
                              <label for="plat">Plat Mobil <span class="required">*</span></label>
                              <input type="text" name="plat" id="plat" class="field-long" required max="10"
                              value="<?php echo $mobil_ubah["PLAT_MOBIL"] ?>" />
                         </li>
                         
                         <li>
                              <label for="plg">No. Pelanggan <span class="required">*</span></label>
                              <select name="plg" class="field-select" id="plg">
                                   <?php foreach($pelanggan as $row) : ?>
                                        <option value="<?php echo $row["NO_PELANGGAN"] ?>">
                                             <?php echo $row["NO_PELANGGAN"]; 
                                             echo " - ";
                                             echo $row["NAMA_PLG"]; ?>
                                        </option>
                                   <?php endforeach; ?>
                              </select>
                         </li>

                         <li>
                              <label for="nm_mobil">Nama Mobil <span class="required">*</span></label>
                              <input type="text" name="nm_mobil" id="nm_mobil" class="field-long" required max="20"
                              value="<?php echo $mobil_ubah["NAMA_MOBIL"] ?>" />
                         </li>

                         <li>
                              <label for="merk">Merk Mobil <span class="required">*</span></label>
                              <input type="text" name="merk" id="merk" class="field-long" required max="10"
                              value="<?php echo $mobil_ubah["MERK_MOBIL"] ?>" />
                         </li>

                         <li>
                              <button type="submit" name="submit">UPDATE</button>
                         </li>
                    </ul>
               </form>

			
		</div>


	</div>

	
</body>
</html>