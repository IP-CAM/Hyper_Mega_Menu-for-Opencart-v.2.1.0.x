<hr class="limiter">
<div class="col-sm-12 settings-row">
    <label class="col-sm-2 control-label" for="button-upload">
        <span data-toggle="tooltip" title="" data-original-title="Заголовок меню"><?php echo $tab_custom_type_text; ?></span>
    </label>
    <div id="custom_menu_items" class="col-sm-10">
        <select name="module_hyper_mega_menu[custom][type]" class="form-control">
            <option value="" selected="selected"><?php echo $sub_tab_configuration_make_your_choice_text; ?></option>
            <option value="category"><?php echo $tab_custom_category_text; ?></option>
            <option value="manufacturer"><?php echo $tab_custom_manufacturer_text; ?></option>
            <option value="information"><?php echo $tab_custom_information_text; ?></option>
            <option value="products"><?php echo $tab_custom_products_text; ?></option>
            <option value="link"><?php echo $tab_custom_link_text; ?></option>
            <option value="html"><?php echo $tab_custom_html_text; ?></option>
            <option value="constructor"><?php echo $tab_custom_constructor_text; ?></option>
        </select>
    </div>
</div>
<div class="col-sm-12 settings-item-configuration custom-menu-items">
    <div id="custom_menu_item_category" class="disabled-fields display-none"><?php require_once(DIR_APPLICATION . 'view/template/module/hyper_mega_menu/tab_custom/menu_item_category.tpl'); ?></div>
    <div id="custom_menu_item_manufacturer" class="disabled-fields display-none"><?php require_once(DIR_APPLICATION . 'view/template/module/hyper_mega_menu/tab_custom/menu_item_manufacturers.tpl'); ?></div>
    <div id="custom_menu_item_html" class="disabled-fields display-none"><?php require_once(DIR_APPLICATION . 'view/template/module/hyper_mega_menu/tab_custom/menu_item_html.tpl'); ?></div>
    <div id="custom_menu_item_information" class="disabled-fields display-none"><?php require_once(DIR_APPLICATION . 'view/template/module/hyper_mega_menu/tab_custom/menu_item_information.tpl'); ?></div>
    <div id="custom_menu_item_link" class="disabled-fields display-none"><?php require_once(DIR_APPLICATION . 'view/template/module/hyper_mega_menu/tab_custom/menu_item_link.tpl'); ?></div>
    <div id="custom_menu_item_constructor" class="disabled-fields display-none"><?php require_once(DIR_APPLICATION . 'view/template/module/hyper_mega_menu/tab_custom/menu_item_constructor.tpl'); ?></div>
    <div id="custom_menu_item_products" class="disabled-fields display-none"><?php require_once(DIR_APPLICATION . 'view/template/module/hyper_mega_menu/tab_custom/menu_item_products.tpl'); ?></div>
</div>
<script type="text/javascript">
    $('#custom_menu_items select').on('change', function(){
        $('.custom-menu-items .disabled-fields').addClass('display-none');
        $('.custom-menu-items .disabled-fields input').prop("disabled", true);
        $('.custom-menu-items .disabled-fields textarea').prop("disabled", true);

        var itemName = $(this).val();
        $('#custom_menu_item_'+itemName).removeClass('display-none');
        $('#custom_menu_item_'+itemName+' input').prop("disabled", false);
        $('#custom_menu_item_'+itemName+' textarea').prop("disabled", false);
    });
</script>