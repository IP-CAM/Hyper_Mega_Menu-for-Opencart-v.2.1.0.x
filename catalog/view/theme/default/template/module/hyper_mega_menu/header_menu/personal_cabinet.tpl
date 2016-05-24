<?php if(isset($menu_value['configuration']['account'])){?>
    <?php foreach($menu_value['configuration']['account'] as $account_key => $account_value){ ?>

    <?php if($account_value['open_account'] == 'popup'){ ?>

<!--ПОКАЗЫВАТЬ ГОСТЮ-->
            <?php if(!empty($current_customer) || isset($account_value['favorites_goods_guest_show']) == 'on'){?>
<!--ПОКАЗЫВАТЬ ГОСТЮ-->

                <!--МОДАЛЬНОЕ ОКНО-->

                <?php require_once(DIR_APPLICATION . 'view/theme/default/template/module/hyper_mega_menu/header_menu/account/modal_window_menu.tpl'); ?>

                <!--МОДАЛЬНОЕ ОКНО-->

            <?php } ?>

       <?php } elseif(substr($account_value['open_account'], 0, 4) == 'move') { ?>

<!--ПОКАЗЫВАТЬ ГОСТЮ-->
            <?php if(!empty($current_customer) || isset($account_value['favorites_goods_guest_show']) == 'on'){?>
<!--ПОКАЗЫВАТЬ ГОСТЮ-->

                <!--ВЫЕЗЖАЮЩЕЕ МЕНЮ-->
                <?php require_once(DIR_APPLICATION . 'view/theme/default/template/module/hyper_mega_menu/header_menu/account/sliiide_menu.tpl'); ?>
                <!--ВЫЕЗЖАЮЩЕЕ МЕНЮ-->

            <?php } ?>

        <?php } elseif($account_value['open_account'] == 'dropdown') { ?>
<!--ПОКАЗЫВАТЬ ГОСТЮ-->
            <?php if(!empty($current_customer) || isset($account_value['favorites_goods_guest_show']) == 'on'){?>
<!--ПОКАЗЫВАТЬ ГОСТЮ-->

            <!--ВЫПАДАЮЩИЙ СПИСОК-->

                <?php require_once(DIR_APPLICATION . 'view/theme/default/template/module/hyper_mega_menu/header_menu/account/dropdown_menu.tpl'); ?>

            <!--ВЫПАДАЮЩИЙ СПИСОК-->

            <?php } ?>

        <?php } ?>
    <?php } ?>
<?php } ?>
