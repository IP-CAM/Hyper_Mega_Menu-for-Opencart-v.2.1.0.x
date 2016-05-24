<?php $all_search_criteria = array(
    'H1' => $sub_tab_configuration_search_h1_text,
    'model' => $sub_tab_configuration_search_model_text,
    'sku' => $sub_tab_configuration_search_sku_text,
    'attribute' => $sub_tab_configuration_search_attribute_text,
); ?>
<?php foreach($configuration['search'] as $k=>$value){?>
    <script type="text/javascript">
        $('.side-item-name').append('<li class="menu_item_search<?php echo $k; ?>"><a href="#menu_item_search<?php echo $k; ?>" data-toggle="tab" class="sidebar-item-name col-sm-10 btn"><?php echo $menu_element_search_text . ' ' . $k; ?></a><button type="button" class="btn btn-danger remove-sidebar-item col-sm-2" onclick="$(\'.vtabs a:first\').trigger(\'click\'); $(\'.menu_item_search<?php echo $k; ?>\').remove(); $(\'#menu_item_search<?php echo $k; ?>\').remove(); searchRemoveAttrDisabled(); return false;"><i class="fa fa-minus-circle"></i></button></li>');
    </script>
    <div id="menu_item_search<?php echo $k; ?>" class="tab-pane">


        <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label"><span data-toggle="tooltip" data-original-title="<?php echo $sub_tab_configuration_title_text; ?>"><?php echo $sub_tab_configuration_title_text; ?></span></label>
            <div class="col-sm-6">
                <?php foreach ($languages as $language) { ?>
                    <div class="input-group"> <span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
                        <input type="text" name="module_hyper_mega_menu[configuration][search][<?php echo $k;?>][title][<?php echo $language['language_id']; ?>]"
                               value="<?php if(isset($value['title'][$language['language_id']])){ echo $value['title'][$language['language_id']]; }?>"
                               placeholder="Название" class="form-control">
                    </div>
                <?php } ?>
            </div>
        </div>

        <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label">
                                        <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_search_type_text; ?>">
                                            <?php echo $sub_tab_configuration_search_type_text; ?>
                                        </span>
            </label>
            <div class="col-sm-6">
                <select name="module_hyper_mega_menu[configuration][search][<?php echo $k;?>][type]" class="form-control">
                    <option value=""><?php echo $sub_tab_configuration_make_your_choice_text; ?></option>
                    <option value="usual" <?php if(isset($value['type']) && $value['type'] == 'usual'){ echo 'selected="selected"'; }?>><?php echo $sub_tab_configuration_search_type_usual_text; ?></option>
                    <option value="compaq" <?php if(isset($value['type']) && $value['type'] == 'compaq'){ echo 'selected="selected"'; }?>><?php echo $sub_tab_configuration_search_type_compaq_text; ?></option>
                    <option value="as_link" <?php if(isset($value['type']) && $value['type'] == 'as_link'){ echo 'selected="selected"'; }?>><?php echo $sub_tab_configuration_search_type_as_link_text; ?></option>
                </select>
            </div>
        </div>

        <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label">
                                        <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_search_effect_text; ?>">
                                            <?php echo $sub_tab_configuration_search_effect_text; ?>
                                        </span>
            </label>
            <div class="col-sm-6">
                <select name="module_hyper_mega_menu[configuration][search][<?php echo $k;?>][effect]" class="form-control">
                    <option value=""><?php echo $sub_tab_configuration_make_your_choice_text; ?></option>
                    <option value="effect_slip" <?php if(isset($value['effect']) && $value['effect'] == 'effect_slip'){ echo 'selected="selected"'; }?>><?php echo $sub_tab_configuration_search_effect_slip_text; ?></option>
                    <option value="dropdown_field" <?php if(isset($value['effect']) && $value['effect'] == 'dropdown_field'){ echo 'selected="selected"'; }?>><?php echo $sub_tab_configuration_search_effect_dropdown_field_text; ?></option>
                </select>
            </div>
        </div>


        <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" data-original-title="<?php echo $sub_tab_configuration_search_autocomplete_text_hint; ?>">
                <?php echo $sub_tab_configuration_search_autocomplete_text; ?>
            </span>
            </label>
            <div class="col-sm-6">
                <input class="sub_tab_configuration_search_autocomplete" type="checkbox" name="module_hyper_mega_menu[configuration][search][<?php echo $k;?>][autocomplete]" data-size="small" data-on-color="success" <?php if(isset($value['autocomplete']) == 'on'){ echo 'checked=';}?> >
            </div>
        </div>

        <div class="col-sm-12 settings-row text-center"><h3><?php echo $menu_element_search_criteria_text; ?></h3></div>
        <hr class="limiter">


        <?php foreach($all_search_criteria as $key_name=>$value_text){?>
                <div class="col-sm-12 settings-row">
                    <label class="col-sm-2 control-label">
                    <span data-toggle="tooltip" title="" data-original-title="<?php echo $value_text; ?>">
                        <?php echo $value_text; ?>
                    </span>
                    </label>
                    <div class="col-sm-6">
                        <input class="search_criteria" type="checkbox" name="module_hyper_mega_menu[configuration][search][<?php echo $k;?>][search_place][<?php echo $key_name;?>]" data-size="small" data-on-color="success" <?php if(isset($value['search_place'][$key_name]) == 'on'){ echo 'checked=';}?>/>
                    </div>
                </div>
        <?php } ?>

    </div>

<?php } ?>

