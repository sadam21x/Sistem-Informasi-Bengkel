<?php

     require 'fungsi.php';

     $PLAT_MOBIL = $_GET["PLAT_MOBIL"];

     if( hapus($PLAT_MOBIL) > 0 ){
          echo "
               <script>
                    alert('Data berhasil dihapus!');
                    document.location.href = 'index.php';
               </script>
          ";
     } else{

               echo "
                    <script>
                         alert('Data gagal dihapus!');
                         document.location.href = 'index.php';
                    </script>
               ";
          }

?>