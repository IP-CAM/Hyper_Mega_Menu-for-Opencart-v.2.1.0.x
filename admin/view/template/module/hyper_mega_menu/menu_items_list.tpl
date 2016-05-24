<?php echo $header; ?><?php echo $column_left; ?>
    <div id="content">
        <div class="page-header">
            <div class="container-fluid">
                <div class="pull-right">
                    <button type="button" data-toggle="tooltip" title="<?php echo $about_module_text; ?>" class="btn"><?php echo $about_module_text; ?></button>
                </div>
                <h1><?php echo $heading_title; ?></h1>
                <ul class="breadcrumb">
                    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                    <?php } ?>
                </ul>
            </div>
        </div>
        <div class="container-fluid">
            <?php if ($error_warning) { ?>
                <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                </div>
            <?php } ?>
            <?php if ($success) { ?>
                <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                </div>
            <?php } ?>
            <div class="panel panel-default">
                <div class="panel-heading menu-items-list-panel-heading">
                    <h2 class="panel-title"><i class="fa fa-list"></i> <?php echo $text_menu_items_list; ?></h2>
                    <div class="text-right" style="position: absolute;top: 10px;right: 20px;">
                        <a href="<?php echo $add; ?>" data-toggle="tooltip" title="<?php echo $button_add; ?>" class="btn btn-primary">
                            <i class="fa fa-plus"></i>
                        </a>

                        <button type="button" data-toggle="tooltip" title="<?php echo $faq_text; ?>" class="btn"><?php echo $faq_text; ?></button>
                    </div>
                </div>
                <div class="panel-body">





                    <form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form-hyper-mega-menu-items-list">
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover">
                                <thead>
                                <tr>
<!--                                    <td style="width: 1px;" class="text-center"><input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);" /></td>-->
<!--                                    <td class="text-left">-->
<!--                                        --><?php //echo $column_name; ?>
<!--                                    </td>-->

                                    <td class="text-left"><?php if ($sort == 'name') { ?>
                                            <a href="<?php echo $sort_name; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_name; ?></a>
                                        <?php } else { ?>
                                            <a href="<?php echo $sort_name; ?>"><?php echo $column_name; ?></a>
                                        <?php } ?>
                                    </td>

                                    <td class="text-left"><?php if ($sort == 'type') { ?>
                                            <a href="<?php echo $sort_type; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_type; ?></a>
                                        <?php } else { ?>
                                            <a href="<?php echo $sort_type; ?>"><?php echo $column_type; ?></a>
                                        <?php } ?>
                                    </td>

<!--                                    <td class="text-left">-->
<!--                                        --><?php //echo $column_type; ?>
<!--                                    </td>-->
<!--                                    <td class="text-right">--><?php //echo $column_action; ?><!--</td>-->


                                    <td class="text-right"><?php echo $column_action; ?></td>
                                </tr>
                                </thead>
                                <tbody>
                                <?php if ($menu_items) { ?>
                                    <?php foreach ($menu_items as $menu_item) { ?>
                                        <tr>
<!--                                            <td class="text-center" style="width: 1%">-->
<!--                                                <input type="checkbox" name="module_hyper_mega_menu[menu_item][remove_items_list][]" value="--><?php //echo $menu_item['id']; ?><!--" />-->
<!--                                            </td>-->
                                            <td class="left"><?php echo $menu_item['main_menu_name']; ?></td>
                                            <td class="left">
                                                <?php if($menu_item['menu_position'] == 'fixed_menu') echo 'Фиксированное меню';?>
                                                <?php if($menu_item['menu_position'] == 'main_menu') echo 'Главное меню';?>
                                                <?php if($menu_item['menu_position'] == 'sidebar_menu') echo 'Боковое меню';?>
                                            </td>
<!--                                            --><?php //if ($category['href']) { ?>
<!--                                                <td class="left">--><?php //echo $menu_item['indent']; ?><!--<a href="--><?php //echo $category['href']; ?><!--">--><?php //echo $category['name']; ?><!--</a></td>-->
<!--                                            --><?php //} else { ?>
<!--                                                <td class="left">--><?php //echo $menu_item['indent']; ?><!----><?php //echo $category['name']; ?><!--</td>-->
<!--                                            --><?php //} ?>

<!--                                            <td class="text-right"><a href="--><?php //echo $menu_item['edit']; ?><!--" data-toggle="tooltip" title="--><?php //echo $button_edit; ?><!--" class="btn btn-primary"><i class="fa fa-pencil"></i></a></td>-->


                                            <td class="text-right">
                                                <a href="<?php echo $menu_item['copy']; ?>" data-toggle="tooltip" title="<?php echo $button_copy; ?>" class="btn btn-default"><i class="fa fa-copy"></i></a>
                                                <a href="<?php echo $menu_item['edit']; ?>" data-toggle="tooltip" title="<?php echo $button_edit; ?>" class="btn btn-primary"><i class="fa fa-pencil"></i></a>
                                                <a href="<?php echo $menu_item['delete']; ?>" data-toggle="tooltip" title="<?php echo $button_delete; ?>" class="btn btn-danger" onclick="confirm('<?php echo $text_confirm; ?>') ? $('#form-hyper-mega-menu-items-list').submit() : false;"><i class="fa fa-trash-o"></i></a>
                                            </td>
                                        </tr>
                                    <?php } ?>
                                <?php } else { ?>
                                    <tr>
                                        <td class="text-center" colspan="4"><?php echo $text_no_results; ?></td>
                                    </tr>
                                <?php } ?>
                                </tbody>
                            </table>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

<?php echo $footer; ?>