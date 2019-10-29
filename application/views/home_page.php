<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<!DOCTYPE html>
<html>
<head>
	<title>Stressor</title>
</head>
<body>
	<section id="content">
      <div class="container">
        <div class="row">
          <div class="span6">
            <h2>Selamat datang di <strong>Stressor</strong></h2>
            <p align="justify">
              Aktivitas yang dihadapi manusia dalam menjalani kesehariaannya mempunyai dampak yang bisa mempengaruhi kondisi tubuh manusia terutama di kalangan remaja. Keterkaitannya pun saling mempengaruhi manusia secara psikologis maupun fisik. Pengaruh secara psikologis memberikan dampak secara perlahan kepada fisik manusia. Akibatnya fisik manusia akan melemah hingga menjadi fatal. Hal ini mendorong seseorang menimbulkan reaksi ternadap tubuh yang disebut stres. 
            </p>
            <p align="justify">
              Jenis stres terhadap tubuh dikelompokan menjadi dua yaitu dalam bentuk positif dan dalam bentuk negatif. Stres dalam bentuk positif disebut eustress serta stres dalam bentuk negatif disebut distress. Eustress merangsang seseorang untuk melakukan hal dengan lebih baik. Berlawanan dengan eustress, distress memberikan efek negatif pada kesehatan fisik dan emosional.
            </p>
            <p align="justify">
              Kegiatan yang dilakukan pada individu terus bertambah seiring bertambahnya usia, terutama pada usia remaja. Usia remaja berada dimasa peralihan dimana individu masih menyesuaikan diri pada kedewasaan. Sehingga remaja sulit mengerti dan dimengerti oleh orang dewasa. Akibatnya remaja berselisih dengan orang dewasa atau berselisih dengan teman sebaya. Menurut Garfinkel (dalam Walker, 2005) penyebab umum stres pada remaja adalah permasalahan asmara, perbedaan pendapat dengan orang tua, dan masalah dengan teman sebaya.
            </p>
            <br>
            <a class="btn btn-large btn-theme btn-rounded" href="<?php echo base_url('test/');?>">Tes Tingkat Stres Anda Sekarang!</a>
          </div>
          <div class="span6">
            <div class="flexslider">
              <ul class="slides">
                <li><img src="<?php echo base_url();?>assets/img/works/full/image-01-full.jpg" alt="" /></li>
                <li><img src="<?php echo base_url();?>assets/img/works/full/image-02-full.jpg" alt="" /></li>
                <li><img src="<?php echo base_url();?>assets/img/works/full/image-03-full.jpg" alt="" /></li>
              </ul>
            </div>
          </div>
        </div>
        </div>
      </div>
    </section>
	<section id="content">
      <div class="container">
        <div class="row">
          <div class="span12">
            <h4>Tingkatan Stres</h4>
            <div class="row">
              <div class="span3">
                <div class="box aligncenter">
                  <div class="aligncenter icon">
                    <i class="icon-heart icon-circled icon-64 active"></i>
                  </div>
                  <div class="text">
                    <h6>Perubahan</h6>
                    <p>
                      Kondisi yang dijumpai ternyata merupakan kondisi yang tidak semestinya serta membutuhkan adanya suatu penyesuaian.
                    </p>
                  </div>
                </div>
              </div>
              <div class="span3">
                <div class="box aligncenter">
                  <div class="aligncenter icon">
                    <i class="icon-bullhorn icon-circled icon-64 active"></i>
                  </div>
                  <div class="text">
                    <h6>Tekanan</h6>
                    <p>Kondisi dimana terdapat suatu harapan atau tuntutan yang sangat besar terhadap individu untuk melakukan perilaku tertentu.</p>
                  </div>
                </div>
              </div>
              <div class="span3">
                <div class="box aligncenter">
                  <div class="aligncenter icon">
                    <i class="icon-comments icon-circled icon-64 active"></i>
                  </div>
                  <div class="text">
                    <h6>Konflik</h6>
                    <p>Kondisi ini muncul ketika dua atau lebih perilaku saling berurutan, dimana masing-masing perilaku tersebut perlu untuk diekspresikan atau saling memberatkan.</p>
                  </div>
                </div>
              </div>
              <div class="span3">
                <div class="box aligncenter">
                  <div class="aligncenter icon">
                    <i class="icon-bolt icon-circled icon-64 active"></i>
                  </div>
                  <div class="text">
                    <h6>Frustasi</h6>
                    <p>Kondisi dimana individu merasa jalan yang akan ditempuh untuk meraih tujuan dihambat.</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <div id="mySignup" class="modal styled hide fade" tabindex="-1" role="dialog" aria-labelledby="mySignupModalLabel" aria-hidden="true">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
      <h4 id="mySignupModalLabel">LOGIN</h4>
    </div>
    <div class="modal-body">
      <form class="form-horizontal" action="<?php echo base_url('home/login');?>" method="post">
        <div class="control-group">
          <label class="control-label" for="nama">Username</label>
          <div class="controls">
            <input required type="text" name="username" id="nama" placeholder="username">
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="umur">Password</label>
          <div class="controls">
            <input required type="password" name="password" id="umur" placeholder="password">
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
</body>
</html>