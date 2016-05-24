<?php
class ControllerModuleHyperMegaMenu extends Controller {
	private $error = array();

    private $moduleName = 'GotoMeeting';
    private $moduleNameSmall = 'hyper_mega_menu';
    private $moduleLoadModel = 'module/hyper_mega_menu';
    private  $moduleModel = 'model_module_hyper_mega_menu';

    public function install(){
        $this->load->model($this->moduleLoadModel);
        $this->{$this->moduleModel}->install();
    }

    public function uninstall(){
        $this->load->model($this->moduleLoadModel);
        $this->{$this->moduleModel}->uninstall();
    }
	public function index() {
		$this->load->language('module/hyper_mega_menu');
        $this->load->model($this->moduleLoadModel);

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('extension/module');

        $this->document->addStyle('view/stylesheet/'.$this->moduleNameSmall.'.css');

        $this->document->addStyle('view/javascript/bootstrap/css/bootstrap-switch.min.css');
        $this->document->addStyle('view/javascript/bootstrap/css/pick-a-color-1.2.3.min.css');
        $this->document->addStyle('view/javascript/bootstrap/css/bootstrap-colorpicker.min.css');

        $this->document->addScript('view/javascript/bootstrap/js/bootstrap-switch.min.js');
        $this->document->addScript('view/javascript/bootstrap/js/tinycolor-0.9.15.min.js');
        $this->document->addScript('view/javascript/bootstrap/js/pick-a-color-1.2.3.min.js');
        $this->document->addScript('view/javascript/bootstrap/js/bootstrap-colorpicker.min.js');


        $data['heading_title'] = $this->language->get('heading_title');
        $data['text_menu_items_list'] = $this->language->get('text_menu_items_list');
        $data['column_action'] = $this->language->get('column_action');
        $data['column_name'] = $this->language->get('column_name');
        $data['column_type'] = $this->language->get('column_type');
        $data['button_add'] = $this->language->get('button_add');
        $data['button_edit'] = $this->language->get('button_edit');
        $data['button_copy'] = $this->language->get('button_copy');
        $data['button_delete'] = $this->language->get('button_delete');
        $data['text_confirm'] = $this->language->get('text_confirm');
        $data['text_no_results'] = $this->language->get('text_no_results');
        $data['about_module_text'] = $this->language->get('about_module_text');
        $data['faq_text'] = $this->language->get('faq_text');

        if (isset($this->error['warning'])) {
            $data['error_warning'] = $this->error['warning'];
        } else {
            $data['error_warning'] = '';
        }

        if (isset($this->session->data['success'])) {
            $data['success'] = $this->session->data['success'];

            unset($this->session->data['success']);
        } else {
            $data['success'] = '';
        }

        if (isset($this->error['name'])) {
            $data['error_name'] = $this->error['name'];
        } else {
            $data['error_name'] = array();
        }

        if (isset($this->error['keyword'])) {
            $data['error_keyword'] = $this->error['keyword'];
        } else {
            $data['error_keyword'] = '';
        }

        if (isset($this->request->post['selected'])) {
            $data['selected'] = (array)$this->request->post['selected'];
        } else {
            $data['selected'] = array();
        }


        if (isset($this->request->get['sort'])) {
            $sort = $this->request->get['sort'];
        } else {
            $sort = 'name';
        }

        if (isset($this->request->get['order'])) {
            $order = $this->request->get['order'];
        } else {
            $order = 'ASC';
        }

        $url = '';

        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->url->link('module/'.$this->moduleNameSmall, 'token=' . $this->session->data['token'], 'SSL')
        );

        $this->load->model('localisation/language');

        $data['languages'] = $this->model_localisation_language->getLanguages();


        if ($order == 'ASC') {
            $url .= '&order=DESC';
        } else {
            $url .= '&order=ASC';
        }

        $data['add'] = $this->url->link('module/hyper_mega_menu/addMenuItem', 'token=' . $this->session->data['token'], 'SSL');
        $data['delete'] = $this->url->link('module/hyper_mega_menu/deleteMenuItem', 'token=' . $this->session->data['token'], 'SSL');

        $data['sort_name'] = $this->url->link('module/hyper_mega_menu', 'token=' . $this->session->data['token'] . '&sort=name' . $url, 'SSL');
        $data['sort_type'] = $this->url->link('module/hyper_mega_menu', 'token=' . $this->session->data['token'] . '&sort=type' . $url, 'SSL');

        $data['menu_items'] = array();
        $results = $this->{$this->moduleModel}->getMenuItemsList($sort, $order);

        $data['sort'] = $sort;
        $data['order'] = $order;

        foreach ($results as $result) {
            $data['menu_items'][] = array(
                'id' => $result['id'],
                'main_menu_name'        => $result['main_menu_name'],
                'menu_position'        => $result['menu_position'],
                'copy'        => $this->url->link("$this->moduleLoadModel/copyMenuItem", 'token=' . $this->session->data['token'] . '&id=' . $result['id'], 'SSL'),
                'edit'        => $this->url->link("$this->moduleLoadModel/editMenuItem", 'token=' . $this->session->data['token'] . '&id=' . $result['id'], 'SSL'),
                'delete'      => $this->url->link("$this->moduleLoadModel/deleteMenuItem", 'token=' . $this->session->data['token'] . '&id=' . $result['id'], 'SSL')
            );
        }


        $this->load->model('setting/setting');
        $store_settings_config = $this->model_setting_setting->getSetting("config", $this->config->get('config_store_id'));

