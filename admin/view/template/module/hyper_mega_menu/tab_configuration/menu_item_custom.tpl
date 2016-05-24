<?php foreach($configuration['custom'] as $k=>$value){?>
    <script type="text/javascript">
        $('.side-item-name').append('<li class="menu_item_custom<?php echo $k; ?>"><a href="#menu_item_custom<?php echo $k; ?>" data-toggle="tab" class="sidebar-item-name col-sm-10 btn"><?php echo $menu_element_custom_text . ' ' . $k; ?></a><button type="button" class="btn btn-danger remove-sidebar-item col-sm-2" onclick="$(\'.vtabs a:first\').trigger(\'click\'); $(\'.menu_item_custom<?php echo $k; ?>\').remove(); $(\'#menu_item_custom<?php echo $k; ?>\').remove(); return false;"><i class="fa fa-minus-circle"></i></button></li>');
    </script>
    <div id="menu_item_custom<?php echo $k; ?>" class="tab-pane">

        <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label">
                                        <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_custom_menu_type_text_hint; ?>">
                                            <?php echo $sub_tab_configuration_menu_type_text; ?>
                                        </span>
            </label>
            <div class="col-sm-6">
                <select name="module_hyper_mega_menu[configuration][custom][<?php echo $k;?>][menu_type]" class="form-control">
                    <option value=""><?php echo $sub_tab_configuration_make_your_choice_text; ?></option>
                    <option value="phone_operator" <?php if(isset($value['menu_type']) && $value['menu_type'] == 'phone_operator'){ echo 'selected="selected"'; }?>><?php echo $sub_tab_configuration_phone_operator_text; ?></option>
                    <option value="icon" <?php if(isset($value['menu_type']) && $value['menu_type'] == 'icon'){ echo 'selected="selected"'; }?>><?php echo $sub_tab_configuration_icon_text; ?></option>
                    <option value="title" <?php if(isset($value['menu_type']) && $value['menu_type'] == 'title'){ echo 'selected="selected"'; }?>><?php echo $sub_tab_configuration_title_text; ?></option>
                    <option value="delimiter" <?php if(isset($value['menu_type']) && $value['menu_type'] == 'delimiter'){ echo 'selected="selected"'; }?>><?php echo $sub_tab_configuration_delimiter_text; ?></option>
                </select>
            </div>
        </div>


        <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_custom_link_text_hint; ?>">
                <?php echo $sub_tab_configuration_phone_link_text; ?>
            </span>
            </label>
            <div class="col-sm-6">
                <input class="menu_item_custom_is_link" type="checkbox" <?php if(isset($value['link']) == 'on'){ echo 'checked=';}?> name="module_hyper_mega_menu[configuration][custom][<?php echo $k;?>][link]" data-size="small" data-on-color="success">
            </div>
        </div>

        <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label">
                                        <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_custom_parameter_text_hint; ?>">
                                            <?php echo $sub_tab_configuration_parameter_text; ?>
                                        </span>
            </label>
            <div class="col-sm-6">
                <select name="module_hyper_mega_menu[configuration][custom][<?php echo $k;?>][parameter]" class="form-control">
                    <option value=""><?php echo $sub_tab_configuration_make_your_choice_text; ?></option>
                    <option value="all_width_menu" <?php if(isset($value['parameter']) && $value['parameter'] == 'all_width_menu'){ echo 'selected="selected"'; }?>>
                        <?php echo $sub_tab_configuration_parameter_all_width_menu_text; ?>
                    </option>
                    <option value="all_width_content" <?php if(isset($value['parameter']) && $value['parameter'] == 'all_width_content'){ echo 'selected="selected"'; }?>>
                        <?php echo $sub_tab_configuration_parameter_all_width_content_text; ?>
                    </option>
                </select>
            </div>
        </div>



<!--        <div class="col-sm-12 settings-row">-->
<!--            <label class="col-sm-2 control-label">-->
<!--            <span data-toggle="tooltip" title="" data-original-title="Статус отображения окна Выключено/Включено">-->
<!--                --><?php //echo $sub_tab_configuration_icon_text; ?>
<!--            </span>-->
<!--            </label>-->
<!---->
<!--            <div class="col-sm-4">-->
<!--                <a href="" id="thumb-custom-image---><?php //echo $k; ?><!--" data-toggle="image" class="img-thumbnail">-->
<!--                    <img src="--><?php //echo (isset($value['thumb']) ? $value['thumb'] : $no_image) ?><!--" alt="" title="" data-placeholder="--><?php //echo $placeholder; ?><!--"/>-->
<!--                </a>-->
<!--                <input type="hidden" name="module_hyper_mega_menu[configuration][custom][--><?php //echo $k;?><!--][image]" value="--><?php //echo $value['image']; ?><!--" id="input-custom-image---><?php //echo $k; ?><!--"/>-->
<!--            </div>-->
<!--        </div>-->

        <hr class="limiter">
        <div class="col-sm-12">

            <ul class="nav nav-tabs language_tabs" id="language">
                <?php foreach ($languages as $key=>$language) { ?>
                    <?php if ($key == $config_language){ ?><li class="active"><?php }else{ ?><li><?php } ?>
                        <a href="#language_custom-<?php echo $k; ?>-<?php echo $language['language_id']; ?>"
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
                    <div class="tab-pane<?php if($key == $config_language){ ?> active<?php }else{?><?php }?>" id="language_custom-<?php echo $k; ?>-<?php echo $language['language_id']; ?>">
                        <div class="col-sm-12 settings-row">
                            <label class="col-sm-2 control-label">
                                    <span data-toggle="tooltip" title="" data-original-title="Статус отображения окна Выключено/Включено">
                                        <?php echo $menu_title_text; ?>
                                    </span>
                            </label>
                            <div class="col-sm-6">
                                <input type="text" name="module_hyper_mega_menu[configuration][custom][<?php echo $k; ?>][menu_title][<?php echo $language['language_id']; ?>]"
                                       value="<?php if(isset($value['menu_title'][$language['language_id']])){ echo $value['menu_title'][$language['language_id']]; } ?>"
                                       class="form-control configuration-settings-input"/>
                            </div>
                        </div>

                        <div class="col-sm-12 settings-row">
                            <label class="col-sm-2 control-label">
                                <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_custom_show_title_text_hint; ?>">
                                    <?php echo $sub_tab_configuration_custom_show_title_text; ?>
                                </span>
                            </label>
                            <div class="col-sm-6">
                                <input class="search_criteria" type="checkbox" name="module_hyper_mega_menu[configuration][custom][<?php echo $k;?>][show_title][<?php echo $language['language_id']; ?>]"
                                     data-size="small" data-on-color="success" <?php if(isset($value['show_title'][$language['language_id']]) == 'on'){ echo 'checked=';}?>>
                            </div>
                        </div>


                        <div class="col-sm-12 settings-row">
                            <label class="col-sm-2 control-label">
                                <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_custom_show_images_text_hint; ?>">
                                    <?php echo $sub_tab_configuration_custom_show_images_text; ?>
                                </span>
                            </label>
                            <div class="col-sm-6">
                                <input class="search_criteria" type="checkbox" name="module_hyper_mega_menu[configuration][custom][<?php echo $k;?>][images][<?php echo $language['language_id']; ?>]"
                                     data-size="small" data-on-color="success" <?php if(isset($value['images'][$language['language_id']]) == 'on'){ echo 'checked=';}?>>
                            </div>
                        </div>


                        <div class="col-sm-12 settings-row">
                            <label class="col-sm-2 control-label">
                                <span data-toggle="tooltip" data-original-title="<?php echo $sub_tab_configuration_link_show_icon_text_hint; ?>">
                                    <?php echo $sub_tab_configuration_link_show_icon_text; ?>
                                </span>
                            </label>
                            <div class="col-sm-6">
                                <input class="sub_tab_configuration_show_icon" type="checkbox" name="module_hyper_mega_menu[configuration][custom][<?php echo $k;?>][show_icon][<?php echo $language['language_id']; ?>]" data-size="small" data-on-color="success" <?php if(isset($value['show_icon'][$language['language_id']]) == 'on'){ echo 'checked=';}?> >
                            </div>
                        </div>


                        <div class="col-sm-12 settings-row">
                            <label class="col-sm-2 control-label">
                                <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_link_icon_text_hint; ?>">
                                    <?php echo $sub_tab_configuration_link_icon_text; ?>
                                </span>
                            </label>
                            <div class="col-sm-6">
                                <input type="text" name="module_hyper_mega_menu[configuration][custom][<?php echo $k;?>][icon][<?php echo $language['language_id']; ?>]" value="<?php if(isset($value['icon'][$language['language_id']])){ echo $value['icon'][$language['language_id']]; } ?>" class="form-control">
                            </div>
                        </div>


                    </div>
                <?php } ?>
            </div>
        </div>
    </div>
<?php } ?>


