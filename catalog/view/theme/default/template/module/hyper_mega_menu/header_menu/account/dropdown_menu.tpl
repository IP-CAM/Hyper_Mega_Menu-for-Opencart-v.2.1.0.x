<li class="dropdown fhmm-fw">
    <a href="#" data-toggle="dropdown" data-close-others="true"
        <?php if(isset($menu_value['settings']['main']['on_hover']) == 'on'){?> data-hover="dropdown"
            <?php if(isset($menu_value['settings']['main']['delay']) == 'on'){?> data-delay="500" data-hover-delay="500" <?php } ?>
        <?php } ?>
       class="dropdown-toggle main-point">
        <i class="fa <?php echo (isset($account_value['signature_icon']) == 'on' && !empty($account_value['font_awesome'])) ? $account_value['font_awesome'] : '';?>"></i>
        <?php echo $account_value['account_title'][$config_language_id];?>
        <b class="caret"></b>
    </a>
    <ul class="dropdown-menu fullwidth container-dropdown-elements">
        <li class="fhmm-content withdesc">
            <div class="row">

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
                    <div class="col-sm-3">
                        <ul>
                            <!--ИЗБРАННЫЕ ТОВАРЫ-->
                            <?php if(isset($account_value['favorites_goods']) == 'on'){?>
                                <li>
                                    <a class="dropdown-point" href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a>
                                </li>
                            <?php } ?>
                            <!--ИЗБРАННЫЕ ТОВАРЫ-->
                            <!--ТОВАРЫ В СРАВНЕНИИ-->
                            <?php if(isset($account_value['goods_wish']) == 'on'){?>
                                <li>
                                    <a class="dropdown-point" href="<?php echo $compare; ?>">Сравнение товаров <?php echo ' (' . $count_compare_products . ')';?></a>
                                </li>
                            <?php } ?>
                            <!--ТОВАРЫ В СРАВНЕНИИ-->
                            <!--Корзина поккупок-->
                            <?php if(isset($account_value['cart']) == 'on'){?>
                                <li>
                                    <a class="dropdown-point" href="<?php echo $shopping_cart; ?>">Корзина покупок</a>
                                </li>
                            <?php } ?>
                            <!--Корзина поккупок-->
                            <!--Оформление заказа-->
                            <?php if(isset($account_value['checkout']) == 'on'){?>
                                <li>
                                    <a class="dropdown-point" href="<?php echo $checkout; ?>">Оформление заказа</a>
                                </li>
                            <?php } ?>
                            <!--Оформление заказа-->
                        </ul>
                    </div>

                <?php } else { ?>

                    <div class="col-sm-3">
                        <ul>
                            <!--ИЗБРАННЫЕ ТОВАРЫ-->
                            <?php if(isset($account_value['favorites_goods']) == 'on'){?>
                                <li>
                                    <a class="dropdown-point" href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a>
                                </li>
                            <?php } ?>
                            <!--ИЗБРАННЫЕ ТОВАРЫ-->
                            <!--ТОВАРЫ В СРАВНЕНИИ-->
                            <?php if(isset($account_value['goods_wish']) == 'on'){?>
                                <li>
                                    <a class="dropdown-point" href="<?php echo $compare; ?>">Сравнение товаров <?php echo ' (' . $count_compare_products . ')';?></a>
                                </li>
                            <?php } ?>
                            <!--ТОВАРЫ В СРАВНЕНИИ-->
                            <!--Корзина поккупок-->
                            <?php if(isset($account_value['cart']) == 'on'){?>
                                <li>
                                    <a class="dropdown-point" href="<?php echo $shopping_cart; ?>">Корзина покупок</a>
                                </li>
                            <?php } ?>
                            <!--Корзина поккупок-->
                            <!--Оформление заказа-->
                            <?php if(isset($account_value['checkout']) == 'on'){?>
                                <li>
                                    <a class="dropdown-point" href="<?php echo $checkout; ?>">Оформление заказа</a>
                                </li>
                            <?php } ?>
                            <!--Оформление заказа-->
                        </ul>
                    </div>
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

            </div>
        </li>
    </ul>
</li>