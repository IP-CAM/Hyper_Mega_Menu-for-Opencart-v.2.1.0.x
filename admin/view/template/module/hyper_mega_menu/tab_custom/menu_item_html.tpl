<div class="form-group">

    <div class="col-sm-12 settings-row">
        <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title=""
                  data-original-title="Заголовок меню"><?php echo $tab_custom_categories_parent_text; ?></span>
        </label>
        <div class="col-sm-10">
            <select name="module_hyper_mega_menu[custom][html][parent_category_id]" class="form-control">
                <option value=""><?php echo $sub_tab_configuration_make_your_choice_text; ?></option>
                <?php foreach($custom_items as $custom_item){?>
                    <?php if($module_hyper_mega_menu['custom']['menu_item']['name'][$config_language_id] !== $custom_item['name']){?>
                        <?php if ($custom_item['id'] == $module_hyper_mega_menu['custom']['menu_item']['html']['parent_category_id']) { ?>
                            <option value="<?php echo $custom_item['id']; ?>" selected="selected"><?php echo $custom_item['name']; ?></option>
                        <?php } else { ?>
                            <option value="<?php echo $custom_item['id']; ?>"><?php echo $custom_item['name']; ?></option>
                        <?php } ?>
                    <?php } ?>
                <?php } ?>

            </select>
        </div>
    </div>

    <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title="" data-original-title="Статус отображения окна Выключено/Включено">
                <?php echo $sub_tab_status_text; ?>
            </span>
            </label>
            <div class="col-sm-10">
                <input id="menu_custom_html_status" type="checkbox"
                    <?php $status_checkbox = (isset($module_hyper_mega_menu['custom']['menu_item']['html']['status']) == 'on') ? 'checked ' : ''; echo $status_checkbox;?>
                       name="module_hyper_mega_menu[custom][html][status]"
                       data-size="small" data-on-color="success">
            </div>
    </div>

    <div class="col-sm-12 settings-row">
        <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title="" data-original-title="Статус отображения окна Выключено/Включено">
                <?php echo $menu_item_html_position_text; ?>
            </span>
        </label>
        <div class="col-sm-4">
            <input id="menu_custom_html_position" type="checkbox"
                   name="module_hyper_mega_menu[custom][html][position]"
                <?php $position_checkbox = (isset($module_hyper_mega_menu['custom']['menu_item']['html']['position']) == 'on') ? 'checked ' : ''; echo $position_checkbox;?>
                   data-on-color="success" data-on-text="LEFT" data-off-text="RIGHT">
        </div>
        <div class="col-sm-6">
        </div>
    </div>



    <div class="col-sm-12">
        <ul class="nav nav-tabs" id="language_custom_html">
            <?php foreach ($languages as $key=>$language) { ?>
                <?php if($key == $config_language){ ?><li class="active"><?php }else{?><li><?php }?>
                <a href="#language_custom_html<?php echo $language['language_id']; ?>" data-toggle="tab">
                    <img src="view/image/flags/<?php echo $language['image']; ?>"
                         title="<?php echo $language['name']; ?>"/>
                    <?php echo $language['name']; ?>
                </a>
                </li>
            <?php } ?>
        </ul>
        <div class="tab-content">
            <?php foreach ($languages as $key=>$language) { ?>
                <div class="tab-pane<?php if($key == $config_language){ ?> active<?php }else{?><?php }?>" id="language_custom_html<?php echo $language['language_id']; ?>">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            <?php echo $menu_item_html_html_text; ?>
                        </label>
                        <div class="col-sm-10">
                            <textarea
                                name="module_hyper_mega_menu[custom][html][html_text][<?php echo $language['language_id']; ?>]"
                                id="input-description<?php echo $language['language_id']; ?>"
                                class="form-control"><?php echo isset($module_hyper_mega_menu['custom']['menu_item']['html']['html_text'][$language['language_id']]) ? $module_hyper_mega_menu['custom']['menu_item']['html']['html_text'][$language['language_id']] : ''; ?>
                            </textarea>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</div>
<script type="text/javascript">
    $('#menu_custom_html_status').bootstrapSwitch();
    $('#menu_custom_html_position').bootstrapSwitch();
</script>
<script type="text/javascript"><!--
    $('#language_custom_html a:first').tab('show');
    //--></script>
<script type="text/javascript"><!--
    <?php foreach ($languages as $language) { ?>
    <?php if ($ckeditor) { ?>
    ckeditorInit('input-description<?php echo $language['language_id']; ?>', '<?php echo $token; ?>');
    <?php } else { ?>
    $('#input-description<?php echo $language['language_id']; ?>').summernote({
        height: 300,
        lang:'<?php echo $lang; ?>'
    });
    <?php } ?>
    <?php } ?>
    //--></script>