<script type="text/javascript">


    var menu_item_custom_row = <?php end($configuration['custom']); if(key($configuration['custom']) == ''){echo 1;}else{ echo (key($configuration['custom'])+1); }?>;

    function addMenuItemCustom() {

        var optName = $(".add-menu-element option:selected").text();

        if(optName.length != 0){
            $('.name-add-menu-element').empty().append(optName);
        }

        $('.side-item-name').append('<li class="menu_item_custom' + menu_item_custom_row + '"><a href="#menu_item_custom'+menu_item_custom_row+'" data-toggle="tab" class="sidebar-item-name col-sm-10 btn">'+optName+' '+menu_item_custom_row+'</a><button type="button" class="btn btn-danger remove-sidebar-item col-sm-2" onclick="$(\'.vtabs a:first\').trigger(\'click\'); $(\'.menu_item_custom' + menu_item_custom_row + '\').remove(); $(\'#menu_item_custom' + menu_item_custom_row + '\').remove(); return false;"><i class="fa fa-minus-circle"></i></button></li>');

        html  = '<div id="menu_item_custom' + menu_item_custom_row + '" class="tab-pane active">';
//        html  += '<div class="col-sm-12">';

        html  += '<div class="col-sm-12 settings-row">';
        html  += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_custom_menu_type_text_hint; ?>"><?php echo $sub_tab_configuration_menu_type_text; ?></span></label>';
        html  += '<div class="col-sm-6">';
        html  += '<select name="module_hyper_mega_menu[configuration][custom][' + menu_item_custom_row + '][menu_type]" class="form-control">';
        html  += '<option value=""><?php echo $sub_tab_configuration_make_your_choice_text; ?></option>';
        html  += '<option value="phone_operator"><?php echo $sub_tab_configuration_phone_operator_text; ?></option>';
        html  += '<option value="icon"><?php echo $sub_tab_configuration_icon_text; ?></option>';
        html  += '<option value="title"><?php echo $sub_tab_configuration_title_text; ?></option>';
        html  += '<option value="delimiter"><?php echo $sub_tab_configuration_delimiter_text; ?></option>';
        html  += '</select>';
        html  += '</div>';
        html  += '</div>';


        html  += '<div class="col-sm-12 settings-row">';
        html  += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_custom_link_text_hint; ?>"><?php echo $sub_tab_configuration_phone_link_text; ?></span></label>';
        html  += '<div class="col-sm-6">';
        html  += '<input class="menu_item_custom_is_link" type="checkbox" name="module_hyper_mega_menu[configuration][' + menu_item_custom_row + '][custom][link]" data-size="small" data-on-color="success">';
        html  += '</div>';
        html  += '</div>';

        html  += '<div class="col-sm-12 settings-row">';
        html  += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_custom_parameter_text_hint; ?>"><?php echo $sub_tab_configuration_parameter_text; ?></span></label>';
        html  += '<div class="col-sm-6">';
        html  += '<select name="module_hyper_mega_menu[configuration][custom][' + menu_item_custom_row + '][parameter]" class="form-control">';
        html  += '<option value=""><?php echo $sub_tab_configuration_make_your_choice_text; ?></option>';
        html  += '<option value="all_width_menu"><?php echo $sub_tab_configuration_parameter_all_width_menu_text; ?> </option>';
        html  += '<option value="all_width_content"><?php echo $sub_tab_configuration_parameter_all_width_content_text; ?></option>';
        html  += '</select>';
        html  += '</div>';
        html  += '</div>';


//
//        html  += '<div class="col-sm-12 settings-row">';
//        html  += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="Статус отображения окна Выключено/Включено"><?php //echo $sub_tab_configuration_icon_text; ?>//</span></label>';
//        html  += '<div class="col-sm-4">';
//        html  += '<a href="" id="thumb-custom-image-' + menu_item_custom_row + '" data-toggle="image" class="img-thumbnail"><img src="<?php //echo $no_image; ?>//" alt="" title="" data-placeholder="<?php //echo $placeholder; ?>//"/></a>';
//        html  += '<input type="hidden" name="module_hyper_mega_menu[configuration][custom][' + menu_item_custom_row + '][image]" id="input-custom-image-' + menu_item_custom_row + '"/>';
//        html  += '</div>';
//        html  += '</div>';


        html  += '<hr class="limiter">';

        html  += '<div id="menu_item_custom'+ menu_item_custom_row + '-<?php echo $language['language_id']; ?>">';
        html  += '<div class="col-sm-12">';
        html  += '<ul class="nav nav-tabs language_tabs" id="language">';
        html  += '<?php foreach ($languages as $key=>$language) { ?>';
        html  += '<?php if($key == $config_language){ ?><li class="active"><?php }else{?><li><?php }?><a href="#language_custom-'+ menu_item_custom_row + '-<?php echo $language['language_id']; ?>" <?php if($language['language_id']==$config_language_id){ echo 'class="active_language"'; }?> data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>"/> <?php echo $language['name']; ?> </a>';
        html  += '</li>';
        html  += '<?php } ?>';
        html  += '</ul>';

        html += '<div class="tab-content">';
        html += ' <?php foreach ($languages as $key=>$language) { ?>';
        html += '<div class="tab-pane <?php if($key == $config_language){ ?> active<?php }?>" id="language_custom-'+ menu_item_custom_row + '-<?php echo $language['language_id']; ?>">';

        html += '<div class="col-sm-12 settings-row">';
        html += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="Статус отображения окна Выключено/Включено"><?php echo $menu_title_text; ?></span></label>';
        html += '<div class="col-sm-6">';
        html += '<input type="text" name="module_hyper_mega_menu[configuration][custom][' + menu_item_custom_row + '][menu_title][<?php echo $language['language_id']; ?>]"  class="form-control configuration-settings-input"/>';
        html += '</div>';
        html += '</div>';

        html  += '<div class="col-sm-12 settings-row">';
        html  += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_custom_show_title_text_hint; ?>"><?php echo $sub_tab_configuration_custom_show_title_text; ?></span></label>';
        html  += '<div class="col-sm-6">';
        html  += '<input class="search_criteria" type="checkbox" name="module_hyper_mega_menu[configuration][custom][' + menu_item_custom_row + '][show_title][<?php echo $language['language_id']; ?>]"   data-size="small" data-on-color="success">';
        html  += '</div>';
        html  += '</div>';

        html  += '<div class="col-sm-12 settings-row">';
        html  += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_custom_show_images_text_hint; ?>"><?php echo $sub_tab_configuration_custom_show_images_text; ?></span></label>';
        html  += '<div class="col-sm-6">';
        html  += '<input class="search_criteria" type="checkbox" name="module_hyper_mega_menu[configuration][custom][' + menu_item_custom_row + '][images][<?php echo $language['language_id']; ?>]"   data-size="small" data-on-color="success">';
        html  += '</div>';
        html  += '</div>';


        html += '<div class="col-sm-12 settings-row">';
        html += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" data-original-title="<?php echo $sub_tab_configuration_link_show_icon_text_hint; ?>"><?php echo $sub_tab_configuration_link_show_icon_text; ?></span></label>';
        html += '<div class="col-sm-6">';
        html += '<input class="search_criteria" type="checkbox" name="module_hyper_mega_menu[configuration][custom][' + menu_item_custom_row + '][show_icon][<?php echo $language['language_id']; ?>]" data-size="small" data-on-color="success" >';
        html += ' </div>';
        html += ' </div>';


        html += '<div class="col-sm-12 settings-row">';
        html += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_link_icon_text_hint; ?>"><?php echo $sub_tab_configuration_link_icon_text; ?></span></label>';
        html += '<div class="col-sm-6">';
        html += '<input type="text" name="module_hyper_mega_menu[configuration][custom][' + menu_item_custom_row + '][icon][<?php echo $language['language_id']; ?>]" class="form-control">';
        html += '</div>';
        html += '</div>';


        html += '</div>';
        html += '<?php } ?>';
        html += '</div>';

        html += '</div>';
        html  += '</div>';

        html  += '</div>';
//        html  += '</div>';

        $('.settings-item-configuration .configuration-settings').append(html);
        $(".control-label > span").tooltip();

        menu_item_custom_row++;
    }
    //--></script>

