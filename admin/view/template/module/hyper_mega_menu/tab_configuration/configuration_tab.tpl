<div class="form-group">
    <label class="col-sm-2" style="text-align: right">
        <a class="btn btn-primary created-menu-elements">
            <?php echo $create_menu_element_text; ?>
        </a><span data-toggle="tooltip" title="<?php echo $create_new_menu_text; ?>"></span>
    </label>

    <div class="col-sm-6 add-menu-element display-none">
        <select class="form-control">
            <option id="custom_menu_default" value=""></option>
            <option id="custom_menu_logo" value="logo"><?php echo $menu_element_logo_text; ?></option>
            <option id="custom_menu_link" value="link"><?php echo $menu_element_link_text; ?></option>
            <option id="custom_menu_custom" value="custom"><?php echo $menu_element_custom_text; ?></option>
            <option id="custom_menu_account" value="account"><?php echo $menu_element_account_text; ?></option>
            <option id="custom_menu_wishlist" value="wishlist"><?php echo $menu_element_wishlist_text; ?></option>
            <option id="custom_menu_search" value="search"><?php echo $menu_element_search_text; ?></option>
            <option id="custom_menu_cart" value="cart"><?php echo $menu_element_cart_text; ?></option>

        </select>
    </div>
    <div class="col-sm-4 add-menu-element display-none">
<!--        <label class="">-->
            <a class="btn btn-success added-item-configuration">
                <?php echo $add_new_menu_text; ?>
            </a>
            <span data-toggle="tooltip" title="<?php echo $create_new_menu_text; ?>"></span>
<!--        </label>-->
    </div>
</div>
<hr class="limiter">
<div class="col-sm-12 settings-item-configuration">
    <div class="col-sm-12 name-add-menu-element">
    </div>
    <hr class="limiter">

    <ul class="nav nav-tabs col-sm-2 side-item-name" id="configuration_settings_tabs"></ul>

    <div class="col-sm-10 configuration-settings tab-content">
        <?php require_once(DIR_APPLICATION.'view/template/module/hyper_mega_menu/tab_configuration/menu_item_logo.tpl'); ?>
        <?php require_once(DIR_APPLICATION.'view/template/module/hyper_mega_menu/tab_configuration/menu_item_simple_link.tpl'); ?>
        <?php require_once(DIR_APPLICATION.'view/template/module/hyper_mega_menu/tab_configuration/menu_item_custom.tpl'); ?>
        <?php require_once(DIR_APPLICATION.'view/template/module/hyper_mega_menu/tab_configuration/menu_item_personal_cabinet.tpl'); ?>
        <?php require_once(DIR_APPLICATION.'view/template/module/hyper_mega_menu/tab_configuration/menu_item_wish_compare.tpl'); ?>
        <?php require_once(DIR_APPLICATION.'view/template/module/hyper_mega_menu/tab_configuration/menu_item_search.tpl'); ?>
        <?php require_once(DIR_APPLICATION.'view/template/module/hyper_mega_menu/tab_configuration/menu_item_html_block.tpl'); ?>
    </div>

<!--    <div class="included-tabs display-none"></div>-->
</div>
<script type="text/javascript">
    $('.created-menu-elements').on('click', function(){
        $('.add-menu-element'). removeClass('display-none');
    });




    $('.added-item-configuration').on('click', function(){
        var optValue = $(".add-menu-element option:selected").val();
        $('.configuration-settings .tab-pane').removeClass('active');

        if(optValue == 'logo'){
            addMenuItemLogo();
        }
        if(optValue == 'link'){
            addMenuItemSimleLink();
        }
        if(optValue == 'custom'){
            addMenuItemCustom();
        }
        if(optValue == 'account'){
            addMenuItemAccount();
        }
        if(optValue == 'wishlist'){
            addMenuItemWishlist();
        }
        if(optValue == 'search'){
            addMenuItemSearch();
        }
        if(optValue == 'cart'){
            addMenuItemCart();
        }
        $('#configuration_settings_tabs a:last').tab('show');


        $('.configuration-settings .menu_item_custom_picture').bootstrapSwitch();
        $('.configuration-settings .menu_item_custom_is_link').bootstrapSwitch();

        $('.menu_item_personal_cabinet_only_price').bootstrapSwitch();
        $('.menu_item_personal_cabinet_model').bootstrapSwitch();
        $('.menu_item_personal_cabinet_sku').bootstrapSwitch();
        $('.menu_item_personal_cabinet_manufacturer').bootstrapSwitch();

        $('.menu_item_wish_compare_only_price').bootstrapSwitch();
        $('.menu_item_wish_compare_model').bootstrapSwitch();

//        $('.menu_item_cart_only_price').bootstrapSwitch();
//        $('.menu_item_cart_model').bootstrapSwitch();
//        $('.menu_item_cart_sku').bootstrapSwitch();
//        $('.menu_item_cart_manufacturer').bootstrapSwitch();
//        $('.menu_item_cart_price').bootstrapSwitch();
//        $('.menu_item_cart_discount').bootstrapSwitch();
//        $('.menu_item_cart_total').bootstrapSwitch();

        $('.sub_tab_configuration_link_blank').bootstrapSwitch();
        $('.sub_tab_configuration_show_icon').bootstrapSwitch();
        $('.sub_tab_configuration_search_autocomplete').bootstrapSwitch();
        $('.search_criteria').bootstrapSwitch();
        $('.icp-opts').iconpicker({});

        $(".language_tabs a").tab('show');
        $(".active_language").tab('show');
    });


    $('.configuration-settings .menu_item_custom_picture').bootstrapSwitch();
    $('.configuration-settings .menu_item_custom_is_link').bootstrapSwitch();

    $('.menu_item_personal_cabinet_only_price').bootstrapSwitch();
    $('.menu_item_personal_cabinet_model').bootstrapSwitch();
    $('.menu_item_personal_cabinet_sku').bootstrapSwitch();
    $('.menu_item_personal_cabinet_manufacturer').bootstrapSwitch();

    $('.menu_item_wish_compare_only_price').bootstrapSwitch();
    $('.menu_item_wish_compare_model').bootstrapSwitch();

//    $('.menu_item_cart_only_price').bootstrapSwitch();
//    $('.menu_item_cart_model').bootstrapSwitch();
//    $('.menu_item_cart_sku').bootstrapSwitch();
//    $('.menu_item_cart_manufacturer').bootstrapSwitch();
//    $('.menu_item_cart_price').bootstrapSwitch();
//    $('.menu_item_cart_discount').bootstrapSwitch();
//    $('.menu_item_cart_total').bootstrapSwitch();

    $('.sub_tab_configuration_link_blank').bootstrapSwitch();
    $('.sub_tab_configuration_show_icon').bootstrapSwitch();
    $('.sub_tab_configuration_search_autocomplete').bootstrapSwitch();
    $('.search_criteria').bootstrapSwitch();
    $('.icp-opts').iconpicker({});

    $('#configuration_settings_tabs a:first').tab('show');
</script>
