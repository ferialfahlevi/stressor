<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->model('nilai_model');
		$this->load->model('berita_model');
		$this->load->view('template/assets');
	}
	public function index()
	{
		$this->load->view('template/header');
		$this->load->view('home_page');
		$this->load->view('template/footer');
	}

	// public function login(){
	// 	$username = $this->input->post('username');
	// 	$password = $this->input->post('password');

	// 	$data = array(
    //     	'username' => $username,
    //     	'password' => $password);
    //     $cek_login = $this->nilai_model->login("tb_user", $data);
    //     if($cek_login > 0){
	// 		$data_session = array(
	// 			'nama' => $username,
	// 			'status' => "login"
	// 		);

	// 		$this->session->set_userdata($data_session);
	// 		echo "Username atau Password benar";
	// 	} else {
	// 		echo "Username atau Password salah";
	// 	}
        
	// }

	public function test(){
		$this->load->view('template/header');
		$this->load->view('test/test_page');
		$this->load->view('template/footer');
	}

	function info(){
		$data['a'] = $this->berita_model->count1();
		$data['b'] = $this->berita_model->count2();
		$data['c'] = $this->berita_model->count3();
		$data['alldata'] = $this->berita_model->descending();
		$data['column'] = $this->berita_model->all();
		$this->load->view('template/header');
		$this->load->view('info/info_page', $data);
		$this->load->view('template/footer');
	}

	function newspage($id){
		$data['detail'] = $this->berita_model->show_news($id);
		$data['a'] = $this->berita_model->count1();
		$data['b'] = $this->berita_model->count2();
		$data['c'] = $this->berita_model->count3();
		$data['column'] = $this->berita_model->all();
		$this->load->view('template/header');
		$this->load->view('info/news_page', $data);
		$this->load->view('template/footer');
	}

	function cat($id){
		if ($id == "1") {
			$data['kode'] = "Jenis-Jenis Stres";
        } if ($id == "2") {
              $data['kode'] = "Gejala-Gejala Stres";
        } if ($id == "3") {
              $data['kode'] = "Mengatasi Stres";
        }
		$data['alldata'] = $this->berita_model->cat($id);
		$data['a'] = $this->berita_model->count1();
		$data['b'] = $this->berita_model->count2();
		$data['c'] = $this->berita_model->count3();
		$data['column'] = $this->berita_model->all();
		$this->load->view('template/header');
		$this->load->view('info/cat_page', $data);
		$this->load->view('template/footer');
	}

	function develop(){
		$this->load->view('template/header');
		$this->load->view('develop_page');
		$this->load->view('template/footer');
	}
}