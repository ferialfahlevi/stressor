<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<footer>
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="copyright">
                <p>
                  <span>&copy; Flattern - All right reserved.</span>
                </p>
                <div class="credits">
                  Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                </div>
              </div>
          </div>
          <div class="span4">
            <div class="widget">
              <h5 class="widgetheading">Navigasi</h5>
              <ul class="link-list">
                <li><strong><a href="<?php echo base_url();?>">Beranda</a></strong></li>
                <li><strong><a href="<?php echo base_url('home/info');?>">Informasi Stres</a></strong></li>
                <li><a href="<?php echo base_url('home/cat/1');?>">Jenis-Jenis Stres</a></li>
                <li><a href="<?php echo base_url('home/cat/2');?>">Gejala-Gejala Stres</a></li>
                <li><a href="<?php echo base_url('home/cat/3');?>">Mengatasi Stres</a></li>
                <li><strong><a href="<?php echo base_url('test');?>">Tes Tingkat Stres</a></strong></li>
                <li><strong><a href="<?php echo base_url('home/develop');?>">Informasi Developer</a></strong></li>
              </ul>
            </div>
          </div>
          <div class="span4">
            <div class="widget">
              <h5 class="widgetheading">Contact The Developer</h5>
              <address>
								<strong>Fahlevi, Muhammad Ferial</strong><br>
								 Bekasi, Indonesia<br>
					 		</address>
              <p>
                <i class="icon-envelope-alt"></i> muhammad.ferial7@gmail.com
              </p>
            </div>
          </div>
        </div>
      </div>
    </footer>
  </div>
  <a href="#" class="scrollup"><i class="icon-chevron-up icon-square icon-32 active"></i></a>
</body>
</html>
