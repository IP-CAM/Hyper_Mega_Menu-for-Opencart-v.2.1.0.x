<?php echo $header; ?><?php echo $column_left; ?>
    <div id="content">
        <div class="page-header">
            <div class="container-fluid">
                <div class="pull-right">
                    <button type="submit" form="form-custom-item-menu" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary">
                        <i class="fa fa-save"></i>
                    </button>
                    <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default">
                        <i class="fa fa-reply"></i>
                    </a>
                </div>
                <h1><?php echo $heading_title; ?></h1>
                <ul class="breadcrumb">
                    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                    <?php } ?>
                </ul>
            </div>
        </div>
        <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_form; ?></h3>
        </div>
        <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-custom-item-menu">
            <div class="col-sm-12">
                <ul class="nav nav-tabs" id="language">
                    <?php foreach ($languages as $key=>$language) { ?>
                        <?php if($key == $config_language){ ?><li class="active"><?php }else{?><li><?php }?>
                        <a href="#language<?php echo $language['language_id']; ?>" data-toggle="tab">
                            <img src="view/image/flags/<?php echo $language['image']; ?>"
                                 title="<?php echo $language['name']; ?>"/>
                            <?php echo $language['name']; ?>
                        </a>
                        </li>
                    <?php } ?>
                </ul>
                <div class="tab-content">
                    <?php foreach ($languages as $key=>$language) { ?>
                        <div class="tab-pane<?php if($key == $config_language){ ?> active<?php }else{?><?php }?>" id="language<?php echo $language['language_id']; ?>">
                            <div class="col-sm-12 settings-row form-group required">
                                <label class="col-sm-2 control-label" for="sub-tab-custom-form-name<?php echo $language['language_id']; ?>">
                                    <span data-toggle="tooltip" title="" data-original-title="Статус отображения окна Выключено/Включено">
                                        <?php echo $sub_tab_custom_form_name_text; ?>
                                    </span>
                                </label>

                                <div class="col-sm-10">
                                    <input type="text" name="module_hyper_mega_menu[custom][menu_item][name][<?php echo $language['language_id']; ?>]" placeholder="<?php echo $sub_tab_custom_form_name_text; ?>"
                                           id="sub-tab-custom-form-name<?php echo $language['language_id']; ?>"
                                           value="<?php if(isset($module_hyper_mega_menu['custom']['menu_item']['name'][$language['language_id']])) echo $module_hyper_mega_menu['custom']['menu_item']['name'][$language['language_id']]; ?>"
                                           class="form-control configuration-settings-input"/>
                                    <?php if (isset($error_name[$language['language_id']])) { ?>
                                        <div class="text-danger"><?php echo $error_name[$language['language_id']]; ?></div>
                                    <?php } ?>
                                </div>
                                <span class="glyphicon form-control-feedback"></span>
                            </div>
                        </div>
                    <?php } ?>

                            <div class="col-sm-12 settings-row">
                                <label class="col-sm-2 control-label" for="custom_menu_item_form_as_title">
                                    <span data-toggle="tooltip" title="" data-original-title="Статус отображения окна Выключено/Включено">
                                        <?php echo $sub_tab_custom_form_as_title_text; ?>
                                    </span>
                                </label>
                                <div class="col-sm-10">
                                    <input id="custom_menu_item_form_as_title" type="checkbox" name="module_hyper_mega_menu[custom][menu_item][as_title]"
                                        <?php $as_title_checkbox = (isset($module_hyper_mega_menu['custom']['menu_item']['as_title']) && $module_hyper_mega_menu['custom']['menu_item']['as_title'] == 'on') ? 'checked' : ''; echo $as_title_checkbox;?>
                                           placeholder="<?php echo $sub_tab_custom_form_as_title_text; ?>"
                                           data-size="small" data-on-color="success">
                                </div>
                            </div>
<?php //print_r($module_hyper_mega_menu['custom']['menu_item']); die;?>
                            <div class="col-sm-12 settings-row">
                                <label class="col-sm-2 control-label" for="custom_menu_item_form_image">
                                    <span data-toggle="tooltip" title="" data-original-title="Статус отображения окна Выключено/Включено">
                                        <?php echo $sub_tab_custom_form_images_text; ?>
                                    </span>
                                </label>
                                <div class="col-sm-10">
                                    <input id="custom_menu_item_form_image" type="checkbox" name="module_hyper_mega_menu[custom][menu_item][load_image]"
                                        <?php $load_image_checkbox = (isset($module_hyper_mega_menu['custom']['menu_item']['load_image']) && $module_hyper_mega_menu['custom']['menu_item']['load_image'] == 'on') ? 'checked' : ''; echo $load_image_checkbox;?>
                                           placeholder="<?php echo $sub_tab_custom_form_images_text; ?>"
                                           data-size="small" data-on-color="success">
                                </div>
                            </div>

                            <div class="col-sm-12 settings-row">
                                    <label class="col-sm-2 control-label" for="custom_menu_item_form_load_image">
                                        <span data-toggle="tooltip" title="" data-original-title="Статус отображения окна Выключено/Включено">
                                            <?php echo $sub_tab_custom_form_load_image_text; ?>
                                        </span>
                                    </label>
                                    <div class="col-sm-10">
                                        <a href="" id="custom_menu_item_form_load_image" data-toggle="image" class="img-thumbnail">
                                            <img src="<?php echo $thumb; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" />
                                        </a>
                                        <input type="hidden" name="module_hyper_mega_menu[custom][menu_item][image]"
                                               value="<?php if(isset($module_hyper_mega_menu['custom']['menu_item']['image'])) echo $module_hyper_mega_menu['custom']['menu_item']['image'];  ?>"
                                               id="input-image" />
                                    </div>
                            </div>

                            <div class="col-sm-12 settings-row">
                                    <label class="col-sm-2 control-label" for="custom_menu_item_form_sort_order">
                                        <span data-toggle="tooltip" title="" data-original-title="Статус отображения окна Выключено/Включено">
                                            <?php echo $sub_tab_custom_form_sort_order_text; ?>
                                        </span>
                                    </label>
                                <div class="col-sm-10">
                                    <input type="text" name="module_hyper_mega_menu[custom][menu_item][sort_order]"
                                           value="<?php if(isset($module_hyper_mega_menu['custom']['menu_item']['sort_order'])) echo $module_hyper_mega_menu['custom']['menu_item']['sort_order']; ?>"
                                           placeholder="<?php echo $entry_sort_order; ?>"
                                           id="custom_menu_item_form_sort_order" class="form-control" />
                                </div>
                            </div>
                    <?php require_once(DIR_APPLICATION . 'view/template/module/hyper_mega_menu/tab_custom/custom_tab.tpl'); ?>
                </div>
            </div>
        </form>
        </div>
        </div>
    </div>
    <script type="text/javascript">
        $('#custom_menu_item_form_as_title').bootstrapSwitch();
        $('#custom_menu_item_form_image').bootstrapSwitch();
    </script>
<?php echo $footer; ?>