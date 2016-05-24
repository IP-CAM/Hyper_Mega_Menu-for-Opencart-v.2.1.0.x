<div class="md-modal md-effect-<?php echo isset($account_value['open_account_popup']) ? substr($account_value['open_account_popup'], 6) : '1' ?>"
     id="<?php echo isset($account_value['open_account_popup']) ? $account_value['open_account_popup'] : 'modal-1' ?>">
    <div class="md-content col-sm-12">

        <?php if(isset($account_value['html_side'][$config_language_id]) == 'on') { ?>

            <div class="col-sm-9">
                <!--HTML-->
                <?php if(isset($account_value['show_html'][$config_language_id]) == 'on'){?>
                    <?php if(!empty($current_customer)){ ?>
                        <!--HTML для пользователя-->
                        <?php echo html_entity_decode($account_value['user_html'][$config_language_id]); ?>
                        <!--HTML для пользователя-->
                    <?php } else { ?>
                        <!--HTML для гостя-->
                        <?php echo html_entity_decode($account_value['guest_html'][$config_language_id]); ?>
                        <!--HTML для гостя-->
                    <? } ?>
                <?php } ?>
                <!--HTML-->
            </div>
            <ul class="col-sm-3">
                <!--ИЗБРАННЫЕ ТОВАРЫ-->
                <?php if(isset($account_value['favorites_goods']) == 'on'){?>
                    <li>
                        <a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a>
                    </li>
                <?php } ?>
                <!--ИЗБРАННЫЕ ТОВАРЫ-->
                <!--ТОВАРЫ В СРАВНЕНИИ-->
                <?php if(isset($account_value['goods_wish']) == 'on'){?>
                    <li>
                        <a href="<?php echo $compare; ?>">Сравнение товаров <?php echo ' (' . $count_compare_products . ')';?></a>
                    </li>
                <?php } ?>
                <!--ТОВАРЫ В СРАВНЕНИИ-->
                <!--Корзина поккупок-->
                <?php if(isset($account_value['cart']) == 'on'){?>
                    <li>
                        <a href="<?php echo $shopping_cart; ?>">Корзина покупок</a>
                    </li>
                <?php } ?>
                <!--Корзина поккупок-->
                <!--Оформление заказа-->
                <?php if(isset($account_value['checkout']) == 'on'){?>
                    <li>
                        <a href="<?php echo $checkout; ?>">Оформление заказа</a>
                    </li>
                <?php } ?>
                <!--Оформление заказа-->
            </ul>

        <?php } else { ?>

            <ul class="col-sm-3">
                <!--ИЗБРАННЫЕ ТОВАРЫ-->
                <?php if(isset($account_value['favorites_goods']) == 'on'){?>
                    <li>
                        <a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a>
                    </li>
                <?php } ?>
                <!--ИЗБРАННЫЕ ТОВАРЫ-->
                <!--ТОВАРЫ В СРАВНЕНИИ-->
                <?php if(isset($account_value['goods_wish']) == 'on'){?>
                    <li>
                        <a href="<?php echo $compare; ?>">Сравнение товаров <?php echo ' (' . $count_compare_products . ')';?></a>
                    </li>
                <?php } ?>
                <!--ТОВАРЫ В СРАВНЕНИИ-->
                <!--Корзина поккупок-->
                <?php if(isset($account_value['cart']) == 'on'){?>
                    <li>
                        <a href="<?php echo $shopping_cart; ?>">Корзина покупок</a>
                    </li>
                <?php } ?>
                <!--Корзина поккупок-->
                <!--Оформление заказа-->
                <?php if(isset($account_value['checkout']) == 'on'){?>
                    <li>
                        <a href="<?php echo $checkout; ?>">Оформление заказа</a>
                    </li>
                <?php } ?>
                <!--Оформление заказа-->
            </ul>
            <div class="col-sm-9">
                <!--HTML-->
                <?php if(isset($account_value['show_html'][$config_language_id]) == 'on'){?>
                    <?php if(!empty($current_customer)){ ?>
                        <!--HTML для пользователя-->
                        <?php echo html_entity_decode($account_value['user_html'][$config_language_id]); ?>
                        <!--HTML для пользователя-->
                    <?php } else { ?>
                        <!--HTML для гостя-->
                        <?php echo html_entity_decode($account_value['guest_html'][$config_language_id]); ?>
                        <!--HTML для гостя-->
                    <? } ?>
                <?php } ?>
                <!--HTML-->
            </div>

        <?php } ?>

        <div class="col-sm-12">
            <button class="md-close">Close me!</button>
        </div>

    </div>
</div>

<li class="nav">
    <a href="#" class="md-trigger" data-modal="<?php echo isset($account_value['open_account_popup']) ? $account_value['open_account_popup'] : 'modal-1' ?>" >
        <i class="fa <?php echo (isset($account_value['signature_icon']) == 'on' && !empty($account_value['font_awesome'])) ? $account_value['font_awesome'] : '';?>"></i>
        <?php echo $account_value['account_title'][$config_language_id];?>
        <?php echo (isset($account_value['show_initials']) == 'on') ? $current_customer : '';?>
    </a>
</li>
<script>
    $(document).ajaxStop(function() {
        initModalWindow();
    });
</script>
