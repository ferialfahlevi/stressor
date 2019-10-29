<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<?php $kode_stres = $this->session->userdata('kode_stres');?>
<!DOCTYPE html>
<html>
<link href="<?php echo base_url();?>assets/css/chart.css" rel="stylesheet" />
<head> <style> 
  <?php $a = $this->session->flashdata('message_name');
  if($a == '1'){
    echo '#hidden { display: none;}';
  }if($a == '2'){
    echo '#hidden { display: none;}';
  }
  ?>
 </style>
  <title>Stressor</title>
</head>
<body>
<section id="inner-headline">
  <div class="container">
    <div class="row">
      <div class="span4">
        <div class="inner-heading">
          <h2>Hasil Perhitungan</h2>
        </div>
      </div>
    </div>
  </div>
</section>
<section id="content">
  <div class="container">
    <div class="row">
      <div class="span12">
        <div class="pricing-box-alt">
          <div class="pricing-terms" id="hidden">
            <h6>Kemungkinan tingkat stres anda adalah <strong><?php $last = $kode_stres; 
            if($kode_stres == "S1"){
              $cetak = "Perubahan";
              echo($cetak);
            } if ($kode_stres == "S2") {
              $cetak = "Tekanan";
              echo($cetak);
            } if ($kode_stres == "S3") {
              $cetak = "Konflik";
              echo($cetak);
            } if ($kode_stres == "S4") {
              $cetak = "Frustasi";
              echo($cetak);
            }?></strong> dengan nilai CF <?php 
            if($kode_stres == "S1"){
              $print_akhir = ($this->session->userdata('cf1')/100);
              echo ($print_akhir);
            } if ($kode_stres == "S2") {
              $print_akhir = ($this->session->userdata('cf2')/100);
              echo ($print_akhir);
            } if ($kode_stres == "S3") {
              $print_akhir = ($this->session->userdata('cf3')/100);
              echo ($print_akhir);
            } if ($kode_stres == "S4") {
              $print_akhir = ($this->session->userdata('cf4')/100);
              echo ($print_akhir);
            }
            ?> atau <?php echo ($print_akhir*100);?>%</h6>
          </div>
          <div id="hidden">
            <div id="chart"></div>
          </div>
          <br>
          <br>
          <div id="hidden">
            <div class="accordion" id="accordion2">
              <div class="accordion-group">
                <div class="accordion-heading">
                  <a class="accordion-toggle active" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne"><i class="icon-minus"></i> Gejala Yang Dipilih</a>
                </div>
                <div id="collapseOne" class="accordion-body collapse in">
                  <div class="accordion-inner">
                    <div class="pricing-content" id="hidden">
                      <ul>
                      <?php foreach($coba as $row): ?>
                        <li><?php echo $row;?></li>
                        <?php endforeach;?>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <div class="accordion-group">
                <div class="accordion-heading">
                  <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseZero">
                    <i class="icon-plus"></i> Penjelasan Tingkat Stres <?php echo $cetak; ?></a>
                </div>
                <div id="collapseZero" class="accordion-body collapse">
                  <div class="accordion-inner">
                    <div class="pricing-content" id="hidden">
                      <?php
                        if($kode_stres == "S1"){
                          echo "Kondisi yang sering dijumpai pada semua individu yang ternyata merupakan kondisi yang tidak semestinya dihadapi atau kegiatan yang tidak biasa terjadi serta membutuhkan adanya suatu penyesuaian atau adaptasi.";
                        } if ($kode_stres == "S2") {
                          echo "Kondisi dimana terdapat suatu harapan atau tuntutan yang sangat besar terhadap individu untuk melakukan perilaku tertentu sehingga individu merasa tertekan dengan adanya tuntutan yang sangat besar.";
                        } if ($kode_stres == "S3") {
                          echo "Kondisi ini muncul ketika dua atau lebih perilaku saling berurutan, dimana masing-masing perilaku tersebut perlu untuk diekspresikan atau saling memberatkan. Konflik juga dapat diartikan jika hati nurani dan pikiran individu saling bertentangan sehingga individu memiliki konflik dengan dirinya sendiri.";
                        } if ($kode_stres == "S4") {
                          echo "Kondisi dimana individu merasa jalan yang akan ditempuh untuk meraih tujuan dihambat. Frustasi juga dapat diartikan sebagai kekecewaan dalam diri individu yang disebabkan oleh tidak tercapainya keinginan.";
                        }
                      ?>
                    </div>
                  </div>
                </div>
              </div>
              <div class="accordion-group">
                <div class="accordion-heading">
                  <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
                  <i class="icon-plus"></i> Gejala-Gejala Yang Biasa Timbul Pada Tingkat Stres <?php echo $cetak;?> Adalah</a>
                </div>
                <div id="collapseTwo" class="accordion-body collapse">
                  <div class="accordion-inner">
                    <div class="pricing-heading" id="hidden">
                      <p align="justify"><?php foreach($gejala as $row):?><?php echo $row;?>, <?php endforeach;?></p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="accordion-group">
                <div class="accordion-heading">
                  <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseThree">
                    <i class="icon-plus"></i> Solusi Yang Dianjurkan </a>
                  </div>
                <div id="collapseThree" class="accordion-body collapse">
                  <div class="accordion-inner">
                    <div class="pricing-content" id="hidden">
                      <ul>
                      <?php foreach($solusi as $row): ?>
                        <li><?php echo $row;?></li>
                      <?php endforeach;?>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <?php $a = $this->session->flashdata('message_name');
            if($a == '1'){
              echo '
              <div class="pricing-heading">
                <h6>Hasil Perhitungan Adalah 0. Anda Tidak Memilih Gejala Apapun.</h6>
              </div>';
            } if($a == '2'){
              echo '
              <div class="pricing-heading">
                <h6>Hasil Perhitungan Adalah 0. Anda Tidak Memilih Nilai CF User.</h6>
              </div>';
            }?>
          <div class="pricing-action">
            <a href="<?php echo base_url();?>" class="btn btn-medium btn-theme"><i class="icon-home"></i> Kembali Ke Menu Utama</a><br>
            <a class="btn btn-medium btn-theme margintop10" href="#mySignup" data-toggle="modal"><i class="icon-repeat"></i> Ulangi Tes Tingkat Stres</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
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
</body>
</html>
<script>
  //chart data