        $data['config_language'] = $store_settings_config['config_language'];

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('module/hyper_mega_menu/menu_items_list.tpl', $data));
	}

    public function addMenuItem(){
        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {

            $this->load->model($this->moduleLoadModel);
            $this->{$this->moduleModel}->addMenuItem($this->request->post);

            $this->response->redirect($this->url->link('module/hyper_mega_menu', 'token=' . $this->session->data['token'], 'SSL'));
        }
        $this->mainForm();

    }
    public function editMenuItem(){

        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {

//            echo '<pre>'; print_r($this->request->post); die;
            $this->load->model($this->moduleLoadModel);
            $this->{$this->moduleModel}->editSetting($this->request->get['id'], $this->request->post);

            $this->response->redirect($this->url->link('module/hyper_mega_menu', 'token=' . $this->session->data['token'], 'SSL'));


            if (isset($this->session->data['success'])) {
                $data['success'] = $this->session->data['success'];
                unset($this->session->data['success']);
            } else {
                $data['success'] = '';
            }
        }
        $this->mainForm();
    }

    public function deleteMenuItem(){
        if (($this->request->server['REQUEST_METHOD'] == 'GET') && isset($this->request->get['id'])) {

            $this->load->model($this->moduleLoadModel);
            $this->{$this->moduleModel}->deleteMenuItems($this->request->get['id']);

        }
        $this->response->redirect($this->url->link('module/hyper_mega_menu', 'token=' . $this->session->data['token'], 'SSL'));
    }

    public function copyMenuItem(){
        if (($this->request->server['REQUEST_METHOD'] == 'GET') && isset($this->request->get['id'])) {

            $this->load->model($this->moduleLoadModel);
            $this->{$this->moduleModel}->copyMenuItem($this->request->get['id']);

        }
        $this->response->redirect($this->url->link('module/hyper_mega_menu', 'token=' . $this->session->data['token'], 'SSL'));
    }

    public function addCustomItems(){
        $this->load->language('module/hyper_mega_menu');
        $this->load->model($this->moduleLoadModel);
        $this->load->model('catalog/category');
        $this->load->model('catalog/manufacturer');
        $this->load->model('catalog/information');
        $this->load->model('tool/image');
        $this->load->model('setting/setting');
        $this->load->model('localisation/language');
        $this->load->model('design/layout');

        $this->document->setTitle($this->language->get('heading_title'));
        $this->document->addStyle('view/stylesheet/'.$this->moduleNameSmall.'.css');

        $this->document->addStyle('view/javascript/bootstrap/css/bootstrap-switch.min.css');
        $this->document->addStyle('view/javascript/bootstrap/css/pick-a-color-1.2.3.min.css');

        $this->document->addScript('view/javascript/bootstrap/js/bootstrap-switch.min.js');
        $this->document->addScript('view/javascript/bootstrap/js/tinycolor-0.9.15.min.js');
        $this->document->addScript('view/javascript/bootstrap/js/pick-a-color-1.2.3.min.js');

        $data['heading_title'] = $this->language->get('heading_title');
        $data['text_form'] = $this->language->get('text_form');
        $data['text_edit'] = $this->language->get('text_edit');
        $data['text_enabled'] = $this->language->get('text_enabled');
        $data['text_disabled'] = $this->language->get('text_disabled');
        $data['text_main'] = $this->language->get('text_main');
        $data['text_help'] = $this->language->get('text_help');
        $data['text_list'] = $this->language->get('text_list');
        $data['text_select_all'] = $this->language->get('text_select_all');
        $data['text_unselect_all'] = $this->language->get('text_unselect_all');
        $data['entry_sort_order'] = $this->language->get('entry_sort_order');
        $data['sub_tab_status_text'] = $this->language->get('sub_tab_status_text');
        $data['sub_tab_showing_text'] = $this->language->get('sub_tab_showing_text');
        $data['sub_tab_custom_form_name_text'] = $this->language->get('sub_tab_custom_form_name_text');
        $data['sub_tab_custom_form_images_text'] = $this->language->get('sub_tab_custom_form_images_text');
        $data['sub_tab_custom_form_as_title_text'] = $this->language->get('sub_tab_custom_form_as_title_text');
        $data['sub_tab_custom_form_load_image_text'] = $this->language->get('sub_tab_custom_form_load_image_text');
        $data['sub_tab_custom_form_sort_order_text'] = $this->language->get('sub_tab_custom_form_sort_order_text');
        $data['tab_custom_show_subcategories_text'] = $this->language->get('tab_custom_show_subcategories_text');
        $data['tab_custom_categories_subcategories_levels_text'] = $this->language->get('tab_custom_categories_subcategories_levels_text');
        $data['menu_item_html_position_text'] = $this->language->get('menu_item_html_position_text');
        $data['menu_item_html_html_text'] = $this->language->get('menu_item_html_html_text');
        $data['sub_tab_configuration_search_category_text'] = $this->language->get('sub_tab_configuration_search_category_text');
        $data['sub_tab_configuration_search_effect_text'] = $this->language->get('sub_tab_configuration_search_effect_text');
        $data['sub_tab_configuration_search_type_text'] = $this->language->get('sub_tab_configuration_search_type_text');
        $data['tab_custom_type_text'] = $this->language->get('tab_custom_type_text');
        $data['tab_custom_category_text'] = $this->language->get('tab_custom_category_text');
        $data['tab_custom_manufacturer_text'] = $this->language->get('tab_custom_manufacturer_text');
        $data['tab_custom_information_text'] = $this->language->get('tab_custom_information_text');
        $data['tab_custom_products_text'] = $this->language->get('tab_custom_products_text');
        $data['tab_custom_link_text'] = $this->language->get('tab_custom_link_text');
        $data['tab_custom_html_text'] = $this->language->get('tab_custom_html_text');
        $data['tab_custom_constructor_text'] = $this->language->get('tab_custom_constructor_text');
        $data['tab_custom_categories_parent_text'] = $this->language->get('tab_custom_categories_parent_text');
        $data['sub_tab_configuration_make_your_choice_text'] = $this->language->get('sub_tab_configuration_make_your_choice_text');
        $data['menu_element_link_text'] = $this->language->get('menu_element_link_text');
        $data['button_save'] = $this->language->get('button_save');
        $data['button_cancel'] = $this->language->get('button_cancel');

        $data['token'] = $this->session->data['token'];
        $data['ckeditor'] = $this->config->get('config_editor_default');


        $data['languages'] = $this->model_localisation_language->getLanguages();

        $data['lang'] = $this->language->get('lang');


        $store_settings_config = $this->model_setting_setting->getSetting("config", $this->config->get('config_store_id'));

        $data['config_language'] = $store_settings_config['config_language'];

        $data['config_language_id'] = $this->config->get('config_language_id');

        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {

            foreach ($this->request->post['module_hyper_mega_menu']['custom']['menu_item']['name'] as $key=>$value) {

                if ((utf8_strlen($value) < 2) || (utf8_strlen($value) > 255)) {
                    $this->error['name'][$key] = $this->language->get('error_name');
                }
            }
            if(!$this->error){
                $this->{$this->moduleModel}->editCustomItem(0, $this->request->post, $this->session->data['menu_id']);

                $this->session->data['success'] = $this->language->get('text_success');

                $this->response->redirect($this->url->link('module/hyper_mega_menu', 'token=' . $this->session->data['token'], 'SSL'));
            }
        }
        if (isset($this->error['warning'])) {
            $data['error_warning'] = $this->error['warning'];
        } else {
            $data['error_warning'] = '';
        }

        if (isset($this->error['name'])) {
            $data['error_name'] = $this->error['name'];
        } else {
            $data['error_name'] = array();
        }


        if (isset($this->request->get['sort'])) {
            $sort = $this->request->get['sort'];
        } else {
            $sort = 'name';
        }

        if (isset($this->request->get['order'])) {
            $order = $this->request->get['order'];
        } else {
            $order = 'ASC';
        }

        if (isset($this->request->get['page'])) {
            $page = $this->request->get['page'];
        } else {
            $page = 1;
        }


        $results_custom_items =  $this->{$this->moduleModel}->getCustomItemsList($this->session->data['menu_id']);

        foreach ($results_custom_items as $result) {
            $data['custom_items'][] = array(
                'id' => $result['id'],
                'name'        => $result['name'][$this->config->get('config_language_id')],
                'sort_order'  => $result['sort_order'],
            );
        }

        // Categories

        if (isset($this->request->post['product_category'])) {
            $categories = $this->request->post['product_category'];
        } elseif (isset($this->request->get['product_id'])) {
            $categories = $this->model_catalog_product->getProductCategories($this->request->get['product_id']);
        } else {
            $categories = array();
        }

        $data['product_categories'] = array();

        foreach ($categories as $category_id) {
            $category_info = $this->model_catalog_category->getCategory($category_id);

            if ($category_info) {
                $data['product_categories'][] = array(
                    'category_id' => $category_info['category_id'],
                    'name' => ($category_info['path']) ? $category_info['path'] . ' &gt; ' . $category_info['name'] : $category_info['name']
                );
            }
        }

        $filter_data = array(
            'sort'        => 'name',
            'order'       => 'ASC'
        );

        $data['categories'] = $this->model_catalog_category->getCategories($filter_data);

        //  Manufacturers
        $data['manufacturers'] = array();

        $filter_data = array(
            'sort'  => $sort,
            'order' => $order,
            'start' => ($page - 1) * $this->config->get('config_limit_admin'),
            'limit' => $this->config->get('config_limit_admin')
        );

        $results = $this->model_catalog_manufacturer->getManufacturers($filter_data);

        foreach ($results as $result) {
            $data['manufacturers'][] = array(
                'manufacturer_id' => $result['manufacturer_id'],
                'name'            => $result['name'],
                'sort_order'      => $result['sort_order']
            );
        }

        //Information

        $data['informations'] = array();

        $filter_data = array(
            'sort'  => $sort,
            'order' => $order,
            'start' => ($page - 1) * $this->config->get('config_limit_admin'),
            'limit' => $this->config->get('config_limit_admin')
        );

        $results = $this->model_catalog_information->getInformations($filter_data);

        foreach ($results as $result) {
            $data['informations'][] = array(
                'information_id' => $result['information_id'],
                'name'          => $result['title'],
                'sort_order'     => $result['sort_order']
            );
        }
        $custom_item = array();
        if (isset($this->request->get['id'])) {
            $custom_item = $this->{$this->moduleModel}->getCustomItem($this->request->get['id']);
            $data['module_hyper_mega_menu']['custom']['menu_item'] = $custom_item;
        }else{
            $data['module_hyper_mega_menu']['custom']['menu_item'] = $custom_item;
        }



        if (isset($this->request->post['image']) && is_file(DIR_IMAGE . $this->request->post['image'])) {
            $data['thumb'] = $this->model_tool_image->resize($this->request->post['image'], 100, 100);
        } elseif (!empty($custom_item) && is_file(DIR_IMAGE . $custom_item['image'])) {
            $data['thumb'] = $this->model_tool_image->resize($custom_item['image'], 100, 100);
        } else {
            $data['thumb'] = $this->model_tool_image->resize('no_image.png', 100, 100);
        }

        $data['placeholder'] = $this->model_tool_image->resize('no_image.png', 100, 100);

        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_module'),
            'href' => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL')
        );

        if (!isset($this->request->get['module_id'])) {
            $data['breadcrumbs'][] = array(
                'text' => $this->language->get('heading_title'),
                'href' => $this->url->link('module/'.$this->moduleNameSmall, 'token=' . $this->session->data['token'], 'SSL')
            );
        } else {
            $data['breadcrumbs'][] = array(
                'text' => $this->language->get('heading_title'),
                'href' => $this->url->link('module/'.$this->moduleNameSmall, 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], 'SSL')
            );
        }


        if (!isset($this->request->get['id'])) {
            $data['action'] = $this->url->link('module/hyper_mega_menu/addCustomItems', 'token=' . $this->session->data['token'], 'SSL');
        } else {
            $data['action'] = $this->url->link('module/hyper_mega_menu/editCustomItems', 'token=' . $this->session->data['token'] . '&id=' . $this->request->get['id'], 'SSL');
        }


        $data['layouts'] = $this->model_design_layout->getLayouts();

        $data['header'] = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer'] = $this->load->controller('common/footer');

        $this->response->setOutput($this->load->view('module/hyper_mega_menu/tab_custom/custom_menu_item_form.tpl', $data));
    }


    public function editCustomItems(){

        $this->load->language('module/hyper_mega_menu');
        $this->load->model($this->moduleLoadModel);
        $this->load->model('catalog/category');
        $this->load->model('catalog/manufacturer');
        $this->load->model('catalog/information');
        $this->load->model('tool/image');
        $this->load->model('setting/setting');
        $this->load->model('localisation/language');
        $this->load->model('design/layout');

        $this->document->setTitle($this->language->get('heading_title'));
        $this->document->addStyle('view/stylesheet/'.$this->moduleNameSmall.'.css');

        $this->document->addStyle('view/javascript/bootstrap/css/bootstrap-switch.min.css');
        $this->document->addStyle('view/javascript/bootstrap/css/pick-a-color-1.2.3.min.css');

        $this->document->addScript('view/javascript/bootstrap/js/bootstrap-switch.min.js');
        $this->document->addScript('view/javascript/bootstrap/js/tinycolor-0.9.15.min.js');
        $this->document->addScript('view/javascript/bootstrap/js/pick-a-color-1.2.3.min.js');

        $data['heading_title'] = $this->language->get('heading_title');
        $data['text_form'] = $this->language->get('text_form');
        $data['text_edit'] = $this->language->get('text_edit');
        $data['text_enabled'] = $this->language->get('text_enabled');
        $data['text_disabled'] = $this->language->get('text_disabled');
        $data['text_main'] = $this->language->get('text_main');
        $data['text_help'] = $this->language->get('text_help');
        $data['text_list'] = $this->language->get('text_list');
        $data['entry_sort_order'] = $this->language->get('entry_sort_order');
        $data['text_select_all'] = $this->language->get('text_select_all');
        $data['text_unselect_all'] = $this->language->get('text_unselect_all');
        $data['sub_tab_status_text'] = $this->language->get('sub_tab_status_text');
        $data['sub_tab_showing_text'] = $this->language->get('sub_tab_showing_text');
        $data['sub_tab_custom_form_name_text'] = $this->language->get('sub_tab_custom_form_name_text');
        $data['sub_tab_custom_form_images_text'] = $this->language->get('sub_tab_custom_form_images_text');
        $data['sub_tab_custom_form_as_title_text'] = $this->language->get('sub_tab_custom_form_as_title_text');
        $data['sub_tab_custom_form_load_image_text'] = $this->language->get('sub_tab_custom_form_load_image_text');
        $data['sub_tab_custom_form_sort_order_text'] = $this->language->get('sub_tab_custom_form_sort_order_text');
        $data['tab_custom_show_subcategories_text'] = $this->language->get('tab_custom_show_subcategories_text');
        $data['tab_custom_categories_subcategories_levels_text'] = $this->language->get('tab_custom_categories_subcategories_levels_text');
        $data['menu_item_html_position_text'] = $this->language->get('menu_item_html_position_text');
        $data['menu_item_html_html_text'] = $this->language->get('menu_item_html_html_text');
        $data['sub_tab_configuration_search_category_text'] = $this->language->get('sub_tab_configuration_search_category_text');
        $data['sub_tab_configuration_search_effect_text'] = $this->language->get('sub_tab_configuration_search_effect_text');
        $data['sub_tab_configuration_search_type_text'] = $this->language->get('sub_tab_configuration_search_type_text');
        $data['tab_custom_type_text'] = $this->language->get('tab_custom_type_text');
        $data['tab_custom_category_text'] = $this->language->get('tab_custom_category_text');
        $data['tab_custom_manufacturer_text'] = $this->language->get('tab_custom_manufacturer_text');
        $data['tab_custom_information_text'] = $this->language->get('tab_custom_information_text');
        $data['tab_custom_products_text'] = $this->language->get('tab_custom_products_text');
        $data['tab_custom_link_text'] = $this->language->get('tab_custom_link_text');
        $data['tab_custom_html_text'] = $this->language->get('tab_custom_html_text');
        $data['tab_custom_constructor_text'] = $this->language->get('tab_custom_constructor_text');
        $data['tab_custom_categories_parent_text'] = $this->language->get('tab_custom_categories_parent_text');
        $data['sub_tab_configuration_make_your_choice_text'] = $this->language->get('sub_tab_configuration_make_your_choice_text');
        $data['menu_element_link_text'] = $this->language->get('menu_element_link_text');

        $data['token'] = $this->session->data['token'];
        $data['ckeditor'] = $this->config->get('config_editor_default');



        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {

            foreach ($this->request->post['module_hyper_mega_menu']['custom']['menu_item']['name'] as $key=>$value) {

                if ((utf8_strlen($value) < 2) || (utf8_strlen($value) > 255)) {
                    $this->error['name'][$key] = $this->language->get('error_name');
                }
            }
            if(!$this->error){
                $this->{$this->moduleModel}->editCustomItem($this->request->get['id'], $this->request->post);

                $this->session->data['success'] = $this->language->get('text_success');

                $this->response->redirect($this->url->link('module/hyper_mega_menu', 'token=' . $this->session->data['token'], 'SSL'));
            }
        }
        if (isset($this->error['warning'])) {
            $data['error_warning'] = $this->error['warning'];
        } else {
            $data['error_warning'] = '';
        }

        if (isset($this->error['name'])) {
            $data['error_name'] = $this->error['name'];
        } else {
            $data['error_name'] = array();
        }


        if (isset($this->request->get['sort'])) {
            $sort = $this->request->get['sort'];
        } else {
            $sort = 'name';
        }

        if (isset($this->request->get['order'])) {
            $order = $this->request->get['order'];
        } else {
            $order = 'ASC';
        }

        if (isset($this->request->get['page'])) {
            $page = $this->request->get['page'];
        } else {
            $page = 1;
        }


        $results_custom_items =  $this->{$this->moduleModel}->getCustomItemsList($this->request->get['id']);

        foreach ($results_custom_items as $result) {
            $data['custom_items'][] = array(
                'id' => $result['id'],
                'name'        => $result['name'][$this->config->get('config_language_id')],
                'sort_order'  => $result['sort_order'],
             );
        }

        // Categories

        if (isset($this->request->post['product_category'])) {
            $categories = $this->request->post['product_category'];
        } elseif (isset($this->request->get['product_id'])) {
            $categories = $this->model_catalog_product->getProductCategories($this->request->get['product_id']);
        } else {
            $categories = array();
        }

        $data['product_categories'] = array();

        foreach ($categories as $category_id) {
            $category_info = $this->model_catalog_category->getCategory($category_id);

            if ($category_info) {
                $data['product_categories'][] = array(
                    'category_id' => $category_info['category_id'],
                    'name' => ($category_info['path']) ? $category_info['path'] . ' &gt; ' . $category_info['name'] : $category_info['name']
                );
            }
        }

        $filter_data = array(
            'sort'        => 'name',
            'order'       => 'ASC'
        );

        $data['categories'] = $this->model_catalog_category->getCategories($filter_data);

        //  Manufacturers
        $data['manufacturers'] = array();

        $filter_data = array(
            'sort'  => $sort,
            'order' => $order,
            'start' => ($page - 1) * $this->config->get('config_limit_admin'),
            'limit' => $this->config->get('config_limit_admin')
        );

        $results = $this->model_catalog_manufacturer->getManufacturers($filter_data);

        foreach ($results as $result) {
            $data['manufacturers'][] = array(
                'manufacturer_id' => $result['manufacturer_id'],
                'name'            => $result['name'],
                'sort_order'      => $result['sort_order']
            );
        }

        //Information

        $data['informations'] = array();

        $filter_data = array(
            'sort'  => $sort,
            'order' => $order,
            'start' => ($page - 1) * $this->config->get('config_limit_admin'),
            'limit' => $this->config->get('config_limit_admin')
        );

        $results = $this->model_catalog_information->getInformations($filter_data);

        foreach ($results as $result) {
            $data['informations'][] = array(
                'information_id' => $result['information_id'],
                'name'          => $result['title'],
                'sort_order'     => $result['sort_order']
            );
        }

        if (isset($this->request->get['id'])) {
            $custom_item = $this->{$this->moduleModel}->getCustomItem($this->request->get['id']);
        }

        $data['module_hyper_mega_menu']['custom']['menu_item'] = $custom_item;


        if (isset($this->request->post['image']) && is_file(DIR_IMAGE . $this->request->post['image'])) {
            $data['thumb'] = $this->model_tool_image->resize($this->request->post['image'], 100, 100);
        } elseif (!empty($custom_item) && is_file(DIR_IMAGE . $custom_item['image'])) {
            $data['thumb'] = $this->model_tool_image->resize($custom_item['image'], 100, 100);
        } else {
            $data['thumb'] = $this->model_tool_image->resize('no_image.png', 100, 100);
        }

        $data['placeholder'] = $this->model_tool_image->resize('no_image.png', 100, 100);

        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_module'),
            'href' => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL')
        );

        if (!isset($this->request->get['module_id'])) {
            $data['breadcrumbs'][] = array(
                'text' => $this->language->get('heading_title'),
                'href' => $this->url->link('module/'.$this->moduleNameSmall, 'token=' . $this->session->data['token'], 'SSL')
            );
        } else {
            $data['breadcrumbs'][] = array(
                'text' => $this->language->get('heading_title'),
                'href' => $this->url->link('module/'.$this->moduleNameSmall, 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], 'SSL')
            );
        }

        $data['languages'] = $this->model_localisation_language->getLanguages();

        $data['lang'] = $this->language->get('lang');


        $store_settings_config = $this->model_setting_setting->getSetting("config", $this->config->get('config_store_id'));

        $data['config_language'] = $store_settings_config['config_language'];

        $data['config_language_id'] = $this->config->get('config_language_id');

        if (!isset($this->request->get['id'])) {
            $data['action'] = $this->url->link('module/hyper_mega_menu/addCustomItems', 'token=' . $this->session->data['token'], 'SSL');
        } else {
            $data['action'] = $this->url->link('module/hyper_mega_menu/editCustomItems', 'token=' . $this->session->data['token'] . '&id=' . $this->request->get['id'], 'SSL');
        }


        $data['layouts'] = $this->model_design_layout->getLayouts();

        $data['header'] = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer'] = $this->load->controller('common/footer');

        $this->response->setOutput($this->load->view('module/hyper_mega_menu/tab_custom/custom_menu_item_form.tpl', $data));
    }

    protected function mainForm(){

        $this->load->language('module/hyper_mega_menu');

        $this->document->setTitle($this->language->get('heading_title'));

        $this->load->model('extension/module');
        $this->load->model($this->moduleLoadModel);
        $this->load->model('localisation/language');
        $this->load->model('tool/image');
        $this->load->model('localisation/language');
        $this->load->model('setting/setting');


        $this->document->addStyle('view/stylesheet/'.$this->moduleNameSmall.'.css');
        $this->document->addStyle('view/javascript/bootstrap/css/bootstrap-switch.min.css');
//        $this->document->addStyle('view/javascript/bootstrap/css/pick-a-color-1.2.3.min.css');
        $this->document->addStyle('https://cdnjs.cloudflare.com/ajax/libs/bootstrap-colorpicker/2.3.0/css/bootstrap-colorpicker.min.css');
        $this->document->addStyle('view/javascript/bootstrap/css/fontawesome-iconpicker.min.css');

        $this->document->addScript('view/javascript/bootstrap/js/bootstrap-switch.min.js');
        $this->document->addScript('view/javascript/bootstrap/js/tinycolor-0.9.15.min.js');
//        $this->document->addScript('view/javascript/bootstrap/js/pick-a-color-1.2.3.min.js');
        $this->document->addScript('https://cdnjs.cloudflare.com/ajax/libs/bootstrap-colorpicker/2.3.0/js/bootstrap-colorpicker.min.js');
        $this->document->addScript('view/javascript/bootstrap/js/fontawesome-iconpicker.min.js');

        $data['heading_title'] = $this->language->get('heading_title');
        $data['text_edit'] = $this->language->get('text_edit');
        $data['text_enabled'] = $this->language->get('text_enabled');
        $data['text_disabled'] = $this->language->get('text_disabled');
        $data['text_main'] = $this->language->get('text_main');
        $data['text_help'] = $this->language->get('text_help');
        $data['text_list'] = $this->language->get('text_list');
        $data['text_select_all'] = $this->language->get('text_select_all');
        $data['text_unselect_all'] = $this->language->get('text_unselect_all');
        $data['text_no_results'] = $this->language->get('text_no_results');
        $data['text_confirm'] = $this->language->get('text_confirm');
        $data['button_save'] = $this->language->get('button_save');
        $data['button_apply'] = $this->language->get('button_apply');
        $data['select_menu_type_text'] = $this->language->get('select_menu_type_text');
        $data['create_new_menu_text'] = $this->language->get('create_new_menu_text');
        $data['add_new_menu_text'] = $this->language->get('add_new_menu_text');
        $data['fixed_menu_text'] = $this->language->get('fixed_menu_text');
        $data['main_menu_text'] = $this->language->get('main_menu_text');
        $data['sidebar_menu_text'] = $this->language->get('sidebar_menu_text');
        $data['menu_title_text'] = $this->language->get('menu_title_text');
        $data['menu_title_text_hint'] = $this->language->get('menu_title_text_hint');
        $data['button_add'] = $this->language->get('button_add');
        $data['button_edit'] = $this->language->get('button_edit');
        $data['button_copy'] = $this->language->get('button_copy');
        $data['button_delete'] = $this->language->get('button_delete');
        $data['tab_settings_text'] = $this->language->get('tab_settings_text');
        $data['tab_design_text'] = $this->language->get('tab_design_text');
        $data['tab_configurations_text'] = $this->language->get('tab_configurations_text');
        $data['tab_custom_text'] = $this->language->get('tab_custom_text');
        $data['tab_telephone_text'] = $this->language->get('tab_telephone_text');
        $data['tab_additionally_text'] = $this->language->get('tab_additionally_text');
        $data['menu_title_type_text_hint'] = $this->language->get('menu_title_type_text_hint');
        $data['tab_main_text'] = $this->language->get('tab_main_text');
        $data['tab_menu_design_text'] = $this->language->get('tab_menu_design_text');
        $data['tab_design_dropdown_elements_text'] = $this->language->get('tab_design_dropdown_elements_text');
        $data['tab_design_css_js_text'] = $this->language->get('tab_design_css_js_text');
        $data['user_customizing_theme_title'] = $this->language->get('user_customizing_theme_title');
        $data['sub_tab_status_text'] = $this->language->get('sub_tab_status_text');
        $data['sub_tab_menu_design_font_size_text'] = $this->language->get('sub_tab_menu_design_font_size_text');
        $data['sub_tab_menu_design_font_size_text_hint'] = $this->language->get('sub_tab_menu_design_font_size_text_hint');
        $data['sub_tab_showing_text'] = $this->language->get('sub_tab_showing_text');
        $data['sub_tab_showing_text_hint'] = $this->language->get('sub_tab_showing_text_hint');
        $data['sub_tab_show_text'] = $this->language->get('sub_tab_show_text');
        $data['sub_tab_show_text_hint'] = $this->language->get('sub_tab_show_text_hint');
        $data['sub_tab_on_hover_text'] = $this->language->get('sub_tab_on_hover_text');
        $data['sub_tab_temporary_delay_text'] = $this->language->get('sub_tab_temporary_delay_text');
        $data['sub_tab_temporary_delay_text_hint'] = $this->language->get('sub_tab_temporary_delay_text_hint');
        $data['sub_tab_main_position_text'] = $this->language->get('sub_tab_main_position_text');
        $data['sub_tab_main_filter_text'] = $this->language->get('sub_tab_main_filter_text');
        $data['sub_tab_move_menu_elements_text'] = $this->language->get('sub_tab_move_menu_elements_text');
        $data['sub_tab_move_side_text'] = $this->language->get('sub_tab_move_side_text');
        $data['sub_tab_size_shift_text'] = $this->language->get('sub_tab_size_shift_text');
        $data['sub_tab_css_js_css_text'] = $this->language->get('sub_tab_css_js_css_text');
        $data['sub_tab_design_mode_text'] = $this->language->get('sub_tab_design_mode_text');
        $data['sub_tab_css_js_enable_css_text'] = $this->language->get('sub_tab_css_js_enable_css_text');
        $data['sub_tab_css_js_enable_css_text_hint'] = $this->language->get('sub_tab_css_js_enable_css_text_hint');
        $data['sub_tab_css_js_enable_js_text'] = $this->language->get('sub_tab_css_js_enable_js_text');
        $data['sub_tab_css_js_enable_js_text_hint'] = $this->language->get('sub_tab_css_js_enable_js_text_hint');
        $data['sub_tab_design_mode_text_hint'] = $this->language->get('sub_tab_design_mode_text_hint');
        $data['sub_tab_theme_brightness_text'] = $this->language->get('sub_tab_theme_brightness_text');
        $data['sub_tab_background_mode_text'] = $this->language->get('sub_tab_background_mode_text');
        $data['sub_tab_background_mode_text_hint'] = $this->language->get('sub_tab_background_mode_text_hint');
        $data['sub_tab_fill_color_text'] = $this->language->get('sub_tab_fill_color_text');
        $data['sub_tab_background_image_text'] = $this->language->get('sub_tab_background_image_text');
        $data['sub_tab_font_color_text'] = $this->language->get('sub_tab_font_color_text');
        $data['sub_tab_font_color_hover_text'] = $this->language->get('sub_tab_font_color_hover_text');
        $data['sub_tab_button_color_hover_text'] = $this->language->get('sub_tab_button_color_hover_text');
        $data['sub_tab_background_image_position_text'] = $this->language->get('sub_tab_background_image_position_text');
        $data['sub_tab_background_image_repeat_text'] = $this->language->get('sub_tab_background_image_repeat_text');
        $data['sub_tab_configuration_favorites_goods_text'] = $this->language->get('sub_tab_configuration_favorites_goods_text');
        $data['sub_tab_configuration_name_favorites_goods_text'] = $this->language->get('sub_tab_configuration_name_favorites_goods_text');
        $data['sub_tab_configuration_favorites_goods_quantity_text'] = $this->language->get('sub_tab_configuration_favorites_goods_quantity_text');
        $data['sub_tab_configuration_favorites_goods_quantity_text_hint'] = $this->language->get('sub_tab_configuration_favorites_goods_quantity_text_hint');
        $data['sub_tab_configuration_favorites_goods_guest_show_text'] = $this->language->get('sub_tab_configuration_favorites_goods_guest_show_text');
        $data['sub_tab_configuration_favorites_goods_guest_show_text_hint'] = $this->language->get('sub_tab_configuration_favorites_goods_guest_show_text_hint');
        $data['sub_tab_configuration_favorites_goods_text_hint'] = $this->language->get('sub_tab_configuration_favorites_goods_text_hint');
        $data['sub_tab_configuration_name_favorites_goods_text_hint'] = $this->language->get('sub_tab_configuration_name_favorites_goods_text_hint');
        $data['sub_tab_configuration_goods_wish_text'] = $this->language->get('sub_tab_configuration_goods_wish_text');
        $data['sub_tab_configuration_name_goods_wish_text'] = $this->language->get('sub_tab_configuration_name_goods_wish_text');
        $data['sub_tab_configuration_goods_wish_text_hint'] = $this->language->get('sub_tab_configuration_goods_wish_text_hint');
        $data['sub_tab_configuration_name_goods_wish_text_hint'] = $this->language->get('sub_tab_configuration_name_goods_wish_text_hint');
        $data['sub_tab_configuration_cart_text'] = $this->language->get('sub_tab_configuration_cart_text');
        $data['sub_tab_configuration_checkout_text'] = $this->language->get('sub_tab_configuration_checkout_text');
        $data['sub_tab_configuration_search_model_text'] = $this->language->get('sub_tab_configuration_search_model_text');
        $data['sub_tab_configuration_search_sku_text'] = $this->language->get('sub_tab_configuration_search_sku_text');
        $data['sub_tab_configuration_search_h1_text'] = $this->language->get('sub_tab_configuration_search_h1_text');
        $data['sub_tab_configuration_search_attribute_text'] = $this->language->get('sub_tab_configuration_search_attribute_text');
        $data['sub_tab_configuration_search_effect_text'] = $this->language->get('sub_tab_configuration_search_effect_text');
        $data['sub_tab_configuration_search_type_text'] = $this->language->get('sub_tab_configuration_search_type_text');
        $data['create_menu_element_text'] = $this->language->get('create_menu_element_text');
        $data['menu_element_logo_text'] = $this->language->get('menu_element_logo_text');
        $data['menu_element_telephone_text'] = $this->language->get('menu_element_telephone_text');
        $data['menu_element_link_text'] = $this->language->get('menu_element_link_text');
        $data['menu_element_custom_text'] = $this->language->get('menu_element_custom_text');
        $data['menu_element_account_text'] = $this->language->get('menu_element_account_text');
        $data['menu_element_wishlist_text'] = $this->language->get('menu_element_wishlist_text');
        $data['menu_element_favorites_text'] = $this->language->get('menu_element_favorites_text');
        $data['menu_element_wish_text'] = $this->language->get('menu_element_wish_text');
        $data['menu_element_search_text'] = $this->language->get('menu_element_search_text');
        $data['menu_element_cart_text'] = $this->language->get('menu_element_cart_text');
        $data['sub_tab_configuration_image_text'] = $this->language->get('sub_tab_configuration_image_text');
        $data['sub_tab_configuration_alt_text'] = $this->language->get('sub_tab_configuration_alt_text');
        $data['sub_tab_configuration_logo_title_text'] = $this->language->get('sub_tab_configuration_logo_title_text');
        $data['sub_tab_configuration_link_title_text'] = $this->language->get('sub_tab_configuration_link_title_text');
        $data['sub_tab_configuration_link_title_text_hint'] = $this->language->get('sub_tab_configuration_link_title_text_hint');
        $data['sub_tab_configuration_link_text'] = $this->language->get('sub_tab_configuration_link_text');
        $data['sub_tab_configuration_link_text_hint'] = $this->language->get('sub_tab_configuration_link_text');
        $data['sub_tab_configuration_link_icon_text'] = $this->language->get('sub_tab_configuration_link_icon_text');
        $data['sub_tab_configuration_link_icon_text_hint'] = $this->language->get('sub_tab_configuration_link_icon_text_hint');
        $data['sub_tab_configuration_link_show_icon_text'] = $this->language->get('sub_tab_configuration_link_show_icon_text');
        $data['sub_tab_configuration_link_show_icon_text_hint'] = $this->language->get('sub_tab_configuration_link_show_icon_text_hint');
        $data['sub_tab_configuration_link_blank_text'] = $this->language->get('sub_tab_configuration_link_blank_text');
        $data['sub_tab_configuration_link_blank_text_hint'] = $this->language->get('sub_tab_configuration_link_blank_text_hint');
        $data['sub_tab_configuration_make_your_choice_text'] = $this->language->get('sub_tab_configuration_make_your_choice_text');
        $data['sub_tab_configuration_contact_type_text'] = $this->language->get('sub_tab_configuration_contact_type_text');
        $data['sub_tab_configuration_phone_operator_text'] = $this->language->get('sub_tab_configuration_phone_operator_text');
        $data['sub_tab_configuration_icon_text'] = $this->language->get('sub_tab_configuration_icon_text');
        $data['sub_tab_configuration_title_text'] = $this->language->get('sub_tab_configuration_title_text');
        $data['sub_tab_configuration_delimiter_text'] = $this->language->get('sub_tab_configuration_delimiter_text');
        $data['sub_tab_configuration_phone_link_text'] = $this->language->get('sub_tab_configuration_phone_link_text');
        $data['sub_tab_configuration_encore_text'] = $this->language->get('sub_tab_configuration_encore_text');
        $data['sub_tab_configuration_menu_type_text'] = $this->language->get('sub_tab_configuration_menu_type_text');
        $data['sub_tab_configuration_parameter_text'] = $this->language->get('sub_tab_configuration_parameter_text');
        $data['sub_tab_configuration_images_text'] = $this->language->get('sub_tab_configuration_images_text');
        $data['sub_tab_configuration_parameter_all_width_menu_text'] = $this->language->get('sub_tab_configuration_parameter_all_width_menu_text');
        $data['sub_tab_configuration_parameter_all_width_content_text'] = $this->language->get('sub_tab_configuration_parameter_all_width_content_text');
        $data['sub_tab_configuration_cart_as_usual_text'] = $this->language->get('sub_tab_configuration_cart_as_usual_text');
        $data['sub_tab_configuration_cart_as_cart_link_text'] = $this->language->get('sub_tab_configuration_cart_as_cart_link_text');
        $data['sub_tab_configuration_cart_price_text'] = $this->language->get('sub_tab_configuration_cart_price_text');
        $data['sub_tab_configuration_cart_price_text_hint'] = $this->language->get('sub_tab_configuration_cart_price_text_hint');
        $data['sub_tab_configuration_cart_compaq_text'] = $this->language->get('sub_tab_configuration_cart_compaq_text');
        $data['sub_tab_configuration_cart_compaq_text_hint'] = $this->language->get('sub_tab_configuration_cart_compaq_text_hint');
        $data['sub_tab_configuration_model_text'] = $this->language->get('sub_tab_configuration_model_text');
        $data['sub_tab_configuration_open_cart_text'] = $this->language->get('sub_tab_configuration_open_cart_text');
        $data['sub_tab_configuration_open_cart_text_hint'] = $this->language->get('sub_tab_configuration_open_cart_text_hint');
        $data['sub_tab_configuration_sku_text'] = $this->language->get('sub_tab_configuration_sku_text');
        $data['sub_tab_configuration_manufacturer_text'] = $this->language->get('sub_tab_configuration_manufacturer_text');
        $data['sub_tab_configuration_price_text'] = $this->language->get('sub_tab_configuration_price_text');
        $data['sub_tab_configuration_discount_text'] = $this->language->get('sub_tab_configuration_discount_text');
        $data['sub_tab_configuration_total_text'] = $this->language->get('sub_tab_configuration_total_text');
        $data['sub_tab_configuration_signature_text'] = $this->language->get('sub_tab_configuration_signature_text');
        $data['sub_tab_configuration_cart_signature_text'] = $this->language->get('sub_tab_configuration_cart_signature_text');
        $data['sub_tab_configuration_cart_signature_text_hint'] = $this->language->get('sub_tab_configuration_cart_signature_text_hint');
        $data['sub_tab_configuration_cart_signature_icon_text'] = $this->language->get('sub_tab_configuration_cart_signature_icon_text');
        $data['sub_tab_configuration_cart_signature_icon_text_hint'] = $this->language->get('sub_tab_configuration_cart_signature_icon_text_hint');
        $data['sub_tab_configuration_account_show_initials_text'] = $this->language->get('sub_tab_configuration_account_show_initials_text');
        $data['sub_tab_configuration_account_show_initials_text_hint'] = $this->language->get('sub_tab_configuration_account_show_initials_text_hint');
        $data['sub_tab_configuration_account_title_text'] = $this->language->get('sub_tab_configuration_account_title_text');
        $data['sub_tab_configuration_account_title_text_hint'] = $this->language->get('sub_tab_configuration_account_title_text_hint');
        $data['sub_tab_configuration_cart_user_html_text'] = $this->language->get('sub_tab_configuration_cart_user_html_text');
        $data['sub_tab_configuration_cart_user_html_text_hint'] = $this->language->get('sub_tab_configuration_cart_user_html_text_hint');
        $data['sub_tab_configuration_cart_guest_html_text'] = $this->language->get('sub_tab_configuration_cart_guest_html_text');
        $data['sub_tab_configuration_cart_guest_html_text_hint'] = $this->language->get('sub_tab_configuration_cart_guest_html_text_hint');
        $data['sub_tab_configuration_open_account_text'] = $this->language->get('sub_tab_configuration_open_account_text');
        $data['sub_tab_configuration_open_account_text_hint'] = $this->language->get('sub_tab_configuration_open_account_text_hint');
        $data['sub_tab_configuration_open_account_popup_text'] = $this->language->get('sub_tab_configuration_open_account_popup_text');
        $data['sub_tab_configuration_open_account_popup_text_hint'] = $this->language->get('sub_tab_configuration_open_account_popup_text_hint');
        $data['sub_tab_configuration_account_dropdown_text'] = $this->language->get('sub_tab_configuration_account_dropdown_text');
        $data['sub_tab_configuration_account_popup_text'] = $this->language->get('sub_tab_configuration_account_popup_text');
        $data['sub_tab_configuration_account_move_left_text'] = $this->language->get('sub_tab_configuration_account_move_left_text');
        $data['sub_tab_configuration_account_move_right_text'] = $this->language->get('sub_tab_configuration_account_move_right_text');
        $data['sub_tab_configuration_account_move_top_text'] = $this->language->get('sub_tab_configuration_account_move_top_text');
        $data['sub_tab_configuration_account_move_bottom_text'] = $this->language->get('sub_tab_configuration_account_move_bottom_text');
        $data['sub_tab_configuration_account_show_html_text'] = $this->language->get('sub_tab_configuration_account_show_html_text');
        $data['sub_tab_configuration_account_show_html_text_hint'] = $this->language->get('sub_tab_configuration_account_show_html_text_hint');
        $data['sub_tab_configuration_account_html_side_text'] = $this->language->get('sub_tab_configuration_account_html_side_text');
        $data['sub_tab_configuration_account_html_side_text_hint'] = $this->language->get('sub_tab_configuration_account_html_side_text_hint');
        $data['sub_tab_configuration_custom_menu_type_text_hint'] = $this->language->get('sub_tab_configuration_custom_menu_type_text_hint');
        $data['sub_tab_configuration_custom_link_text_hint'] = $this->language->get('sub_tab_configuration_custom_link_text_hint');
        $data['sub_tab_configuration_custom_parameter_text_hint'] = $this->language->get('sub_tab_configuration_custom_parameter_text_hint');
        $data['sub_tab_configuration_text_text'] = $this->language->get('sub_tab_configuration_text_text');
        $data['sub_tab_configuration_search_effect_slip_text'] = $this->language->get('sub_tab_configuration_search_effect_slip_text');
        $data['sub_tab_configuration_search_effect_dropdown_field_text'] = $this->language->get('sub_tab_configuration_search_effect_dropdown_field_text');
        $data['sub_tab_configuration_search_type_usual_text'] = $this->language->get('sub_tab_configuration_search_type_usual_text');
        $data['sub_tab_configuration_search_type_compaq_text'] = $this->language->get('sub_tab_configuration_search_type_compaq_text');
        $data['sub_tab_configuration_search_autocomplete_text'] = $this->language->get('sub_tab_configuration_search_autocomplete_text');
        $data['menu_element_search_criteria_text'] = $this->language->get('menu_element_search_criteria_text');
        $data['sub_tab_configuration_search_autocomplete_text_hint'] = $this->language->get('sub_tab_configuration_search_autocomplete_text_hint');
        $data['sub_tab_configuration_search_type_as_link_text'] = $this->language->get('sub_tab_configuration_search_type_as_link_text');
        $data['sub_tab_configuration_custom_show_title_text'] = $this->language->get('sub_tab_configuration_custom_show_title_text');
        $data['sub_tab_configuration_custom_show_title_text_hint'] = $this->language->get('sub_tab_configuration_custom_show_title_text_hint');
        $data['sub_tab_configuration_custom_show_images_text'] = $this->language->get('sub_tab_configuration_custom_show_images_text');
        $data['sub_tab_configuration_custom_show_images_text_hint'] = $this->language->get('sub_tab_configuration_custom_show_images_text_hint');
        $data['sub_tab_custom_form_images_text'] = $this->language->get('sub_tab_custom_form_images_text');
        $data['tab_custom_type_text'] = $this->language->get('tab_custom_type_text');
        $data['tab_custom_category_text'] = $this->language->get('tab_custom_category_text');
        $data['tab_custom_manufacturer_text'] = $this->language->get('tab_custom_manufacturer_text');
        $data['tab_custom_information_text'] = $this->language->get('tab_custom_information_text');
        $data['tab_custom_products_text'] = $this->language->get('tab_custom_products_text');
        $data['tab_custom_link_text'] = $this->language->get('tab_custom_link_text');
        $data['tab_custom_html_text'] = $this->language->get('tab_custom_html_text');
        $data['sub_tab_configuration_search_search_by_text'] = $this->language->get('sub_tab_configuration_search_search_by_text');
        $data['tab_custom_constructor_text'] = $this->language->get('tab_custom_constructor_text');
        $data['tab_custom_categories_parent_text'] = $this->language->get('tab_custom_categories_parent_text');
        $data['menu_item_phone_add_button_text'] = $this->language->get('menu_item_phone_add_button_text');
        $data['tab_custom_show_subcategories_text'] = $this->language->get('tab_custom_show_subcategories_text');
        $data['tab_custom_categories_subcategories_levels_text'] = $this->language->get('tab_custom_categories_subcategories_levels_text');
        $data['menu_item_html_position_text'] = $this->language->get('menu_item_html_position_text');
        $data['menu_item_html_html_text'] = $this->language->get('menu_item_html_html_text');
        $data['sub_tab_show_text_hint'] = $this->language->get('sub_tab_show_text_hint');
        $data['sub_tab_on_hover_text_hint'] = $this->language->get('sub_tab_on_hover_text_hint');
        $data['sub_tab_move_menu_elements_text_hint'] = $this->language->get('sub_tab_move_menu_elements_text_hint');
        $data['sub_tab_size_shift_text_hint'] = $this->language->get('sub_tab_size_shift_text_hint');
        $data['users_theme_text_hint'] = $this->language->get('users_theme_text_hint');
        $data['integration_theme_text_hint'] = $this->language->get('integration_theme_text_hint');
        $data['light_theme_text_hint'] = $this->language->get('light_theme_text_hint');
        $data['dark_theme_text_hint'] = $this->language->get('dark_theme_text_hint');
        $data['picture_mode_text_hint'] = $this->language->get('picture_mode_text_hint');
        $data['fill_mode_text_hint'] = $this->language->get('fill_mode_text_hint');
        $data['sub_tab_background_image_text_hint'] = $this->language->get('sub_tab_background_image_text_hint');
        $data['entry_name'] = $this->language->get('entry_name');
        $data['entry_title'] = $this->language->get('entry_title');
        $data['entry_description'] = $this->language->get('entry_description');
        $data['entry_status'] = $this->language->get('entry_status');
        $data['button_apply'] = $this->language->get('button_apply');
        $data['button_save'] = $this->language->get('button_save');
        $data['button_apply'] = $this->language->get('button_apply');
        $data['button_cancel'] = $this->language->get('button_cancel');

        $data['token'] = $this->session->data['token'];
        $data['ckeditor'] = $this->config->get('config_editor_default');
        $data['config_language_id'] = $this->config->get('config_language_id');

        $data['languages'] = $this->model_localisation_language->getLanguages();

        $data['lang'] = $this->language->get('lang');

        if (isset($this->error['warning'])) {
            $data['error_warning'] = $this->error['warning'];
        } else {
            $data['error_warning'] = '';
        }

        if (isset($this->error['name'])) {
            $data['error_name'] = $this->error['name'];
        } else {
            $data['error_name'] = '';
        }

        if (isset($this->error['menu_type'])) {
            $data['error_menu_type'] = $this->error['menu_type'];
        } else {
            $data['error_menu_type'] = '';
        }

        if (isset($this->session->data['success'])) {
            $data['success'] = $this->session->data['success'];
            unset($this->session->data['success']);
        } else {
            $data['success'] = '';
        }

        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_module'),
            'href' => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL')
        );

        if (!isset($this->request->get['module_id'])) {
            $data['breadcrumbs'][] = array(
                'text' => $this->language->get('heading_title'),
                'href' => $this->url->link('module/'.$this->moduleNameSmall, 'token=' . $this->session->data['token'], 'SSL')
            );
        } else {
            $data['breadcrumbs'][] = array(
                'text' => $this->language->get('heading_title'),
                'href' => $this->url->link('module/'.$this->moduleNameSmall, 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], 'SSL')
            );
        }



        if (!isset($this->request->get['id'])) {
            $data['action'] = $this->url->link("$this->moduleLoadModel/addMenuItem", 'token=' . $this->session->data['token'], 'SSL');
        } else {
            $data['action'] = $this->url->link("$this->moduleLoadModel/editMenuItem", 'token=' . $this->session->data['token'] . '&id=' . $this->request->get['id'], 'SSL');
        }

        if($this->request->get['route'] != 'module/hyper_mega_menu/addMenuItem'){
            $data['action_stay'] = $this->url->link("$this->moduleLoadModel/updateStay", 'token=' . $this->session->data['token'] . '&id=' . $this->request->get['id'], 'SSL');
        } else {
            $data['action_stay'] = false;
        }


        $data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

        if (isset($this->request->get['module_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
            $module_info = $this->model_extension_module->getModule($this->request->get['module_id']);
        }




        $data['add'] = $this->url->link('module/hyper_mega_menu/addCustomItems', 'token=' . $this->session->data['token'], 'SSL');
        $data['delete'] = $this->url->link('module/hyper_mega_menu/deleteCustomItems', 'token=' . $this->session->data['token'], 'SSL');



        $data['custom_items'] = array();
        if (isset($this->request->get['id'])) {

            $data['editMenuItem'] = true;

            $module_menu_item_settings = $this->{$this->moduleModel}->getSetting($this->request->get['id']);
            $this->session->data['menu_id'] = $this->request->get['id'];
            $results_custom_items =  $this->{$this->moduleModel}->getCustomItemsList($this->request->get['id']);
            $results_phones_list =  $this->{$this->moduleModel}->getPhonesList();
            $data['phones_list'] = $results_phones_list;
            $data['module_hyper_mega_menu'] = $module_menu_item_settings;

            if(empty($data['module_hyper_mega_menu']['configuration']['search']['search_place'])){
                $data['module_hyper_mega_menu']['configuration']['search']['search_place'] = array();
            }

            foreach ($results_custom_items as $result) {
                $data['custom_items'][] = array(
                    'id' => $result['id'],
                    'name'        => $result['name'][$this->config->get('config_language_id')],
                    'sort_order'  => $result['sort_order'],
                    'edit'        => $this->url->link('module/hyper_mega_menu/editCustomItems', 'token=' . $this->session->data['token'] . '&id=' . $result['id'], 'SSL'),
                    'delete'      => $this->url->link('catalog/category/deleteCustomItems', 'token=' . $this->session->data['token'] . '&id=' . $result['id'], 'SSL')
                );
            }

        }
//        echo '<pre>'; print_r($module_menu_item_settings['configuration']); die;


        if(isset($module_menu_item_settings['configuration']['phone'])){
            $data['configuration']['phone'] = $module_menu_item_settings['configuration']['phone'];
        }else{
            $data['configuration']['phone'] = array();
        }

        if(isset($module_menu_item_settings['configuration']['logo'])){
            $data['configuration']['logo'] = $module_menu_item_settings['configuration']['logo'];
        }else{
            $data['configuration']['logo'] = array();
        }

        if(isset($module_menu_item_settings['configuration']['simple_link'])){
            $data['configuration']['simple_link'] = $module_menu_item_settings['configuration']['simple_link'];
        }else{
            $data['configuration']['simple_link'] = array();
        }

        if(isset($module_menu_item_settings['configuration']['custom'])){
            $data['configuration']['custom'] = $module_menu_item_settings['configuration']['custom'];
        }else{
            $data['configuration']['custom'] = array();
        }

        if(isset($module_menu_item_settings['configuration']['account'])){
            $data['configuration']['account'] = $module_menu_item_settings['configuration']['account'];
        }else{
            $data['configuration']['account'] = array();
        }

        if(isset($module_menu_item_settings['configuration']['wish_compare'])){
            $data['configuration']['wish_compare'] = $module_menu_item_settings['configuration']['wish_compare'];
        }else{
            $data['configuration']['wish_compare'] = array();
        }

        if(isset($module_menu_item_settings['configuration']['search'])){
            $data['configuration']['search'] = $module_menu_item_settings['configuration']['search'];
        }else{
            $data['configuration']['search'] = array();
        }

        if(isset($module_menu_item_settings['configuration']['cart'])){
            $data['configuration']['cart'] = $module_menu_item_settings['configuration']['cart'];
        }else{
            $data['configuration']['cart'] = array();
        }


//        $this->data['modules'] = array();
//
//
//
//        if (isset($this->request->post['page_content_module'])) {
//            $this->data['modules'] = $this->request->post['page_content_module'];
//        } elseif ($this->config->get('page_content_module')) {
//            $this->data['modules'] = $this->config->get('page_content_module');
//        }

        $data['no_image'] = $this->model_tool_image->resize('no_image.png', 100, 100);


        if (isset($this->request->post['module_hyper_mega_menu']['settings']['menu_design']['image'])) {
            $data['module_hyper_mega_menu']['settings']['menu_design']['image'] = $this->request->post['module_hyper_mega_menu']['settings']['menu_design']['image'];
        } elseif (!empty($module_menu_item_settings['settings']['menu_design']['image'])) {
            $data['module_hyper_mega_menu']['settings']['menu_design']['image'] = $module_menu_item_settings['settings']['menu_design']['image'];
        } else {
            $data['module_hyper_mega_menu']['settings']['menu_design']['image'] = '';
        }

        if (isset($this->request->post['module_hyper_mega_menu']['settings']['menu_design']['image']) && is_file(DIR_IMAGE . $this->request->post['module_hyper_mega_menu']['settings']['menu_design']['image'])) {
            $data['module_hyper_mega_menu']['settings']['menu_design']['thumb'] = $this->model_tool_image->resize($this->request->post['module_hyper_mega_menu']['settings']['menu_design']['image'], 100, 100);
        } elseif (isset($module_menu_item_settings['settings']['menu_design']['image']) && is_file(DIR_IMAGE . $module_menu_item_settings['settings']['menu_design']['image'])) {
            $data['module_hyper_mega_menu']['settings']['menu_design']['thumb'] = $this->model_tool_image->resize($module_menu_item_settings['settings']['menu_design']['image'], 100, 100);
        } else {
            $data['module_hyper_mega_menu']['settings']['menu_design']['thumb'] = $this->model_tool_image->resize('no_image.png', 100, 100);
        }


        if (isset($this->request->post['module_hyper_mega_menu']['settings']['design_dropdown']['image'])) {
            $data['module_hyper_mega_menu']['settings']['design_dropdown']['image'] = $this->request->post['module_hyper_mega_menu']['settings']['design_dropdown']['image'];
        } elseif (!empty($module_menu_item_settings['settings']['design_dropdown']['image'])) {
            $data['module_hyper_mega_menu']['settings']['design_dropdown']['image'] = $module_menu_item_settings['settings']['design_dropdown']['image'];
        } else {
            $data['module_hyper_mega_menu']['settings']['design_dropdown']['image'] = '';
        }

        if (isset($this->request->post['module_hyper_mega_menu']['settings']['design_dropdown']['image']) && is_file(DIR_IMAGE . $this->request->post['module_hyper_mega_menu']['settings']['design_dropdown']['image'])) {
            $data['module_hyper_mega_menu']['settings']['design_dropdown']['thumb'] = $this->model_tool_image->resize($this->request->post['module_hyper_mega_menu']['settings']['design_dropdown']['image'], 100, 100);
        } elseif (isset($module_menu_item_settings['settings']['design_dropdown']['image']) && is_file(DIR_IMAGE . $module_menu_item_settings['settings']['design_dropdown']['image'])) {
            $data['module_hyper_mega_menu']['settings']['design_dropdown']['thumb'] = $this->model_tool_image->resize($module_menu_item_settings['settings']['design_dropdown']['image'], 100, 100);
        } else {
            $data['module_hyper_mega_menu']['settings']['design_dropdown']['thumb'] = $this->model_tool_image->resize('no_image.png', 100, 100);
        }









//print_r($module_menu_item_settings); die;


        if (isset($this->request->post['module_hyper_mega_menu']['configuration']['logo'])) {
            foreach($this->request->post['module_hyper_mega_menu']['configuration']['logo'] as $logo_key=>$logo_value){
                $data['configuration']['logo']["$logo_key"]['image'] = $logo_value['image'];
            }

        } elseif (!empty($module_menu_item_settings['configuration']['logo'])) {
            foreach($module_menu_item_settings['configuration']['logo']  as $logo_key=>$logo_value){
                $data['configuration']['logo']["$logo_key"]['image'] = $logo_value['image'];
            }
        }

        if (isset($this->request->post['module_hyper_mega_menu']['configuration']['logo'])) {
            foreach($this->request->post['module_hyper_mega_menu']['configuration']['logo']  as $logo_key2=>$logo_value2){
                if(is_file(DIR_IMAGE . $this->request->post['module_hyper_mega_menu']['configuration']['logo'][$logo_key2]['image'])){
                    $data['configuration']['logo'][$logo_key2]['thumb'] = $this->model_tool_image->resize($this->request->post['module_hyper_mega_menu']['configuration']['logo'][$logo_key2]['image'], 100, 100);
                } else {
                    $data['configuration']['logo']['thumb'] = $this->model_tool_image->resize('no_image.png', 100, 100);
                }
            }
        } elseif (isset($module_menu_item_settings['configuration']['logo'])) {
            foreach($module_menu_item_settings['configuration']['logo']  as $logo_key2=>$logo_value2){
                if(is_file(DIR_IMAGE . $module_menu_item_settings['configuration']['logo'][$logo_key2]['image'])){
                    $data['configuration']['logo'][$logo_key2]['thumb'] = $this->model_tool_image->resize($module_menu_item_settings['configuration']['logo'][$logo_key2]['image'], 100, 100);
//                } else {
//                    $data['configuration']['logo']['thumb'] = $this->model_tool_image->resize('no_image.png', 100, 100);
                }
            }
        }



        if (isset($this->request->post['module_hyper_mega_menu']['configuration']['phone'])) {
            foreach($this->request->post['module_hyper_mega_menu']['configuration']['phone'] as $phone_key=>$phone_value){
                $data['configuration']['phone']["$phone_key"]['image'] = $phone_value['image'];
            }

        } elseif (!empty($module_menu_item_settings['configuration']['phone'])) {
            foreach($module_menu_item_settings['configuration']['phone']  as $phone_key=>$phone_value){
                $data['configuration']['phone']["$phone_key"]['image'] = $phone_value['image'];
            }
//        } else {
//                $data['configuration']['phone'][]['image'] = '';
        }

        if (isset($this->request->post['module_hyper_mega_menu']['configuration']['phone'])) {
            foreach($this->request->post['module_hyper_mega_menu']['configuration']['phone']  as $phone_key2=>$phone_value2){
                if(is_file(DIR_IMAGE . $this->request->post['module_hyper_mega_menu']['configuration']['phone'][$phone_key2]['image'])){
                    $data['configuration']['phone'][$phone_key2]['thumb'] = $this->model_tool_image->resize($this->request->post['module_hyper_mega_menu']['configuration']['phone'][$phone_key2]['image'], 100, 100);
                }
            }
        } elseif (isset($module_menu_item_settings['configuration']['phone'])) {
            foreach($module_menu_item_settings['configuration']['phone']  as $phone_key2=>$phone_value2){
                if(is_file(DIR_IMAGE . $module_menu_item_settings['configuration']['phone'][$phone_key2]['image'])){
                    $data['configuration']['phone'][$phone_key2]['thumb'] = $this->model_tool_image->resize($module_menu_item_settings['configuration']['phone'][$phone_key2]['image'], 100, 100);
//                }else{
//                    $data['configuration']['phone'][$phone_key2]['thumb'] = $this->model_tool_image->resize('no_image.png', 100, 100);
                }
            }
        }




//        if (isset($this->request->post['module_hyper_mega_menu']['configuration']['custom'])) {
//            foreach($this->request->post['module_hyper_mega_menu']['configuration']['custom'] as $custom_key=>$custom_value){
//                $data['configuration']['custom']["$custom_key"]['image'] = $custom_value['image'];
//            }
//
//        } elseif (!empty($module_menu_item_settings['configuration']['custom'])) {
//            foreach($module_menu_item_settings['configuration']['custom']  as $custom_key=>$custom_value){
//                $data['configuration']['custom']["$custom_key"]['image'] = $custom_value['image'];
//            }
////        } else {
////            $data['configuration']['custom'][]['image'] = '';
//        }
//
//        if (isset($this->request->post['module_hyper_mega_menu']['configuration']['custom'])) {
//            foreach($this->request->post['module_hyper_mega_menu']['configuration']['custom']  as $custom_key2=>$custom_value2){
//                if(is_file(DIR_IMAGE . $this->request->post['module_hyper_mega_menu']['configuration']['custom'][$custom_key2]['image'])){
//                    $data['configuration']['custom'][$custom_key2]['thumb'] = $this->model_tool_image->resize($this->request->post['module_hyper_mega_menu']['configuration']['custom'][$custom_key2]['image'], 100, 100);
//                }
//            }
//        } elseif (isset($module_menu_item_settings['configuration']['custom'])) {
//            foreach($module_menu_item_settings['configuration']['custom']  as $custom_key2=>$custom_value2){
//                if(is_file(DIR_IMAGE . $module_menu_item_settings['configuration']['custom'][$custom_key2]['image'])){
//                    $data['configuration']['custom'][$custom_key2]['thumb'] = $this->model_tool_image->resize($module_menu_item_settings['configuration']['custom'][$custom_key2]['image'], 100, 100);
////                }else{
////                    $data['configuration']['custom'][$custom_key2]['thumb'] = $this->model_tool_image->resize('no_image.png', 100, 100);
//                }
//            }
//        }







//        if (isset($this->request->post['module_hyper_mega_menu']['configuration']['account'])) {
//            foreach($this->request->post['module_hyper_mega_menu']['configuration']['account'] as $account_key=>$account_value){
//                $data['configuration']['account']["$account_key"]['image'] = $account_value['image'];
//            }
//
//        } elseif (!empty($module_menu_item_settings['configuration']['account'])) {
//            foreach($module_menu_item_settings['configuration']['account']  as $account_key=>$account_value){
//                $data['configuration']['account']["$account_key"]['image'] = $account_value['image'];
//            }
////        } else {
////            $data['configuration']['account'][]['image'] = '';
//        }
//
//        if (isset($this->request->post['module_hyper_mega_menu']['configuration']['account'])) {
//            foreach($this->request->post['module_hyper_mega_menu']['configuration']['account']  as $account_key2=>$account_value2){
//                if(is_file(DIR_IMAGE . $this->request->post['module_hyper_mega_menu']['configuration']['account'][$account_key2]['image'])){
//                    $data['configuration']['account'][$account_key2]['thumb'] = $this->model_tool_image->resize($this->request->post['module_hyper_mega_menu']['configuration']['account'][$account_key2]['image'], 100, 100);
//                }
//            }
//        } elseif (isset($module_menu_item_settings['configuration']['account'])) {
//            foreach($module_menu_item_settings['configuration']['account']  as $account_key2=>$account_value2){
//                if(is_file(DIR_IMAGE . $module_menu_item_settings['configuration']['account'][$account_key2]['image'])){
//                    $data['configuration']['account'][$account_key2]['thumb'] = $this->model_tool_image->resize($module_menu_item_settings['configuration']['account'][$account_key2]['image'], 100, 100);
////                }else{
////                    $data['configuration']['account'][$account_key2]['thumb'] = $this->model_tool_image->resize('no_image.png', 100, 100);
//                }
//            }
//        }







        if (isset($this->request->post['image']) && is_file(DIR_IMAGE . $this->request->post['image'])) {
            $data['thumb'] = $this->model_tool_image->resize($this->request->post['image'], 100, 100);
        } elseif (!empty($product_info) && is_file(DIR_IMAGE . $product_info['image'])) {
            $data['thumb'] = $this->model_tool_image->resize($product_info['image'], 100, 100);
        } else {
            $data['thumb'] = $this->model_tool_image->resize('no_image.png', 100, 100);
        }

        $data['placeholder'] = $this->model_tool_image->resize('no_image.png', 100, 100);


        $data['languages'] = $this->model_localisation_language->getLanguages();

        $store_settings_config = $this->model_setting_setting->getSetting("config", $this->config->get('config_store_id'));

        $data['config_language'] = $store_settings_config['config_language'];

        $data['header'] = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer'] = $this->load->controller('common/footer');

        $this->response->setOutput($this->load->view('module/hyper_mega_menu.tpl', $data));
    }


    protected function validateForm() {
        if (!$this->user->hasPermission('modify', 'module/hyper_mega_menu')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }

        return !$this->error;
    }

    public function updateStay() {

        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {

            $this->load->model($this->moduleLoadModel);
            $this->{$this->moduleModel}->editSetting($this->request->get['id'], $this->request->post);

            $url = '';
            if (isset($this->request->get['id'])) {
                $url .= '&id=' . $this->request->get['id'];
            }
            $this->response->redirect($this->url->link('module/hyper_mega_menu/editMenuItem', 'token=' . $this->session->data['token'] . $url, 'SSL'));


            if (isset($this->session->data['success'])) {
                $data['success'] = $this->session->data['success'];
                unset($this->session->data['success']);
            } else {
                $data['success'] = '';
            }
        }
        $this->mainForm();

    }

}