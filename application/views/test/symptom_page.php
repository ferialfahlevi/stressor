<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html>
<head>
  <title>Stressor</title>
</head>
<body>
<section id="inner-headline">
  <div class="container">
    <div class="row">
      <div class="span4">
        <div class="inner-heading">
          <h2>Gejala-Gejala</h2>
        </div>
      </div>
    </div>
  </div>
</section>
<form action="<?php echo base_url('test/calculation'); ?>" method="post">
  <section id="content">
    <div class="container">
      <div class="span12">
        <div class="pricing-heading">
              <h6>Isilah nilai kepastian dari masing-masing gejala yang anda pilih pada halaman sebelumnya</h6>
            </div>
          </div>
          <?php foreach($selected as $kode => $pertanyaan): ?>
          <fieldset id="<?php echo $kode?>">
            <div class="row">
              <div class="span12">
                <div class="pricing-box-alt">
                  <div class="pricing-heading">
                    <h3><?php echo $pertanyaan?></h3>
                  </div>
                </div>
              </div>
              <div class="span6">
                <div class="pricing-box-alt special">
                  <br>
                  <h6 style="text-indent :2em;">
                      <input type="radio" value="0.4" name="kode_pertanyaan[<?php echo $kode;?>]">   Mungkin
                  </h6><br>
                  <h6 style="text-indent :2em;">
                      <input type="radio" value="0.6" name="kode_pertanyaan[<?php echo $kode;?>]">   Kemungkinan Besar
                  </h6><br>
                </div>
              </div>
              <div class="span6">
                <div class="pricing-box-alt special">
                  <br>
                  <h6 style="text-indent :2em;">
                      <input type="radio" value="0.8" name="kode_pertanyaan[<?php echo $kode;?>]">   Hampir Pasti
                  </h6><br>
                  <h6 style="text-indent :2em;">
                      <input type="radio" value="1" name="kode_pertanyaan[<?php echo $kode;?>]">   Pasti
                  </h6><br>
                </div>
              </div>
            </div>
          </fieldset>
          <?php endforeach;?>
          <div class="pricing-action">
            <a class="btn btn-large btn-theme margintop10" href="#mySignup" data-toggle="modal"><i class="icon-check"></i> Kirim Jawaban Anda</a>
            <div id="mySignup" class="modal styled hide fade" tabindex="-1" role="dialog" aria-labelledby="mySignupModalLabel" aria-hidden="true">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 id="mySignupModalLabel">Anda Yakin Ingin Mengirim Jawaban Anda?</h4>
              </div>
              <div class="modal-body">
                <div class="control-group">
                  <div class="controls">
                    <button type="submit" class="btn">Kirim</button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </form>
</body>
</html> 