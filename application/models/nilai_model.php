<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class nilai_model extends CI_Model {
	function show_pertanyaan(){
		return $this->db->get('tb_pertanyaan');
	}

	function login($table, $data){
		return $this->db->get_where($table, $data);
	}

	function pertanyaan_cf($kode_pertanyaan){
		$this->db->select('pertanyaan');
		$this->db->from('tb_pertanyaan');
		$this->db->where('kode_pertanyaan', $kode_pertanyaan);
		return $this->db->get()->row_array();
	}

	function nilai_cf($kode_pertanyaan){
		$this->db->select('nilai_cf');
		$this->db->from('tb_pertanyaan');
		$this->db->where('kode_pertanyaan', $kode_pertanyaan);
		return $this->db->get()->row_array();
	} 

	function get_rules1(){
		$this->db->select('kode_pertanyaan, pertanyaan');
		$this->db->from('tb_pertanyaan');
		$this->db->where('s1', '1');
		return $this->db->get()->result_array();
	} 

	function get_rules2(){
		$this->db->select('kode_pertanyaan, pertanyaan');
		$this->db->from('tb_pertanyaan');
		$this->db->where('s2', '1');
		return $this->db->get()->result_array();
	} 

	function get_rules3(){
		$this->db->select('kode_pertanyaan, pertanyaan');
		$this->db->from('tb_pertanyaan');
		$this->db->where('s3', '1');
		return $this->db->get()->result_array();
	} 

	function get_rules4(){
		$this->db->select('kode_pertanyaan, pertanyaan');
		$this->db->from('tb_pertanyaan');
		$this->db->where('s4', '1');
		return $this->db->get()->result_array();
	} 

	function get_code1(){
		$this->db->select('kode_pertanyaan');
		$this->db->from('tb_pertanyaan');
		$this->db->where('s1', '1');
		return $this->db->get()->result_array();
	} 

	function get_code2(){
		$this->db->select('kode_pertanyaan');
		$this->db->from('tb_pertanyaan');
		$this->db->where('s2', '1');
		return $this->db->get()->result_array();
	} 

	function get_code3(){
		$this->db->select('kode_pertanyaan');
		$this->db->from('tb_pertanyaan');
		$this->db->where('s3', '1');
		return $this->db->get()->result_array();
	} 

	function get_code4(){
		$this->db->select('kode_pertanyaan');
		$this->db->from('tb_pertanyaan');
		$this->db->where('s4', '1');
		return $this->db->get()->result_array();
	}

	function input_hasil($data){
		$this->db->insert('tb_hasil', $data);
	}
}