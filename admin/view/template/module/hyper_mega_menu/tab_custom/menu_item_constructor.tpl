<div class="form-group">
    <div class="col-sm-12 settings-row">
        <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title=""
                  data-original-title="Заголовок меню"><?php echo $tab_custom_categories_parent_text; ?>
            </span>
        </label>
        <div class="col-sm-10">
            <select name="module_hyper_mega_menu[custom][constructor][parent_category_id]" class="form-control">
                <option value=""><?php echo $sub_tab_configuration_make_your_choice_text; ?></option>
                <?php foreach($custom_items as $custom_item){?>
                    <?php if($module_hyper_mega_menu['custom']['menu_item']['name'][$config_language_id] !== $custom_item['name']){?>
                        <?php if ($custom_item['id'] == $module_hyper_mega_menu['custom']['menu_item']['constructor']['parent_category_id']) { ?>
                            <option value="<?php echo $custom_item['id']; ?>" selected="selected"><?php echo $custom_item['name']; ?></option>
                        <?php } else { ?>
                            <option value="<?php echo $custom_item['id']; ?>"><?php echo $custom_item['name']; ?></option>
                        <?php } ?>
                    <?php } ?>
                <?php } ?>

            </select>
        </div>
    </div>
</div>
