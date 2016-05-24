<?php foreach($configuration['logo'] as $k=>$value){?>
    <script type="text/javascript">
        $('.side-item-name').append('<li class="menu_item_logo<?php echo $k; ?>"><a href="#menu_item_logo<?php echo $k; ?>" data-toggle="tab" class="sidebar-item-name col-sm-10 btn"><?php echo $menu_element_logo_text . ' ' . $k; ?></a><button type="button" class="btn btn-danger remove-sidebar-item col-sm-2" onclick="$(\'.vtabs a:first\').trigger(\'click\'); $(\'.menu_item_logo<?php echo $k; ?>\').remove(); $(\'#menu_item_logo<?php echo $k; ?>\').remove(); return false;"><i class="fa fa-minus-circle"></i></button></li>');
    </script>
    <div id="menu_item_logo<?php echo $k; ?>" class="tab-pane <?php if($k == 0){?>active <?php } ?>">



        <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label">
                                    <span data-toggle="tooltip" data-original-title="<?php echo $sub_tab_configuration_cart_signature_icon_text_hint; ?>">
                                        <?php echo $sub_tab_configuration_cart_signature_icon_text; ?>
                                    </span>
            </label>
            <div class="col-sm-6">
                <input class="search_criteria" type="checkbox" name="module_hyper_mega_menu[configuration][logo][<?php echo $k;?>][signature_icon]" data-size="small" data-on-color="success" <?php if(isset($value['signature_icon']) == 'on'){ echo 'checked=';}?> >
            </div>
        </div>

        <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_link_icon_text_hint; ?>">
                <?php echo $sub_tab_configuration_link_icon_text; ?>
            </span>
            </label>
                <div class="col-sm-6 input-group iconpicker-container">
                    <input name="module_hyper_mega_menu[configuration][logo][<?php echo $k;?>][font_awesome]" data-placement="bottomRight" class="form-control icp icp-auto iconpicker-element iconpicker-input icp-opts" value="<?php if(isset($value['font_awesome'])){ echo $value['font_awesome']; } ?>" type="text">
                    <span class="input-group-addon"><i class="fa fa-archive"></i></span>
                </div>
        </div>


        <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_image_text; ?>">
                <?php echo $sub_tab_configuration_image_text; ?>
            </span>
            </label>

            <div class="col-sm-6">
                <a href="" id="input-logo-image-<?php echo $k; ?>" data-toggle="image" class="img-thumbnail">
                    <img src="<?php echo (isset($value['thumb']) ? $value['thumb'] : $no_image) ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>"/>
                </a>
                <input type="hidden" name="module_hyper_mega_menu[configuration][logo][<?php echo $k;?>][image]" value="<?php echo $value['image']; ?>" id="input-phone-image-<?php echo $k; ?>"/>

            </div>

        </div>

    </div>
<?php }?>

<script type="text/javascript">
var menu_item_logo_row = <?php end($configuration['logo']); if(key($configuration['logo']) == ''){echo 1;}else{ echo (key($configuration['logo'])+1); }?>;

function addMenuItemLogo() {

    var optName = $(".add-menu-element option:selected").text();

//    if(optName.length != 0){
//        $('.name-add-menu-element').empty().append(optName);
//    }

    $('.side-item-name').append('<li class="menu_item_logo' + menu_item_logo_row + '"><a href="#menu_item_logo'+menu_item_logo_row+'" data-toggle="tab" class="sidebar-item-name col-sm-10 btn">'+optName+' '+menu_item_logo_row+'</a><button type="button" class="btn btn-danger remove-sidebar-item col-sm-2" onclick="$(\'.vtabs a:first\').trigger(\'click\'); $(\'.menu_item_logo' + menu_item_logo_row + '\').remove(); $(\'#menu_item_logo' + menu_item_logo_row + '\').remove(); return false;"><i class="fa fa-minus-circle"></i></button></li>');


    html  = '<div id="menu_item_logo' + menu_item_logo_row + '" class="tab-pane active">';





    html  += '<div class="col-sm-12 settings-row">';
    html += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_cart_signature_icon_text_hint; ?>"><?php echo $sub_tab_configuration_cart_signature_icon_text; ?></span></label>';
    html  += '<div class="col-sm-6">';
    html  += '<input name="module_hyper_mega_menu[configuration][logo][' + menu_item_logo_row + '][signature_icon]" class="search_criteria" value="" type="checkbox" data-size="small" data-on-color="success" />';
    html  += '</div>';
    html  += '</div>';





    html  += '<div class="col-sm-12 settings-row">';
    html += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_link_icon_text_hint; ?>"><?php echo $sub_tab_configuration_link_icon_text; ?></span></label>';
    html  += '<div class="col-sm-6 input-group iconpicker-container">';
    html  += '<input name="module_hyper_mega_menu[configuration][logo][' + menu_item_logo_row + '][font_awesome]" data-placement="bottomRight" class="form-control icp icp-auto iconpicker-element iconpicker-input icp-opts" value="" type="text"/>';
    html  += '<span class="input-group-addon"><i class="fa fa-archive"></i></span>';
    html  += '</div>';
    html  += '</div>';



    html  += '<div class="col-sm-12 settings-row">';
    html += '<label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_configuration_image_text; ?>"><?php echo $sub_tab_configuration_image_text; ?></span></label>';
    html  += '<div class="col-sm-6">';
    html  += '<a href="" id="input-logo-image-'+menu_item_logo_row+'" data-toggle="image" class="img-thumbnail"><img src="<?php echo $no_image; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>"/></a>';
    html  += '<input type="hidden" name="module_hyper_mega_menu[configuration][logo][' + menu_item_logo_row + '][image]" id="input-logo-image-'+menu_item_logo_row+'"/>';
    html  += '</div>';
    html  += '</div>';


    html += '</div>';

    $('.settings-item-configuration .configuration-settings').append(html);

    $(".control-label > span").tooltip();


    menu_item_logo_row++;
}
//--></script>








