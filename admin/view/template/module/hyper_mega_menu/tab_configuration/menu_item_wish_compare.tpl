<?php foreach($configuration['wish_compare'] as $k=>$value){?>
    <script type="text/javascript">
        $('.side-item-name').append('<li class="menu_item_wish_compare<?php echo $k; ?>"><a href="#menu_item_wish_compare<?php echo $k; ?>" data-toggle="tab" class="sidebar-item-name col-sm-10 btn"><?php echo $menu_element_wishlist_text . ' ' . $k; ?></a><button type="button" class="btn btn-danger remove-sidebar-item col-sm-2" onclick="$(\'.vtabs a:first\').trigger(\'click\'); $(\'.menu_item_wish_compare<?php echo $k; ?>\').remove(); $(\'#menu_item_wish_compare<?php echo $k; ?>\').remove(); wishlistRemoveAttrDisabled(); return false;"><i class="fa fa-minus-circle"></i></button></li>');
    </script>
<div id="menu_item_wish_compare<?php echo $k; ?>" class="col-sm-12 tab-pane">

    <div class="col-sm-12 settings-row text-center"><h3><?php echo $menu_element_favorites_text; ?></h3></div>
        <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label"><span data-toggle="tooltip" data-original-title="<?php echo $sub_tab_configuration_name_favorites_goods_text_hint; ?>"><?php echo $sub_tab_configuration_name_favorites_goods_text; ?></span></label>
            <div class="col-sm-6">
                <?php foreach ($languages as $language) { ?>
                    <div class="input-group"> <span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
                        <input type="text" name="module_hyper_mega_menu[configuration][wish_compare][<?php echo $k;?>][name_favorites_goods][<?php echo $language['language_id']; ?>]"
                               value="<?php if(isset($value['name_favorites_goods'][$language['language_id']])){ echo $value['name_favorites_goods'][$language['language_id']]; }?>"
                               placeholder="Название" class="form-control">
                    </div>
                <?php } ?>
            </div>
        </div>



        <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" data-original-title="<?php echo $sub_tab_configuration_goods_wish_text_hint; ?>">
                <?php echo $sub_tab_configuration_goods_wish_text; ?>
            </span>
            </label>
            <div class="col-sm-10">
                <input class="menu_item_wish_compare_only_price" type="checkbox" name="module_hyper_mega_menu[configuration][wish_compare][<?php echo $k;?>][favorites_goods]" data-size="small" data-on-color="success" <?php if(isset($value['favorites_goods']) == 'on'){ echo 'checked=';}?>>
            </div>
        </div>


        <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label">
                        <span data-toggle="tooltip" data-original-title="<?php echo $sub_tab_configuration_link_show_icon_text_hint; ?>">
                            <?php echo $sub_tab_configuration_link_show_icon_text; ?>
                        </span>
            </label>
            <div class="col-sm-6">
                <input class="sub_tab_configuration_show_icon" type="checkbox" name="module_hyper_mega_menu[configuration][wish_compare][<?php echo $k;?>][favorites_show_icon]" data-size="small" data-on-color="success" <?php if(isset($value['favorites_show_icon']) == 'on'){ echo 'checked=';}?> >
            </div>
        </div>

    <div class="col-sm-12 settings-row">
        <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_link_icon_text_hint; ?>">
                <?php echo $sub_tab_configuration_link_icon_text; ?>
            </span>
        </label>
        <div class="col-sm-6 input-group iconpicker-container">
            <input name="module_hyper_mega_menu[configuration][wish_compare][<?php echo $k;?>][font_awesome]" data-placement="bottomRight" class="form-control icp icp-auto iconpicker-element iconpicker-input icp-opts" value="<?php if(isset($value['font_awesome'])){ echo $value['font_awesome']; } ?>" type="text">
            <span class="input-group-addon"><i class="fa fa-archive"></i></span>
        </div>
    </div>



    <hr class="limiter">
    <div class="col-sm-12 settings-row text-center"><h3><?php echo $menu_element_wish_text; ?></h3></div>

        <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label"><span data-toggle="tooltip" data-original-title="<?php echo $sub_tab_configuration_name_goods_wish_text_hint; ?>"><?php echo $sub_tab_configuration_name_goods_wish_text; ?></span></label>
            <div class="col-sm-6">
                <?php foreach ($languages as $language) { ?>
                    <div class="input-group"> <span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
                        <input type="text" name="module_hyper_mega_menu[configuration][wish_compare][<?php echo $k;?>][name_goods_wish][<?php echo $language['language_id']; ?>]"
                               value="<?php if(isset($value['name_goods_wish'][$language['language_id']])){ echo $value['name_goods_wish'][$language['language_id']]; }?>"
                               placeholder="Название" class="form-control">
                    </div>
                <?php } ?>
            </div>
        </div>

        <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" data-original-title="<?php echo $sub_tab_configuration_favorites_goods_text_hint; ?>">
                <?php echo $sub_tab_configuration_favorites_goods_text; ?>
            </span>
            </label>
            <div class="col-sm-10">
                <input class="menu_item_wish_compare_model" type="checkbox" name="module_hyper_mega_menu[configuration][wish_compare][<?php echo $k;?>][goods_wish]" data-size="small" data-on-color="success" <?php if(isset($value['goods_wish']) == 'on'){ echo 'checked=';}?>>
            </div>
        </div>



        <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label">
                            <span data-toggle="tooltip" data-original-title="<?php echo $sub_tab_configuration_link_show_icon_text_hint; ?>">
                                <?php echo $sub_tab_configuration_link_show_icon_text; ?>
                            </span>
            </label>
            <div class="col-sm-6">
                <input class="sub_tab_configuration_show_icon" type="checkbox" name="module_hyper_mega_menu[configuration][wish_compare][<?php echo $k;?>][wish_show_icon]" data-size="small" data-on-color="success" <?php if(isset($value['wish_show_icon']) == 'on'){ echo 'checked=';}?> >
            </div>
        </div>


    <div class="col-sm-12 settings-row">
        <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_link_icon_text_hint; ?>">
                <?php echo $sub_tab_configuration_link_icon_text; ?>
            </span>
        </label>
        <div class="col-sm-6 input-group iconpicker-container">
            <input name="module_hyper_mega_menu[configuration][wish_compare][<?php echo $k;?>][wish_icon]" data-placement="bottomRight" class="form-control icp icp-auto iconpicker-element iconpicker-input icp-opts" value="<?php if(isset($value['wish_icon'])){ echo $value['wish_icon']; } ?>" type="text">
            <span class="input-group-addon"><i class="fa fa-archive"></i></span>
        </div>
    </div>


</div>
<?php } ?>


