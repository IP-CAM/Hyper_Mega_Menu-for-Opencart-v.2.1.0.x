<div id="main-tabs" class="htabs">
    <ul class="nav nav-tabs" id="main-tab">
        <li class="active"><a href="#tab_element_telephone" data-toggle="tab"><?php echo $menu_element_telephone_text; ?></a></li>
        <li><a href="#tab_element_telephone_add" data-toggle="tab"><?php echo $tab_menu_design_text; ?></a></li>
    </ul>

    <div class="tab-content">
        <div class="tab-pane active" id="tab_element_telephone">
            <?php require_once(DIR_APPLICATION.'view/template/module/hyper_mega_menu/tab_telephone/menu_item_phone.tpl'); ?>
        </div>
        <div class="tab-pane" id="tab_element_telephone_add">
            asdfasdf
<!--            --><?php //require_once(DIR_APPLICATION . 'view/template/module/hyper_mega_menu/tab_telephone/sub_tab_menu_design.tpl'); ?>
        </div>
    </div>
</div>