var chartjson = {
  "title": "",
  "data": [{
    "name": "Perubahan",
    "score": <?php echo $this->session->userdata('cf1');?>
  }, {
    "name": "Tekanan",
    "score": <?php echo $this->session->userdata('cf2');?>
  }, {
    "name": "Konflik",
    "score": <?php echo $this->session->userdata('cf3');?>
  }, {
    "name": "Frustasi",
    "score": <?php echo $this->session->userdata('cf4');?>
  }],
  "xtitle": "Secured Marks",
  "ytitle": "Marks",
  "ymax": 100,
  "ykey": 'score',
  "xkey": "name",
  "prefix": "%"
}

//chart colors
var colors = ['one', 'four','seven','eleven'];

//constants
var TROW = 'tr',
  TDATA = 'td';

var chart = document.createElement('div');
//create the chart canvas
var barchart = document.createElement('table');
//create the title row
var titlerow = document.createElement(TROW);
//create the title data
var titledata = document.createElement(TDATA);
//make the colspan to number of records
titledata.setAttribute('colspan', chartjson.data.length + 1);
titledata.setAttribute('class', 'charttitle');
titledata.innerText = chartjson.title;
titlerow.appendChild(titledata);
barchart.appendChild(titlerow);
chart.appendChild(barchart);

//create the bar row
var barrow = document.createElement(TROW);

//lets add data to the chart
for (var i = 0; i < chartjson.data.length; i++) {
  barrow.setAttribute('class', 'bars');
  var prefix = chartjson.prefix || '';
  //create the bar data
  var bardata = document.createElement(TDATA);
  var bar = document.createElement('div');
  bar.setAttribute('class', colors[i]);
  bar.style.height = chartjson.data[i][chartjson.ykey] + prefix;
  bardata.innerText = chartjson.data[i][chartjson.ykey] + prefix;
  bardata.appendChild(bar);
  barrow.appendChild(bardata);
}

//create legends
var legendrow = document.createElement(TROW);
var legend = document.createElement(TDATA);
legend.setAttribute('class', 'legend');
legend.setAttribute('colspan', chartjson.data.length);

//add legend data
for (var i = 0; i < chartjson.data.length; i++) {
  var legbox = document.createElement('span');
  legbox.setAttribute('class', 'legbox');
  var barname = document.createElement('span');
  barname.setAttribute('class', colors[i] + ' xaxisname');
  var bartext = document.createElement('span');
  bartext.innerText = chartjson.data[i][chartjson.xkey];
  legbox.appendChild(barname);
  legbox.appendChild(bartext);
  legend.appendChild(legbox);
}
barrow.appendChild(legend);
barchart.appendChild(barrow);
barchart.appendChild(legendrow);
chart.appendChild(barchart);
document.getElementById('chart').innerHTML = chart.outerHTML;
</script>