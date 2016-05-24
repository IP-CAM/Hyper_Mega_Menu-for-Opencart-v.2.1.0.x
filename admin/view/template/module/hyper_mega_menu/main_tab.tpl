<div id="main-tabs" class="htabs">
    <ul class="nav nav-tabs" id="main-tab">
        <li class="active"><a href="#tab-settings" data-toggle="tab"><?php echo $text_main; ?></a></li>
        <li><a href="#tab-design" data-toggle="tab"><?php echo $tab_design_text; ?></a></li>
        <li><a href="#tab-configurations" data-toggle="tab"><?php echo $tab_configurations_text; ?></a></li>
        <li><a href="#tab-custom" data-toggle="tab"><?php echo $tab_custom_text; ?></a></li>
        <li><a href="#tab-telephone" data-toggle="tab"><?php echo $tab_telephone_text; ?></a></li>
    </ul>

    <div class="tab-content">
        <div class="tab-pane active" id="tab-settings">


            <?php if(isset($editMenuItem) == true){?><div class="form-group" style="display: none"><?php }else{ ?><div class="form-group"><?php } ?>
                    <label class="col-sm-2 control-label" for="button-upload"><span data-toggle="tooltip" title="<?php echo $sub_tab_configuration_menu_type_text; ?>"><?php echo $sub_tab_configuration_menu_type_text; ?></span></label>

                    <div class="col-sm-4 select-menu-type">
                        <select name="menu_type" class="form-control">
                            <option value=""><?php echo $select_menu_type_text; ?></option>
                            <option value="fixed_menu"<?php if(isset($module_hyper_mega_menu['menu_position']) && $module_hyper_mega_menu['menu_position']  == 'fixed_menu'){ echo 'selected="selected"'; }?>><?php echo $fixed_menu_text ?></option>
                            <option value="main_menu"<?php if(isset($module_hyper_mega_menu['menu_position']) && $module_hyper_mega_menu['menu_position']  == 'main_menu'){ echo 'selected="selected"'; }?>><?php echo $main_menu_text ?></option>
                            <option value="sidebar_menu"<?php if(isset($module_hyper_mega_menu['menu_position']) && $module_hyper_mega_menu['menu_position']  == 'sidebar_menu'){ echo 'selected="selected"'; }?>><?php echo $sidebar_menu_text ?></option>
                        </select>
                    </div>
                </div>

            <div class="col-sm-12 settings-row">
                <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?php echo $menu_title_text_hint; ?>"><?php echo $menu_title_text; ?></span></label>
                <div class="col-sm-6">
                    <input type="text" name="main_menu_name" value="<?php if(isset($module_hyper_mega_menu['main_menu_name'])){ echo $module_hyper_mega_menu['main_menu_name']; }?>"  placeholder="Название" id="input-name" class="form-control">
                </div>
            </div>

            <?php require_once(DIR_APPLICATION . 'view/template/module/hyper_mega_menu/tab_settings/sub_tab_main.tpl'); ?>
<!--            --><?php //require_once(DIR_APPLICATION . 'view/template/module/hyper_mega_menu/tab_settings/settings_tab.tpl'); ?>
        </div>
        <div class="tab-pane" id="tab-design">
            <?php require_once(DIR_APPLICATION . 'view/template/module/hyper_mega_menu/tab_design/design_tab.tpl'); ?>
        </div>
        <div class="tab-pane" id="tab-configurations">
            <?php require_once(DIR_APPLICATION . 'view/template/module/hyper_mega_menu/tab_configuration/configuration_tab.tpl'); ?>
        </div>
        <div class="tab-pane" id="tab-custom">

            <?php require_once(DIR_APPLICATION . 'view/template/module/hyper_mega_menu/tab_custom/custom_menu_items_list.tpl'); ?>
        </div>
        <div class="tab-pane" id="tab-telephone">
            <?php require_once(DIR_APPLICATION . 'view/template/module/hyper_mega_menu/tab_telephone/telephone_tab.tpl'); ?>
        </div>
        <div class="tab-pane" id="tab-additionally">
            help3
        </div>
    </div>
</div>