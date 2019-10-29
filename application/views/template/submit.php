<div id="mySignup" class="modal styled hide fade" tabindex="-1" role="dialog" aria-labelledby="mySignupModalLabel" aria-hidden="true">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
      <h4 id="mySignupModalLabel">Anda Yakin Ingin Mengirim Jawaban Anda?</h4>
    </div>
    <div class="modal-body">
      <form class="form-horizontal" action="<?php echo base_url('test/session_test');?>">
        <div class="control-group">
          <label class="control-label" for="nama">Nama</label>
          <div class="controls">
            <input required type="text" id="nama" placeholder="Nama">
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="umur">Umur</label>
          <div class="controls">
            <input required type="text" id="umur" placeholder="Umur">
          </div>
        </div>
        <div class="control-group">
          <div class="controls">
            <button type="submit" class="btn">Sign up</button>
          </div>
        </div>
      </form>
    </div>
  </div>