<?php if(!isset($cartAjaxSuccess)){?>
<li class="dropdown fhmm-fw cart-info-ajax-load">
<?php } ?>
    <a href="#" data-toggle="dropdown" data-close-others="true"
        <?php if(isset($menu_value['settings']['main']['on_hover']) == 'on'){?> data-hover="dropdown"
            <?php if(isset($menu_value['settings']['main']['delay']) == 'on'){?> data-delay="500" data-hover-delay="500" <?php } ?>
        <?php } ?>
       class="dropdown-toggle main-point">
        <?php if(count($menu_cart['products']) > 0){ ?>
            <i class="fa <?php echo (isset($cart_value['signature_icon']) == 'on' && !empty($cart_value['font_awesome'])) ? $cart_value['font_awesome'] : '';?>"></i>
            <?php if(isset($cart_value['compaq']) == 'on'){?>
                <?php if(isset($cart_value['show_price']) == 'on'){ ?>
                    <?php echo $menu_cart['text_items_cart_compaq']; ?>
                    <?php echo $menu_cart['text_items_cart_total']; ?>
                <?php } ?>
            <?php } else { ?>
                <?php echo $menu_cart['text_items']; ?>
            <?php } ?>
        <?php } else { ?>
            <i class="fa <?php echo (isset($cart_value['signature_icon_cart_empty'][$config_language_id]) == 'on' && !empty($cart_value['font_awesome_cart_empty'][$config_language_id])) ? $cart_value['font_awesome_cart_empty'][$config_language_id] : '';?>"></i>
            <?php echo $cart_value['signature'][$config_language_id];?>
        <?php } ?>
        <b class="caret"></b>
    </a>
         <ul class="dropdown-menu fullwidth container-dropdown-elements-cart">
            <?php if ($menu_cart['products'] || $menu_cart['vouchers']) { ?>
                <li>
                    <table class="table table-striped">
                        <?php foreach ($menu_cart['products'] as $product) { ?>
                            <tr>
                                <?php if(isset($cart_value['sku']) == 'on'){ ?>
                                    <td class="text-left"><?php echo $product['sku']; ?></td>
                                <?php } ?>
                                <td class="text-center"><?php if ($product['thumb']) { ?>
                                        <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
                                    <?php } ?></td>
                                <td class="text-left"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                                    <?php if ($product['option']) { ?>
                                        <?php foreach ($product['option'] as $option) { ?>
                                            <br />
                                            - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small>
                                        <?php } ?>
                                    <?php } ?>
                                    <?php if ($product['recurring']) { ?>
                                        <br />
                                        - <small><?php echo $text_recurring; ?> <?php echo $product['recurring']; ?></small>
                                    <?php } ?></td>
                                <?php if(isset($cart_value['model']) == 'on'){ ?>
                                    <td class="text-left"><?php echo $product['model']; ?></td>
                                <?php } ?>
                                <?php if(isset($cart_value['manufacturer']) == 'on'){ ?>
                                    <td class="text-left"><?php echo $product['manufacturer']; ?></td>
                                <?php } ?>
                                <td class="text-right">x <?php echo $product['quantity']; ?></td>
                                <td class="text-right"><?php echo $product['total']; ?></td>
                                <td class="text-center"><button type="button" onclick="cart.remove('<?php echo $product['cart_id']; ?>');" title="<?php echo $menu_cart['button_remove']; ?>" class="btn btn-danger btn-xs"><i class="fa fa-times"></i></button></td>
                            </tr>
                        <?php } ?>
                        <?php foreach ($menu_cart['vouchers'] as $voucher) { ?>
                            <tr>
                                <td class="text-center"></td>
                                <td class="text-left"><?php echo $voucher['description']; ?></td>
                                <td class="text-right">x&nbsp;1</td>
                                <td class="text-right"><?php echo $voucher['amount']; ?></td>
                                <td class="text-center text-danger"><button type="button" onclick="voucher.remove('<?php echo $voucher['key']; ?>');" title="<?php echo $button_remove; ?>" class="btn btn-danger btn-xs"><i class="fa fa-times"></i></button></td>
                            </tr>
                        <?php } ?>
                    </table>
                </li>
                <li>
                    <div>
                        <table class="table table-bordered">
                            <?php foreach ($menu_cart['totals'] as $total) { ?>
                                <?php if($total['code'] == 'sub_total' && isset($cart_value['price']) == 'on'){ ?>
                                    <tr>
                                        <td class="text-right"><strong><?php echo $total['title']; ?></strong></td>
                                        <td class="text-right"><?php echo $total['text']; ?></td>
                                    </tr>
                                <?php } elseif($total['code'] == 'tax' && isset($cart_value['discount']) == 'on') {  ?>
                                    <tr>
                                        <td class="text-right"><strong><?php echo $total['title']; ?></strong></td>
                                        <td class="text-right"><?php echo $total['text']; ?></td>
                                    </tr>
                                <?php } elseif($total['code'] == 'total' && isset($cart_value['total']) == 'on') {  ?>
                                    <tr>
                                        <td class="text-right"><strong><?php echo $total['title']; ?></strong></td>
                                        <td class="text-right"><?php echo $total['text']; ?></td>
                                    </tr>
                                <?php } ?>
                            <?php } ?>
                        </table>
                        <p class="text-right"><a href="<?php echo $menu_cart['cart']; ?>"><strong><i class="fa fa-shopping-cart"></i> <?php echo $menu_cart['text_cart']; ?></strong></a>&nbsp;&nbsp;&nbsp;<a href="<?php echo $menu_cart['checkout']; ?>"><strong><i class="fa fa-share"></i> <?php echo $menu_cart['text_checkout']; ?></strong></a></p>
                    </div>
                </li>
            <?php } else { ?>
                <li>
                    <div class="row">
                        <div class="col-sm-12">
                            <!--HTML-->
                            <?php if(!empty($current_customer)){ ?>
                                <!--HTML для пользователя-->
                                <?php echo html_entity_decode($cart_value['user_html'][$config_language_id]); ?>
                                <!--HTML для пользователя-->
                            <?php } else { ?>
                                <!--HTML для гостя-->
                                <?php echo html_entity_decode($cart_value['guest_html'][$config_language_id]); ?>
                                <!--HTML для гостя-->
                            <? } ?>
                            <!--HTML-->
                        </div>
                    </div>
                </li>
            <?php } ?>
        </ul>
<?php if(!isset($cartAjaxSuccess)){?>
</li>
<?php } ?>
