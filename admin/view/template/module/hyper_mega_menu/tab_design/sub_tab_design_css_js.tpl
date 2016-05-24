<div class="col-sm-12 settings-row"
    ><h3><?php echo $sub_tab_css_js_css_text; ?></h3>
</div>
<hr class="limiter">
<div class="form-group">

    <div class="col-sm-12 settings-row">
        <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_css_js_enable_css_text_hint; ?>">
                <?php echo $sub_tab_css_js_enable_css_text; ?>
            </span>
        </label>
        <div class="col-sm-10">
            <input id="css_js_enable_css" type="checkbox" name="module_hyper_mega_menu[settings][css_js][enable_css]" <?php if(isset($module_hyper_mega_menu['settings']['css_js']['enable_css']) == 'on'){ echo 'checked=';}?> data-size="small" data-on-color="success" data-on-text="YES" data-off-text="NO">
        </div>
    </div>

    <div class="col-sm-12 settings-row">
        <label class="col-sm-2 control-label">
                <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_css_js_enable_css_text_hint; ?>">
                    <?php echo $sub_tab_css_js_enable_css_text; ?>
                </span>
        </label>
        <div class="col-sm-6">
            <textarea type="text" name="module_hyper_mega_menu[settings][css_js][css]" rows="20" class="form-control"><?php if(isset($module_hyper_mega_menu['settings']['css_js']['css'])){ echo $module_hyper_mega_menu['settings']['css_js']['css']; } ?></textarea>
        </div>
    </div>

    <div class="col-sm-12 settings-row">
        <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_css_js_enable_js_text_hint; ?>">
                <?php echo $sub_tab_css_js_enable_js_text; ?>
            </span>
        </label>
        <div class="col-sm-10">
            <input id="css_js_enable_js" type="checkbox" name="module_hyper_mega_menu[settings][css_js][enable_js]" <?php if(isset($module_hyper_mega_menu['settings']['css_js']['enable_js']) == 'on'){ echo 'checked=';}?> data-size="small" data-on-color="success" data-on-text="YES" data-off-text="NO">
        </div>
    </div>

    <div class="col-sm-12 settings-row">
        <label class="col-sm-2 control-label">
                <span data-toggle="tooltip" title="" data-original-title="<?php echo $sub_tab_css_js_enable_js_text_hint; ?>">
                    <?php echo $sub_tab_css_js_enable_js_text; ?>
                </span>
        </label>
        <div class="col-sm-6">
            <textarea type="text" name="module_hyper_mega_menu[settings][css_js][js]" rows="20" class="form-control"><?php if(isset($module_hyper_mega_menu['settings']['css_js']['js'])){ echo $module_hyper_mega_menu['settings']['css_js']['js']; } ?></textarea>
        </div>
    </div>

</div>

<script type="text/javascript">
    $(document).ready(function () {
        $('#css_js_enable_css').bootstrapSwitch();
        $('#css_js_enable_js').bootstrapSwitch();
    });
</script>