<?php $all_show_in_cart = array(
    'model' => $sub_tab_configuration_model_text,
    'sku' => $sub_tab_configuration_sku_text,
    'manufacturer' => $sub_tab_configuration_manufacturer_text,
    'price' => $sub_tab_configuration_price_text,
    'discount' => $sub_tab_configuration_discount_text,
    'total' =>  $sub_tab_configuration_total_text
); ?>
<?php //echo '<pre>'; print_r($configuration['cart']); die;?>
<?php $value = $configuration['cart'];?>
<script type="text/javascript">
    $('.side-item-name').append('<li class="menu_item_cart"><a href="#menu_item_cart" data-toggle="tab" class="sidebar-item-name col-sm-10 btn"><?php echo $menu_element_cart_text; ?></a><button type="button" class="btn btn-danger remove-sidebar-item col-sm-2" onclick="$(\'.vtabs a:first\').trigger(\'click\'); $(\'.menu_item_cart\').remove(); $(\'#menu_item_cart\').remove(); cartRemoveAttrDisabled(); return false;"><i class="fa fa-minus-circle"></i></button></li>');
</script>
<div id="menu_item_cart" class="tab-pane">

    <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_cart_compaq_text_hint; ?>">
                <?php echo $sub_tab_configuration_cart_compaq_text; ?>
            </span>
            </label>
            <div class="col-sm-6">
                <input class="search_criteria" type="checkbox" name="module_hyper_mega_menu[configuration][cart][compaq]"
                     data-size="small" data-on-color="success" <?php if(isset($value['compaq']) == 'on'){ echo 'checked=';}?>>
            </div>
    </div>

    <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_cart_price_text_hint; ?>">
                <?php echo $sub_tab_configuration_cart_price_text; ?>
            </span>
            </label>
            <div class="col-sm-6">
                <input class="search_criteria" type="checkbox" name="module_hyper_mega_menu[configuration][cart][show_price]"
                     data-size="small" data-on-color="success" <?php if(isset($value['show_price']) == 'on'){ echo 'checked=';}?>>
            </div>
    </div>


    <div class="col-sm-12 settings-row">
        <label class="col-sm-2 control-label">
                                <span data-toggle="tooltip" data-original-title="<?php echo $sub_tab_configuration_cart_signature_icon_text_hint; ?>">
                                    <?php echo $sub_tab_configuration_cart_signature_icon_text; ?>
                                </span>
        </label>
        <div class="col-sm-6">
            <input class="search_criteria" type="checkbox" name="module_hyper_mega_menu[configuration][cart][signature_icon]" data-size="small" data-on-color="success" <?php if(isset($value['signature_icon']) == 'on'){ echo 'checked=';}?> >
        </div>
    </div>



    <div class="col-sm-12 settings-row">
        <label class="col-sm-2 control-label">
                                <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_link_icon_text_hint; ?>">
                                    <?php echo $sub_tab_configuration_link_icon_text; ?>
                                </span>
        </label>
        <div class="col-sm-6 input-group iconpicker-container">
            <input name="module_hyper_mega_menu[configuration][cart][font_awesome]" data-placement="bottomRight" class="form-control icp icp-auto iconpicker-element iconpicker-input icp-opts" value="<?php if(isset($value['font_awesome'])){ echo $value['font_awesome']; } ?>" type="text">
            <span class="input-group-addon"><i class="fa fa-archive"></i></span>
        </div>
    </div>



    <hr class="limiter">
    <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label">
                                        <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_open_cart_text_hint; ?>">
                                            <?php echo $sub_tab_configuration_open_cart_text; ?>
                                        </span>
            </label>
            <div class="col-sm-6 cart-open-method">
                <select name="module_hyper_mega_menu[configuration][cart][open_cart]" class="form-control">
                    <option value=""><?php echo $sub_tab_configuration_make_your_choice_text; ?></option>
                    <option value="as_usual" <?php if(isset($value['open_cart']) && $value['open_cart'] == 'as_usual'){ echo 'selected="selected"'; }?>><?php echo $sub_tab_configuration_cart_as_usual_text; ?></option>
                    <option value="as_link" <?php if(isset($value['open_cart']) && $value['open_cart'] == 'as_link'){ echo 'selected="selected"'; }?>><?php echo $sub_tab_configuration_cart_as_cart_link_text; ?></option>
                    <option value="popup" <?php if(isset($value['open_cart']) && $value['open_cart'] == 'popup'){ echo 'selected="selected"'; }?>><?php echo $sub_tab_configuration_account_popup_text; ?></option>
                    <option value="move_left" <?php if(isset($value['open_cart']) && $value['open_cart'] == 'move_left'){ echo 'selected="selected"'; }?>><?php echo $sub_tab_configuration_account_move_left_text; ?></option>
                    <option value="move_right" <?php if(isset($value['open_cart']) && $value['open_cart'] == 'move_right'){ echo 'selected="selected"'; }?>><?php echo $sub_tab_configuration_account_move_right_text; ?></option>
                    <option value="move_top" <?php if(isset($value['open_cart']) && $value['open_cart'] == 'move_top'){ echo 'selected="selected"'; }?>><?php echo $sub_tab_configuration_account_move_top_text; ?></option>
                    <option value="move_bottom" <?php if(isset($value['open_cart']) && $value['open_cart'] == 'move_bottom'){ echo 'selected="selected"'; }?>><?php echo $sub_tab_configuration_account_move_bottom_text; ?></option>

                </select>
            </div>
    </div>



    <div class="col-sm-12 settings-row nifty-modal-cart <?php if(isset($value['open_cart']) && $value['open_cart'] !== 'popup'){ echo 'display-none'; }?>">
        <label class="col-sm-2 control-label">
                                            <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_open_account_popup_text_hint; ?>">
                                                <?php echo $sub_tab_configuration_open_account_popup_text; ?>
                                            </span>
        </label>
        <div class="col-sm-6">
            <select name="module_hyper_mega_menu[configuration][cart][open_cart_popup]" class="form-control">
                <option value=""><?php echo $sub_tab_configuration_make_your_choice_text; ?></option>
                <option value="modal-1" <?php if(isset($value['open_account_popup']) && $value['open_cart_popup'] == 'modal-1'){ echo 'selected="selected"'; }?>>Fade in &amp; Scale</option>
                <option value="modal-2" <?php if(isset($value['open_cart_popup']) && $value['open_cart_popup'] == 'modal-2'){ echo 'selected="selected"'; }?>>Slide in (right)</option>
                <option value="modal-3" <?php if(isset($value['open_cart_popup']) && $value['open_cart_popup'] == 'modal-3'){ echo 'selected="selected"'; }?>>Slide in (bottom)</option>
                <option value="modal-4" <?php if(isset($value['open_cart_popup']) && $value['open_cart_popup'] == 'modal-4'){ echo 'selected="selected"'; }?>>Newspaper</option>
                <option value="modal-5" <?php if(isset($value['open_cart_popup']) && $value['open_cart_popup'] == 'modal-5'){ echo 'selected="selected"'; }?>>Fall</option>
                <option value="modal-6" <?php if(isset($value['open_cart_popup']) && $value['open_cart_popup'] == 'modal-6'){ echo 'selected="selected"'; }?>>Side Fall</option>
                <option value="modal-7" <?php if(isset($value['open_cart_popup']) && $value['open_cart_popup'] == 'modal-7'){ echo 'selected="selected"'; }?>>Sticky Up</option>
                <option value="modal-8" <?php if(isset($value['open_cart_popup']) && $value['open_cart_popup'] == 'modal-8'){ echo 'selected="selected"'; }?>>3D Flip (horizontal)</option>
                <option value="modal-9" <?php if(isset($value['open_cart_popup']) && $value['open_cart_popup'] == 'modal-9'){ echo 'selected="selected"'; }?>>3D Flip (vertical)</option>
                <option value="modal-10" <?php if(isset($value['open_cart_popup']) && $value['open_cart_popup'] == 'modal-10'){ echo 'selected="selected"'; }?>>3D Sign</option>
                <option value="modal-11" <?php if(isset($value['open_cart_popup']) && $value['open_cart_popup'] == 'modal-11'){ echo 'selected="selected"'; }?>>Super Scaled</option>
                <option value="modal-12" <?php if(isset($value['open_cart_popup']) && $value['open_cart_popup'] == 'modal-12'){ echo 'selected="selected"'; }?>>Just Me</option>
                <option value="modal-13" <?php if(isset($value['open_cart_popup']) && $value['open_cart_popup'] == 'modal-13'){ echo 'selected="selected"'; }?>>3D Slit</option>
                <option value="modal-14" <?php if(isset($value['open_cart_popup']) && $value['open_cart_popup'] == 'modal-14'){ echo 'selected="selected"'; }?>>3D Rotate Bottom</option>
                <option value="modal-15" <?php if(isset($value['open_cart_popup']) && $value['open_cart_popup'] == 'modal-15'){ echo 'selected="selected"'; }?>>3D Rotate In Left</option>
                <option value="modal-16" <?php if(isset($value['open_cart_popup']) && $value['open_cart_popup'] == 'modal-16'){ echo 'selected="selected"'; }?>>Blur</option>
                <option value="modal-17" <?php if(isset($value['open_cart_popup']) && $value['open_cart_popup'] == 'modal-17'){ echo 'selected="selected"'; }?>>Let me in</option>
                <option value="modal-18" <?php if(isset($value['open_cart_popup']) && $value['open_cart_popup'] == 'modal-18'){ echo 'selected="selected"'; }?>>Make way!</option>
                <option value="modal-19" <?php if(isset($value['open_cart_popup']) && $value['open_cart_popup'] == 'modal-19'){ echo 'selected="selected"'; }?>>Slip from top</option>
            </select>
        </div>
    </div>



    <?php foreach($all_show_in_cart as $key_name=>$value_text){?>
        <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label">
                    <span data-toggle="tooltip" title="" data-original-title="Выводить в корзине <?php echo substr(mb_strtolower($value_text), 0, -1); ?>">
                        <?php echo $value_text; ?>
                    </span>
            </label>
            <div class="col-sm-6">
                <input class="search_criteria" type="checkbox" name="module_hyper_mega_menu[configuration][cart][<?php echo $key_name;?>]" data-size="small" data-on-color="success" <?php if(isset($value[$key_name]) == 'on'){ echo 'checked=';}?>/>
            </div>
        </div>
    <?php } ?>



    <hr class="limiter">

    <div class="col-sm-12">
            <ul class="nav nav-tabs language_tabs" id="language">
                <?php foreach ($languages as $key=>$language) { ?>
                    <?php if ($key == $config_language){ ?><li class="active"><?php }else{ ?><li><?php } ?>
                    <a href="#language_cart-<?php echo $language['language_id']; ?>"
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
                    <div class="tab-pane<?php if($key == $config_language){ ?> active<?php }else{?><?php }?>" id="language_cart-<?php echo $language['language_id']; ?>">

                        <div class="col-sm-12 settings-row">
                            <label class="col-sm-2 control-label">
                                    <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_cart_signature_text_hint; ?>">
                                        <?php echo $sub_tab_configuration_cart_signature_text; ?>
                                    </span>
                            </label>

                            <div class="col-sm-6">
                                <input type="text" name="module_hyper_mega_menu[configuration][cart][signature][<?php echo $language['language_id']; ?>]"
                                       value="<?php echo $value['signature'][$language['language_id']]; ?>"
                                       class="form-control configuration-settings-input"/>
                            </div>
                        </div>



                        <div class="col-sm-12 settings-row">
                            <label class="col-sm-2 control-label">
                                <span data-toggle="tooltip" data-original-title="<?php echo $sub_tab_configuration_cart_signature_icon_text_hint; ?>">
                                    <?php echo $sub_tab_configuration_cart_signature_icon_text; ?>
                                </span>
                            </label>
                            <div class="col-sm-6">
                                <input class="search_criteria" type="checkbox" name="module_hyper_mega_menu[configuration][cart][signature_icon_cart_empty][<?php echo $language['language_id']; ?>]" data-size="small" data-on-color="success" <?php if(isset($value['signature_icon_cart_empty'][$language['language_id']]) == 'on'){ echo 'checked=';}?> >
                            </div>
                        </div>



                        <div class="col-sm-12 settings-row">
                            <label class="col-sm-2 control-label">
                                <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_link_icon_text_hint; ?>">
                                    <?php echo $sub_tab_configuration_link_icon_text; ?>
                                </span>
                            </label>
                            <div class="col-sm-6 input-group iconpicker-container">
                                <input name="module_hyper_mega_menu[configuration][cart][font_awesome_cart_empty][<?php echo $language['language_id']; ?>]" data-placement="bottomRight" class="form-control icp icp-auto iconpicker-element iconpicker-input icp-opts" value="<?php if(isset($value['font_awesome_cart_empty'][$language['language_id']])){ echo $value['font_awesome_cart_empty'][$language['language_id']]; } ?>" type="text">
                                <span class="input-group-addon"><i class="fa fa-archive"></i></span>
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
                                    name="module_hyper_mega_menu[configuration][cart][guest_html][<?php echo $language['language_id']; ?>]"
                                    id="cart_guest_html<?php echo $language['language_id']; ?>"
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
                                    name="module_hyper_mega_menu[configuration][cart][user_html][<?php echo $language['language_id']; ?>]"
                                    id="cart_user_html<?php echo $language['language_id']; ?>"
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
        ckeditorInit("cart_user_html<?php echo $language['language_id']; ?>", '<?php echo $token; ?>');
        ckeditorInit("cart_guest_html<?php echo $language['language_id']; ?>", '<?php echo $token; ?>');
        <?php } else { ?>
        $("#cart_user_html<?php echo $language['language_id']; ?>").summernote({
            height: 300,
            lang:'<?php echo $lang; ?>'
        });
        $("#cart_guest_html<?php echo $language['language_id']; ?>").summernote({
            height: 300,
            lang:'<?php echo $lang; ?>'
        });
        <?php } ?>
        <?php } ?>
        //--></script>


