<div class="form-group">

    <div class="col-sm-12 settings-row">
        <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_design_mode_text_hint; ?>">
                <?php echo $sub_tab_design_mode_text; ?>
            </span>
        </label>
        <div class="col-sm-10">
            <input id="design_mode_user_theme" type="checkbox" name="module_hyper_mega_menu[settings][menu_design][design_mode]" <?php if(isset($module_hyper_mega_menu['settings']['menu_design']['design_mode']) == 'on'){ echo 'checked=';}?> data-size="small" data-on-color="success" data-on-text="CUSTOM" data-off-text="DEFAULT">
        </div>
    </div>

    <div class="col-sm-12 settings-row default-settings">
        <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_theme_brightness_text; ?>">
                <?php echo $sub_tab_theme_brightness_text; ?>
            </span>
        </label>
        <div class="col-sm-10">
            <input id="design_mode_brightness" type="checkbox" name="module_hyper_mega_menu[settings][menu_design][brightness]" <?php if(isset($module_hyper_mega_menu['settings']['menu_design']['brightness']) == 'on'){ echo 'checked=';}?> data-size="small" data-on-color="success" data-on-text="LIGHT" data-off-text="DARK">
        </div>
    </div>


    <div class="col-sm-12 customizing-user-settings <?php if (isset($module_hyper_mega_menu['settings']['menu_design']['design_mode']) && $module_hyper_mega_menu['settings']['menu_design']['design_mode']== 'built_in_theme') { ?>display-none<?php } ?>">

        <hr class="limiter">
        <div class="col-sm-12 settings-row">
            <h3><?php echo $user_customizing_theme_title; ?></h3>
        </div>

        <hr class="limiter">


        <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_background_mode_text_hint; ?>">
                <?php echo $sub_tab_background_mode_text; ?>
            </span>
            </label>
            <div class="col-sm-10">
                <input id="design_mode_background_mode" type="checkbox" name="module_hyper_mega_menu[settings][menu_design][background_mode]" <?php if(isset($module_hyper_mega_menu['settings']['menu_design']['background_mode']) == 'on'){ echo 'checked=';}?> data-size="small" data-on-color="success" data-on-text="COLOR" data-off-text="IMAGE">
            </div>
        </div>



        <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_fill_color_text; ?>">
                <?php echo $sub_tab_fill_color_text; ?>
            </span>
            </label>
            <div class="col-sm-4">
                <div class="input-group colorpicker-component demo demo-auto colorpicker-element pick-a-color">
                    <input type="text" name="module_hyper_mega_menu[settings][menu_design][color]" value="<?php if(isset($module_hyper_mega_menu['settings']['menu_design']['color'])){ echo $module_hyper_mega_menu['settings']['menu_design']['color']; } ?>" class=" form-control">
                    <span class="input-group-addon"><i></i></span>
                </div>
            </div>
        </div>
        <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_background_image_text_hint; ?>">
                <?php echo $sub_tab_background_image_text; ?>
            </span>
            </label>
            <div class="col-sm-4">
                <a href="" id="thumb-image" data-toggle="image" class="img-thumbnail">
                    <img src="<?php echo $module_hyper_mega_menu['settings']['menu_design']['thumb']; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>"/>
                </a>
                <input type="hidden" name="module_hyper_mega_menu[settings][menu_design][image]" value="<?php echo $module_hyper_mega_menu['settings']['menu_design']['image']; ?>" id="input-image"/>
            </div>
        </div>


        <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_menu_design_font_size_text_hint; ?>">
                <?php echo $sub_tab_menu_design_font_size_text; ?>
            </span>
            </label>
            <div class="col-sm-4">
                <input type="text" name="module_hyper_mega_menu[settings][menu_design][font_size]" value="<?php if(isset($module_hyper_mega_menu['settings']['menu_design']['font_size'])){ echo $module_hyper_mega_menu['settings']['menu_design']['font_size']; } ?>" class="form-control">
            </div>
        </div>




        <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_font_color_text; ?>">
                <?php echo $sub_tab_font_color_text; ?>
            </span>
            </label>
            <div class="col-sm-4">
                <div class="input-group colorpicker-component demo demo-auto colorpicker-element pick-a-color">
                    <input type="text" name="module_hyper_mega_menu[settings][menu_design][font_color]" value="<?php if(isset($module_hyper_mega_menu['settings']['menu_design']['font_color'])){ echo $module_hyper_mega_menu['settings']['menu_design']['font_color']; } ?>" class="pick-a-color form-control">
                    <span class="input-group-addon"><i></i></span>
                </div>
            </div>
        </div>

        <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_font_color_hover_text; ?>">
                <?php echo $sub_tab_font_color_hover_text; ?>
            </span>
            </label>
            <div class="col-sm-4">
                <div class="input-group colorpicker-component demo demo-auto colorpicker-element pick-a-color">
                    <input type="text" name="module_hyper_mega_menu[settings][menu_design][font_color_hover]" value="<?php if(isset($module_hyper_mega_menu['settings']['menu_design']['font_color_hover'])){ echo $module_hyper_mega_menu['settings']['menu_design']['font_color_hover']; } ?>" class="pick-a-color form-control">
                    <span class="input-group-addon"><i></i></span>
                </div>
            </div>
        </div>
        <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_button_color_hover_text; ?>">
                <?php echo $sub_tab_button_color_hover_text; ?>
            </span>
            </label>
            <div class="col-sm-4">
                <div class="input-group colorpicker-component demo demo-auto colorpicker-element pick-a-color">
                    <input type="text" name="module_hyper_mega_menu[settings][menu_design][button_color_hover]" value="<?php if(isset($module_hyper_mega_menu['settings']['menu_design']['button_color_hover'])){ echo $module_hyper_mega_menu['settings']['menu_design']['button_color_hover']; } ?>" class="pick-a-color form-control">
                    <span class="input-group-addon"><i></i></span>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function () {

        $('#design_mode_user_theme').bootstrapSwitch();
        $('#design_mode_brightness').bootstrapSwitch();
        $('#design_mode_background_mode').bootstrapSwitch();


    });
    $(".pick-a-color").colorpicker();


    $('#design_mode_user_theme').on('switchChange.bootstrapSwitch', function(event, state) {
        showUserDesignSettings(state);
    });


    function showUserDesignSettings(state){
        if(state == false){
            $('.customizing-user-settings').addClass('display-none');
            $('.default-settings').removeClass('display-none');
        }else{
            $('.default-settings').addClass('display-none');
            $('.customizing-user-settings').removeClass('display-none');
        }
    }

    <?php if(isset($module_hyper_mega_menu['settings']['menu_design']['design_mode']) && $module_hyper_mega_menu['settings']['menu_design']['design_mode'] == 'on'){?>
        showUserDesignSettings(true);
    <?php } else { ?>
        showUserDesignSettings(false);
    <?php } ?>

</script>