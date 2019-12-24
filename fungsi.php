<?php

     $conn = mysqli_connect("localhost", "root", "", "sibengkel2019");

     function query($q){
          global $conn;
          $result = mysqli_query($conn, $q);
          $box = [];
          while( $data = mysqli_fetch_assoc($result) ){
               $box[] = $data;
          }
          return $box;
     }

     function tambah($data){
          global $conn;

          $plat_mbl = htmlspecialchars($data["plat"]);
          $plg_mbl = htmlspecialchars($data["plg"]);
          $nama_mbl = htmlspecialchars($data["nm_mobil"]);
          $merk_mbl = htmlspecialchars($data["merk"]);

          $query = "INSERT INTO mobil VALUES
          ('$plat_mbl', '$plg_mbl', '$nama_mbl', '$merk_mbl')";

          mysqli_query($conn, $query);

          return mysqli_affected_rows($conn);
     }

     function hapus($plat){
          global $conn;
          mysqli_query($conn, "DELETE FROM mobil WHERE PLAT_MOBIL = '$plat'");
          return mysqli_affected_rows($conn);
     }

     function ubah($data){
          global $conn;

          $plat_mb = htmlspecialchars($data["plat"]);
          $plg_mbl = htmlspecialchars($data["plg"]);
          $nama_mbl = htmlspecialchars($data["nm_mobil"]);
          $merk_mbl = htmlspecialchars($data["merk"]);

          $query = "UPDATE mobil SET
          PLAT_MOBIL = '$plat_mb' ,
          NO_PELANGGAN = '$plg_mbl' ,
          NAMA_MOBIL = '$nama_mbl' ,
          MERK_MOBIL = '$merk_mbl'
          WHERE PLAT_MOBIL = '$plat_mb' ";

          mysqli_query($conn, $query);

          return mysqli_affected_rows($conn);
     }

?>