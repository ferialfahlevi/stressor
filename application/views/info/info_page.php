<!DOCTYPE html>
<html>
<head>
  <title>Informasi</title>
</head>
<body>
<section id="inner-headline">
  <div class="container">
    <div class="row">
      <div class="span4">
        <div class="inner-heading">
          <h2>Informasi Stres</h2>
        </div>
      </div>
    </div>
  </div>
</section>
<section id="content">
  <div class="container">
    <div class="row">
      <div class="span8">
        <article>
          <?php foreach($alldata->result() as $row):?>
          <div class="row">
            <div class="span8">
              <div class="post-slider">
                <div class="post-heading">
                  <h3><a href="<?php echo base_url('home/newspage/');?><?php echo $row->id;?>"><?php echo $row->judul;?></a></h3>
                </div>
              <div class="flexslider">
                <img src="<?php echo $row->gambar;?>" alt="" />
              </div>
              </div>
              <p>
                <?php $artikel = $row->isi;
                echo substr($artikel, 0, 500);?>...........
              </p>
              <div class="bottom-article">
                <ul class="meta-post">
                  <li><i class="icon-user"></i><a> Admin</a></li>
                </ul>
                <a href="<?php echo base_url('home/newspage/');?><?php echo $row->id;?>" class="pull-right">Lanjutkan Membaca <i class="icon-angle-right"></i></a>
              </div>
            </div>
          </div>
          <?php endforeach;?>
        </article>
      </div>
      <div class="span4">
        <aside class="right-sidebar">
          <div class="widget">
            <h5 class="widgetheading">Kategori</h5>
            <ul class="cat">
              <li><i class="icon-angle-right"></i><a href="<?php echo base_url('home/cat/1');?>">Jenis-Jenis Stres</a><span> (<?php echo $a;?>)</span></li>
              <li><i class="icon-angle-right"></i><a href="<?php echo base_url('home/cat/2');?>">Gejala-Gejala Stres</a><span> (<?php echo $b;?>)</span></li>
              <li><i class="icon-angle-right"></i><a href="<?php echo base_url('home/cat/3');?>">Mengatasi Stres</a><span> (<?php echo $c;?>)</span></li>
            </ul>
          </div>
          <div class="widget">
            <h5 class="widgetheading">Latest posts</h5>
            <ul class="recent">
            <?php foreach($column->result() as $row):?>
              <li>
                <h6><a href="<?php echo base_url('home/newspage/');?><?php echo $row->id;?>"><?php echo $row->judul;?></a></h6>
              </li>
            <?php endforeach;?>
            </ul>
          </div>
        </aside>
      </div>
    </div>
  </div>
</section>