<script type="text/javascript">
    var menu_item_wishlist_row = <?php end($configuration['wish_compare']); if(key($configuration['wish_compare']) == ''){echo 1;}else{ echo (key($configuration['wish_compare'])+1); }?>;

    <?php if(count($configuration['wish_compare']) > 0){?>
        wishlistAddAttrDisabled();
    <?php } ?>

    function addMenuItemWishlist() {

        var optName = $(".add-menu-element option:selected").text();

//        if(optName.length != 0){
//            $('.name-add-menu-element').empty().append(optName);
//        }

        $('.side-item-name').append('<li class="menu_item_wish_compare' + menu_item_wishlist_row + '"><a href="#menu_item_wish_compare'+menu_item_wishlist_row+'" data-toggle="tab" class="sidebar-item-name col-sm-10 btn">'+optName+' '+menu_item_wishlist_row+'</a><button type="button" class="btn btn-danger remove-sidebar-item col-sm-2" onclick="$(\'.vtabs a:first\').trigger(\'click\'); $(\'.menu_item_wish_compare' + menu_item_wishlist_row + '\').remove(); $(\'#menu_item_wish_compare' + menu_item_wishlist_row + '\').remove(); wishlistRemoveAttrDisabled(); return false;"><i class="fa fa-minus-circle"></i></button></li>');

        html  = '<div id="menu_item_wish_compare' + menu_item_wishlist_row + '" class="col-sm-12 tab-pane active">';
        html  += '<div class="col-sm-12 settings-row text-center"><h3><?php echo $menu_element_favorites_text; ?></h3></div>';



        html  += '<div class="col-sm-12 settings-row">';
        html  += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" data-original-title="<?php echo $sub_tab_configuration_name_favorites_goods_text_hint; ?>"><?php echo $sub_tab_configuration_name_favorites_goods_text; ?></span></label>';
        html  += '<div class="col-sm-6">';
        html  += ' <?php foreach ($languages as $language) { ?>';
        html  += '<div class="input-group"> <span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>';
        html  += '<input type="text" name="module_hyper_mega_menu[configuration][wish_compare][' + menu_item_wishlist_row + '][name_favorites_goods][<?php echo $language['language_id']; ?>]" placeholder="Название" class="form-control">';
        html  += '</div>';
        html  += '<?php } ?>';
        html  += '</div>';
        html  += '</div>';


        html  += '<div class="col-sm-12 settings-row">';
        html  += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" data-original-title="<?php echo $sub_tab_configuration_goods_wish_text_hint; ?>"><?php echo $sub_tab_configuration_goods_wish_text; ?></span></label>';
        html  += '<div class="col-sm-10">';
        html  += '<input class="menu_item_wish_compare_only_price" type="checkbox" name="module_hyper_mega_menu[configuration][wish_compare][' + menu_item_wishlist_row + '][favorites_goods]" data-size="small" data-on-color="success">';
        html  += '</div>';
        html  += '</div>';


        html += '<div class="col-sm-12 settings-row">';
        html += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" data-original-title="<?php echo $sub_tab_configuration_link_show_icon_text_hint; ?>"><?php echo $sub_tab_configuration_link_show_icon_text; ?></span></label>';
        html += '<div class="col-sm-6">';
        html += '<input class="sub_tab_configuration_show_icon" type="checkbox" name="module_hyper_mega_menu[configuration][wish_compare][' + menu_item_wishlist_row + '][favorites_show_icon]" data-size="small" data-on-color="success" >';
        html += ' </div>';
        html += ' </div>';


        html += '<div class="col-sm-12 settings-row">';
        html += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_link_icon_text_hint; ?>"><?php echo $sub_tab_configuration_link_icon_text; ?></span></label>';
        html += '<div class="col-sm-6 input-group iconpicker-container">';
        html += '<input type="text" name="module_hyper_mega_menu[configuration][wish_compare][' + menu_item_wishlist_row + '][font_awesome]" data-placement="bottomRight" class="form-control icp icp-auto iconpicker-element iconpicker-input icp-opts">';
        html += '<span class="input-group-addon"><i class="fa fa-archive"></i></span>';
        html += '</div>';
        html += '</div>';


        html  += '    <hr class="limiter">';
        html  += '<div class="col-sm-12 settings-row text-center"><h3><?php echo $menu_element_wish_text; ?></h3></div>';


        html  += '<div class="col-sm-12 settings-row">';
        html  += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" data-original-title="<?php echo $sub_tab_configuration_name_goods_wish_text_hint; ?>"><?php echo $sub_tab_configuration_name_goods_wish_text; ?></span></label>';
        html  += '<div class="col-sm-6">';
        html  += '<?php foreach ($languages as $language) { ?>';
        html  += '<div class="input-group"> <span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>';
        html  += '<input type="text" name="module_hyper_mega_menu[configuration][wish_compare][' + menu_item_wishlist_row + '][name_goods_wish][<?php echo $language['language_id']; ?>]" placeholder="Название" class="form-control">';
        html  += '</div>';
        html  += '<?php } ?>';
        html  += '</div>';
        html  += '</div>';

        html  += '<div class="col-sm-12 settings-row">';
        html  += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" data-original-title="<?php echo $sub_tab_configuration_favorites_goods_text_hint; ?>"><?php echo $sub_tab_configuration_favorites_goods_text; ?></span></label>';
        html  += '<div class="col-sm-10">';
        html  += '<input class="menu_item_wish_compare_model" type="checkbox" name="module_hyper_mega_menu[configuration][wish_compare][' + menu_item_wishlist_row + '][goods_wish]" data-size="small" data-on-color="success">';
        html  += '</div>';
        html  += '</div>';



        html += '<div class="col-sm-12 settings-row">';
        html += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" data-original-title="<?php echo $sub_tab_configuration_link_show_icon_text_hint; ?>"><?php echo $sub_tab_configuration_link_show_icon_text; ?></span></label>';
        html += '<div class="col-sm-6">';
        html += '<input class="sub_tab_configuration_show_icon" type="checkbox" name="module_hyper_mega_menu[configuration][wish_compare][' + menu_item_wishlist_row + '][wish_show_icon]" data-size="small" data-on-color="success" >';
        html += ' </div>';
        html += ' </div>';


        html += '<div class="col-sm-12 settings-row">';
        html += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_link_icon_text_hint; ?>"><?php echo $sub_tab_configuration_link_icon_text; ?></span></label>';
        html += '<div class="col-sm-6 input-group iconpicker-container">';
        html += '<input type="text" name="module_hyper_mega_menu[configuration][wish_compare][' + menu_item_wishlist_row + '][wish_icon]" data-placement="bottomRight" class="form-control icp icp-auto iconpicker-element iconpicker-input icp-opts">';
        html += '<span class="input-group-addon"><i class="fa fa-archive"></i></span>';
        html += '</div>';
        html += '</div>';



        html  += '</div>';



        $('.settings-item-configuration .configuration-settings').append(html);


        menu_item_wishlist_row++;

        $(".control-label > span").tooltip();

        wishlistAddAttrDisabled();
    }


    function wishlistAddAttrDisabled(){
        $('.add-menu-element #custom_menu_wishlist').attr({disabled:'disabled'});
        $('.add-menu-element #custom_menu_default').prop('selected', true);
    }

    function wishlistRemoveAttrDisabled(){
        $('.add-menu-element #custom_menu_wishlist').removeAttr('disabled');
    }

    //--></script>

