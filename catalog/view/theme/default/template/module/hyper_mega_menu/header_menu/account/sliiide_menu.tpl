<!--ВЫЕЗЖАЮЩЕЕ МЕНЮ-->
<?php $account_move_contents[$account_key] = $account_value; ?>
<li id="nav-icon-account<?php echo $account_key;?>" class="nav">
    <a href="#">
        <i class="fa <?php echo (isset($account_value['signature_icon']) == 'on' && !empty($account_value['font_awesome'])) ? $account_value['font_awesome'] : '';?>"></i>
        <?php echo $account_value['account_title'][$config_language_id];?>
        <?php echo $current_customer;?>
    </a>
</li>
<!--ВЫЕЗЖАЮЩЕЕ МЕНЮ-->
<?php if(isset($account_move_contents)){ ?>
    <?php foreach($account_move_contents as $account_move_key => $account_move_value){?>
            <?php $move_side = substr($account_move_value['open_account'], 5);?>
        <!--ВЫЕЗЖАЮЩЕЕ МЕНЮ-->

        <div class="sliding-menu flex-center-wrapper flex-column <?php echo $move_side; ?>-menu-account">
            <ul>
<!--ИЗБРАННЫЕ ТОВАРЫ-->
                <?php if(isset($account_move_value['favorites_goods']) == 'on'){?>
                    <li>
                        <a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a>
                    </li>
                <?php } ?>
<!--ИЗБРАННЫЕ ТОВАРЫ-->
<!--ТОВАРЫ В СРАВНЕНИИ-->
                <?php if(isset($account_move_value['goods_wish']) == 'on'){?>
                    <li>
                        <a href="<?php echo $compare; ?>">Сравнение товаров <?php echo ' (' . $count_compare_products . ')';?></a>
                    </li>
                <?php } ?>
<!--ТОВАРЫ В СРАВНЕНИИ-->
<!--Корзина поккупок-->
                <?php if(isset($account_move_value['cart']) == 'on'){?>
                    <li>
                        <a href="<?php echo $shopping_cart; ?>">Корзина покупок</a>
                    </li>
                <?php } ?>
<!--Корзина поккупок-->
<!--Оформление заказа-->
                <?php if(isset($account_move_value['checkout']) == 'on'){?>
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

            <span class="sliiider-exit exit left-exit">×</span>
        </div>

        <!--ВЫЕЗЖАЮЩЕЕ МЕНЮ-->



        <script type="text/javascript">

            var menu = $('.<?php echo $move_side; ?>-menu-account').sliiide({place: '<?php echo $move_side; ?>', exit_selector: ".sliiider-exit", animation_duration: "0.5s", animation_curve: "cubic-bezier(0.54, 0.01, 0.57, 1.03)", toggle: '#nav-icon-account<?php echo $account_move_key;?>', no_scroll: true, body_slide: false});



        </script>
    <?php } ?>
<?php } ?>
<style type="text/css">
    .top-menu,
    .bottom{
        visibility: hidden; position: fixed; transition: -webkit-transform 0.5s cubic-bezier(0.54, 0.01, 0.57, 1.03); transform: translateX(0px); z-index: 10000;
    }
    .top-menu .exit,
    .bottom-menu .exit{
        top: 20px;
        right: 70px;
    }
    .left-menu,
    .right-menu{
        transform: translateX(0px); visibility: hidden; position: fixed; transition: -webkit-transform 0.5s cubic-bezier(0.54, 0.01, 0.57, 1.03); z-index: 10000;
    }
    .right-menu .exit,
    .left-menu .exit{
        top: 20px;
        right: 20px;
    }
</style>