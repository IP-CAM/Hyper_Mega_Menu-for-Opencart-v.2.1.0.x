<div class="form-group">

    <div class="col-sm-12 settings-row">
        <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title=""
                  data-original-title="Заголовок меню"><?php echo $tab_custom_categories_parent_text; ?></span>
        </label>
        <div class="col-sm-10">
            <select name="module_hyper_mega_menu[custom][information][parent_category_id]" class="form-control">
                <option value=""><?php echo $sub_tab_configuration_make_your_choice_text; ?></option>
                <?php foreach($custom_items as $custom_item){?>
                    <?php if($module_hyper_mega_menu['custom']['menu_item']['name'][$config_language_id] !== $custom_item['name']){?>
                        <?php if ($custom_item['id'] == $module_hyper_mega_menu['custom']['menu_item']['information']['parent_category_id']) { ?>
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
        <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="Заголовок меню"><?php echo $tab_custom_information_text; ?></span></label>
        <div class="col-sm-10">
            <div class="well well-sm" style="min-height: 150px;max-height: 500px;overflow: auto;">
                <table class="table table-striped">
                    <?php foreach ($informations as $information) { ?>
                        <tr>
                            <td class="checkbox">
                                <label>
                                    <?php if (!empty($module_hyper_mega_menu['custom']['menu_item']['information']['information']) && in_array($information['information_id'], $module_hyper_mega_menu['custom']['menu_item']['information']['information'])) { ?>
                                        <input type="checkbox" name="module_hyper_mega_menu[custom][information][information][]" value="<?php echo $information['information_id']; ?>" checked="checked" />
                                        <?php echo $information['name']; ?>
                                    <?php } else { ?>
                                        <input type="checkbox" name="module_hyper_mega_menu[custom][information][information][]" value="<?php echo $information['information_id']; ?>" />
                                        <?php echo $information['name']; ?>
                                    <?php } ?>
                                </label>
                            </td>
                        </tr>
                    <?php } ?>
                </table>
            </div>
            <a onclick="$(this).parent().find(':checkbox').prop('checked', true);"><?php echo $text_select_all; ?></a> / <a onclick="$(this).parent().find(':checkbox').prop('checked', false);"><?php echo $text_unselect_all; ?></a></div>
    </div>
</div>
