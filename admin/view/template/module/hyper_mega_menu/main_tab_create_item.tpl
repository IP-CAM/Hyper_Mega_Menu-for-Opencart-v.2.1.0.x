<div id="main-tabs" class="htabs">
    <ul class="nav nav-tabs" id="main-tab">
        <li class="active"><a href="#tab-settings" data-toggle="tab"><?php echo $text_main; ?></a></li>
<!--        <li><a href="#tab-design" data-toggle="tab">--><?php //echo $tab_design_text; ?><!--</a></li>-->
<!--        <li><a href="#tab-configurations" data-toggle="tab">--><?php //echo $tab_configurations_text; ?><!--</a></li>-->
<!--        <li><a href="#tab-custom" data-toggle="tab">--><?php //echo $tab_custom_text; ?><!--</a></li>-->
<!--        <li><a href="#tab-telephone" data-toggle="tab">--><?php //echo $tab_telephone_text; ?><!--</a></li>-->
    </ul>

    <div class="tab-content">
        <div class="tab-pane active" id="tab-settings">


            <?php if(isset($editMenuItem) == true){?><div class="col-sm-12 settings-row" style="display: none"><?php }else{ ?><div class="col-sm-12 settings-row"><?php } ?>
                    <label class="col-sm-2 control-label" for="button-upload"><span data-toggle="tooltip" title="<?php echo $menu_title_type_text_hint; ?>"><?php echo $menu_title_text; ?></span></label>

                    <div class="col-sm-6 select-menu-type">
                        <select name="menu_type" class="form-control">
                            <option value=""><?php echo $select_menu_type_text; ?></option>
                            <option value="fixed_menu"<?php if(isset($module_hyper_mega_menu['type']) && $module_hyper_mega_menu['type']  == 'fixed_menu'){ echo 'selected="selected"'; }?>><?php echo $fixed_menu_text ?></option>
                            <option value="main_menu"<?php if(isset($module_hyper_mega_menu['type']) && $module_hyper_mega_menu['type']  == 'main_menu'){ echo 'selected="selected"'; }?>><?php echo $main_menu_text ?></option>
                            <option value="sidebar_menu"<?php if(isset($module_hyper_mega_menu['type']) && $module_hyper_mega_menu['type']  == 'sidebar_menu'){ echo 'selected="selected"'; }?>><?php echo $sidebar_menu_text ?></option>
                        </select>
                    </div>
                </div>

                <div class="col-sm-12 settings-row">
                    <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?php echo $menu_title_text_hint; ?>"><?php echo $menu_title_text; ?></span></label>
                    <div class="col-sm-6">
                        <input type="text" name="main_menu_name" value="<?php if(isset($module_hyper_mega_menu['name'])){ echo $module_hyper_mega_menu['name']; }?>"  placeholder="Название" id="input-name" class="form-control">
                    </div>
                </div>
        </div>
    </div>
</div>