<script type="text/javascript">
    var menu_item_search_row = <?php end($configuration['search']); if(key($configuration['search']) == ''){echo 1;}else{ echo (key($configuration['search'])+1); }?>;

    <?php if(count($configuration['search']) > 0){?>
        searchAddAttrDisabled();
    <?php } ?>

    function addMenuItemSearch() {

        var optName = $(".add-menu-element option:selected").text();

//        if(optName.length != 0){
//            $('.name-add-menu-element').empty().append(optName);
//        }

        $('.side-item-name').append('<li class="menu_item_search' + menu_item_search_row + '"><a href="#menu_item_search'+menu_item_search_row+'" data-toggle="tab" class="sidebar-item-name col-sm-10 btn">'+optName+' '+menu_item_search_row+'</a><button type="button" class="btn btn-danger remove-sidebar-item col-sm-2" onclick="$(\'.vtabs a:first\').trigger(\'click\'); $(\'.menu_item_search' + menu_item_search_row + '\').remove(); $(\'#menu_item_search' + menu_item_search_row + '\').remove(); searchRemoveAttrDisabled(); return false;"><i class="fa fa-minus-circle"></i></button></li>');

        html  = '<div id="menu_item_search' + menu_item_search_row + '" class="tab-pane active">';



        html  += '<div class="col-sm-12 settings-row">';
        html  += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" data-original-title="<?php echo $sub_tab_configuration_title_text; ?>"><?php echo $sub_tab_configuration_title_text; ?></span></label>';
        html  += '<div class="col-sm-6">';
        html  += ' <?php foreach ($languages as $language) { ?>';
        html  += '<div class="input-group"> <span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>';
        html  += '<input type="text" name="module_hyper_mega_menu[configuration][search][' + menu_item_search_row + '][title][<?php echo $language['language_id']; ?>]" placeholder="Название" class="form-control">';
        html  += '</div>';
        html  += '<?php } ?>';
        html  += '</div>';
        html  += '</div>';

        html  += '<div class="col-sm-12 settings-row">';
        html  += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_search_type_text; ?>"><?php echo $sub_tab_configuration_search_type_text; ?></span></label>';
        html  += '<div class="col-sm-6">';
        html  += '<select name="module_hyper_mega_menu[configuration][search][' + menu_item_search_row + '][type]" class="form-control">';
        html  += '<option value=""><?php echo $sub_tab_configuration_make_your_choice_text; ?></option>';
        html  += '<option value="usual"><?php echo $sub_tab_configuration_search_type_usual_text; ?> </option>';
        html  += '<option value="compaq"><?php echo $sub_tab_configuration_search_type_compaq_text; ?> </option>';
        html  += '<option value="as_link"><?php echo $sub_tab_configuration_search_type_as_link_text; ?></option>';
        html  += '</select>';
        html  += '</div>';
        html  += '</div>';


        html  += '<div class="col-sm-12 settings-row">';
        html  += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_search_effect_text; ?>"><?php echo $sub_tab_configuration_search_effect_text; ?></span></label>';
        html  += '<div class="col-sm-6">';
        html  += '<select name="module_hyper_mega_menu[configuration][search][' + menu_item_search_row + '][effect]" class="form-control">';
        html  += '<option value=""><?php echo $sub_tab_configuration_make_your_choice_text; ?></option>';
        html  += '<option value="effect_slip"><?php echo $sub_tab_configuration_search_effect_slip_text; ?></option>';
        html  += '<option value="dropdown_field"><?php echo $sub_tab_configuration_search_effect_dropdown_field_text; ?></option>';
        html  += '</select>';
        html  += '</div>';
        html  += '</div>';


        html  += '<div class="col-sm-12 settings-row">';
        html  += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" data-original-title="<?php echo $sub_tab_configuration_search_autocomplete_text_hint; ?>"><?php echo $sub_tab_configuration_search_autocomplete_text; ?></span></label>';
        html  += '<div class="col-sm-6">';
        html  += '<input class="sub_tab_configuration_search_autocomplete" type="checkbox" name="module_hyper_mega_menu[configuration][search][' + menu_item_search_row + '][autocomplete]" data-size="small" data-on-color="success" >';
        html  += '</div>';
        html  += '</div>';

        html  += '<div class="col-sm-12 settings-row text-center"><h3><?php echo $menu_element_search_criteria_text; ?></h3></div><hr class="limiter">';

        <?php foreach($all_search_criteria as $key_name=>$value_text){?>
        html  += '<div class="col-sm-12 settings-row">';
        html  += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="<?php echo $value_text; ?>"><?php echo $value_text; ?></span></label>';
        html  += '<div class="col-sm-6">';

        html  += '<input class="search_criteria" type="checkbox" name="module_hyper_mega_menu[configuration][search][' + menu_item_search_row + '][search_place][<?php echo $key_name;?>]" data-size="small" data-on-color="success"/>';


        html  += '</div>';
        html  += '</div>';
        <?php } ?>


        html  += '</div>';

        $('.settings-item-configuration .configuration-settings').append(html);

        $(".control-label > span").tooltip();

        menu_item_search_row++;

        searchAddAttrDisabled();

    }

    function searchAddAttrDisabled(){
        $('.add-menu-element #custom_menu_search').attr({disabled:'disabled'});
        $('.add-menu-element #custom_menu_default').prop('selected', true);
    }

    function searchRemoveAttrDisabled(){
        $('.add-menu-element #custom_menu_search').removeAttr('disabled');
    }

    //--></script>

