<?php 
class ModelModuleHyperMegaMenu extends Model {

    protected $data_settings_main_keys = array('status', 'showing', 'show', 'on_hover', 'delay', 'move_elements', 'move_side', 'move_shift');
    protected $data_configuration_custom_keys = array('only_price', 'link');
    protected $data_configuration_html_block_keys = array('images', 'model', 'sku', 'manufacturer', 'price', 'discount', 'total');
    protected $data_configuration_personal_cabinet_keys = array('favorites_goods', 'goods_wish', 'cart', 'checkout');
    protected $data_configuration_wish_compare_keys = array('favorites_goods', 'goods_wish');
    protected $data_custom_item_keys = array('as_title', 'load_image');
    protected $value_off = 'off';
    protected $value_move_side_left = 'left';
    protected $value_move_side_right = 'right';
    protected $value_showing_up = 'up';
    protected $value_showing_down = 'down';

    public function addMenuItem($data) {
       $this->db->query("INSERT INTO " . DB_PREFIX . "hyper_mega_menu_settings SET main_menu_name = '" . $this->db->escape($data['main_menu_name']) ."', menu_position = '" . $this->db->escape($data['menu_type']) ."'");
    }

    public function deleteMenuItems($id) {
//        if(is_array($data)){
//            foreach($data as $val){
                $this->db->query("DELETE FROM " . DB_PREFIX . "hyper_mega_menu_settings WHERE id = '" . (int)$id . "'");
                $this->db->query("DELETE FROM " . DB_PREFIX . "hyper_mega_menu_custom WHERE menu_id = '" . (int)$id . "'");
//            }
//        }
    }
    public function copyMenuItem($id) {
        $temp1 =  $this->db->query("SELECT * FROM " . DB_PREFIX . "hyper_mega_menu_settings WHERE id = '" . (int)$id .  "'");
        $temp2 =  $this->db->query("SELECT * FROM " . DB_PREFIX . "hyper_mega_menu_custom WHERE menu_id = '" . (int)$id .  "'");

        $this->db->query("INSERT INTO " . DB_PREFIX . "hyper_mega_menu_settings SET status = '" . (int)($temp1->row['status']) . "',
         menu_position = '" . $this->db->escape($temp1->row['type']) . "',
          main_menu_name = '" . $this->db->escape($temp1->row['name']) . "_copy',
           settings = '" . $this->db->escape($temp1->row['settings']) . "',
            configuration = '" . $this->db->escape($temp1->row['configuration']) . "',
             custom = '" . $this->db->escape($temp1->row['custom']) . "'");

        $this->db->query("INSERT INTO " . DB_PREFIX . "hyper_mega_menu_custom SET menu_id = '" . (int)$this->db->getLastId()  . "',
        name = '" . ($this->db->escape(isset($temp2->row['name'])) ? $this->db->escape($temp2->row['name']) : '') . "',
            image = '" . ($this->db->escape(isset($temp2->row['image'])) ? $this->db->escape($temp2->row['image']) : '') . "',
            type = '" . ($this->db->escape(isset($temp2->row['type'])) ? $this->db->escape($temp2->row['type']) : '') . "',
            sort_order = '" . ((int)isset($temp2->row['sort_order']) ? (int)($temp2->row['sort_order']) : '') . "',
            custom_item_settings = '" . ($this->db->escape(isset($temp2->row['custom_item_settings'])) ? $this->db->escape($temp2->row['custom_item_settings']) : '') . "',
            categories = '" . ($this->db->escape(isset($temp2->row['categories'])) ? $this->db->escape($temp2->row['categories']) : '') . "',
            manufacturers = '" . ($this->db->escape(isset($temp2->row['manufacturers'])) ? $this->db->escape($temp2->row['manufacturers']) : '') . "',
            information = '" . ($this->db->escape(isset($temp2->row['information'])) ? $this->db->escape($temp2->row['information']) : '') . "',
            products = '" . ($this->db->escape(isset($temp2->row['products'])) ? $this->db->escape($temp2->row['products']) : '') . "',
            links = '" . ($this->db->escape(isset($temp2->row['links'])) ? $this->db->escape($temp2->row['links']) : '') . "',
            html = '" . ($this->db->escape(isset($temp2->row['html'])) ? $this->db->escape($temp2->row['html']) : '') . "',
             constructor = '" . ($this->db->escape(isset($temp2->row['constructor'])) ? $this->db->escape($temp2->row['constructor']) : '') . "'");

    }

    public function getMenuItemsList($sort = array(), $order = " ASC") {

        $sort_data = array(
            'main_menu_name',
            'menu_position'
        );

        if (isset($sort) && in_array($sort, $sort_data)) {
            $query =  $this->db->query("SELECT * FROM " . DB_PREFIX . "hyper_mega_menu_settings ORDER BY " . $sort .' '. $order);
        } else {
            $query =  $this->db->query("SELECT * FROM " . DB_PREFIX . "hyper_mega_menu_settings ORDER BY main_menu_name ASC");
        }
        return $query->rows;
    }

    public function getSetting($id) {

        $query =  $this->db->query("SELECT * FROM " . DB_PREFIX . "hyper_mega_menu_settings WHERE id = '" . (int)$id .  "'");
        $setting_data = $query->row;
//echo '<pre>'; print_r($setting_data); die();
        $data_settings = isset($setting_data['settings']) ? json_decode($setting_data['settings'], true) : '';
        $data_configuration = isset($setting_data['configuration']) ? json_decode($setting_data['configuration'], true) : '';


//        if (isset($data_configuration['custom'])) {
//            foreach ($this->data_configuration_custom_keys as $v) {
//                if (!array_key_exists($v, $data_configuration['custom'])) {
//                    $data_configuration['custom'][$v] = $this->value_off;
//                }
//            }
//        }
//
//        if (isset($data_configuration['html_block'])) {
//            foreach ($this->data_configuration_html_block_keys as $v) {
//                if (!array_key_exists($v, $data_configuration['html_block'])) {
//                    $data_configuration['html_block'][$v] = $this->value_off;
//                }
//            }
//        }
//
//        if (isset($data_configuration['personal_cabinet'])) {
//            foreach ($this->data_configuration_personal_cabinet_keys as $v) {
//                if (!array_key_exists($v, $data_configuration['personal_cabinet'])) {
//                    $data_configuration['personal_cabinet'][$v] = $this->value_off;
//                }
//            }
//        }
//
//        if (isset($data_configuration['wish_compare'])) {
//            foreach ($this->data_configuration_wish_compare_keys as $v) {
//                if (!array_key_exists($v, $data_configuration['wish_compare'])) {
//                    $data_configuration['wish_compare'][$v] = $this->value_off;
//                }
//            }
//        }
//            echo '<pre>'; var_dump($data_settings['main']); exit;

//        foreach($this->data_settings_main_keys as $v){
//            if(isset($data_settings['main']) && !array_key_exists($v, $data_settings['main'])){
//                if($v == 'move_side'){
//                    $data_settings['main'][$v] = $this->value_move_side_left;
//                }elseif($v == 'showing'){
//                    $data_settings['main'][$v] = $this->value_showing_up;
//                }else{
//                    $data_settings['main'][$v] = $this->value_off;
//                }
//            }elseif($v == 'move_side'){
//                $data_settings['main'][$v] = $this->value_move_side_right;
//            }elseif($v == 'showing'){
//                $data_settings['main'][$v] = $this->value_showing_down;
//            }
//        }


        unset($setting_data['settings']);
        unset($setting_data['configuration']);
        $data_settings['main']['move_shift'] = isset($data_settings['main']['move_shift']) ? (int)$data_settings['main']['move_shift'] : '';
        $setting_data['settings'] = $data_settings;
        $setting_data['configuration'] = $data_configuration;


        return $setting_data;
    }

    public function editSetting($id, $data) {
        file_put_contents(DIR_APPLICATION . "../catalog/view/theme/default/stylesheet/hmm_users_style_".$data['main_menu_name'].".css", $data['module_hyper_mega_menu']['settings']['css_js']['css'], LOCK_EX);
//        file_put_contents(DIR_APPLICATION . "../catalog/view/javascript/hyper-mega-menu/hmm_users_script_".$data['main_menu_name'].".js", $data['module_hyper_mega_menu']['settings']['css_js']['js'], LOCK_EX);
        $status = isset($data['module_hyper_mega_menu']['settings']['main']['status']) ? $data['module_hyper_mega_menu']['settings']['main']['status'] : 'off';
        $settings = isset($data['module_hyper_mega_menu']['settings']) ? $data['module_hyper_mega_menu']['settings'] : '';
        $configuration = isset($data['module_hyper_mega_menu']['configuration']) ? $data['module_hyper_mega_menu']['configuration'] : '';

        $this->db->query("UPDATE " . DB_PREFIX . "hyper_mega_menu_settings SET status = '" . $this->db->escape($status) . "', `menu_position` = '" . $this->db->escape($data['menu_type']) . "', `main_menu_name` = '" . $this->db->escape($data['main_menu_name']) . "', `settings` = '" . $this->db->escape(json_encode($settings)) . "', `configuration` = '" . $this->db->escape(json_encode($configuration)) . "' WHERE id = '" . (int)$id .  "'");

    }

    public function getCustomItemsList($id) {
        $query =  $this->db->query("SELECT * FROM " . DB_PREFIX . "hyper_mega_menu_custom WHERE menu_id = '" . (int)$id . "'");
        $setting_data = $query->rows;
        foreach($setting_data as $k=>$val){
            $setting_data[$k]['name'] = json_decode($val['name'], true);
            $setting_data[$k]['as_title'] =  (isset( json_decode($val['custom_item_settings'])->as_title)) ? json_decode($val['custom_item_settings'])->as_title : '';
            $setting_data[$k]['load_image'] =  (isset( json_decode($val['custom_item_settings'])->load_image)) ? json_decode($val['custom_item_settings'])->load_image : '';
        }
        unset($setting_data['custom_item_settings']);
        return $setting_data;
    }


//    public function addCustomItem($id, $data_post) {
//
//        $data = $data_post['module_hyper_mega_menu']['custom']['menu_item'];
//        $as_title = (isset($data['as_title'])) ? $data['as_title'] : $this->value_off;
//        $load_image = (isset($data['load_image'])) ? $data['load_image'] : $this->value_off;
//        $settings_array = array('as_title'=>$as_title, 'load_image'=>$load_image);
//        $this->db->query("UPDATE " . DB_PREFIX . "hyper_mega_menu_custom SET name = '" . addslashes(json_encode($data['name'])) .
//            "', image = '" . $this->db->escape($data['image']) .
//            "', sort_order = '" . $this->db->escape($data['sort_order']) .
//            "', custom_item_settings = '" . addslashes(json_encode($settings_array)) .
//            "' WHERE id = '" . (int)$id . "'");
//    }

    public function getCustomItem($id) {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "hyper_mega_menu_custom WHERE id = '" . (int)$id . "'");

        $data = $query->row;
        $data['name'] = json_decode($query->row['name'], true);
        $data['as_title'] = json_decode($query->row['custom_item_settings'])->as_title;
        $data['load_image'] = json_decode($query->row['custom_item_settings'])->load_image;

        $data['categories'] = (isset($query->row['categories'])) ? json_decode($query->row['categories'], true) : '';
        $data['manufacturers'] = (isset($query->row['manufacturers'])) ? json_decode($query->row['manufacturers'], true) : '';
        $data['html'] = (isset($query->row['html'])) ? json_decode($query->row['html'], true) : '';
        $data['link'] = (isset($query->row['links'])) ? json_decode($query->row['links'], true) : '';
        $data['information'] = (isset($query->row['information'])) ? json_decode($query->row['information'], true) : '';
        $data['constructor'] = (isset($query->row['constructor'])) ? json_decode($query->row['constructor'], true) : '';

        unset($data['custom_item_settings']);
        return $data;
    }


    public function editCustomItem($id = 0, $data_post, $menu_id = 0) {

        $data = $data_post['module_hyper_mega_menu']['custom']['menu_item'];
        $as_title = (isset($data['as_title'])) ? $data['as_title'] : $this->value_off;
        $load_image = (isset($data['load_image'])) ? $data['load_image'] : $this->value_off;
        $settings_array = array('as_title'=>$as_title, 'load_image'=>$load_image);

        if($id == 0 ){
            $action = 'INSERT INTO';
            $action_update = '';
            $main_menu = ",menu_id = $menu_id";
        }else{
            $action = 'UPDATE';
            $action_update =" WHERE id = $id";
            $main_menu = '';
        }

        $this->db->query("$action " . DB_PREFIX . "hyper_mega_menu_custom SET name = '" . $this->db->escape(json_encode($data['name'])) .
            "' " . $main_menu .
            ", image = '" . $this->db->escape($data['image']) .
            "', sort_order = '" . $this->db->escape($data['sort_order']) .
            "', type = '" . $this->db->escape($data_post['module_hyper_mega_menu']['custom']['type']) .
            "', custom_item_settings = '" . $this->db->escape(json_encode($settings_array)) .
            "', categories = '" . (isset($data_post['module_hyper_mega_menu']['custom']['categories']) ? $this->db->escape(json_encode($data_post['module_hyper_mega_menu']['custom']['categories'])) : '') .
            "', manufacturers = '" . (isset($data_post['module_hyper_mega_menu']['custom']['manufacturers']) ? $this->db->escape(json_encode($data_post['module_hyper_mega_menu']['custom']['manufacturers'])) : '') .
            "', information = '" . (isset($data_post['module_hyper_mega_menu']['custom']['information']) ? $this->db->escape(json_encode($data_post['module_hyper_mega_menu']['custom']['information'])) : '') .
            "', links = '" . (isset($data_post['module_hyper_mega_menu']['custom']['link']) ? $this->db->escape(json_encode($data_post['module_hyper_mega_menu']['custom']['link'])) : '') .
            "', constructor = '" . (isset($data_post['module_hyper_mega_menu']['custom']['constructor']) ? $this->db->escape(json_encode($data_post['module_hyper_mega_menu']['custom']['constructor'])) : '') .
            "', html = '" . (isset($data_post['module_hyper_mega_menu']['custom']['html']) ? $this->db->escape(json_encode($data_post['module_hyper_mega_menu']['custom']['html'])) : '') . "'".$action_update);
    }

    public function deleteCustomItem($ids) {
        foreach ($ids as $id) {
            $this->db->query("DELETE FROM " . DB_PREFIX . "hyper_mega_menu_custom WHERE id = '" . (int)$id . "'");
        }
    }

    public function getPhonesList() {
        $query =  $this->db->query("SELECT * FROM " . DB_PREFIX . "hyper_mega_menu_phone_operators");
        return $query->rows;
    }



    public function install()
    {
        $this->db->query("CREATE TABLE IF NOT EXISTS `" . DB_PREFIX . "hyper_mega_menu_settings` (
            `id` INT(11) NOT NULL AUTO_INCREMENT,
            `status` VARCHAR(50) NOT NULL DEFAULT '0',
            `type` VARCHAR(50) NOT NULL DEFAULT '0',
            `name` VARCHAR(50) NOT NULL DEFAULT '0',
            `settings` TEXT NOT NULL,
            `configuration` TEXT NOT NULL,
            `custom` TEXT NOT NULL,
            PRIMARY KEY (`id`)
            )
            COLLATE='utf8_general_ci'
            ENGINE=MyISAM;
        ");

        $this->db->query("CREATE TABLE IF NOT EXISTS `" . DB_PREFIX . "hyper_mega_menu_custom` (
            `id` INT(11) NOT NULL AUTO_INCREMENT,
            `menu_id` INT(11) NOT NULL DEFAULT '0',
            `name` VARCHAR(255) NOT NULL DEFAULT '0',
            `image` VARCHAR(255) NOT NULL,
            `type` VARCHAR(50) NOT NULL DEFAULT '0',
            `sort_order` INT(11) NOT NULL DEFAULT '0',
            `custom_item_settings` TEXT NOT NULL,
            `categories` TEXT NULL,
            `manufacturers` TEXT NULL,
            `information` TEXT NULL,
            `products` TEXT NULL,
            `links` TEXT NULL,
            `html` TEXT NULL,
            `constructor` TEXT NULL,
            PRIMARY KEY (`id`)
            )
            COLLATE='utf8_general_ci'
            ENGINE=MyISAM;
        ");

        $this->db->query("CREATE TABLE IF NOT EXISTS `" . DB_PREFIX . "hyper_mega_menu_phone_operators` (
                `id` INT(11) NOT NULL AUTO_INCREMENT,
                `name_phone` VARCHAR(50) NOT NULL,
                `number_phone` VARCHAR(50) NOT NULL,
                PRIMARY KEY (`id`)
            )
            COLLATE='utf8_general_ci'
            ENGINE=MyISAM;
        ");

    }

//    protected function addOffValues($data_configuration,$val){
//
//        if (isset($this->{'data_configuration_'.$val.'_keys'})) {
//            foreach ($this->{'data_configuration_'.$val.'_keys'} as $v) {
//                if (!array_key_exists($v, $data_configuration[$val])) {
//                    $data_configuration[$val][$v] = $this->value_off;
//                }
//            }
//            return $data_configuration;
//        }
//    }
  
  	public function uninstall() {
        $this->db->query("DROP TABLE IF EXISTS `" . DB_PREFIX . "hyper_mega_menu_settings`");
        $this->db->query("DROP TABLE IF EXISTS `" . DB_PREFIX . "hyper_mega_menu_custom`");
        $this->db->query("DROP TABLE IF EXISTS `" . DB_PREFIX . "hyper_mega_menu_phone_operators`");
  	}
	
  }
