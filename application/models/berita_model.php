<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class berita_model extends CI_Model {
	function descending(){
		$this->db->order_by('id', 'DESC');
		$this->db->limit(3);
		return $this->db->get('tb_berita');
	}
	function all(){
		$this->db->limit(5);
		return $this->db->get('tb_berita');
	}

	function count1(){
		$this->db->select('COUNT(id) as count');
		$this->db->from('tb_berita');
		$this->db->where('kategori', '1');
		$query = $this->db->get();
		if ($query->num_rows() > 0 ){
			$row = $query->row();
			return $row->count;
		}
		return 0;
	}
	function count2(){
		$this->db->select('COUNT(id) as count');
		$this->db->from('tb_berita');
		$this->db->where('kategori', '2');
		$query = $this->db->get();
		if ($query->num_rows() > 0 ){
			$row = $query->row();
			return $row->count;
		}
		return 0;	
	}
	function count3(){
		$this->db->select('COUNT(id) as count');
		$this->db->from('tb_berita');
		$this->db->where('kategori', '3');
		$query = $this->db->get();
		if ($query->num_rows() > 0 ){
			$row = $query->row();
			return $row->count;
		}
		return 0;
	}

	function show_news($id){
		$this->db->where('id', $id);
		return $this->db->get('tb_berita');
	}

	function cat($id){
		$this->db->where('kategori', $id);
		return $this->db->get('tb_berita');
	}
}