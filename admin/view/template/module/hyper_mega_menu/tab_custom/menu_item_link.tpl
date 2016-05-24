<div class="form-group">

    <div class="col-sm-12 settings-row">
        <label class="col-sm-2 control-label">
            <span data-toggle="tooltip" title=""
                  data-original-title="Заголовок меню"><?php echo $tab_custom_categories_parent_text; ?></span>
        </label>
        <div class="col-sm-10">
            <select name="module_hyper_mega_menu[custom][link][parent_category_id]" class="form-control">
                <option value=""><?php echo $sub_tab_configuration_make_your_choice_text; ?></option>
                <?php foreach($custom_items as $custom_item){?>
                    <?php if($module_hyper_mega_menu['custom']['menu_item']['name'][$config_language_id] !== $custom_item['name']){?>
                        <?php if ($custom_item['id'] == $module_hyper_mega_menu['custom']['menu_item']['link']['parent_category_id']) { ?>
                            <option value="<?php echo $custom_item['id']; ?>" selected="selected"><?php echo $custom_item['name']; ?></option>
                        <?php } else { ?>
                            <option value="<?php echo $custom_item['id']; ?>"><?php echo $custom_item['name']; ?></option>
                        <?php } ?>
                    <?php } ?>
                <?php } ?>

            </select>
        </div>
    </div>

    <div class="col-sm-12">
        <ul class="nav nav-tabs" id="language_custom_link">
            <?php foreach ($languages as $key=>$language) { ?>
                <?php if($key == $config_language){ ?><li class="active"><?php }else{?><li><?php }?>
                <a href="#language_custom_link<?php echo $language['language_id']; ?>" data-toggle="tab">
                    <img src="view/image/flags/<?php echo $language['image']; ?>"
                         title="<?php echo $language['name']; ?>"/>
                    <?php echo $language['name']; ?>
                </a>
                </li>
            <?php } ?>
        </ul>

        <div class="tab-content">
            <?php foreach ($languages as $key=>$language) { ?>
                <div class="tab-pane<?php if($key == $config_language){ ?> active<?php }else{?><?php }?>" id="language_custom_link<?php echo $language['language_id']; ?>">
                    <div class="col-sm-12 settings-row">
                        <label class="col-sm-2 control-label">
                            <span data-toggle="tooltip" title="" data-original-title="Заголовок меню"><?php echo $sub_tab_custom_form_name_text; ?></span>
                        </label>
                        <div class="col-sm-10">
                            <input type="text" name="module_hyper_mega_menu[custom][link][title][<?php echo $language['language_id']; ?>]"
                                   value="<?php echo isset($module_hyper_mega_menu['custom']['menu_item']['link']['title'][$language['language_id']]) ? $module_hyper_mega_menu['custom']['menu_item']['link']['title'][$language['language_id']] : ''; ?>"
                                   class="form-control"/>
                        </div>
                    </div>

                    <div class="col-sm-12 settings-row">
                        <label class="col-sm-2 control-label">
                            <span data-toggle="tooltip" title="" data-original-title="Заголовок меню"><?php echo $menu_element_link_text; ?></span>
                        </label>
                        <div class="col-sm-10">

                            <input type="text" name="module_hyper_mega_menu[custom][link][link_text][<?php echo $language['language_id']; ?>]"
                                   value="<?php echo isset($module_hyper_mega_menu['custom']['menu_item']['link']['link_text'][$language['language_id']]) ? $module_hyper_mega_menu['custom']['menu_item']['link']['link_text'][$language['language_id']] : ''; ?>"
                                   class="form-control"/>

                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>




</div>
<script type="text/javascript"><!--
    $('#language_custom_link a:first').tab('show');
    //--></script>
