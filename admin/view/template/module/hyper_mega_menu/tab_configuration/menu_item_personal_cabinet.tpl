<?php foreach($configuration['account'] as $k=>$value){?>
    <script type="text/javascript">
        $('.side-item-name').append('<li class="menu_item_account<?php echo $k; ?>"><a href="#menu_item_account<?php echo $k; ?>" data-toggle="tab" class="sidebar-item-name col-sm-10 btn"><?php echo $menu_element_account_text . ' ' . $k; ?></a><button type="button" class="btn btn-danger remove-sidebar-item col-sm-2" onclick="$(\'.vtabs a:first\').trigger(\'click\'); $(\'.menu_item_account<?php echo $k; ?>\').remove(); $(\'#menu_item_account<?php echo $k; ?>\').remove(); accountRemoveAttrDisabled(); return false;"><i class="fa fa-minus-circle"></i></button></li>');
    </script>
    <div id="menu_item_account<?php echo $k; ?>" class="tab-pane">


            <div class="col-sm-12 settings-row">
                <label class="col-sm-2 control-label"><span data-toggle="tooltip" data-original-title="<?php echo $sub_tab_configuration_account_title_text_hint; ?>"><?php echo $sub_tab_configuration_account_title_text; ?></span></label>
                <div class="col-sm-6">
                    <?php foreach ($languages as $language) { ?>
                        <div class="input-group"> <span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
                            <input type="text" name="module_hyper_mega_menu[configuration][account][<?php echo $k;?>][account_title][<?php echo $language['language_id']; ?>]"
                                   value="<?php if(isset($value['account_title'][$language['language_id']])){ echo $value['account_title'][$language['language_id']]; }?>"
                                   placeholder="Название" class="form-control">
                        </div>
                    <?php } ?>
                </div>
            </div>


            <div class="col-sm-12 settings-row">
                <label class="col-sm-2 control-label">
                                    <span data-toggle="tooltip" data-original-title="<?php echo $sub_tab_configuration_account_show_initials_text_hint; ?>">
                                        <?php echo $sub_tab_configuration_account_show_initials_text; ?>
                                    </span>
                </label>
                <div class="col-sm-6">
                    <input class="search_criteria" type="checkbox" name="module_hyper_mega_menu[configuration][account][<?php echo $k;?>][show_initials]" data-size="small" data-on-color="success" <?php if(isset($value['show_initials']) == 'on'){ echo 'checked=';}?> >
                </div>
            </div>


            <div class="col-sm-12 settings-row">
                <label class="col-sm-2 control-label">
                                    <span data-toggle="tooltip" data-original-title="<?php echo $sub_tab_configuration_cart_signature_icon_text_hint; ?>">
                                        <?php echo $sub_tab_configuration_cart_signature_icon_text; ?>
                                    </span>
                </label>
                <div class="col-sm-6">
                    <input class="search_criteria" type="checkbox" name="module_hyper_mega_menu[configuration][account][<?php echo $k;?>][signature_icon]" data-size="small" data-on-color="success" <?php if(isset($value['signature_icon']) == 'on'){ echo 'checked=';}?> >
                </div>
            </div>


            <div class="col-sm-12 settings-row">
                <label class="col-sm-2 control-label">
                <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_link_icon_text_hint; ?>">
                    <?php echo $sub_tab_configuration_link_icon_text; ?>
                </span>
                </label>
                <div class="col-sm-6 input-group iconpicker-container">
                    <input name="module_hyper_mega_menu[configuration][account][<?php echo $k;?>][font_awesome]" data-placement="bottomRight" class="form-control icp icp-auto iconpicker-element iconpicker-input icp-opts" value="<?php if(isset($value['font_awesome'])){ echo $value['font_awesome']; } ?>" type="text">
                    <span class="input-group-addon"><i class="fa fa-archive"></i></span>
                </div>
            </div>


            <hr class="limiter">

            <div class="col-sm-12 settings-row">
                <label class="col-sm-2 control-label">
                                            <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_open_account_text_hint; ?>">
                                                <?php echo $sub_tab_configuration_open_account_text; ?>
                                            </span>
                </label>
                <div class="col-sm-6 account-open-method">
                    <select name="module_hyper_mega_menu[configuration][account][<?php echo $k;?>][open_account]" class="form-control">
                        <option value=""><?php echo $sub_tab_configuration_make_your_choice_text; ?></option>
                        <option value="dropdown" <?php if(isset($value['open_account']) && $value['open_account'] == 'dropdown'){ echo 'selected="selected"'; }?>><?php echo $sub_tab_configuration_account_dropdown_text; ?></option>
                        <option value="popup" <?php if(isset($value['open_account']) && $value['open_account'] == 'popup'){ echo 'selected="selected"'; }?>><?php echo $sub_tab_configuration_account_popup_text; ?></option>
                        <option value="move_left" <?php if(isset($value['open_account']) && $value['open_account'] == 'move_left'){ echo 'selected="selected"'; }?>><?php echo $sub_tab_configuration_account_move_left_text; ?></option>
                        <option value="move_right" <?php if(isset($value['open_account']) && $value['open_account'] == 'move_right'){ echo 'selected="selected"'; }?>><?php echo $sub_tab_configuration_account_move_right_text; ?></option>
                        <option value="move_top" <?php if(isset($value['open_account']) && $value['open_account'] == 'move_top'){ echo 'selected="selected"'; }?>><?php echo $sub_tab_configuration_account_move_top_text; ?></option>
                        <option value="move_bottom" <?php if(isset($value['open_account']) && $value['open_account'] == 'move_bottom'){ echo 'selected="selected"'; }?>><?php echo $sub_tab_configuration_account_move_bottom_text; ?></option>
                    </select>
                </div>
            </div>



            <div class="col-sm-12 settings-row nifty-modal-account <?php if(isset($value['open_account']) && $value['open_account'] !== 'popup'){ echo 'display-none'; }?>">
                <label class="col-sm-2 control-label">
                                            <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_open_account_popup_text_hint; ?>">
                                                <?php echo $sub_tab_configuration_open_account_popup_text; ?>
                                            </span>
                </label>
                <div class="col-sm-6">
                    <select name="module_hyper_mega_menu[configuration][account][<?php echo $k;?>][open_account_popup]" class="form-control">
                        <option value=""><?php echo $sub_tab_configuration_make_your_choice_text; ?></option>
                        <option value="modal-1" <?php if(isset($value['open_account_popup']) && $value['open_account_popup'] == 'modal-1'){ echo 'selected="selected"'; }?>>Fade in &amp; Scale</option>
                        <option value="modal-2" <?php if(isset($value['open_account_popup']) && $value['open_account_popup'] == 'modal-2'){ echo 'selected="selected"'; }?>>Slide in (right)</option>
                        <option value="modal-3" <?php if(isset($value['open_account_popup']) && $value['open_account_popup'] == 'modal-3'){ echo 'selected="selected"'; }?>>Slide in (bottom)</option>
                        <option value="modal-4" <?php if(isset($value['open_account_popup']) && $value['open_account_popup'] == 'modal-4'){ echo 'selected="selected"'; }?>>Newspaper</option>
                        <option value="modal-5" <?php if(isset($value['open_account_popup']) && $value['open_account_popup'] == 'modal-5'){ echo 'selected="selected"'; }?>>Fall</option>
                        <option value="modal-6" <?php if(isset($value['open_account_popup']) && $value['open_account_popup'] == 'modal-6'){ echo 'selected="selected"'; }?>>Side Fall</option>
                        <option value="modal-7" <?php if(isset($value['open_account_popup']) && $value['open_account_popup'] == 'modal-7'){ echo 'selected="selected"'; }?>>Sticky Up</option>
                        <option value="modal-8" <?php if(isset($value['open_account_popup']) && $value['open_account_popup'] == 'modal-8'){ echo 'selected="selected"'; }?>>3D Flip (horizontal)</option>
                        <option value="modal-9" <?php if(isset($value['open_account_popup']) && $value['open_account_popup'] == 'modal-9'){ echo 'selected="selected"'; }?>>3D Flip (vertical)</option>
                        <option value="modal-10" <?php if(isset($value['open_account_popup']) && $value['open_account_popup'] == 'modal-10'){ echo 'selected="selected"'; }?>>3D Sign</option>
                        <option value="modal-11" <?php if(isset($value['open_account_popup']) && $value['open_account_popup'] == 'modal-11'){ echo 'selected="selected"'; }?>>Super Scaled</option>
                        <option value="modal-12" <?php if(isset($value['open_account_popup']) && $value['open_account_popup'] == 'modal-12'){ echo 'selected="selected"'; }?>>Just Me</option>
                        <option value="modal-13" <?php if(isset($value['open_account_popup']) && $value['open_account_popup'] == 'modal-13'){ echo 'selected="selected"'; }?>>3D Slit</option>
                        <option value="modal-14" <?php if(isset($value['open_account_popup']) && $value['open_account_popup'] == 'modal-14'){ echo 'selected="selected"'; }?>>3D Rotate Bottom</option>
                        <option value="modal-15" <?php if(isset($value['open_account_popup']) && $value['open_account_popup'] == 'modal-15'){ echo 'selected="selected"'; }?>>3D Rotate In Left</option>
                        <option value="modal-16" <?php if(isset($value['open_account_popup']) && $value['open_account_popup'] == 'modal-16'){ echo 'selected="selected"'; }?>>Blur</option>
                        <option value="modal-17" <?php if(isset($value['open_account_popup']) && $value['open_account_popup'] == 'modal-17'){ echo 'selected="selected"'; }?>>Let me in</option>
                        <option value="modal-18" <?php if(isset($value['open_account_popup']) && $value['open_account_popup'] == 'modal-18'){ echo 'selected="selected"'; }?>>Make way!</option>
                        <option value="modal-19" <?php if(isset($value['open_account_popup']) && $value['open_account_popup'] == 'modal-19'){ echo 'selected="selected"'; }?>>Slip from top</option>
                    </select>
                </div>
            </div>


        <hr class="limiter">


            <div class="col-sm-12 settings-row">
                <label class="col-sm-2 control-label">
                <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_favorites_goods_guest_show_text_hint; ?>">
                    <?php echo $sub_tab_configuration_favorites_goods_guest_show_text; ?>
                </span>
                </label>
                <div class="col-sm-10">
                    <input class="menu_item_personal_cabinet_only_price" type="checkbox" name="module_hyper_mega_menu[configuration][account][<?php echo $k;?>][favorites_goods_guest_show]"  data-size="small" data-on-color="success" <?php if(isset($value['favorites_goods_guest_show']) == 'on'){ echo 'checked=';}?>>
                </div>
            </div>


            <div class="col-sm-12 settings-row">
                <label class="col-sm-2 control-label">
                <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_favorites_goods_text; ?>">
                    <?php echo $sub_tab_configuration_favorites_goods_text; ?>
                </span>
                </label>
                <div class="col-sm-10">
                    <input class="menu_item_personal_cabinet_only_price" type="checkbox" name="module_hyper_mega_menu[configuration][account][<?php echo $k;?>][favorites_goods]"  data-size="small" data-on-color="success" <?php if(isset($value['favorites_goods']) == 'on'){ echo 'checked=';}?>>
                </div>
            </div>

            <div class="col-sm-12 settings-row">
                <label class="col-sm-2 control-label">
                <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_goods_wish_text; ?>">
                    <?php echo $sub_tab_configuration_goods_wish_text; ?>
                </span>
                </label>
                <div class="col-sm-10">
                    <input class="menu_item_personal_cabinet_model" type="checkbox" name="module_hyper_mega_menu[configuration][account][<?php echo $k;?>][goods_wish]" data-size="small" data-on-color="success" <?php if(isset($value['goods_wish']) == 'on'){ echo 'checked=';}?>>
                </div>
            </div>

            <div class="col-sm-12 settings-row">
                <label class="col-sm-2 control-label">
                <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_cart_text; ?>">
                    <?php echo $sub_tab_configuration_cart_text; ?>
                </span>
                </label>
                <div class="col-sm-10">
                    <input class="menu_item_personal_cabinet_sku" type="checkbox" name="module_hyper_mega_menu[configuration][account][<?php echo $k;?>][cart]" data-size="small" data-on-color="success" <?php if(isset($value['cart']) == 'on'){ echo 'checked=';}?>>
                </div>
            </div>

            <div class="col-sm-12 settings-row">
                <label class="col-sm-2 control-label">
                <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_checkout_text; ?>">
                    <?php echo $sub_tab_configuration_checkout_text; ?>
                </span>
                </label>
                <div class="col-sm-10">
                    <input class="menu_item_personal_cabinet_manufacturer" type="checkbox" name="module_hyper_mega_menu[configuration][account][<?php echo $k;?>][checkout]" data-size="small" data-on-color="success" <?php if(isset($value['checkout']) == 'on'){ echo 'checked=';}?>>
                </div>
            </div>

        <hr class="limiter">

            <div class="col-sm-12">
                <ul class="nav nav-tabs language_tabs" id="language">
                    <?php foreach ($languages as $key=>$language) { ?>
                        <?php if ($key == $config_language){ ?><li class="active"><?php }else{ ?><li><?php } ?>
                        <a href="#language_account-<?php echo $k; ?>-<?php echo $language['language_id']; ?>"
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
                        <div class="tab-pane<?php if($key == $config_language){ ?> active<?php }else{?><?php }?>" id="language_account-<?php echo $k; ?>-<?php echo $language['language_id']; ?>">

                            <div class="col-sm-12 settings-row">
                                <label class="col-sm-2 control-label">
                                    <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_account_show_html_text_hint; ?>">
                                        <?php echo $sub_tab_configuration_account_show_html_text; ?>
                                    </span>
                                </label>
                                <div class="col-sm-10">
                                    <input class="search_criteria" type="checkbox" name="module_hyper_mega_menu[configuration][account][<?php echo $k;?>][show_html][<?php echo $language['language_id']; ?>]" data-size="small" data-on-color="success" <?php if(isset($value['show_html'][$language['language_id']]) == 'on'){ echo 'checked=';}?>>
                                </div>
                            </div>


                            <div class="col-sm-12 settings-row">
                                <label class="col-sm-2 control-label">
                                    <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_account_html_side_text_hint; ?>">
                                        <?php echo $sub_tab_configuration_account_html_side_text; ?>
                                    </span>
                                </label>
                                <div class="col-sm-10">
                                    <input class="search_criteria" type="checkbox" name="module_hyper_mega_menu[configuration][account][<?php echo $k;?>][html_side][<?php echo $language['language_id']; ?>]" data-size="small" <?php if(isset($value['html_side'][$language['language_id']]) == 'on'){ echo 'checked=';}?> data-on-color="success" data-on-text="LEFT" data-off-text="RIGHT">
                                </div>
                            </div>


                            <div class="col-sm-12 settings-row">
                                <label class="col-sm-2 control-label">
                                <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_cart_guest_html_text_hint; ?>">
                                    <?php echo $sub_tab_configuration_cart_guest_html_text; ?>
                                </span>
                                </label>
                                <div class="col-sm-6">
                                    <textarea
                                        name="module_hyper_mega_menu[configuration][account][<?php echo $k;?>][guest_html][<?php echo $language['language_id']; ?>]"
                                        id="account_guest_html<?php echo $language['language_id']; ?><?php echo $k;?>"
                                        class="form-control"><?php echo isset($value['guest_html'][$language['language_id']]) ? $value['guest_html'][$language['language_id']] : ''; ?>
                                    </textarea>
                                </div>
                            </div>

                            <div class="col-sm-12 settings-row">
                                <label class="col-sm-2 control-label">
                                <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_cart_user_html_text_hint; ?>">
                                    <?php echo $sub_tab_configuration_cart_user_html_text; ?>
                                </span>
                                </label>
                                <div class="col-sm-6">
                                    <textarea
                                        name="module_hyper_mega_menu[configuration][account][<?php echo $k;?>][user_html][<?php echo $language['language_id']; ?>]"
                                        id="account_user_html<?php echo $language['language_id']; ?><?php echo $k;?>"
                                        class="form-control"><?php echo isset($value['user_html'][$language['language_id']]) ? $value['user_html'][$language['language_id']] : ''; ?>
                                    </textarea>
                                </div>
                            </div>
                        </div>
                    <?php } ?>
                </div>
            </div>

    </div>


    <script type="text/javascript"><!--
        <?php foreach ($languages as $language) { ?>
            <?php if ($ckeditor) { ?>
            ckeditorInit("account_user_html<?php echo $language['language_id']; ?><?php echo $k;?>", '<?php echo $token; ?>');
            ckeditorInit("account_guest_html<?php echo $language['language_id']; ?><?php echo $k;?>", '<?php echo $token; ?>');
            <?php } else { ?>
            $("#account_user_html<?php echo $language['language_id']; ?><?php echo $k;?>").summernote({
                height: 300,
                lang:'<?php echo $lang; ?>'
            });
            $("#account_guest_html<?php echo $language['language_id']; ?><?php echo $k;?>").summernote({
                height: 300,
                lang:'<?php echo $lang; ?>'
            });
            <?php } ?>
        <?php } ?>
        //--></script>
<?php } ?>

