<?php echo $header; ?><?php echo $column_left; ?>
    <div id="content">
        <div class="page-header">
            <div class="container-fluid">
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
                    <h2 class="panel-title"><i class="fa fa-list"></i> <?php echo $text_list; ?></h2>
                    <div class="text-right" style="position: absolute;top: 10px;right: 20px;">
                        <?php if($action_stay != false){?>
                            <button type="button" onclick="SaS();" form="form-hyper-mega-menu" data-toggle="tooltip" class="btn btn-primary" title="<?php echo $button_apply; ?>">
                                <i class="fa fa-repeat"></i>&nbsp;<?php echo $button_apply; ?>
                            </button>
                        <?php } ?>
                        <button type="submit" form="form-hyper-mega-menu" data-toggle="tooltip" class="btn btn-success save-changes" title="<?php echo $button_save; ?>">
                            <i class="fa fa-check"></i>&nbsp;<?php echo $button_save; ?>
                        </button>
                    </div>
                </div>
                <div class="tab-navigation">
                    <div class="panel-body">

                            <div class="tab-content">
                                <div class="tab-pane active" id="tab-general">
                                    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-hyper-mega-menu" class="form-horizontal">
                                        <input type="hidden" name="name" value="hyper_mega_menu" />
                                        <?php if(isset($editMenuItem) == true){?>
                                            <div>
                                                <?php require_once(DIR_APPLICATION.'view/template/module/hyper_mega_menu/main_tab.tpl'); ?>
                                            </div>
                                        <?php }else{ ?>
                                            <div>
                                                <?php require_once(DIR_APPLICATION.'view/template/module/hyper_mega_menu/main_tab_create_item.tpl'); ?>
                                            </div>
                                        <?php } ?>
                                    </form>
                                </div>
<!--                                <div class="tab-pane" id="tab-help">-->
<!--                                </div>-->
                            </div>
<!--                        </div>-->

                    </div>
                </div>
            </div>
        </div>
    </div>
<?php echo $footer; ?>
<script type="text/javascript"><!--
    function SaS(event) {
        $('#form-hyper-mega-menu').attr('action', '<?php echo (htmlspecialchars_decode($action_stay)); ?>');
        $('#form-hyper-mega-menu').submit();
    };
    //--></script>