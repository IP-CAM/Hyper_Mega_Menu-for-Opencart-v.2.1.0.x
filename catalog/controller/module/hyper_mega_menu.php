<?php
class ControllerModuleHyperMegaMenu extends Controller {

	public function index() {


//		$this->load->language('module/hyper_mega_menu');
//        $this->load->model($this->moduleLoadModel);

//		$this->document->addStyle('view/javascript/bootstrap/css/bootstrap-switch.min.css');

//        $this->document->addScript('catalog/view/javascript/bootstrap/js/sliiide.js');
//        $this->document->addScript('catalog/view/javascript/bootstrap/js/bootstrap-hover-dropdown.js');

//        die;



	}

//    Добавить обработчики событий
//$this->db->query("INSERT INTO " . DB_PREFIX . "event SET `code` = '" . 'hyper_mega_menu' . "', `trigger` = '" . 'pre.cart.add' . "', `action` = '" . 'module/hyper_mega_menu/index' . "'");


    public function cartAddEvent($json) {
//        $this->load->controller('module/hyper_mega_menu/cart/index');
//        $data['json'] = $json;
//        return $this->load->view($this->config->get('config_template') . '/template/module/hyper_mega_menu/header_menu/cart/dropdown_menu.tpl', $data);
//print_r($json); die;
//        $this->load->controller('module/hyper_mega_menu/cart');
//        echo 'trigger cartAddEvent';

    }

    public function cartRemoveEvent() {

//        echo 'trigger cartRemoveEvent';

    }

}