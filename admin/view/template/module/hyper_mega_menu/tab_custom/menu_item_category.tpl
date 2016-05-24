<div class="form-group">
    <div class="col-sm-12 settings-row">
        <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title=""
                  data-original-title="Заголовок меню"><?php echo $tab_custom_categories_parent_text; ?></span>
        </label>
        <div class="col-sm-10">
            <select name="module_hyper_mega_menu[custom][categories][parent_category_id]" class="form-control">
                <option value=""><?php echo $sub_tab_configuration_make_your_choice_text; ?></option>
                    <?php foreach($custom_items as $custom_item){?>
                        <?php if($module_hyper_mega_menu['custom']['menu_item']['name'][$config_language_id] !== $custom_item['name']){?>
                            <?php if ($custom_item['id'] == $module_hyper_mega_menu['custom']['menu_item']['categories']['parent_category_id']) { ?>
                                    <option value="<?php if(isset($custom_item['id'])){ echo $custom_item['id']; } ?>" selected="selected"><?php echo $custom_item['name']; ?></option>
                            <?php } else { ?>
                                    <option value="<?php if(isset($custom_item['id'])){ echo $custom_item['id']; } ?>"><?php echo $custom_item['name']; ?></option>
                            <?php } ?>
                        <?php } ?>
                <?php } ?>

            </select>
        </div>
    </div>
    <div class="col-sm-12 settings-row">
        <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title="" data-original-title="Статус отображения окна Выключено/Включено">
                <?php echo $tab_custom_show_subcategories_text; ?>
            </span>
        </label>
        <div class="col-sm-10">
            <input id="menu_custom_categories_show_subcategories" type="checkbox"
                <?php $show_subcategories_checkbox = (isset($module_hyper_mega_menu['custom']['menu_item']['categories']['show_subcategories']) == 'on') ? 'checked ' : ''; echo $show_subcategories_checkbox;?>
                   name="module_hyper_mega_menu[custom][categories][show_subcategories]"
                   data-size="small" data-on-color="success">
        </div>
    </div>
    <div class="col-sm-12 settings-row">
        <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title="" data-original-title="Заголовок меню"><?php echo $tab_custom_categories_subcategories_levels_text; ?></span>
        </label>
        <div class="col-sm-10">
            <select name="module_hyper_mega_menu[custom][categories][subcategories_levels]" class="form-control">
                <option value="2" <?php if(isset($module_hyper_mega_menu['custom']['menu_item']['categories']['subcategories_levels']) && $module_hyper_mega_menu['custom']['menu_item']['categories']['subcategories_levels'] == '2'){ echo 'selected="selected"'; }?> >2</option>
                <option value="3" <?php if(isset($module_hyper_mega_menu['custom']['menu_item']['categories']['subcategories_levels']) && $module_hyper_mega_menu['custom']['menu_item']['categories']['subcategories_levels'] == '3'){ echo 'selected="selected"'; }?>>3</option>
                <option value="4" <?php if(isset($module_hyper_mega_menu['custom']['menu_item']['categories']['subcategories_levels']) && $module_hyper_mega_menu['custom']['menu_item']['categories']['subcategories_levels'] == '4'){ echo 'selected="selected"'; }?>>4</option>
            </select>
        </div>
    </div>
    <div class="col-sm-12 settings-row">
            <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="Заголовок меню"><?php echo $sub_tab_configuration_search_category_text; ?></span></label>
            <div class="col-sm-10">
                <div class="well well-sm" style="min-height: 150px;max-height: 500px;overflow: auto;">
                    <table class="table table-striped">
                        <?php foreach ($categories as $category) { ?>
                            <tr>
                                <td class="checkbox">
                                    <label>
                                        <?php if (!empty($module_hyper_mega_menu['custom']['menu_item']['categories']['categories']) && in_array($category['category_id'], $module_hyper_mega_menu['custom']['menu_item']['categories']['categories'])) { ?>
                                            <input type="checkbox" name="module_hyper_mega_menu[custom][categories][categories][]" value="<?php echo $category['category_id']; ?>" checked="checked" />
                                            <?php echo $category['name']; ?>
                                        <?php } else { ?>
                                            <input type="checkbox" name="module_hyper_mega_menu[custom][categories][categories][]" value="<?php echo $category['category_id']; ?>" />
                                            <?php echo $category['name']; ?>
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

<script type="text/javascript">
    $('#menu_custom_categories_show_subcategories').bootstrapSwitch();
</script>