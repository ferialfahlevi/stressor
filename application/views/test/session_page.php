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
          <h2>Sesi Tes Tingkat Stres</h2>
        </div>
      </div>
    </div>
  </div>
</section>
<form action="<?php echo base_url('test/second_test'); ?>" method="post">
  <section id="content">
    <div class="container">
      <div class="row">
        <div class="span12">
          <div class="pricing-box-alt">
            <div class="pricing-heading">
              <h6>Pilihlah gejala-gejala dibawah ini yang sesuai dengan kondisi anda <strong>sekarang</strong></h6>
              <h6>Stresor tidak akan membagikan jawaban anda.</h6>
            </div>
            <?php foreach($tb_pertanyaan->result() as $row): ?>
            <fieldset id="<?php echo $row->kode_pertanyaan; ?>">
              <h6 style="text-indent :2em;">
                <input type="checkbox" name="kode_pertanyaan[<?php echo $row->kode_pertanyaan; ?>]" value="<?php echo $row->pertanyaan; ?>"> <?php echo $row->pertanyaan; ?><br>
              </h6>
            </fieldset>
            <?php endforeach;?>
          </div>
        </div>
      </div>
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