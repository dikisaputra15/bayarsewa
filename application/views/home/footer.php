<!-- Footer -->
<!-- <footer class="py-3 bg-dark" style="margin-top: 100px;">
   <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Toko Batik Pandeglang</p>
   </div> -->
<!-- /.container -->
<!-- </footer> -->

<!-- Bootstrap core JavaScript -->

<script src="<?= base_url("assets/jquery-3.4.1.min.js"); ?>"></script>
<script src="<?= base_url("assets/shop-pages/"); ?>vendor/jquery/jquery.min.js"></script>
<script src="<?= base_url("assets/shop-pages/"); ?>vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<script>
   $(document).ready(function() {

      $.ajax({
         type: 'post',
         url: '<?= base_url('transaksi/provinsi') ?>',
         success: function(hasil) {
            $('select[name=provinsi]').html(hasil);
         }
      });

      $("select[name=provinsi]").on("change", function() {
         let id_provinsi_terpilih = $("option:selected", this).attr("id_provinsi");
         $.ajax({
            type: 'post',
            url: '<?= base_url('transaksi/distrik') ?>',
            data: 'id_provinsi=' + id_provinsi_terpilih,
            success: function(hasil) {
               $("select[name=kota]").html(hasil);
            }
         })
      });

      $("select[name=kurir]").on("change", function() {
         // dapatkan id kurir atau value dari select option kurir
         let kurir_terpilih = $("select[name=kurir]").val();

         // dapatkan id_disktrik atau kota
         let kota_terpilih = $("option:selected", "select[name=kota]").attr("id_distrik");

         // dapatkan total berat
         let total_berat = $("input[name=total_berat]").val();
         $.ajax({
            type: 'post',
            url: '<?= base_url('transaksi/ongkir') ?>',
            data: 'ekspedisi=' + kurir_terpilih + '&distrik=' + kota_terpilih + '&berat=' + total_berat,
            success: function(hasil) {
               $("select[name=paket]").html(hasil);
               $("input[name=nama_ekspedisi]").val(kurir_terpilih);
            }
         })
      });

      $("select[name=kota]").on("change", function() {
         let prov = $("option:selected", this).attr("nama_provinsi");
         let dist = $("option:selected", this).attr("nama_distrik");
         let tipe = $("option:selected", this).attr("type_distrik");
         let kodepos = $("option:selected", this).attr("kodepos");

         $("input[name=nama_provinsi]").val(prov);
         $("input[name=nama_distrik]").val(dist);
         $("input[name=type]").val(tipe);
         $("input[name=nama_kodepos]").val(kodepos);
      });

      $("select[name=paket]").on("change", function() {
         let paket = $("option:selected", this).attr("paket");
         let ongkir = $("option:selected", this).attr("ongkir");
         let etd = $("option:selected", this).attr("etd");
         $("input[name=nama_paket]").val(paket);
         $("input[name=ongkoskirim]").val(ongkir);
         $("input[name=estimasi]").val(etd);
      });

      $("select[name=paket]").on("change", function() {
         var ongkir_terpilih = $("option:selected", this).attr("ongkir");
         var belanja = $("#belanja").attr("cart_total");
         var total = Number(ongkir_terpilih) + Number(belanja);
         $("#ongkir").text(Intl.NumberFormat().format(ongkir_terpilih));
         $("#total_belanja").text(Intl.NumberFormat().format(total));
         $("input[name=total_bayar]").val(total);
      });

      // midtrans action ============================
      $('#pay-button').click(function(event) {
         event.preventDefault();
         $(this).attr("disabled", "disabled");


         $.ajax({
            url: '<?= site_url() ?>/snap/token',
            cache: false,
            // data: 'nama_penerima=' + nama_penerima,

            success: function(data) {
               //location = data;


               console.log('token = ' + data);

               var resultType = document.getElementById('result-type');
               var resultData = document.getElementById('result-data');

               function changeResult(type, data) {
                  $("#result-type").val(type);
                  $("#result-data").val(JSON.stringify(data));
                  //resultType.innerHTML = type;
                  //resultData.innerHTML = JSON.stringify(data);
               }

               snap.pay(data, {

                  onSuccess: function(result) {
                     changeResult('success', result);
                     console.log(result.status_message);
                     console.log(result);
                     $("#payment-form").submit();
                  },
                  onPending: function(result) {
                     changeResult('pending', result);
                     console.log(result.status_message);
                     $("#payment-form").submit();
                  },
                  onError: function(result) {
                     changeResult('error', result);
                     console.log(result.status_message);
                     $("#payment-form").submit();
                  }
               });
            }
         });
      });

      // jquery tambah quantitiy halaman home
      $(".tambah_keranjang").on("click", function() {
         var produk_id = $(this).data("produkid");
         var produk_nama = $(this).data("produknama");
         var produk_harga = $(this).data("produkharga");
         var gambar = $(this).data("gambar");
         var quantity = $('#' + produk_id).val();
         $.ajax({
            method: "post",
            url: "<?= base_url('Home/tambah_keranjang') ?>",
            data: {
               produk_id: produk_id,
               produk_nama: produk_nama,
               produk_harga: produk_harga,
               gambar: gambar,
               quantity: quantity
            },
            success: function(hasil) {
               location.reload();
            }
         });


      });

      $("#update_quantity_plus").on("click", function() {
         var produk_id = $('#qty_barang').attr("produkid");
         $.ajax({
            method: 'POST',
            url: '<?= base_url('Home/update_tambah') ?>',
            data: {
               produk_id: produk_id,
            },
            success: function(hasil) {
               location.reload();
            }
         });
      });

      $("#update_quantity_minus").on("click", function() {
         var produk_id = $('#qty_barang').attr("produkid");
         $.ajax({
            method: 'POST',
            url: '<?= base_url('Home/update_kurang') ?>',
            data: {
               produk_id: produk_id,
            },
            success: function(hasil) {
               location.reload();
            }
         });
      });
   });
</script>

</body>

</html>