<script type="text/javascript">
    var menu_item_account_row = <?php end($configuration['account']); if(key($configuration['account']) == ''){echo 1;}else{ echo (key($configuration['account'])+1); }?>;

    popupStyleAccount();


    <?php if(count($configuration['account']) > 0){?>
            accountAddAttrDisabled();
    <?php } ?>

    function addMenuItemAccount() {

        var optName = $(".add-menu-element option:selected").text();

//        if(optName.length != 0){
//            $('.name-add-menu-element').empty().append(optName);
//        }

        $('.side-item-name').append('<li class="menu_item_account' + menu_item_account_row + '"><a href="#menu_item_account'+menu_item_account_row+'" data-toggle="tab" class="sidebar-item-name col-sm-10 btn">'+optName+' '+menu_item_account_row+'</a><button type="button" class="btn btn-danger remove-sidebar-item col-sm-2" onclick="$(\'.vtabs a:first\').trigger(\'click\'); $(\'.menu_item_account' + menu_item_account_row + '\').remove(); $(\'#menu_item_account' + menu_item_account_row + '\').remove(); accountRemoveAttrDisabled(); return false;"><i class="fa fa-minus-circle"></i></button></li>');

        html  = '<div id="menu_item_account' + menu_item_account_row + '" class="tab-pane active">';


        html  += '<div class="col-sm-12 settings-row">';
        html  += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" data-original-title="<?php echo $sub_tab_configuration_account_title_text_hint; ?>"><?php echo $sub_tab_configuration_account_title_text; ?></span></label>';
        html  += '<div class="col-sm-6">';
        html  += ' <?php foreach ($languages as $language) { ?>';
        html  += '<div class="input-group"> <span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>';
        html  += '<input type="text" name="module_hyper_mega_menu[configuration][account][' + menu_item_account_row + '][account_title][<?php echo $language['language_id']; ?>]" placeholder="Название" class="form-control">';
        html  += '</div>';
        html  += '<?php } ?>';
        html  += '</div>';
        html  += '</div>';


        html += '<div class="col-sm-12 settings-row">';
        html += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" data-original-title="<?php echo $sub_tab_configuration_account_show_initials_text_hint; ?>"><?php echo $sub_tab_configuration_account_show_initials_text; ?></span></label>';
        html += '<div class="col-sm-6">';
        html += '<input class="sub_tab_configuration_show_icon" type="checkbox" name="module_hyper_mega_menu[configuration][account][' + menu_item_account_row + '][show_initials]" data-size="small" data-on-color="success" >';
        html += ' </div>';
        html += ' </div>';


        html += '<div class="col-sm-12 settings-row">';
        html += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" data-original-title="<?php echo $sub_tab_configuration_cart_signature_icon_text_hint; ?>"><?php echo $sub_tab_configuration_cart_signature_icon_text; ?></span></label>';
        html += '<div class="col-sm-6">';
        html += '<input class="sub_tab_configuration_show_icon" type="checkbox" name="module_hyper_mega_menu[configuration][account][' + menu_item_account_row + '][signature_icon]" data-size="small" data-on-color="success" >';
        html += ' </div>';
        html += ' </div>';


        html  += '<div class="col-sm-12 settings-row">';
        html += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_link_icon_text_hint; ?>"><?php echo $sub_tab_configuration_link_icon_text; ?></span></label>';
        html  += '<div class="col-sm-6 input-group iconpicker-container">';
        html  += '<input name="module_hyper_mega_menu[configuration][account][' + menu_item_account_row + '][font_awesome]" data-placement="bottomRight" class="form-control icp icp-auto iconpicker-element iconpicker-input icp-opts" value="" type="text"/>';
        html  += '<span class="input-group-addon"><i class="fa fa-archive"></i></span>';
        html  += '</div>';
        html  += '</div>';


        html  += '<hr class="limiter">';

        html  += '<div class="col-sm-12 settings-row account-open-method">';
        html  += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_open_account_text_hint; ?>"><?php echo $sub_tab_configuration_open_account_text; ?></span></label>';
        html  += '<div class="col-sm-6">';
        html  += '<select name="module_hyper_mega_menu[configuration][account][' + menu_item_account_row + '][open_account]" class="form-control">';
        html  += '<option value=""><?php echo $sub_tab_configuration_make_your_choice_text; ?></option>';
        html  += '<option value="dropdown"><?php echo $sub_tab_configuration_account_dropdown_text; ?></option>';
        html  += '<option value="popup"><?php echo $sub_tab_configuration_account_popup_text; ?></option>';
        html  += '<option value="move_left"><?php echo $sub_tab_configuration_account_move_left_text; ?></option>';
        html  += '<option value="move_right"><?php echo $sub_tab_configuration_account_move_right_text; ?></option>';
        html  += '<option value="move_top"><?php echo $sub_tab_configuration_account_move_top_text; ?></option>';
        html  += '<option value="move_bottom"><?php echo $sub_tab_configuration_account_move_bottom_text; ?></option>';
        html  += '</select>';
        html  += '</div>';
        html  += '</div>';


        html  += '<div class="col-sm-12 settings-row nifty-modal-account display-none">';
        html  += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_open_account_popup_text_hint; ?>"><?php echo $sub_tab_configuration_open_account_popup_text; ?></span></label>';
        html  += '<div class="col-sm-6">';
        html  += '<select name="module_hyper_mega_menu[configuration][account][' + menu_item_account_row + '][open_account_popup]" class="form-control">';
        html  += '<option value=""><?php echo $sub_tab_configuration_make_your_choice_text; ?></option>';
        html  += '<option value="modal-1">Fade in &amp; Scale</option>';
        html  += '<option value="modal-2">Slide in (right)</option>';
        html  += '<option value="modal-3">Slide in (bottom)</option>';
        html  += '<option value="modal-4">Newspaper</option>';
        html  += '<option value="modal-5">Fall</option>';
        html  += '<option value="modal-6">Side Fall</option>';
        html  += '<option value="modal-7">Sticky Up</option>';
        html  += '<option value="modal-8">3D Flip (horizontal)</option>';
        html  += '<option value="modal-9">3D Flip (vertical)</option>';
        html  += '<option value="modal-10">3D Sign</option>';
        html  += '<option value="modal-11">Super Scaled</option>';
        html  += '<option value="modal-12">Just Me</option>';
        html  += '<option value="modal-13">3D Slit</option>';
        html  += '<option value="modal-14">3D Rotate Bottom</option>';
        html  += '<option value="modal-15">3D Rotate In Left</option>';
        html  += '<option value="modal-16">Blur</option>';
        html  += '<option value="modal-17">Let me in</option>';
        html  += '<option value="modal-18">Make way!</option>';
        html  += '<option value="modal-19">Slip from top</option>';
        html  += '</select>';
        html  += '</div>';
        html  += '</div>';



        html  += '<hr class="limiter">';

        html  += '<div class="col-sm-12 settings-row">';
        html  += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_favorites_goods_guest_show_text_hint; ?>"><?php echo $sub_tab_configuration_favorites_goods_guest_show_text; ?></span></label>';
        html  += '<div class="col-sm-10">';
        html  += '<input class="menu_item_personal_cabinet_only_price" type="checkbox" name="module_hyper_mega_menu[configuration][account][' + menu_item_account_row + '][favorites_goods_guest_show]"  data-size="small" data-on-color="success">';
        html  += '</div>';
        html  += '</div>';



        html  += '<div class="col-sm-12 settings-row">';
        html  += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_favorites_goods_text; ?>"><?php echo $sub_tab_configuration_favorites_goods_text; ?></span></label>';
        html  += '<div class="col-sm-10">';
        html  += '<input class="menu_item_personal_cabinet_only_price" type="checkbox" name="module_hyper_mega_menu[configuration][account][' + menu_item_account_row + '][favorites_goods]"  data-size="small" data-on-color="success">';
        html  += '</div>';
        html  += '</div>';

        html  += '<div class="col-sm-12 settings-row">';
        html  += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_goods_wish_text; ?>"><?php echo $sub_tab_configuration_goods_wish_text; ?></span></label>';
        html  += '<div class="col-sm-10">';
        html  += '<input class="menu_item_personal_cabinet_model" type="checkbox" name="module_hyper_mega_menu[configuration][account][' + menu_item_account_row + '][goods_wish]" data-size="small" data-on-color="success">';
        html  += '</div>';
        html  += '</div>';

        html  += '<div class="col-sm-12 settings-row">';
        html  += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_cart_text; ?>"><?php echo $sub_tab_configuration_cart_text; ?></span></label>';
        html  += '<div class="col-sm-10">';
        html  += '<input class="menu_item_personal_cabinet_sku" type="checkbox" name="module_hyper_mega_menu[configuration][account][' + menu_item_account_row + '][cart]" data-size="small" data-on-color="success">';
        html  += '</div>';
        html  += '</div>';

        html  += '<div class="col-sm-12 settings-row">';
        html  += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_checkout_text; ?>"><?php echo $sub_tab_configuration_checkout_text; ?></span></label>';
        html  += '<div class="col-sm-10">';
        html  += '<input class="menu_item_personal_cabinet_manufacturer" type="checkbox" name="module_hyper_mega_menu[configuration][account][' + menu_item_account_row + '][checkout]"  data-size="small" data-on-color="success">';
        html  += '</div>';
        html  += '</div>';

        html  += '<hr class="limiter">';

        html  += '<div class="col-sm-12 settings-row">';
        html  += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_account_show_html_text_hint; ?>"><?php echo $sub_tab_configuration_account_show_html_text; ?></span></label>';
        html  += '<div class="col-sm-10">';
        html  += '<input class="search_criteria" type="checkbox" name="module_hyper_mega_menu[configuration][account][' + menu_item_account_row + '][show_html]"  data-size="small" data-on-color="success">';
        html  += '</div>';
        html  += '</div>';

        html  += '<div class="col-sm-12 settings-row">';
        html  += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_account_html_side_text_hint; ?>"><?php echo $sub_tab_configuration_account_html_side_text; ?></span></label>';
        html  += '<div class="col-sm-10">';
        html  += '<input class="search_criteria" type="checkbox" name="module_hyper_mega_menu[configuration][account][' + menu_item_account_row + '][html_side]"  data-size="small" data-on-color="success">';
        html  += '</div>';
        html  += '</div>';

        html += '<div class="col-sm-12 settings-row">';
        html += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_cart_guest_html_text_hint; ?>"><?php echo $sub_tab_configuration_cart_guest_html_text; ?> </span></label>';
        html += '<div class="col-sm-6">';
        html += '<textarea name="module_hyper_mega_menu[configuration][account][' + menu_item_account_row + '][guest_html]" id="account_guest_html'+menu_item_account_row+'" class="form-control"></textarea>';
        html += '</div>';
        html += '</div>';


        html += '<div class="col-sm-12 settings-row">';
        html += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_cart_user_html_text_hint; ?>"><?php echo $sub_tab_configuration_cart_user_html_text; ?> </span></label>';
        html += '<div class="col-sm-6">';
        html += '<textarea name="module_hyper_mega_menu[configuration][account][' + menu_item_account_row + '][user_html]" id="account_user_html'+menu_item_account_row+'" class="form-control"></textarea>';
        html += '</div>';
        html += '</div>';


        html  += '</div>';



        $('.settings-item-configuration .configuration-settings').append(html);
        $(".control-label > span").tooltip();


        <?php if ($ckeditor) { ?>
        ckeditorInit("account_user_html<?php echo $k;?>", '<?php echo $token; ?>');
        ckeditorInit("account_guest_html<?php echo $k;?>", '<?php echo $token; ?>');
        <?php } else { ?>
        var userHtml = '';
        var guestHtml = '';
        userHtml = "#account_user_html"+menu_item_account_row;
        guestHtml = "#account_guest_html"+menu_item_account_row;

        $(userHtml).summernote({
            height: 300,
            lang: '<?php echo $lang; ?>'
        });
        $(guestHtml).summernote({
            height: 300,
            lang: '<?php echo $lang; ?>'
        });
        <?php } ?>

        menu_item_account_row++;

        popupStyleAccount();

        accountAddAttrDisabled();
    }

    function popupStyleAccount(){
        $('.account-open-method select').on('change', function(){
            if($(this).val() == 'popup'){
                $('.nifty-modal-account').removeClass('display-none');
            }else{
                $('.nifty-modal-account').addClass('display-none');
            }
        });
    }

    function accountAddAttrDisabled(){
        $('.add-menu-element #custom_menu_account').attr({disabled:'disabled'});
        $('.add-menu-element #custom_menu_default').prop('selected', true);
    }

    function accountRemoveAttrDisabled(){
        $('.add-menu-element #custom_menu_account').removeAttr('disabled');
    }


    //--></script>

