<?php
class ModelModuleHyperMegaMenu extends Model {

    public function getMenuItemsList() {

            $query =  $this->db->query("SELECT * FROM " . DB_PREFIX . "hyper_mega_menu_settings hmms LEFT JOIN " . DB_PREFIX . "hyper_mega_menu_custom hmmc ON (hmms.id = hmmc.menu_id)");

//        print_r("SELECT * FROM " . DB_PREFIX . "hyper_mega_menu_settings hmms LEFT JOIN " . DB_PREFIX . "hyper_mega_menu_custom hmmc ON (hmms.id = hmmc.menu_id)"); die;

                if($query->rows){
                    return $query->rows;
                }else{
                    return false;
                }
    }


    public function getHeaderMenu() {

        $items_list = $this->getMenuItemsList();

        foreach($items_list as $menu_key => $menu_value){
            if($menu_value['menu_position'] == 'main_menu'){
                $menu_settings = json_decode($menu_value['settings'], true);
                if(isset($menu_settings['main']['status']) == 'on' && isset($menu_settings['main']['showing']) == 'on'){
                    $active_header_menus[$menu_key] = $menu_value;
                    $active_header_menus[$menu_key]['settings'] = json_decode($menu_value['settings'], true);
                    $active_header_menus[$menu_key]['configuration'] = json_decode($menu_value['configuration'], true);
                }
            }
        }

        if(isset($active_header_menus)){
            return $active_header_menus;
        }else{
            return false;
        }
    }

    public function getFooterMenu() {

        $items_list = $this->getMenuItemsList();

        foreach($items_list as $menu_key => $menu_value){
            if($menu_value['menu_position'] == 'main_menu'){
                $menu_settings = json_decode($menu_value['settings'], true);
                if(isset($menu_settings['main']['status']) == 'on' && isset($menu_settings['main']['showing'])){
                    $active_header_menus[$menu_key] = $menu_value;
                    $active_header_menus[$menu_key]['settings'] = json_decode($menu_value['settings'], true);
                    $active_header_menus[$menu_key]['configuration'] = json_decode($menu_value['configuration'], true);
                }
            }
        }

        if(isset($active_header_menus)){
            return $active_header_menus;
        }else{
            return false;
        }
    }

    public function getFixedMenu() {

        $items_list = $this->getMenuItemsList();

        foreach($items_list as $menu_key => $menu_value){
            if($menu_value['menu_position'] == 'fixed_menu'){
                $menu_settings = json_decode($menu_value['settings'], true);
                if(isset($menu_settings['main']['status']) == 'on'){
                    $active_header_menus[$menu_key] = $menu_value;
                    $active_header_menus[$menu_key]['settings'] = json_decode($menu_value['settings'], true);
                    $active_header_menus[$menu_key]['configuration'] = json_decode($menu_value['configuration'], true);
                }
            }
        }

        if(isset($active_header_menus)){
            return $active_header_menus;
        }else{
            return false;
        }
    }

    public function getSidebarMenu() {

        $items_list = $this->getMenuItemsList();

        foreach($items_list as $menu_key => $menu_value){
            if($menu_value['menu_position'] == 'sidebar_menu'){
                $menu_settings = json_decode($menu_value['settings'], true);
                if(isset($menu_settings['main']['status']) == 'on'){
                    $active_header_menus[$menu_key] = $menu_value;
                    $active_header_menus[$menu_key]['settings'] = json_decode($menu_value['settings'], true);
                    $active_header_menus[$menu_key]['configuration'] = json_decode($menu_value['configuration'], true);
                }
            }
        }

        if(isset($active_header_menus)){
            return $active_header_menus;
        }else{
            return false;
        }
    }

}