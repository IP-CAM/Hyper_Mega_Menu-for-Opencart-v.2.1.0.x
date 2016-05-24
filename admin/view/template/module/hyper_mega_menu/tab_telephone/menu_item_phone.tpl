<div class="nav nav-tabs col-sm-2 side-item-name" id="configuration_settings_tabs">
    <?php foreach($configuration['phone'] as $key=>$value){?>
    <div class="menu_item_phone<?php echo $key; ?>">
        <a href="#menu_item_phone<?php echo $key; ?>" data-toggle="tab" class="sidebar-item-name col-sm-10 btn btn-info ">
            <?php echo ($menu_element_telephone_text . ' ' .$key); ?></a>
        <button type="button" class="btn btn-danger remove-sidebar-item col-sm-2">
            <i class="fa fa-minus-circle" onclick='$(".vtabs a:first").trigger("click"); $(".menu_item_phone<?php echo $key;?>").remove(); $("#menu_item_phone<?php echo $key;?>").remove(); return false;'></i>
        </button>
    </div>
    <?php } ?>
    <div id="menu_item_phone_add_button">
        <button type="button" class="btn btn-success remove-sidebar-item col-sm-12" onclick="addMenuItemPhone();"><?php echo ($menu_item_phone_add_button_text); ?></button>
    </div>
</div>

<div class="col-sm-10 configuration-settings tab-content">
    <?php foreach($configuration['phone'] as $k=>$menu_item_custom_row){?>
    <div id="menu_item_phone<?php echo $k; ?>" class="col-sm-12 tab-pane <?php if($k == 0){ ?> active<?php }?>">
        <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label">
                                        <span data-toggle="tooltip" title="" data-original-title="Статус отображения окна Выключено/Включено">
                                            <?php echo $sub_tab_configuration_contact_type_text; ?>
                                        </span>
            </label>
            <div class="col-sm-10">
                <select name="module_hyper_mega_menu[configuration][phone][<?php echo $k;?>][type_contact]" class="form-control">
                    <option value=""><?php echo $sub_tab_configuration_make_your_choice_text;?></option>
                    <option value="phone_operator" <?php if(isset($menu_item_custom_row['type_contact']) && $menu_item_custom_row['type_contact'] == 'phone_operator'){ echo 'selected="selected"'; }?> ><?php echo $sub_tab_configuration_phone_operator_text; ?></option>
                    <option value="icon" <?php if(isset($menu_item_custom_row['type_contact']) && $menu_item_custom_row['type_contact'] == 'icon'){ echo 'selected="selected"'; }?>><?php echo $sub_tab_configuration_icon_text; ?></option>
                    <option value="title" <?php if(isset($menu_item_custom_row['type_contact']) && $menu_item_custom_row['type_contact'] == 'title'){ echo 'selected="selected"'; }?>><?php echo $sub_tab_configuration_title_text; ?></option>
                    <option value="delimiter" <?php if(isset($menu_item_custom_row['type_contact']) && $menu_item_custom_row['type_contact'] == 'delimiter'){ echo 'selected="selected"'; }?>><?php echo $sub_tab_configuration_delimiter_text; ?></option>
                </select>
            </div>
        </div>
        <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label">
                                        <span data-toggle="tooltip" title="" data-original-title="Статус отображения окна Выключено/Включено">
                                            <?php echo $sub_tab_configuration_phone_operator_text; ?>
                                        </span>
            </label>
            <div class="col-sm-10">
                <select name="module_hyper_mega_menu[configuration][phone][<?php echo $k;?>][phone_operator]" class="form-control">
                    <option value=""><?php echo $sub_tab_configuration_make_your_choice_text;?></option>
                    <?php foreach($phones_list as $val){ ?>
                        <?php if($menu_item_custom_row['phone_operator'] == $val['id']){?>
                            <option selected="selected" value="<?php echo $val['id']; ?>"><?php echo $val['name_phone']; ?></option>
                        <?php }else{ ?>
                            <option value="<?php echo $val['id']; ?>"><?php echo $val['name_phone']; ?></option>
                        <?php } ?>
                    <?php } ?>
                </select>
            </div>
        </div>
        <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label">
                                        <span data-toggle="tooltip" title="" data-original-title="Статус отображения окна Выключено/Включено">
                                            <?php echo $sub_tab_configuration_icon_text; ?>
                                        </span>
            </label>

            <div class="col-sm-10">
                <a href="" id="thumb-phone-image-<?php echo $k; ?>" data-toggle="image" class="img-thumbnail">
                    <img src="<?php echo (isset($menu_item_custom_row['thumb']) ? $menu_item_custom_row['thumb'] : $no_image) ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>"/>
                </a>
                <input type="hidden" name="module_hyper_mega_menu[configuration][phone][<?php echo $k;?>][image]" value="<?php echo $menu_item_custom_row['image']; ?>" id="input-phone-image-<?php echo $k; ?>"/>

            </div>
        </div>

                <ul class="nav nav-tabs" id="language">
                    <?php foreach ($languages as $key=>$language) { ?>
                    <?php if ($key == $config_language){ ?><li class="active"><?php }else{ ?><li><?php } ?>
                        <a href="#language_phone-<?php echo $k; ?>-<?php echo $language['language_id']; ?>"
                            <?php if ($language['language_id'] == $config_language_id) { echo 'class="active_language"'; } ?> data-toggle="tab">
                            <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>"/> <?php echo $language['name']; ?>
                        </a>
                    <?php } ?>
                </ul>
                <div class="tab-content">
                    <?php foreach ($languages as $key=>$language) { ?>
                        <div class="tab-pane<?php if($key == $config_language){ ?> active<?php }else{?><?php }?>" id="language_phone-<?php echo $k; ?>-<?php echo $language['language_id']; ?>">

                            <div class="col-sm-12 settings-row">
                                <label class="col-sm-2 control-label">
                                        <span data-toggle="tooltip" title="" data-original-title="Статус отображения окна Выключено/Включено">
                                            <?php echo $menu_title_text; ?>
                                        </span>
                                </label>
                                <div class="col-sm-10">
                                    <input type="text" name="module_hyper_mega_menu[configuration][phone][<?php echo $k; ?>][<?php echo $language['language_id']; ?>][menu_title]"
                                           value="<?php if(isset($menu_item_custom_row[$language['language_id']]['menu_title'])){ echo $menu_item_custom_row[$language['language_id']]['menu_title']; } ?>"
                                           class="form-control configuration-settings-input"/>
                                </div>
                            </div>

                            <div class="col-sm-12 settings-row">
                                <label class="col-sm-2 control-label">
                                            <span data-toggle="tooltip" title="" data-original-title="Статус отображения окна Выключено/Включено">
                                                <?php echo $sub_tab_configuration_title_text; ?>
                                            </span>
                                </label>
                                <div class="col-sm-10">
                                    <input type="text" name="module_hyper_mega_menu[configuration][phone][<?php echo $k;?>][<?php echo $language['language_id']; ?>][title]"
                                           value="<?php if(isset($menu_item_custom_row[$language['language_id']]['title'])){ echo $menu_item_custom_row[$language['language_id']]['title']; } ?>" class="form-control configuration-settings-input">
                                </div>
                            </div>

                            <div class="col-sm-12 settings-row">
                                <label class="col-sm-2 control-label">
                                            <span data-toggle="tooltip" title="" data-original-title="Статус отображения окна Выключено/Включено">
                                                <?php echo $sub_tab_configuration_phone_link_text; ?>
                                            </span>
                                </label>
                                <div class="col-sm-10">
                                    <input type="text" name="module_hyper_mega_menu[configuration][phone][<?php echo $k;?>][<?php echo $language['language_id']; ?>][link]"
                                           value="<?php if(isset($menu_item_custom_row[$language['language_id']]['link'])){ echo $menu_item_custom_row[$language['language_id']]['link']; } ?>" class="form-control configuration-settings-input">
                                </div>
                            </div>

                        </div>
                    <?php } ?>
                </div>
            </div>
    <?php } ?>
