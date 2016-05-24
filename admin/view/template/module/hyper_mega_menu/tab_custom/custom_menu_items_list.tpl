<div id="content">
    <div class="page-header">
        <div class="container-fluid">
            <div class="pull-right">
                <a href="<?php echo $add; ?>" data-toggle="tooltip" title="<?php echo $button_add; ?>" class="btn btn-primary">
                    <i class="fa fa-plus"></i>
                </a>
                <button type="button" data-toggle="tooltip" title="<?php echo $button_delete; ?>" class="btn btn-danger" onclick="confirm('<?php echo $text_confirm; ?>') ? $('#form-hyper-mega-menu').submit() : false;"><i class="fa fa-trash-o"></i></button>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-list"></i> <?php echo $text_list; ?></h3>
            </div>
            <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                            <tbody>
                            <?php if ($custom_items) { ?>
                                <?php foreach ($custom_items as $custom_item) { ?>
                                    <tr>
                                        <td class="text-center" style="width: 1%">
                                                <input type="checkbox" name="module_hyper_mega_menu[custom][menu_item][remove_items_list][]" value="<?php echo $custom_item['id']; ?>" />
                                            <td class="left"><?php echo $custom_item['name']; ?></td>
                                        <td class="text-right"><?php echo $custom_item['sort_order']; ?></td>
                                        <td class="text-right"><a href="<?php echo $custom_item['edit']; ?>" data-toggle="tooltip" title="<?php echo $button_edit; ?>" class="btn btn-primary"><i class="fa fa-pencil"></i></a></td>
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
            </div>
        </div>
    </div>
</div>