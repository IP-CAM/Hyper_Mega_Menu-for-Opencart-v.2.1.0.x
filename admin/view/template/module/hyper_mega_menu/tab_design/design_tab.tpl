<div id="main-tabs" class="htabs">
    <ul class="nav nav-tabs" id="main-tab">
<!--        <li ><a href="#tab-main" data-toggle="tab">--><?php //echo $tab_main_text; ?><!--</a></li>-->
        <li class="active"><a href="#tab-menu-design" data-toggle="tab"><?php echo $tab_menu_design_text; ?></a></li>
        <li><a href="#tab-design-dropdown-elements" data-toggle="tab"><?php echo $tab_design_dropdown_elements_text; ?></a></li>
        <li><a href="#tab-design-css-js" data-toggle="tab"><?php echo $tab_design_css_js_text; ?></a></li>
    </ul>

    <div class="tab-content">
        <div class="tab-pane" id="tab-main">
<!--            --><?php //require_once(DIR_APPLICATION . 'view/template/module/hyper_mega_menu/tab_settings/sub_tab_main.tpl'); ?>
        </div>
        <div class="tab-pane active" id="tab-menu-design">
            <?php require_once(DIR_APPLICATION . 'view/template/module/hyper_mega_menu/tab_design/sub_tab_menu_design.tpl'); ?>
        </div>
        <div class="tab-pane" id="tab-design-dropdown-elements">
            <?php require_once(DIR_APPLICATION . 'view/template/module/hyper_mega_menu/tab_design/sub_tab_design_dropdown_elements.tpl'); ?>
        </div>
        <div class="tab-pane" id="tab-design-css-js">
            <?php require_once(DIR_APPLICATION . 'view/template/module/hyper_mega_menu/tab_design/sub_tab_design_css_js.tpl'); ?>
        </div>
    </div>
</div>