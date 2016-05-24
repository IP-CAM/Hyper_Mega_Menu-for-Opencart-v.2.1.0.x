<div class="form-group">


    <div class="col-sm-12 settings-row">
        <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_design_mode_text_hint; ?>">
                <?php echo $sub_tab_design_mode_text; ?>
            </span>
        </label>
        <div class="col-sm-10">
            <input id="design_dropdown_design_mode_user_theme" type="checkbox" name="module_hyper_mega_menu[settings][design_dropdown][design_mode]" <?php if(isset($module_hyper_mega_menu['settings']['design_dropdown']['design_mode']) == 'on'){ echo 'checked=';}?> data-size="small" data-on-color="success" data-on-text="CUSTOM" data-off-text="DEFAULT">
        </div>
    </div>

    <div class="col-sm-12 settings-row design-dropdown-default-settings">
        <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_theme_brightness_text; ?>">
                <?php echo $sub_tab_theme_brightness_text; ?>
            </span>
        </label>
        <div class="col-sm-10">
            <input id="design_dropdown_design_mode_brightness" type="checkbox" name="module_hyper_mega_menu[settings][design_dropdown][brightness]" <?php if(isset($module_hyper_mega_menu['settings']['design_dropdown']['brightness']) == 'on'){ echo 'checked=';}?> data-size="small" data-on-color="success" data-on-text="LIGHT" data-off-text="DARK">
        </div>
    </div>

    <div class="col-sm-12 design-dropdown-customizing-user-settings <?php if (isset($module_hyper_mega_menu['settings']['design_dropdown']['design_mode']) && $module_hyper_mega_menu['settings']['design_dropdown']['design_mode']== 'built_in_theme') { ?>display-none<?php } ?>">


        <hr class="limiter">
        <hr class="limiter">
        <div class="col-sm-12 settings-row"
            ><h3><?php echo $user_customizing_theme_title; ?></h3>
        </div>

        <hr class="limiter">

        <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_background_mode_text_hint; ?>">
                <?php echo $sub_tab_background_mode_text; ?>
            </span>
            </label>
            <div class="col-sm-10">
                <input id="design_dropdown_design_mode_background_mode" type="checkbox" name="module_hyper_mega_menu[settings][design_dropdown][background_mode]" <?php if(isset($module_hyper_mega_menu['settings']['design_dropdown']['background_mode']) == 'on'){ echo 'checked=';}?> data-size="small" data-on-color="success" data-on-text="COLOR" data-off-text="IMAGE">
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
                    <input type="text" value="<?php if(isset($module_hyper_mega_menu['settings']['design_dropdown']['color'])){ echo $module_hyper_mega_menu['settings']['design_dropdown']['color']; } ?>" name="module_hyper_mega_menu[settings][design_dropdown][color]" class="pick-a-color form-control">
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
                <a href="" id="thumb-image1" data-toggle="image" class="img-thumbnail">
                    <img src="<?php echo $module_hyper_mega_menu['settings']['design_dropdown']['thumb']; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>"/>
                </a>
                <input type="hidden" name="module_hyper_mega_menu[settings][design_dropdown][image]" value="<?php echo $module_hyper_mega_menu['settings']['design_dropdown']['image']; ?>" id="input-image1"/>
            </div>
        </div>


        <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_background_image_position_text; ?>">
                <?php echo $sub_tab_background_image_position_text; ?>
            </span>
            </label>
            <div class="col-sm-4">
                <select name="module_hyper_mega_menu[settings][design_dropdown][image_position]" class="form-control">
                    <option value=""></option>

                    <option value="top_left" <?php if(isset($module_hyper_mega_menu['settings']['design_dropdown']['image_position']) && $module_hyper_mega_menu['settings']['design_dropdown']['image_position']  == 'top_left'){ echo 'selected="selected"'; }?>>Top Left</option>
                    <option value="top_center" <?php if(isset($module_hyper_mega_menu['settings']['design_dropdown']['image_position']) && $module_hyper_mega_menu['settings']['design_dropdown']['image_position']  == 'top_center'){ echo 'selected="selected"'; }?>>Top Center</option>
                    <option value="top_right" <?php if(isset($module_hyper_mega_menu['settings']['design_dropdown']['image_position']) && $module_hyper_mega_menu['settings']['design_dropdown']['image_position']  == 'top_right'){ echo 'selected="selected"'; }?>>Top Right</option>

                    <option value="center_left" <?php if(isset($module_hyper_mega_menu['settings']['design_dropdown']['image_position']) && $module_hyper_mega_menu['settings']['design_dropdown']['image_position']  == 'center_left'){ echo 'selected="selected"'; }?>>Center Left</option>
                    <option value="center_center" <?php if(isset($module_hyper_mega_menu['settings']['design_dropdown']['image_position']) && $module_hyper_mega_menu['settings']['design_dropdown']['image_position']  == 'center_center'){ echo 'selected="selected"'; }?>>Center Center</option>
                    <option value="center_right" <?php if(isset($module_hyper_mega_menu['settings']['design_dropdown']['image_position']) && $module_hyper_mega_menu['settings']['design_dropdown']['image_position']  == 'center_right'){ echo 'selected="selected"'; }?>>Center Right</option>

                    <option value="bottom_left" <?php if(isset($module_hyper_mega_menu['settings']['design_dropdown']['image_position']) && $module_hyper_mega_menu['settings']['design_dropdown']['image_position']  == 'bottom_left'){ echo 'selected="selected"'; }?>>Bottom Left</option>
                    <option value="bottom_center" <?php if(isset($module_hyper_mega_menu['settings']['design_dropdown']['image_position']) && $module_hyper_mega_menu['settings']['design_dropdown']['image_position']  == 'bottom_center'){ echo 'selected="selected"'; }?>>Bottom Center</option>
                    <option value="bottom_right" <?php if(isset($module_hyper_mega_menu['settings']['design_dropdown']['image_position']) && $module_hyper_mega_menu['settings']['design_dropdown']['image_position']  == 'bottom_right'){ echo 'selected="selected"'; }?>>Bottom Right</option>

                </select>
            </div>
        </div>
        <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_background_image_repeat_text; ?>">
                <?php echo $sub_tab_background_image_repeat_text; ?>
            </span>
            </label>
            <div class="col-sm-4">
                <select name="module_hyper_mega_menu[settings][design_dropdown][image_repeat]" class="form-control">
                    <option value=""></option>
                    <option value="repeat" <?php if(isset($module_hyper_mega_menu['settings']['design_dropdown']['image_repeat']) && $module_hyper_mega_menu['settings']['design_dropdown']['image_repeat']  == 'repeat'){ echo 'selected="selected"'; }?>>repeat</option>
                    <option value="no-repeat" <?php if(isset($module_hyper_mega_menu['settings']['design_dropdown']['image_repeat']) && $module_hyper_mega_menu['settings']['design_dropdown']['image_repeat']  == 'no-repeat'){ echo 'selected="selected"'; }?>>no-repeat</option>
                    <option value="repeat-x" <?php if(isset($module_hyper_mega_menu['settings']['design_dropdown']['image_repeat']) && $module_hyper_mega_menu['settings']['design_dropdown']['image_repeat']  == 'repeat-x'){ echo 'selected="selected"'; }?>>repeat-x</option>
                    <option value="repeat-y" <?php if(isset($module_hyper_mega_menu['settings']['design_dropdown']['image_repeat']) && $module_hyper_mega_menu['settings']['design_dropdown']['image_repeat']  == 'repeat-y'){ echo 'selected="selected"'; }?>>repeat-y</option>
                </select>
            </div>
        </div>



        <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_menu_design_font_size_text_hint; ?>">
                <?php echo $sub_tab_menu_design_font_size_text; ?>
            </span>
            </label>
            <div class="col-sm-4">
                <input type="text" name="module_hyper_mega_menu[settings][design_dropdown][font_size]" value="<?php if(isset($module_hyper_mega_menu['settings']['design_dropdown']['font_size'])){ echo $module_hyper_mega_menu['settings']['design_dropdown']['font_size']; } ?>" class="form-control">
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
                    <input type="text" value="<?php if(isset($module_hyper_mega_menu['settings']['design_dropdown']['font_color'])){ echo $module_hyper_mega_menu['settings']['design_dropdown']['font_color']; } ?>" name="module_hyper_mega_menu[settings][design_dropdown][font_color]" class="pick-a-color form-control">
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
                    <input type="text" value="<?php if(isset($module_hyper_mega_menu['settings']['design_dropdown']['font_color_hover'])){ echo $module_hyper_mega_menu['settings']['design_dropdown']['font_color_hover']; } ?>" name="module_hyper_mega_menu[settings][design_dropdown][font_color_hover]" class="pick-a-color form-control">
                    <span class="input-group-addon"><i></i></span>
                </div>
            </div>
        </div>
    </div>

</div>
<script type="text/javascript">
    $(document).ready(function () {

        $('#design_dropdown_design_mode_user_theme').bootstrapSwitch();
        $('#design_dropdown_design_mode_brightness').bootstrapSwitch();
        $('#design_dropdown_design_mode_background_mode').bootstrapSwitch();

    });
    $(".pick-a-color").colorpicker();

    $('#design_dropdown_design_mode_user_theme').on('switchChange.bootstrapSwitch', function(event, state) {
        showUserDesignDropdownSettings(state);
    });


    function showUserDesignDropdownSettings(state){
        if(state == false){
            $('.design-dropdown-customizing-user-settings').addClass('display-none');
            $('.design-dropdown-default-settings').removeClass('display-none');
        }else{
            $('.design-dropdown-default-settings').addClass('display-none');
            $('.design-dropdown-customizing-user-settings').removeClass('display-none');
        }
    }

    <?php if(isset($module_hyper_mega_menu['settings']['design_dropdown']['design_mode']) && $module_hyper_mega_menu['settings']['design_dropdown']['design_mode'] == 'on'){?>
        showUserDesignDropdownSettings(true);
    <?php } else { ?>
        showUserDesignDropdownSettings(false);
    <?php } ?>

</script>