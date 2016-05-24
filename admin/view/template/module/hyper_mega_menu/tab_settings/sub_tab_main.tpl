
<hr class="limiter">
<div class="col-sm-12 settings-row">
        <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title="" data-original-title="Статус отображения окна Выключено/Включено">
                <?php echo $sub_tab_status_text; ?>
            </span>
        </label>
        <div class="col-sm-10">
            <input id="sub_tab_main_status" type="checkbox" name="module_hyper_mega_menu[settings][main][status]" <?php if(isset($module_hyper_mega_menu['settings']['main']['status']) == 'on'){ echo 'checked=';}?> data-size="small" data-on-color="success">
        </div>
    </div>

    <div class="col-sm-12 settings-row">
        <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_showing_text_hint; ?>">
                <?php echo $sub_tab_showing_text; ?>
            </span>
        </label>
        <div class="col-sm-10">
            <input id="sub_tab_main_position" type="checkbox" name="module_hyper_mega_menu[settings][main][showing]" <?php if(isset($module_hyper_mega_menu['settings']['main']['showing']) == 'on'){ echo 'checked=';}?> data-on-color="success" data-size="small" data-on-text="UP" data-off-text="DOWN">
        </div>
    </div>


    <div class="col-sm-12 settings-row">
        <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_show_text_hint; ?>">
                <?php echo $sub_tab_show_text; ?>
            </span>
        </label>
        <div class="col-sm-4">
            <input id="sub_tab_mobile_show" type="checkbox" name="module_hyper_mega_menu[settings][main][show]" <?php if(isset($module_hyper_mega_menu['settings']['main']['show']) == 'on'){ echo 'checked=';}?>  data-size="small" data-on-color="success">
        </div>
    </div>

    <div class="col-sm-12 settings-row">
        <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_on_hover_text_hint; ?>">
                <?php echo $sub_tab_on_hover_text; ?>
            </span>
        </label>
        <div class="col-sm-4">
            <input id="sub_tab_on_hover" type="checkbox" name="module_hyper_mega_menu[settings][main][on_hover]" <?php if(isset($module_hyper_mega_menu['settings']['main']['on_hover']) == 'on'){ echo 'checked=';}?> data-size="small" data-on-color="success">
        </div>
    </div>
    <div class="col-sm-12 settings-row">
        <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_temporary_delay_text_hint; ?>">
                <?php echo $sub_tab_temporary_delay_text; ?>
            </span>
        </label>
        <div class="col-sm-4">
            <input id="sub_tab_temporary_delay" type="checkbox" name="module_hyper_mega_menu[settings][main][delay]" <?php if(isset($module_hyper_mega_menu['settings']['main']['delay']) == 'on'){ echo 'checked=';}?> data-size="small" data-on-color="success">
        </div>
    </div>

    <div class="col-sm-12 settings-row"><h3><?php echo $sub_tab_main_filter_text;?></h3></div>
    <hr class="limiter">

    <div class="col-sm-12 settings-row">
        <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_move_menu_elements_text_hint; ?>">
                <?php echo $sub_tab_move_side_text; ?>
            </span>
        </label>
        <div class="col-sm-4">
            <input id="sub_tab_move_side" type="checkbox" name="module_hyper_mega_menu[settings][main][move_side]" <?php if(isset($module_hyper_mega_menu['settings']['main']['move_side']) == 'on'){ echo 'checked=';}?> data-on-color="success" data-on-text="LEFT" data-off-text="RIGHT">
        </div>
    </div>

    <div class="col-sm-12 settings-row">
        <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_size_shift_text_hint; ?>">
                <?php echo $sub_tab_size_shift_text; ?>
            </span>
        </label>
        <div class="col-sm-6">
            <input id="sub_tab_temporary_delay" type="text" name="module_hyper_mega_menu[settings][main][move_shift]" value="<?php if(isset($module_hyper_mega_menu['settings']['main']['move_shift'])){ echo $module_hyper_mega_menu['settings']['main']['move_shift']; } ?>" class="form-control">
        </div>
    </div>

<div class="col-sm-12 settings-row"><h3><?php echo $sub_tab_main_position_text;?></h3></div>
<hr class="limiter">

<script type="text/javascript">
    $('#sub_tab_main_status').bootstrapSwitch();
    $('#sub_tab_main_position').bootstrapSwitch();
    $('#sub_tab_mobile_show').bootstrapSwitch();
    $('#sub_tab_on_hover').bootstrapSwitch();
    $('#sub_tab_temporary_delay').bootstrapSwitch();
    $('#sub_tab__move_menu_elements').bootstrapSwitch();
    $('#sub_tab_move_side').bootstrapSwitch();
    $("input[type=\"checkbox\"], input[type=\"radio\"]").not("[data-switch-no-init]").bootstrapSwitch();
</script>