<script type="text/javascript">

    <?php if(count($configuration['cart']) > 0){?>
        cartAddAttrDisabled();
    <?php } ?>

//    var menu_item_html_block_row = <?php //end($configuration['cart']); if(key($configuration['cart']) == ''){echo 1;}else{ echo (key($configuration['cart'])+1); }?>//;

    popupStyleCart();

    function addMenuItemCart() {

        var optName = $(".add-menu-element option:selected").text();

        if(optName.length != 0){
            $('.name-add-menu-element').empty().append(optName);
        }

        $('.side-item-name').append('<li class="menu_item_cart"><a href="#menu_item_cart" data-toggle="tab" class="sidebar-item-name col-sm-10 btn">'+optName+'</a><button type="button" class="btn btn-danger remove-sidebar-item col-sm-2" onclick="$(\'.vtabs a:first\').trigger(\'click\'); $(\'.menu_item_cart\').remove(); $(\'#menu_item_cart\').remove(); cartRemoveAttrDisabled(); return false;"><i class="fa fa-minus-circle"></i></button></li>');

        html  = '<div id="menu_item_cart" class="tab-pane active">';
//        html  += '<div class="col-sm-12">';


        html  += '<div class="col-sm-12 settings-row">';
        html  += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_cart_compaq_text_hint; ?>"><?php echo $sub_tab_configuration_cart_compaq_text; ?></span></label>';
        html  += '<div class="col-sm-6">';
        html  += '<input class="search_criteria" type="checkbox" name="module_hyper_mega_menu[configuration][cart][compaq]" data-size="small" data-on-color="success">';
        html  += '</div>';
        html  += '</div>';


        html  += '<div class="col-sm-12 settings-row">';
        html  += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_cart_price_text_hint; ?>"><?php echo $sub_tab_configuration_cart_price_text; ?></span></label>';
        html  += '<div class="col-sm-6">';
        html  += '<input class="search_criteria" type="checkbox" name="module_hyper_mega_menu[configuration][cart][show_price]" data-size="small" data-on-color="success">';
        html  += '</div>';
        html  += '</div>';

        html += '<div class="col-sm-12 settings-row">';
        html += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" data-original-title="<?php echo $sub_tab_configuration_cart_signature_icon_text_hint; ?>"><?php echo $sub_tab_configuration_cart_signature_icon_text; ?></span></label>';
        html += '<div class="col-sm-6">';
        html += '<input class="sub_tab_configuration_show_icon" type="checkbox" name="module_hyper_mega_menu[configuration][cart][signature_icon][<?php echo $language['language_id']; ?>]" data-size="small" data-on-color="success" >';
        html += ' </div>';
        html += ' </div>';


        html  += '<div class="col-sm-12 settings-row">';
        html += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_link_icon_text_hint; ?>"><?php echo $sub_tab_configuration_link_icon_text; ?></span></label>';
        html  += '<div class="col-sm-6 input-group iconpicker-container">';
        html  += '<input name="module_hyper_mega_menu[configuration][cart][font_awesome]" data-placement="bottomRight" class="form-control icp icp-auto iconpicker-element iconpicker-input icp-opts" value="" type="text"/>';
        html  += '<span class="input-group-addon"><i class="fa fa-archive"></i></span>';
        html  += '</div>';
        html  += '</div>';


        html  += '<hr class="limiter">';

        html  += '<div class="col-sm-12 settings-row cart-open-method">';
        html  += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_open_cart_text_hint; ?>"><?php echo $sub_tab_configuration_open_cart_text; ?></span></label>';
        html  += '<div class="col-sm-6">';
        html  += '<select name="module_hyper_mega_menu[configuration][cart][open_cart]" class="form-control">';
        html  += '<option value=""><?php echo $sub_tab_configuration_make_your_choice_text; ?></option>';
        html  += '<option value="as_usual"><?php echo $sub_tab_configuration_cart_as_usual_text; ?></option>';
        html  += '<option value="as_link"><?php echo $sub_tab_configuration_cart_as_cart_link_text; ?></option>';
        html  += '<option value="popup"><?php echo $sub_tab_configuration_account_popup_text; ?></option>';
        html  += '<option value="move_left"><?php echo $sub_tab_configuration_account_move_left_text; ?></option>';
        html  += '<option value="move_right"><?php echo $sub_tab_configuration_account_move_right_text; ?></option>';
        html  += '<option value="move_top"><?php echo $sub_tab_configuration_account_move_top_text; ?></option>';
        html  += '<option value="move_bottom"><?php echo $sub_tab_configuration_account_move_bottom_text; ?></option>';
        html  += '</select>';
        html  += '</div>';
        html  += '</div>';



        html  += '<div class="col-sm-12 settings-row nifty-modal-cart display-none">';
        html  += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_open_account_popup_text_hint; ?>"><?php echo $sub_tab_configuration_open_account_popup_text; ?></span></label>';
        html  += '<div class="col-sm-6">';
        html  += '<select name="module_hyper_mega_menu[configuration][cart][open_cart_popup]" class="form-control">';
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


        <?php foreach($all_show_in_cart as $key_name=>$value_text){?>
        html  += '<div class="col-sm-12 settings-row">';
        html  += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="Выводить в корзине <?php echo substr(mb_strtolower($value_text), 0, -1); ?>"><?php echo $value_text; ?></span></label>';
        html  += '<div class="col-sm-6">';

        html  += '<input class="search_criteria" type="checkbox" name="module_hyper_mega_menu[configuration][cart][<?php echo $key_name;?>]" data-size="small" data-on-color="success"/>';


        html  += '</div>';
        html  += '</div>';
        <?php } ?>

        html  += '<hr class="limiter">';


        html  += '<div class="col-sm-12">';
        html += '<ul class="nav nav-tabs language_tabs" id="language">';
        html += '<?php foreach ($languages as $key=>$language) { ?>';
        html += '<?php if($key == $config_language){ ?><li class="active"><?php }else{?><li><?php }?><a href="#language_cart-<?php echo $language['language_id']; ?>" <?php if($language['language_id']==$config_language_id){ echo 'class="active_language"'; }?>data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>';
        html += '<?php } ?>';
        html += '</ul>';

        html += '<div class="tab-content">';
        html += ' <?php foreach ($languages as $key=>$language) { ?>';
        html += '<div class="tab-pane <?php if($key == $config_language){ ?> active<?php }?>" id="language_cart-<?php echo $language['language_id']; ?>">';

        html += '<div class="col-sm-12 settings-row">';
        html += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_cart_signature_text_hint; ?>"><?php echo $sub_tab_configuration_cart_signature_text; ?></span></label>';
        html += '<div class="col-sm-6">';
        html += '<input type="text" name="module_hyper_mega_menu[configuration][cart][signature][<?php echo $language['language_id']; ?>]" class="form-control configuration-settings-input"/>';
        html += '</div>';
        html += '</div>';


        html += '<div class="col-sm-12 settings-row">';
        html += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" data-original-title="<?php echo $sub_tab_configuration_cart_signature_icon_text_hint; ?>"><?php echo $sub_tab_configuration_cart_signature_icon_text; ?></span></label>';
        html += '<div class="col-sm-6">';
        html += '<input class="sub_tab_configuration_show_icon" type="checkbox" name="module_hyper_mega_menu[configuration][cart][signature_icon_cart_empty][<?php echo $language['language_id']; ?>]" data-size="small" data-on-color="success" >';
        html += ' </div>';
        html += ' </div>';


        html  += '<div class="col-sm-12 settings-row">';
        html += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_link_icon_text_hint; ?>"><?php echo $sub_tab_configuration_link_icon_text; ?></span></label>';
        html  += '<div class="col-sm-6 input-group iconpicker-container">';
        html  += '<input name="module_hyper_mega_menu[configuration][cart][font_awesome_cart_empty][<?php echo $language['language_id']; ?>]" data-placement="bottomRight" class="form-control icp icp-auto iconpicker-element iconpicker-input icp-opts" value="" type="text"/>';
        html  += '<span class="input-group-addon"><i class="fa fa-archive"></i></span>';
        html  += '</div>';
        html  += '</div>';


        html += '<div class="col-sm-12 settings-row">';
        html += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_cart_guest_html_text_hint; ?>"><?php echo $sub_tab_configuration_cart_guest_html_text; ?> </span></label>';
        html += '<div class="col-sm-6">';
        html += '<textarea name="module_hyper_mega_menu[configuration][cart][guest_html][<?php echo $language['language_id']; ?>]" id="cart_guest_html<?php echo $language['language_id']; ?>" class="form-control"></textarea>';
        html += '</div>';
        html += '</div>';


        html += '<div class="col-sm-12 settings-row">';
        html += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_cart_user_html_text_hint; ?>"><?php echo $sub_tab_configuration_cart_user_html_text; ?> </span></label>';
        html += '<div class="col-sm-6">';
        html += '<textarea name="module_hyper_mega_menu[configuration][cart][user_html][<?php echo $language['language_id']; ?>]" id="cart_user_html<?php echo $language['language_id']; ?>" class="form-control"></textarea>';
        html += '</div>';
        html += '</div>';

        html += '</div>';
        html += '<?php } ?>';

        html  += '</div>';
        html  += '</div>';
        html  += '</div>';


        $('.settings-item-configuration .configuration-settings').append(html);
        $(".control-label > span").tooltip();


        <?php foreach ($languages as $language) { ?>
        <?php if ($ckeditor) { ?>
        ckeditorInit("cart_user_html<?php echo $language['language_id']; ?>", '<?php echo $token; ?>');
        ckeditorInit("cart_guest_html<?php echo $language['language_id']; ?>", '<?php echo $token; ?>');
        <?php } else { ?>
        var userHtml = '';
        var guestHtml = '';
        userHtml = "#cart_user_html"+"<?php echo $language['language_id']; ?>";
        guestHtml = "#cart_guest_html"+"<?php echo $language['language_id']; ?>";

        $(userHtml).summernote({
            height: 300,
            lang: '<?php echo $lang; ?>'
        });
        $(guestHtml).summernote({
            height: 300,
            lang: '<?php echo $lang; ?>'
        });
        <?php } ?>
        <?php } ?>

        popupStyleCart();

        cartAddAttrDisabled();
    }

    function popupStyleCart(){
        $('.cart-open-method select').on('change', function(){
            if($(this).val() == 'popup'){
                $('.nifty-modal-cart').removeClass('display-none');
            }else{
                $('.nifty-modal-cart').addClass('display-none');
            }
        });
    }

    function cartAddAttrDisabled(){
        $('.add-menu-element #custom_menu_cart').attr({disabled:'disabled'});
        $('.add-menu-element #custom_menu_default').prop('selected', true);
    }

    function cartRemoveAttrDisabled(){
        $('.add-menu-element #custom_menu_cart').removeAttr('disabled');
    }

    //--></script>

