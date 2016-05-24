<div class="col-sm-12">
    <div class="col-sm-2">
        <div class="vtabs">
            <?php $module_row = 1; ?>
            <div class="col-sm-8 btn sub_tab_configuration_phones_list"><a  href="#tab-module-<?php echo $module_row; ?>"
                                                                            id="module-<?php echo $module_row; ?>" class="sidebar-item-name">Меню custom</a>
                <i class="fa fa-minus-circle fa-lg" onclick="$('.vtabs a:first').trigger('click'); $('#module-<?php echo $module_row; ?>').remove(); $('#tab-module-<?php echo $module_row; ?>').remove();
                    return false;"></i>
            </div>
            <?php $module_row++; ?>
            <div class="col-sm-8 btn sub_tab_configuration_phones_list"><a  href="#tab-module-<?php echo $module_row; ?>"
                                                                            id="module-<?php echo $module_row; ?>" class="sidebar-item-name">Меню custom</a>
                <i class="fa fa-minus-circle fa-lg" onclick="$('.vtabs a:first').trigger('click'); $('#module-<?php echo $module_row; ?>').remove(); $('#tab-module-<?php echo $module_row; ?>').remove();
                    return false;"></i>
            </div>

            <?php $module_row++; ?>
            <div class="col-sm-8 btn btn-success sub_tab_configuration_add_phone_to_list" onclick="addModule();">
                Меню custom&nbsp;<i class="fa fa-plus-circle fa-lg"></i>
            </div>
        </div>
    </div>

    <div class="col-sm-10 sub_tab_configuration_phones_settings">
        <div class="col-sm-12 tab-pane active" id="tab-general">
            <ul class="nav nav-tabs" id="language">
                <?php foreach ($languages as $language) { ?>
                    <li><a href="#language<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                <?php } ?>
            </ul>
            <div class="tab-content">
                <!--                --><?php //foreach ($languages as $language) { ?>
                <!--                    <div class="tab-pane" id="language--><?php //echo $language['language_id']; ?><!--">-->
                <div class="col-sm-12 sub_tab_configuration_custom_phones">
                    <label class="col-sm-2 control-label" for="input-title<?php echo $language['language_id']; ?>">
                                    <span data-toggle="tooltip" title="" data-original-title="Статус отображения окна Выключено/Включено">
                                        <?php echo $sub_tab_configuration_contact_type_text; ?>
                                    </span>
                    </label>
                    <div class="col-sm-10">
                        <select name="module_hyper_mega_menu[configuration][phone][<?php echo $language['language_id']; ?>][type_contact]" class="form-control">
                            <option value="" selected="selected"><?php echo $sub_tab_configuration_make_your_choice_text;?></option>
                            <option value="phone_operator"><?php echo $sub_tab_configuration_phone_operator_text; ?></option>
                            <option value="icon"><?php echo $sub_tab_configuration_icon_text; ?></option>
                            <option value="title"><?php echo $sub_tab_configuration_title_text; ?></option>
                            <option value="delimiter"><?php echo $sub_tab_configuration_delimiter_text; ?></option>
                        </select>
                    </div>
                </div>
                <div class="col-sm-12 sub_tab_configuration_custom_phones">
                    <label class="col-sm-2 control-label" for="input-title<?php echo $language['language_id']; ?>">
                                    <span data-toggle="tooltip" title="" data-original-title="Статус отображения окна Выключено/Включено">
                                        <?php echo $sub_tab_configuration_phone_operator_text; ?>
                                    </span>
                    </label>
                    <div class="col-sm-10">
                        <select name="module_hyper_mega_menu[configuration][phone][<?php echo $language['language_id']; ?>][phone_operator]" class="form-control">
                            <option value="" selected="selected"><?php echo $sub_tab_configuration_make_your_choice_text;?></option>
                            <option value="phone_operator"><?php echo $sub_tab_configuration_phone_operator_text; ?></option>
                        </select>
                    </div>
                </div>

                <!--                    </div>-->
                <!--                --><?php //} ?>
                <div class="col-sm-12 sub_tab_configuration_custom_phones">
                    <label class="col-sm-2 control-label" for="input-title<?php echo $language['language_id']; ?>">
                                    <span data-toggle="tooltip" title="" data-original-title="Статус отображения окна Выключено/Включено">
                                        <?php echo $sub_tab_configuration_icon_text; ?>
                                    </span>
                    </label>
                    <div class="col-sm-10">
                        <a href="" id="thumb-image3" data-toggle="image" class="img-thumbnail">
                            <img src="<?php echo $module_hyper_mega_menu['configuration']['phone']['thumb']; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>"/>
                        </a>
                        <input type="hidden" name="module_hyper_mega_menu[configuration][phone][image]" value="<?php echo $module_hyper_mega_menu['configuration']['phone']['image']; ?>" id="input-image3"/>

                    </div>
                </div>
                <?php foreach ($languages as $language) { ?>
                    <div class="tab-pane" id="language<?php echo $language['language_id']; ?>">
                        <div class="col-sm-12 sub_tab_configuration_custom_phones">
                            <label class="col-sm-2 control-label" for="input-title<?php echo $language['language_id']; ?>">
                                    <span data-toggle="tooltip" title="" data-original-title="Статус отображения окна Выключено/Включено">
                                        <?php echo $sub_tab_configuration_title_text; ?>
                                    </span>
                            </label>
                            <div class="col-sm-10">
                                <input id="sub_tab_temporary_delay" type="text" name="module_hyper_mega_menu[configuration][phone][<?php echo $language['language_id']; ?>][title]" value="<?php if(isset($module_hyper_mega_menu['configuration']['phone'][$language['language_id']]['title'])){ echo $module_hyper_mega_menu['configuration']['phone'][$language['language_id']]['title']; } ?>" class="form-control">
                            </div>
                        </div>
                        <div class="col-sm-12 sub_tab_configuration_custom_phones">
                            <label class="col-sm-2 control-label" for="input-title<?php echo $language['language_id']; ?>">
                                    <span data-toggle="tooltip" title="" data-original-title="Статус отображения окна Выключено/Включено">
                                        <?php echo $sub_tab_configuration_phone_link_text; ?>
                                    </span>
                            </label>
                            <div class="col-sm-10">
                                <input id="sub_tab_temporary_delay" type="text" name="module_hyper_mega_menu[configuration][phone][<?php echo $language['language_id']; ?>][link]" value="<?php if(isset($module_hyper_mega_menu['configuration']['phone'][$language['language_id']]['link'])){ echo $module_hyper_mega_menu['configuration']['phone'][$language['language_id']]['link']; } ?>" class="form-control">
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript"><!--
    $('#language a:first').tab('show');
    //--></script>