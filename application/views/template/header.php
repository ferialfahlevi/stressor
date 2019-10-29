<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="" />
  <meta name="author" content="" />
</head>

<body>
  <div id="wrapper">
    <!-- start header -->
    <header>
      <div class="container ">
        <!-- hidden top area toggle link -->
        <div id="header-hidden-link">
        </div>
        <!-- end toggle link -->
        <div class="row nomargin">
          <div class="span12">
            <div class="headnav">
              <ul>
                <li></li>
                <li></li>
              </ul>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="span4">
            <div class="logo">
              <a href="<?php echo base_url();?>"><img src="<?php echo base_url();?>assets/img/logo.png" alt="" class="logo" /></a>
              <h6>Stressor</h6>
            </div>
          </div>
          <div class="span8">
            <div class="navbar navbar-static-top">
              <div class="navigation">
                <nav>
                  <ul class="nav topnav">
                    <li class="dropdown active">
                      <a href="<?php echo base_url();?>">BERANDA</a>
                    </li>
                    <li class="dropdown">
                      <a href="<?php echo base_url('home/info');?>">INFORMASI STRES<i class="icon-angle-down"></i></a>
                      <ul class="dropdown-menu">
                        <li><a href="<?php echo base_url('home/cat/1');?>">Jenis-Jenis Stres</a></li>
                        <li><a href="<?php echo base_url('home/cat/2');?>">Gejala-Gejala Stres</a></li>
                        <li><a href="<?php echo base_url('home/cat/3');?>">Mengatasi Stres</a></li>
                      </ul>
                    </li>
                    <li>
                      <a href="<?php echo base_url('test');?>">TES TINGKAT STRES</a>
                    </li>
                    <li>
                      <a href="<?php echo base_url('home/develop');?>">INFORMASI DEVELOPER</a>
                    </li>
                    <li>
                      <!-- <a href="<?php echo base_url('login');?>">LOGIN</a> -->
                      <a href="#mySignup" data-toggle="modal">LOGIN</a>
                    </li>
                  </ul>
                </nav>
              </div>
              <!-- end navigation -->
            </div>
          </div>
        </div>
      </div>
    </header>
    <!-- end header -->