<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html>
<head>
	<title>Tes Tingkat Stres</title>
</head>
<body>
<section id="inner-headline">
  <div class="container">
    <div class="row">
      <div class="span4">
        <div class="inner-heading">
          <h2>Tes Tingkat Stres</h2>
        </div>
      </div>
    </div>
  </div>
</section>
<section id="content">
  <div class="container">
    <div class="row">
      <div class="span6">
        <div class="flexslider">
          <ul class="slides">
            <li><img src="<?php echo base_url();?>assets/img/works/full/image-01-full.jpg" alt="" /></li>
            <li><img src="<?php echo base_url();?>assets/img/works/full/image-02-full.jpg" alt="" /></li>
            <li><img src="<?php echo base_url();?>assets/img/works/full/image-03-full.jpg" alt="" /></li>
          </ul>
        </div>
      </div>
      <div class="span6">
        <div class="row">                
          <div class="span6 margintop10 form-group">
            <h6><p align="center">Tata Cara Penggunaan</p></h6>
            <br>
            <br>
            <ol>
            <li>Klik tombol <strong>MULAI </strong>untuk memulai tes tingkat stres.</li>
            <li>Pilih minimal <strong>satu </strong>gejala yang anda rasakan.</li>
            <li>Jika tidak memilih gejala apapun, maka akan dialihkan ke halaman kesimpulan dan tidak ada perhitungan yang dilakukan.</li>
            <li>Kemudian pilih salah <strong>satu </strong>pilihan nilai CF user.</li>
            <li>Jika tidak memilih nilai apapun, maka akan dialihkan ke halaman kesimpulan dan tingkat stres akan dihitung berdasarkan pilihan gejala.</li>
            </ol> 
            <br>
            <p class="text-center">
              <a class="btn btn-large btn-theme margintop10" href="#mySignup" data-toggle="modal">Mulai</a>
            </p>
          </div>
        </div>
      </div>        
    </div>
  </div>
  <div id="mySignup" class="modal styled hide fade" tabindex="-1" role="dialog" aria-labelledby="mySignupModalLabel" aria-hidden="true">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
      <h4 id="mySignupModalLabel">Masukan Data Diri <strong>Anda</strong></h4>
    </div>
    <div class="modal-body">
      <form class="form-horizontal" action="<?php echo base_url('test/start_test');?>" method="post">
        <div class="control-group">
          <label class="control-label" for="nama">Nama</label>
          <div class="controls">
            <input required type="text" name="nama" id="nama" placeholder="Nama">
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="umur">Umur</label>
          <div class="controls">
            <input required type="text" name="umur" id="umur" placeholder="Umur">
          </div>
        </div>
        <div class="control-group">
          <div class="controls">
            <button type="submit" class="btn">Mulai</button>
          </div>
        </div>
      </form>
    </div>
  </div>
</section>
</body>
</html>