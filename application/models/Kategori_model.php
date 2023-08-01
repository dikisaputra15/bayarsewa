<?php

class Kategori_model extends CI_Model
{
   public function batik()
   {
      // $query = "SELECT `tb_barang`.*, `kategori`.`nama_kategori`
      //             FROM `tb_barang` JOIN `kategori`
      //             ON `tb_barang`.`id_kategori` = `kategori`.`id_kategori`
      //             WHERE `id_kategori` = $id_kategori
      //           ";
      // return $this->db->query($query)->result_array();

      return $this->db->get_where('tb_barang', ['id_kategori'  => '1'])->result_array();
   }

   public function jajanan()
   {
      return $this->db->get_where('tb_barang', ['id_kategori' => '2'])->result_array();
   }

   public function souvenir()
   {
      return $this->db->get_where('tb_barang', ['id_kategori' => '3'])->result_array();
   }

   public function oleh_oleh()
   {
      return $this->db->get_where('tb_barang', ['id_kategori' => '4'])->result_array();
   }
}
