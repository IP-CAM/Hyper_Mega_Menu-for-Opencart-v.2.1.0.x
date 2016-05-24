<?php //echo '<pre>'; print_r($menu_value['configuration']['cart']); die;?>
<?php if(isset($menu_value['configuration']['cart'])){?>
    <?php $cart_value = $menu_value['configuration']['cart']; ?>
            <?php if($cart_value['open_cart'] == 'as_usual') { ?>

<!--СТАНДАРТНО-->
                <?php require_once(DIR_APPLICATION . 'view/theme/default/template/module/hyper_mega_menu/header_menu/cart/dropdown_menu.tpl'); ?>
<!--СТАНДАРТНО-->

            <?php } elseif($cart_value['open_cart'] == 'popup') { ?>

<!--МОДАЛЬНОЕ ОКНО-->
                <?php require_once(DIR_APPLICATION . 'view/theme/default/template/module/hyper_mega_menu/header_menu/cart/modal_window_menu.tpl'); ?>
<!--МОДАЛЬНОЕ ОКНО-->

            <?php } elseif(substr($cart_value['open_cart'], 0, 4) == 'move') { ?>

<!--ВЫЕЗЖАЮЩЕЕ МЕНЮ-->
                <?php require_once(DIR_APPLICATION . 'view/theme/default/template/module/hyper_mega_menu/header_menu/cart/sliiide_menu.tpl'); ?>
<!--ВЫЕЗЖАЮЩЕЕ МЕНЮ-->

            <?php } else { ?>

<!--КАК ССЫЛКА-->
                <?php require_once(DIR_APPLICATION . 'view/theme/default/template/module/hyper_mega_menu/header_menu/cart/as_link_menu.tpl'); ?>
<!--КАК ССЫЛКА-->

            <?php } ?>
<?php } ?>
