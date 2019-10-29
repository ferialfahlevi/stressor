<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class test extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->view('template/assets');
		$this->load->model('nilai_model');
	}
	public function index()
	{
		$this->load->view('template/header');
		$this->load->view('test/test_first_page');
		$this->load->view('template/footer');
	}

	function start_test(){
		$nama = $this->input->post('nama');
		$umur = $this->input->post('umur');

		$data_session = array(
			'nama' => $nama,
			'umur' => $umur);

		$this->session->set_userdata($data_session);
		
		$data['tb_pertanyaan'] = $this->nilai_model->show_pertanyaan();
		$this->load->view('template/header');
		$this->load->view('test/session_page', $data);
		$this->load->view('template/footer');
	}

	function second_test(){
		$checkboxes['selected'] = $this->input->post('kode_pertanyaan');

		$dbt1 = $this->nilai_model->get_rules1();
		$dbt2 = $this->nilai_model->get_rules2();
		$dbt3 = $this->nilai_model->get_rules3();
		$dbt4 = $this->nilai_model->get_rules4();
		$tingkat1 = array();
		foreach ($dbt1 as $result) {
			$tingkat1[$result['kode_pertanyaan']] = $result['pertanyaan'];
		}
		$tingkat2 = array();
		foreach ($dbt2 as $result) {
			$tingkat2[$result['kode_pertanyaan']] = $result['pertanyaan'];
		}
		$tingkat3 = array();
		foreach ($dbt3 as $result) {
			$tingkat3[$result['kode_pertanyaan']] = $result['pertanyaan'];
		}
		$tingkat4 = array();
		foreach ($dbt4 as $result) {
			$tingkat4[$result['kode_pertanyaan']] = $result['pertanyaan'];
		}

		$dbcode1 = $this->nilai_model->get_code1();
		$S1 = array();
		foreach ($dbcode1 as $result) {
			$S1[] = $result['kode_pertanyaan'];
		}
		
		$dbcode2 = $this->nilai_model->get_code2();
		$S2 = array();
		foreach ($dbcode2 as $result) {
			$S2[] = $result['kode_pertanyaan'];
		}
		
		$dbcode3 = $this->nilai_model->get_code3();
		$S3 = array();
		foreach ($dbcode3 as $result) {
			$S3[] = $result['kode_pertanyaan'];
		}
		
		$dbcode4 = $this->nilai_model->get_code4();
		$S4 = array();
		foreach ($dbcode4 as $result) {
			$S4[] = $result['kode_pertanyaan'];
		}
		
		$perbandingan = $this->input->post('kode_pertanyaan');

		if (!$perbandingan) {
			$this->session->set_flashdata('message_name', '1');
			$this->session->keep_flashdata('message_name', '1');
			redirect(base_url('test/calculation'));
		}

		$matches1 = array_intersect($tingkat1, $perbandingan);
		$matches2 = array_intersect($tingkat2, $perbandingan);
		$matches3 = array_intersect($tingkat3, $perbandingan);
		$matches4 = array_intersect($tingkat4, $perbandingan);

		$a1 = round(count($matches1));
		$a2 = round(count($matches2));
		$a3 = round(count($matches3));
		$a4 = round(count($matches4));


		$b = count($perbandingan);

		$similiarity1 = bcdiv($a1, $b, 5);
		$similiarity2 = bcdiv($a2, $b, 5);
		$similiarity3 = bcdiv($a3, $b, 5);
		$similiarity4 = bcdiv($a4, $b, 5);

		$hasil2 = max($similiarity1, $similiarity2, $similiarity3, $similiarity4);

		switch ($hasil2) {
			case $similiarity1:
				$kode_stres = "S1";
				break;
			case $similiarity2:
				$kode_stres = "S2";
				break;
			case $similiarity3:
				$kode_stres = "S3";
				break;
			case $similiarity4:
				$kode_stres = "S4";
				break;
			default:
				$kode_stres = "not found";
				break;
		}
		
		$result1[] = array_intersect($perbandingan, $tingkat1);
		$result2[] = array_intersect($perbandingan, $tingkat2);
		$result3[] = array_intersect($perbandingan, $tingkat3);
		$result4[] = array_intersect($perbandingan, $tingkat4);

		$this->session->set_userdata('result1', $result1);
		$this->session->set_userdata('result2', $result2);
		$this->session->set_userdata('result3', $result3);
		$this->session->set_userdata('result4', $result4);

		$data_session = array(
			'kode_stres' => $kode_stres);
		$this->session->set_userdata($data_session);

		$this->load->view('template/header');
		$this->load->view('test/symptom_page', $checkboxes);
		$this->load->view('template/footer');
	}

	function calculation(){
		$checkboxes = $this->input->post('kode_pertanyaan');
		if (!$checkboxes) {
			$this->session->set_flashdata('message_name', '2');
			$this->session->keep_flashdata('message_name', '2');
			$kode_stres = "S1";
        	$print_akhir = 0;
		}
		
		$last = array();
		$second = array();
		$kode_stres = $this->session->userdata('kode_stres');
		foreach ($checkboxes as $key => $value) {
			$last[] = $key;
		}
		foreach ($checkboxes as $key => $value) {
			$second[] = $value;
		}

		// Memisahkan GejalaGejala Masing-masing tingkat stres
		$stres1 = $this->session->userdata('result1');
		foreach ($stres1 as $array2) {
			foreach ($array2 as $key => $value) {
				$arr_kode1[] = $key;
			}
		}
		$stres2 = $this->session->userdata('result2');
		foreach ($stres2 as $array2) {
			foreach ($array2 as $key => $value) {
				$arr_kode2[] = $key;
			}
		}
		$stres3 = $this->session->userdata('result3');
		foreach ($stres3 as $array2) {
			foreach ($array2 as $key => $value) {
				$arr_kode3[] = $key;
			}
		}
		$stres4 = $this->session->userdata('result4');
		foreach ($stres4 as $array2) {
			foreach ($array2 as $key => $value) {
				$arr_kode4[] = $key;
			}
		}

		// Mencari NILAI CF_USER 

		for ($y=0; $y < count($arr_kode1); $y++) { 
			for ($p=0; $p < count($last); $p++) { 
				if ($last[$p] == $arr_kode1[$y]) {
					$cf_user1[] = $second[$p];
				} 
			}
		}
		for ($y=0; $y < count($arr_kode2); $y++) { 
			for ($p=0; $p < count($last); $p++) { 
				if ($last[$p] == $arr_kode2[$y]) {
					$cf_user2[] = $second[$p];
				} 
			}
		}
		for ($y=0; $y < count($arr_kode3); $y++) { 
			for ($p=0; $p < count($last); $p++) { 
				if ($last[$p] == $arr_kode3[$y]) {
					$cf_user3[] = $second[$p];
				} 
			}
		}
		for ($y=0; $y < count($arr_kode4); $y++) { 
			for ($p=0; $p < count($last); $p++) { 
				if ($last[$p] == $arr_kode4[$y]) {
					$cf_user4[] = $second[$p];
				} 
			}
		}

		// Mencari nilai CF_PAKAR dari database
		for ($s1=0; $s1 < count($arr_kode1); $s1++) { 
			$get_pakar1[] = $this->nilai_model->nilai_cf($arr_kode1[$s1]);
		}
		for ($s2=0; $s2 < count($arr_kode2); $s2++) { 
			$get_pakar2[] = $this->nilai_model->nilai_cf($arr_kode2[$s2]);
		}
		for ($s3=0; $s3 < count($arr_kode3); $s3++) { 
			$get_pakar3[] = $this->nilai_model->nilai_cf($arr_kode3[$s3]);
		}
		for ($s4=0; $s4 < count($arr_kode4); $s4++) { 
			$get_pakar4[] = $this->nilai_model->nilai_cf($arr_kode4[$s4]);
		}

		$cf_pakar1 = array();
		foreach ($get_pakar1 as $array2) {
			foreach ($array2 as $key => $value) {
				$cf_pakar1[] = $value;
			}
		}
		$cf_pakar2 = array();
		foreach ($get_pakar2 as $array2) {
			foreach ($array2 as $key => $value) {
				$cf_pakar2[] = $value;
			}
		}
		$cf_pakar3 = array();
		foreach ($get_pakar3 as $array2) {
			foreach ($array2 as $key => $value) {
				$cf_pakar3[] = $value;
			}
		}
		$cf_pakar4 = array();
		foreach ($get_pakar4 as $array2) {
			foreach ($array2 as $key => $value) {
				$cf_pakar4[] = $value;
			}
		}

		for ($k=0; $k < count($cf_user1); $k++) { 
			$cf1[] = $cf_pakar1[$k] * $cf_user1[$k];
		}
		for ($k=0; $k < count($cf_user2); $k++) { 
			$cf2[] = $cf_pakar2[$k] * $cf_user2[$k];
		}
		for ($k=0; $k < count($cf_user3); $k++) { 
			$cf3[] = $cf_pakar3[$k] * $cf_user3[$k];
		}
		for ($k=0; $k < count($cf_user4); $k++) { 
			$cf4[] = $cf_pakar4[$k] * $cf_user4[$k];
		}

		$panjang1 = count($cf1);
		if ($panjang1==0) {
		} elseif ($panjang1==1) {
			$latest_cf1 = $cf1[0];
		} elseif ($panjang1 > 1) {
			for ($i=0; $i < count($cf1) - 1; $i++) { 
				$a = $i + 1;
				$one = 1;
				if ($i == 0) {
					$latest_cf1 = $cf1[$i] + ($cf1[$a] * ($one - $cf1[$i]));
				} else {
					$latest_cf1 = $latest_cf1 + ($cf1[$a] * ($one - $latest_cf1));
				}
			}
		}

		$panjang2 = count($cf2);
		if ($panjang2==0) {
		} elseif ($panjang2==1) {
			$latest_cf2 = $cf2[0];
		} elseif ($panjang2 > 1) {
			for ($i=0; $i < count($cf2) - 1; $i++) { 
				$a = $i + 1;
				$one = 1;
				if ($i == 0) {
					$latest_cf2 = $cf2[$i] + ($cf2[$a] * ($one - $cf2[$i]));
				} else {
					$latest_cf2 = $latest_cf2 + ($cf2[$a] * ($one - $latest_cf2));
				}
			}
		}

		$panjang3 = count($cf3);
		if ($panjang3==0) {
		} elseif ($panjang3==1) {
			$latest_cf3 = $cf3[0];
		} elseif ($panjang3 > 1) {
			for ($i=0; $i < count($cf3) - 1; $i++) { 
				$a = $i + 1;
				$one = 1;
				if ($i == 0) {
					$latest_cf3 = $cf3[$i] + ($cf3[$a] * ($one - $cf3[$i]));
				} else {
					$latest_cf3 = $latest_cf3 + ($cf3[$a] * ($one - $latest_cf3));
				}
			}
		}
		
		$panjang4 = count($cf4);
		if ($panjang4==0) {
		} elseif ($panjang4==1) {
			$latest_cf4 = $cf4[0];
		} elseif ($panjang4 > 1) {
			for ($i=0; $i < count($cf4) - 1; $i++) { 
				$a = $i + 1;
				$one = 1;
				if ($i == 0) {
					$latest_cf4 = $cf4[$i] + ($cf4[$a] * ($one - $cf4[$i]));
				} else {
					$latest_cf4 = $latest_cf4 + ($cf4[$a] * ($one - $latest_cf4));
				}
			}
		}

		$this->session->set_userdata('cf1', $latest_cf1*100);
		$this->session->set_userdata('cf2', $latest_cf2*100);
		$this->session->set_userdata('cf3', $latest_cf3*100);
		$this->session->set_userdata('cf4', $latest_cf4*100);

		for ($pertanyaan=0; $pertanyaan < count($last); $pertanyaan++) { 
			$get_pertanyaan[] = $this->nilai_model->pertanyaan_cf($last[$pertanyaan]);
		}

		$show_pert = array();
		foreach ($get_pertanyaan as $array2) {
			foreach ($array2 as $key => $value) {
				$show_pert[] = $value;
			}
		}
		$call['coba'] = $show_pert;
		$dbt1 = $this->nilai_model->get_rules1();
		$dbt2 = $this->nilai_model->get_rules2();
		$dbt3 = $this->nilai_model->get_rules3();
		$dbt4 = $this->nilai_model->get_rules4();
		$tingkat1 = array();
		foreach ($dbt1 as $result) {
			$tingkat1[$result['kode_pertanyaan']] = $result['pertanyaan'];
		}
		$tingkat2 = array();
		foreach ($dbt2 as $result) {
			$tingkat2[$result['kode_pertanyaan']] = $result['pertanyaan'];
		}
		$tingkat3 = array();
		foreach ($dbt3 as $result) {
			$tingkat3[$result['kode_pertanyaan']] = $result['pertanyaan'];
		}
		$tingkat4 = array();
		foreach ($dbt4 as $result) {
			$tingkat4[$result['kode_pertanyaan']] = $result['pertanyaan'];
		}

		if ($kode_stres == "S1") {
			$call['gejala'] = $tingkat1;
			$call['solusi'] = array('Mencoba kegiatan baru, olahraga', 'Jangan menunda penyelesaian masalah', 'Melakukan hobi yang disukai', 'Menulis jurnal atau blog');
		} if ($kode_stres == "S2") {
			$call['gejala'] = $tingkat2;
			$call['solusi'] = array('Bercerita dengan teman dekat atau keluarga', 'Makan dan minum yang teratur', 'Berlibur atau melakukan kegiatan santai', 'Mencari lingkungan yang mendukung');
		} if ($kode_stres == "S3") {
			$call['gejala'] = $tingkat3;
			$call['solusi'] = array('Terbuka untuk menceritakan masalah dengan teman atau keluarga', 'Bermeditasi', 'Berinteraksi dengan teman dekat');
		} if ($kode_stres == "S4") {
			$call['gejala'] = $tingkat4;
			$call['solusi'] = array('Berkonsultasi dengan psikolog', 'Melakukan aktivitas keagamaan', 'Mengurangi konsumsi gula, kafein, daging mentah');
		}
		if ($kode_stres == "S1"){
            $print_akhir = $this->session->userdata('cf1');
        } if ($kode_stres == "S2") {
            $print_akhir = $this->session->userdata('cf2');
        } if ($kode_stres == "S3") {
            $print_akhir = $this->session->userdata('cf3');
        } if ($kode_stres == "S4") {
            $print_akhir = $this->session->userdata('cf4');
        } else {
        	$kode_stres = "S1";
        }
        $kode_hasil = uniqid();
        $nama = $this->session->userdata('nama');
        $umur = $this->session->userdata('umur');

        $data = array(
        	'kode_hasil' => $kode_hasil,
        	'nama' => $nama,
        	'usia' => $umur,
        	'tingkat_stres' => $kode_stres,
        	'nilai_cf' => $print_akhir);
        $this->nilai_model->input_hasil($data);
        
		$this->load->view('template/header');
		$this->load->view('test/result_page', $call);
		$this->load->view('template/footer');
	}
}