<?php foreach($configuration['simple_link'] as $k=>$value){?>
    <script type="text/javascript">
        $('.side-item-name').append('<li class="menu_item_link<?php echo $k; ?>"><a href="#menu_item_link<?php echo $k; ?>" data-toggle="tab" class="sidebar-item-name col-sm-10 btn"><?php echo $menu_element_link_text . ' ' . $k; ?></a><button type="button" class="btn btn-danger remove-sidebar-item col-sm-2" onclick="$(\'.vtabs a:first\').trigger(\'click\'); $(\'.menu_item_link<?php echo $k; ?>\').remove(); $(\'#menu_item_link<?php echo $k; ?>\').remove(); return false;"><i class="fa fa-minus-circle"></i></button></li>');
    </script>
    <div id="menu_item_link<?php echo $k; ?>" class="tab-pane <?php if($k == 0){?>active <?php } ?>">


        <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" data-original-title="<?php echo $sub_tab_configuration_link_blank_text_hint; ?>">
                <?php echo $sub_tab_configuration_link_blank_text; ?>
            </span>
            </label>
            <div class="col-sm-6">
                <input class="sub_tab_configuration_link_blank" type="checkbox" name="module_hyper_mega_menu[configuration][simple_link][<?php echo $k;?>][link_blank]" data-size="small" data-on-color="success" <?php if(isset($value['link_blank']) == 'on'){ echo 'checked=';}?> >
            </div>
        </div>

        <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" data-original-title="<?php echo $sub_tab_configuration_link_show_icon_text_hint; ?>">
                <?php echo $sub_tab_configuration_link_show_icon_text; ?>
            </span>
            </label>
            <div class="col-sm-6">
                <input class="sub_tab_configuration_show_icon" type="checkbox" name="module_hyper_mega_menu[configuration][simple_link][<?php echo $k;?>][show_icon]" data-size="small" data-on-color="success" <?php if(isset($value['show_icon']) == 'on'){ echo 'checked=';}?> >
            </div>
        </div>

        <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_link_icon_text_hint; ?>">
                <?php echo $sub_tab_configuration_link_icon_text; ?>
            </span>
            </label>
            <div class="col-sm-6 input-group iconpicker-container">
                <input name="module_hyper_mega_menu[configuration][simple_link][<?php echo $k;?>][font_awesome]" data-placement="bottomRight" class="form-control icp icp-auto iconpicker-element iconpicker-input icp-opts" value="<?php if(isset($value['font_awesome'])){ echo $value['font_awesome']; } ?>" type="text">
                <span class="input-group-addon"><i class="fa fa-archive"></i></span>
            </div>
        </div>


        <hr class="limiter">

        <div class="col-sm-12">
            <ul class="nav nav-tabs language_tabs" id="language">
                <?php foreach ($languages as $key=>$language) { ?>
                    <?php if($key == $config_language){ ?><li class="active"><?php }else{?><li><?php }?>
                        <a href="#language_simple-<?php echo $k; ?>-<?php echo $language['language_id']; ?>"
                        <?php if ($language['language_id'] == $config_language_id) { echo 'class="active_language"'; } ?> data-toggle="tab">
                            <img src="view/image/flags/<?php echo $language['image']; ?>"
                                title="<?php echo $language['name']; ?>"/>
                            <?php echo $language['name']; ?>
                        </a>
                    </li>
                <?php } ?>
            </ul>

            <div class="tab-content">
                <?php foreach ($languages as $key=>$language) { ?>
                    <div class="tab-pane<?php if($key == $config_language){ ?> active<?php }else{?><?php }?>" id="language_simple-<?php echo $k; ?>-<?php echo $language['language_id']; ?>">

                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                             <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_link_title_text_hint; ?>">
                                                <?php echo $sub_tab_configuration_link_title_text; ?>
                                            </span>
                            </label>
                            <div class="col-sm-6">
                                <input type="text" name="module_hyper_mega_menu[configuration][simple_link][<?php echo $k; ?>][link_title][<?php echo $language['language_id']; ?>]"
                                       value="<?php if(isset($value['link_title'][$language['language_id']])){  echo $value['link_title'][$language['language_id']]; } ?>"
                                       class="form-control configuration-settings-input"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                             <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_link_text_hint; ?>">
                                                <?php echo $sub_tab_configuration_link_text; ?>
                                            </span>
                            </label>
                            <div class="col-sm-6">
                                <input type="text" name="module_hyper_mega_menu[configuration][simple_link][<?php echo $k; ?>][link][<?php echo $language['language_id']; ?>]"
                                       value="<?php if(isset($value['link'][$language['language_id']])){ echo $value['link'][$language['language_id']]; } ?>"
                                       class="form-control configuration-settings-input"/>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>
    </div>

<?php } ?>



<script type="text/javascript">
    var menu_item_link_row = <?php end($configuration['simple_link']); if(key($configuration['simple_link']) == ''){echo 1;}else{ echo (key($configuration['simple_link'])+1); }?>;

    function addMenuItemSimleLink() {

        var optName = $(".add-menu-element option:selected").text();

        if(optName.length != 0){
            $('.name-add-menu-element').empty().append(optName);
        }

        $('.side-item-name').append('<li class="menu_item_link' + menu_item_link_row + '"><a href="#menu_item_link'+menu_item_link_row+'" data-toggle="tab" class="sidebar-item-name col-sm-10 btn">'+optName+' '+menu_item_link_row+'</a><button type="button" class="btn btn-danger remove-sidebar-item col-sm-2" onclick="$(\'.vtabs a:first\').trigger(\'click\'); $(\'.menu_item_link' + menu_item_link_row + '\').remove(); $(\'#menu_item_link' + menu_item_link_row + '\').remove(); return false;"><i class="fa fa-minus-circle"></i></button></li>');


        html  = '<div id="menu_item_link' + menu_item_link_row + '" class="tab-pane active">';


        html += '<div class="col-sm-12 settings-row">';
        html += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" data-original-title="<?php echo $sub_tab_configuration_link_blank_text_hint; ?>"><?php echo $sub_tab_configuration_link_blank_text; ?></span></label>';
        html += '<div class="col-sm-6">';
        html += '<input class="sub_tab_configuration_link_blank" type="checkbox" name="module_hyper_mega_menu[configuration][simple_link][<?php echo $k;?>][link_blank]" data-size="small" data-on-color="success" >';
        html += ' </div>';
        html += ' </div>';


        html += '<div class="col-sm-12 settings-row">';
        html += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" data-original-title="<?php echo $sub_tab_configuration_link_show_icon_text_hint; ?>"><?php echo $sub_tab_configuration_link_show_icon_text; ?></span></label>';
        html += '<div class="col-sm-6">';
        html += '<input class="sub_tab_configuration_show_icon" type="checkbox" name="module_hyper_mega_menu[configuration][simple_link][' + menu_item_link_row + '][show_icon]" data-size="small" data-on-color="success" >';
        html += ' </div>';
        html += ' </div>';


        html += '<div class="col-sm-12 settings-row">';
        html += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_link_icon_text_hint; ?>"><?php echo $sub_tab_configuration_link_icon_text; ?></span></label>';
        html += '<div class="col-sm-6 input-group iconpicker-container">';
        html += '<input type="text" name="module_hyper_mega_menu[configuration][simple_link][' + menu_item_link_row + '][font_awesome]" data-placement="bottomRight" class="form-control icp icp-auto iconpicker-element iconpicker-input icp-opts" type="text">';
        html += '<span class="input-group-addon"><i class="fa fa-archive"></i></span>';
        html += '</div>';
        html += '</div>';
        html += '<hr class="limiter">';


        html += '<div class="col-sm-12">';

        html += '<ul class="nav nav-tabs language_tabs" id="language">';
        html += '<?php foreach ($languages as $key=>$language) { ?>';
        html += '<?php if($key == $config_language){ ?><li class="active"><?php }else{?><li><?php }?><a href="#language_link-'+ menu_item_link_row + '-<?php echo $language['language_id']; ?>" <?php if($language['language_id']==$config_language_id){ echo 'class="active_language"'; }?>data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>';
        html += '<?php } ?>';
        html += '</ul>';

        html += '<div class="tab-content">';
        html += ' <?php foreach ($languages as $key=>$language) { ?>';
        html += '<div class="tab-pane <?php if($key == $config_language){ ?> active<?php }?>" id="language_link-'+ menu_item_link_row + '-<?php echo $language['language_id']; ?>">';


        html += '<div class="form-group">';
        html += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_link_title_text_hint; ?>"><?php echo $sub_tab_configuration_logo_title_text; ?></span></label>';
        html += '<div class="col-sm-6">';
        html += '<input type="text" name="module_hyper_mega_menu[configuration][simple_link][' + menu_item_link_row + '][link_title][<?php echo $language['language_id']; ?>]" class="form-control configuration-settings-input"/>';
        html += '</div>';
        html += '</div>';

        html += '<div class="form-group">';
        html += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_link_text_hint; ?>"><?php echo $sub_tab_configuration_link_text; ?></span></label>';
        html += '<div class="col-sm-6">';
        html += '<input type="text" name="module_hyper_mega_menu[configuration][simple_link][' + menu_item_link_row + '][link][<?php echo $language['language_id']; ?>]" class="form-control configuration-settings-input"/>';
        html += '</div>';
        html += '</div>';

        html += '</div>';
        html += '<?php } ?>';
        html += '</div>';


        html += '</div>';
        html += '</div>';

        $('.settings-item-configuration .configuration-settings').append(html);

        $(".control-label > span").tooltip();


        menu_item_link_row++;
    }
    //--></script>








