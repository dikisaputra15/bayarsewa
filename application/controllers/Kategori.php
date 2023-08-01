<?php

class Kategori extends CI_Controller
{
   public function __construct()
   {
      parent::__construct();
      // if (!$this->session->userdata('email')) {
      //    redirect('auth/login');
      // }
      $this->load->model('Kategori_model');
   }

   public function batik()
   {
      $data['title'] = 'Kategori Batik';
      $data['batik'] = $this->Kategori_model->batik();
      $this->load->view('home/header', $data);
      $this->load->view('home/topbar');
      $this->load->view('home/kategori/batik', $data);
      $this->load->view('home/footer');
   }
   public function jajanan()
   {
      $data['title'] = 'Kategori Jajanan';
      $data['jajanan'] = $this->Kategori_model->jajanan();
      $this->load->view('home/header', $data);
      $this->load->view('home/topbar');
      $this->load->view('home/kategori/jajanan', $data);
      $this->load->view('home/footer');
   }
   public function souvenir()
   {
      $data['title'] = 'Kategori Souvenir';
      $data['souvenir'] = $this->Kategori_model->souvenir();
      $this->load->view('home/header', $data);
      $this->load->view('home/topbar');
      $this->load->view('home/kategori/souvenir', $data);
      $this->load->view('home/footer');
   }
   public function oleh_oleh()
   {
      $data['title'] = 'Kategori Oleh-oleh';
      $data['oleh_oleh'] = $this->Kategori_model->oleh_oleh();
      $this->load->view('home/header', $data);
      $this->load->view('home/topbar');
      $this->load->view('home/kategori/oleh_oleh', $data);
      $this->load->view('home/footer');
   }
}