</div>
<script type="text/javascript">
    $(".active_language").tab('show');
</script>

<script type="text/javascript">
    var menu_item_phone_row = <?php echo count($configuration['phone']);?>;

    function addMenuItemPhone() {

        $('#tab_element_telephone .configuration-settings > div').removeClass('active');

        var optName = "<?php echo ($menu_element_telephone_text . ' '); ?>"+menu_item_phone_row;

        if(optName.length != 0){
            $('.name-add-menu-element').empty().append(optName);
        }

        $('<div class="menu_item_phone' + menu_item_phone_row + '"><a href="#menu_item_phone'+menu_item_phone_row+'" data-toggle="tab" class="sidebar-item-name col-sm-10 btn btn-info ">'+optName+'</a><button type="button" class="btn btn-danger remove-sidebar-item col-sm-2" onclick="$(\'.vtabs a:first\').trigger(\'click\'); $(\'.menu_item_phone' + menu_item_phone_row + '\').remove(); $(\'#menu_item_phone' + menu_item_phone_row + '\').remove(); return false;"><i class="fa fa-minus-circle"></i></button></div>').insertBefore('#menu_item_phone_add_button');

        html  = '<div id="menu_item_phone' + menu_item_phone_row + '" class="col-sm-12 tab-pane active">';


        html  += '<div class="col-sm-12 settings-row">';
        html  += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="Статус отображения окна Выключено/Включено"><?php echo $sub_tab_configuration_contact_type_text; ?></span></label>';
        html  += '<div class="col-sm-10">';
        html  += '<select name="module_hyper_mega_menu[configuration][phone]['+menu_item_phone_row+'][type_contact]" class="form-control">';
        html  += '<option value=""><?php echo $sub_tab_configuration_make_your_choice_text;?></option>';
        html  += '<option value="phone_operator" <?php if(isset($module['type_contact']) == 'phone_operator'){ echo 'selected="selected"'; }?> ><?php echo $sub_tab_configuration_phone_operator_text; ?></option>';
        html  += '<option value="icon" <?php if(isset($module['type_contact']) == 'icon'){ echo 'selected="selected"'; }?>><?php echo $sub_tab_configuration_icon_text; ?></option>';
        html  += '<option value="title" <?php if(isset($module['type_contact']) == 'title'){ echo 'selected="selected"'; }?>><?php echo $sub_tab_configuration_title_text; ?></option>';
        html  += '<option value="delimiter" <?php if(isset($module['type_contact']) == 'delimiter'){ echo 'selected="selected"'; }?>><?php echo $sub_tab_configuration_delimiter_text; ?></option>';
        html  += '</select>';
        html  += '</div>';
        html  += '</div>';



        html  += '<div class="col-sm-12 settings-row">';
        html  += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="Статус отображения окна Выключено/Включено"><?php echo $sub_tab_configuration_phone_operator_text; ?></span></label>';
        html  += '<div class="col-sm-10">';
        html  += '<select name="module_hyper_mega_menu[configuration][phone]['+menu_item_phone_row+'][phone_operator]" class="form-control">';
        html  += '<option value=""><?php echo $sub_tab_configuration_make_your_choice_text;?></option>';
        html  += '<?php foreach($phones_list as $val){ ?><option value="<?php echo $val['id']; ?>"><?php echo $val['name_phone']; ?></option><?php } ?>';
        html  += '</select>';
        html  += '</div>';
        html  += '</div>';


        html  += '<div class="col-sm-12 settings-row">';
        html  += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="Статус отображения окна Выключено/Включено"><?php echo $sub_tab_configuration_icon_text; ?></span></label>';
        html  += '<div class="col-sm-4">';
        html  += '<a href="" id="thumb-phone-image-'+menu_item_phone_row+'" data-toggle="image" class="img-thumbnail"><img src="<?php echo $no_image; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>"/></a>';
        html  += '<input type="hidden" name="module_hyper_mega_menu[configuration][phone]['+menu_item_phone_row+'][image]" id="input-phone-image-'+menu_item_phone_row+'"/>';
        html  += '</div>';
        html  += '</div>';






        html  += '<ul class="nav nav-tabs" id="language">';
        html  += '<?php foreach ($languages as $key=>$language) { ?>';
        html  += '<?php if($key == $config_language){ ?><li class="active"><?php }else{?><li><?php }?><a href="#language_phone-'+ menu_item_phone_row + '-<?php echo $language['language_id']; ?>" <?php if($language['language_id']==$config_language_id){ echo 'class="active_language"'; }?> data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>"/> <?php echo $language['name']; ?> </a>';
        html  += '</li>';
        html  += '<?php } ?>';
        html  += '</ul>';



        html += '<div class="tab-content">';
        html += ' <?php foreach ($languages as $key=>$language) { ?>';
        html += '<div class="tab-pane <?php if($key == $config_language){ ?> active<?php }?>" id="language_phone-'+ menu_item_phone_row + '-<?php echo $language['language_id']; ?>">';


        html += '<div class="col-sm-12 settings-row">';
        html += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="Статус отображения окна Выключено/Включено"><?php echo $menu_title_text; ?></span></label>';
        html += '<div class="col-sm-10">';
        html += '<input type="text" name="module_hyper_mega_menu[configuration][phone][' + menu_item_phone_row + '][<?php echo $language['language_id']; ?>][menu_title]" class="form-control configuration-settings-input"/>';
        html += '</div>';
        html += '</div>';

        html += '<div class="col-sm-12 settings-row">';
        html += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="Статус отображения окна Выключено/Включено"><?php echo $sub_tab_configuration_title_text; ?></span></label>';
        html += '<div class="col-sm-10">';
        html += '<input type="text" name="module_hyper_mega_menu[configuration][phone][' + menu_item_phone_row + '][<?php echo $language['language_id']; ?>][title]" class="form-control configuration-settings-input"/>';
        html += '</div>';
        html += '</div>';

        html += '<div class="col-sm-12 settings-row">';
        html += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="Статус отображения окна Выключено/Включено"><?php echo $sub_tab_configuration_phone_link_text; ?></span></label>';
        html += '<div class="col-sm-10">';
        html += '<input type="text" name="module_hyper_mega_menu[configuration][phone][' + menu_item_phone_row + '][<?php echo $language['language_id']; ?>][link]" class="form-control configuration-settings-input"/>';
        html += '</div>';
        html += '</div>';


        html += '</div>';
        html += '<?php } ?>';

        html += '</div>';



        $('#tab_element_telephone .configuration-settings').append(html);

        menu_item_phone_row++;
    }
    //--></script>







