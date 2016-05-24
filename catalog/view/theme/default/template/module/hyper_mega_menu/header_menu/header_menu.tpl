<?php foreach($header_menu_lists as $menu_key => $menu_value){ ?>

<div id="menu1" class="hmm">
    <div class="container">
	<div class="row">
        <nav class="navbar navbar-default fhmm" role="navigation">
            <div id="defaultmenu" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <!-- list elements -->




                    <!-------------------------Логотип-------------------------->
                    <?php if(isset($menu_value['configuration']['logo'])){ ?>
                        <?php foreach($menu_value['configuration']['logo'] as $logo_values){?>
                                <?php if(isset($logo_values['signature_icon']) == 'on' && !empty($logo_values['font_awesome'])){?>
                                        <li class="nav"><i class="fa <?php echo $logo_values['font_awesome'];?>"></i></li>
                                <?php } elseif(!empty($logo_values['image'])) { ?>
                                    <?php if($class !== 'common-home'){?>
                                        <li class="nav"><a href="<?php echo $sever_url;?>"><img src="<?php echo $sever_url . 'image/' . $logo_values['image'];?>" class="img-responsive"></a></li>
                                    <?php } else { ?>
                                        <li class="nav"><img src="<?php echo $sever_url . 'image/' . $logo_values['image'];?>" class="img-responsive"></li>
                                    <?php } ?>

                                <?php } ?>
                        <?php } ?>
                    <?php } ?>


                    <!-------------------------Ссылка-------------------------->

                    <?php if(isset($menu_value['configuration']['simple_link'])){ ?>
                        <?php foreach($menu_value['configuration']['simple_link'] as $simple_link_values){?>
                            <?php if(isset($simple_link_values['show_icon']) == 'on' && !empty($simple_link_values['font_awesome'])){?>
                                <li class="nav">
                                    <a href="<?php echo $simple_link_values['link'][$config_language_id] ? $simple_link_values['link'][$config_language_id] : '#';?>" <?php echo isset($simple_link_values['link_blank']) ? 'target=target="_blank"' : '' ?> >
                                        <i class="fa <?php echo $simple_link_values['font_awesome'];?>"></i>
                                        <?php echo $simple_link_values['link_title'][$config_language_id] ? $simple_link_values['link_title'][$config_language_id] : '';?>
                                    </a>
                                </li>
                            <?php } elseif(!empty($simple_link_values['link_title'][$config_language_id])) { ?>
                                <li class="nav">
                                    <a href="<?php echo $simple_link_values['link'][$config_language_id] ? $simple_link_values['link'][$config_language_id] : '#';?>" <?php echo isset($simple_link_values['link_blank']) ? 'target=target="_blank"' : '' ?> ></a>
                                </li>
                            <?php } ?>
                        <?php } ?>
                    <?php } ?>



                    <!-------------------------Избранные/Сравнение-------------------------->


                    <?php if(isset($menu_value['configuration']['wish_compare'])){ ?>
                        <?php foreach($menu_value['configuration']['wish_compare'] as $wish_compare_values){?>

                            <!-------------------------Товары в сравнении-------------------------->
                            <?php if(isset($wish_compare_values['favorites_goods']) == 'on' && (!empty($wish_compare_values['name_favorites_goods'][$config_language_id]) || (isset($wish_compare_values['favorites_show_icon']) == 'on' && !empty($wish_compare_values['font_awesome'])))){?>
                                <li class="nav">
                                    <a href="<?php echo $compare;?>" >
                                        <i class="fa <?php echo (isset($wish_compare_values['favorites_show_icon']) == 'on' && !empty($wish_compare_values['font_awesome'])) ? $wish_compare_values['font_awesome'] : '';?>"></i>
                                        <?php echo $wish_compare_values['name_favorites_goods'][$config_language_id] ? $wish_compare_values['name_favorites_goods'][$config_language_id] : '';?>
                                    </a>
                                </li>
                            <?php } ?>

                            <!-------------------------Избранные товары-------------------------->
                            <?php if(isset($wish_compare_values['goods_wish']) == 'on' && (!empty($wish_compare_values['name_goods_wish'][$config_language_id]) || (isset($wish_compare_values['wish_show_icon']) == 'on' && !empty($wish_compare_values['wish_icon'])))){?>
                                <li class="nav">
                                    <a href="<?php echo $wishlist;?>" >
                                        <i class="fa <?php echo (isset($wish_compare_values['wish_show_icon']) == 'on' && !empty($wish_compare_values['wish_icon'])) ? $wish_compare_values['wish_icon'] : '';?>"></i>
                                        <?php echo $wish_compare_values['name_goods_wish'][$config_language_id] ? $wish_compare_values['name_goods_wish'][$config_language_id] : '';?>
                                    </a>
                                </li>
                            <?php } ?>

                        <?php } ?>
                    <?php } ?>


                    <!-------------------------Личный кабинет-------------------------->
                    <?php require_once(DIR_APPLICATION . 'view/theme/default/template/module/hyper_mega_menu/header_menu/personal_cabinet.tpl'); ?>


                    <!-------------------------Корзина-------------------------->
                    <?php require_once(DIR_APPLICATION . 'view/theme/default/template/module/hyper_mega_menu/header_menu/cart.tpl'); ?>




                    <li class="dropdown fhmm-fw"><a href="#" data-toggle="dropdown" data-close-others="true"
                            <?php if(isset($menu_value['settings']['main']['on_hover']) == 'on'){?> data-hover="dropdown" <?php if(isset($menu_value['settings']['main']['delay']) == 'on'){?> data-delay="500" data-hover-delay="500" <?php } ?><?php } ?> class="dropdown-toggle main-point">Mega Menu (Desc) <b class="caret"></b></a>
                        <ul class="dropdown-menu fullwidth container-dropdown-elements">
                            <li class="fhmm-content withdesc">
                                <div class="row">
                                    <div class="col-sm-2">
                                        <ul>
                                            <li><a class="dropdown-point" href="#">Contact Form</a></li>
                                            <li><a class="dropdown-point" href="#">Knowledgebase</a></li>
                                            <li><a class="dropdown-point" href="#">Friendly Questions</a></li>
                                            <li><a class="dropdown-point" href="#">Support Forum</a></li>
                                            <li><a class="dropdown-point" href="#">Changelogs</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-sm-2">
                                        <ul>
                                            <li><a class="dropdown-point" href="#">ThemeForest</a></li>
                                            <li><a class="dropdown-point" href="#">CodeCanyon</a></li>
                                            <li><a class="dropdown-point" href="#">GraphicRiver</a></li>
                                            <li><a class="dropdown-point" href="#">VideoHive</a></li>
                                            <li><a class="dropdown-point" href="#">ActiveDen</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-sm-2">
                                        <ul>
                                            <li><a class="dropdown-point" href="#">PSD Tuts+</a></li>
                                            <li><a class="dropdown-point" href="#">Code Tuts+</a></li>
                                            <li><a class="dropdown-point" href="#">Vector Tuts+</a></li>
                                            <li><a class="dropdown-point" href="#">App Tuts+</a></li>
                                            <li><a class="dropdown-point" href="#">WP Tuts+</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-sm-2">
                                        <ul>
                                            <li><a class="dropdown-point" href="#">Marketplaces</a></li>
                                            <li><a class="dropdown-point" href="#">Microlancer</a></li>
                                            <li><a class="dropdown-point" href="#">Creattica</a></li>
                                            <li><a class="dropdown-point" href="#">AppStorm</a></li>
                                            <li><a class="dropdown-point" href="#">Tutsplus</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-sm-2">
                                        <ul>
                                            <li><a class="dropdown-point" href="#">We Build Envato</a></li>
                                            <li><a class="dropdown-point" href="#">Flickr Stream</a></li>
                                            <li><a class="dropdown-point" href="#">Youtube</a></li>
                                            <li><a class="dropdown-point" href="#">Inside Envato</a></li>
                                            <li><a class="dropdown-point" href="#">Vimeo Stream</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-sm-2">
                                        <ul>
                                            <li><a class="dropdown-point" href="#">Google Plus</a></li>
                                            <li><a class="dropdown-point" href="#">Facebook</a></li>
                                            <li><a class="dropdown-point" href="#">Twitter</a></li>
                                            <li><a class="dropdown-point"  href="#">Linkedin</a></li>
<!--                                            <li><a data-description="A Short Description" href="#">Pinterest</a></li>-->
                                        </ul>
                                    </div>
                                </div><!-- end row -->
                            </li><!-- end grid demo -->
                        </ul><!-- end drop down menu -->
                    </li><!-- end list elements -->
                    <!-- standard drop down -->
                    <li class="dropdown"><a href="#" class="dropdown-toggle main-point" data-toggle="dropdown"
                            <?php if(isset($menu_value['settings']['main']['on_hover']) == 'on'){?>
                                data-hover="dropdown"
                                <?php if(isset($menu_value['settings']['main']['delay']) == 'on'){?>
                                    data-delay="500" data-hover-delay="500"
                                <?php } ?>
                            <?php } ?>
                            data-close-others="true">Flyout <b class="caret"></b></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">ThemeForest</a></li>
                            <li><a href="#">GraphicRiver</a></li>
                            <li><a href="#">PhotoDune</a></li>
                            <li class="dropdown-submenu">
                                <a href="#">Envato Sites</a>
                                <ul class="dropdown-menu">
                                    <li class="dropdown-submenu"><a href="#">Tuts+</a>
                                        <ul class="dropdown-menu">
                                            <li><a href="#">PSD Tuts</a></li>
                                            <li><a href="#">CODE Tuts</a></li>
                                        </ul>
                                    </li><!-- end dropdown-submenu -->
                                    <li><a href="#">We are Envato</a></li>
                                    <li><a href="#">Support Center</a></li>
                                </ul><!-- end dropdown-menu -->
                            </li><!-- end dropdown-submenu -->
                            <li><a href="#">Creattica</a></li>
                            <li><a href="#">Microlancer</a></li>
                            <li><a href="#">ActiveDen</a></li>
                        </ul><!-- end dropdown-menu -->
                    </li><!-- end standard drop down -->

                    <div class="md-overlay"></div>

                </ul><!-- end nav navbar-nav navbar-right -->
            </div><!-- end #navbar-collapse-1 -->

        </nav><!-- end navbar navbar-default fhmm -->
		</div><!-- end row -->
    </div><!-- end container -->
</div>
<!------------------------------------Дизайн меню------------------------------------>
    <?php if(isset($menu_value['settings']['menu_design']['design_mode']) == 'on'){?>
        <script type="text/javascript">
            $('.jumbotron').addClass('menu-design-custom');
        </script>
    <?php } elseif(isset($menu_value['settings']['menu_design']['brightness']) == 'on'){ ?>
<!--        Светлая тема дизайна меню-->
        <script type="text/javascript">
            $('.jumbotron').addClass('menu-design-light');
        </script>
    <?php } else { ?>
<!--        Темная тема дизайна меню-->
        <script type="text/javascript">
            $('.jumbotron').addClass('menu-design-dark');
        </script>
    <?php } ?>


<!------------------------------------Дизайн выпадающих элементов------------------------------------>
    <?php if(isset($menu_value['settings']['design_dropdown']['design_mode']) == 'on'){?>
        <script type="text/javascript">
            $('.jumbotron').addClass('design-dropdown-custom');
        </script>
    <?php } elseif(isset($menu_value['settings']['design_dropdown']['brightness']) == 'on'){ ?>
<!--        Светлая тема дизайна выпадающих элементов-->
        <script type="text/javascript">
            $('.jumbotron').addClass('design-dropdown-light');
        </script>
    <?php } else { ?>
<!--        Темная тема дизайна выпадающих элементов-->

        <script type="text/javascript">
            $('.jumbotron').addClass('design-dropdown-dark');
        </script>
    <?php } ?>


<!------------------------------------Применить пользовательские стили CSS------------------------------------>
    <?php if(isset($menu_value['settings']['css_js']['enable_css']) == 'on' && is_file(DIR_APPLICATION . "view/theme/default/stylesheet/hmm_users_style_".$menu_value['main_menu_name'].".css")){?>
        <link href="<?php echo "catalog/view/theme/default/stylesheet/hmm_users_styles_".$menu_value['main_menu_name'].".css";?>" rel="stylesheet"  type="text/css">
    <?php } ?>

<!------------------------------------Применить пользовательские скрипты JS------------------------------------>
    <?php if(isset($menu_value['settings']['css_js']['enable_js']) == 'on'){?>
        <script type="text/javascript">
            $(document).ready(function(){
                <?php echo $menu_value['settings']['css_js']['js'];?>
            });
        </script>
    <?php } ?>

    <style type="text/css">
        /*<!------------------------------------Дизайн меню------------------------------------>*/
        <?php if(isset($menu_value['settings']['menu_design']['background_mode']) == 'on'){ ?>
            body .menu-design-custom .container .navbar-default{
                background-color: <?php echo $menu_value['settings']['menu_design']['color']; ?>;
            }
        <?php } else { ?>
            body .menu-design-custom .container .navbar-default{
                background-image: url(image/<?php echo $menu_value['settings']['menu_design']['image']; ?>);
            }
        <?php } ?>
            body .menu-design-custom .container .navbar-default .main-point{
                font-size: <?php echo $menu_value['settings']['menu_design']['font_size']; ?>px;
                color: <?php echo $menu_value['settings']['menu_design']['font_color']; ?>;
            }
            body .menu-design-custom .container .navbar-default .main-point:hover{
                color: <?php echo $menu_value['settings']['menu_design']['font_color_hover']; ?>;
                background-color: <?php echo $menu_value['settings']['menu_design']['button_color_hover']; ?>;
            }

        /*<!------------------------------------Дизайн выпадающих элементов------------------------------------>*/

        <?php if(isset($menu_value['settings']['design_dropdown']['background_mode']) == 'on'){ ?>
            body .design-dropdown-custom .container .navbar-default .container-dropdown-elements{
                background-color: <?php echo $menu_value['settings']['design_dropdown']['color']; ?>;
            }
        <?php } else { ?>
            body .design-dropdown-custom .container .navbar-default .container-dropdown-elements{
                background-image: url(image/<?php echo $menu_value['settings']['design_dropdown']['image']; ?>);

                <?php if(!empty($menu_value['settings']['design_dropdown']['image_position'])){?>
                    <?php $image_position = str_replace('_', ' ', $menu_value['settings']['design_dropdown']['image_position']); ?>
                        background-position: <?php echo $image_position; ?>;
                <?php } ?>

                <?php if(!empty($menu_value['settings']['design_dropdown']['image_repeat'])){?>
                    background-repeat: <?php echo $menu_value['settings']['design_dropdown']['image_repeat']; ?>;
                <?php } ?>

            }
        <?php } ?>

            body .design-dropdown-custom .container-dropdown-elements .dropdown-point{
                font-size: <?php echo $menu_value['settings']['design_dropdown']['font_size']; ?>px;
                color: <?php echo $menu_value['settings']['design_dropdown']['font_color']; ?>;
            }
            body .design-dropdown-custom .container-dropdown-elements .dropdown-point:hover{
                background-image: none;
                color: <?php echo $menu_value['settings']['design_dropdown']['font_color_hover']; ?>;
                background-color: <?php echo $menu_value['settings']['design_dropdown']['font_color_hover']; ?>;
            }


            /*Темный стиль верхнего меню*/

            .menu-design-dark .navbar-default {
                background-color: #cdcdcd;
                border-color: #c6c6c6;
            }
            body .menu-design-dark .navbar-default .open .main-point{
                color: #1F1D1D;
                background-color: #ADADAD;
            }

    </style>

<?php $menuCartSettings = isset($menu_value) ? $menu_value : array();?>

        <script type="text/javascript">
            function cartAjaxSuccess(){
                <?php if(isset($menuCartSettings['configuration']['cart']['open_cart'])) { ?>

                    <?php if($menuCartSettings['configuration']['cart']['open_cart'] == 'as_usual') { ?>

                        $('.cart-info-ajax-load').load('index.php?route=module/hyper_mega_menu/cart/info', {"menuCartSettings": <?php echo json_encode($menuCartSettings); ?>});

                    <?php } elseif($menuCartSettings['configuration']['cart']['open_cart'] == 'popup') { ?>

                        <?php $menuCartSettings['part_popup_cart'] = 'part1';?>
                            $('.cart-modal-ajax-load').load('index.php?route=module/hyper_mega_menu/cart/info', {"menuCartSettings": <?php echo json_encode($menuCartSettings); ?>});
                        <?php $menuCartSettings['part_popup_cart'] = 'part2';?>
                            $('.nav-cart-modal-ajax-load').load('index.php?route=module/hyper_mega_menu/cart/info', {"menuCartSettings": <?php echo json_encode($menuCartSettings); ?>});

                    <?php } elseif(substr($menuCartSettings['configuration']['cart']['open_cart'], 0, 5) == 'move_') { ?>

                <?php $menuCartSettings['part_move_cart'] = 'part1';?>
                $('.cart-move-ajax-load').load('index.php?route=module/hyper_mega_menu/cart/info', {"menuCartSettings": <?php echo json_encode($menuCartSettings); ?>});

                        <?php $menuCartSettings['part_move_cart'] = 'part2';?>
                            $('.nav-cart-move-ajax-load').load('index.php?route=module/hyper_mega_menu/cart/info', {"menuCartSettings": <?php echo json_encode($menuCartSettings); ?>});

                    <?php } ?>

                <?php } ?>

            }
            function initModalWindow(){
                $('.md-trigger').modalEffects();
            }
            function initSliiideWindow(){
                var menu = $('.<?php echo $move_side; ?>-menu-cart').sliiide({place: '<?php echo $move_side; ?>', exit_selector: ".sliiider-exit", animation_duration: "0.5s", animation_curve: "cubic-bezier(0.54, 0.01, 0.57, 1.03)", toggle: '#nav-icon-cart', no_scroll: true, body_slide: false});
            }

            (function($){
                $(document).ready(function() {
                    initModalWindow();
                    initSliiideWindow();
                });
            })(jQuery);
        </script>
    <?php } ?>


<?php //require_once(DIR_APPLICATION . 'view/theme/default/template/module/hyper_mega_menu/header_menu/account/sliiide_menu.tpl'); ?>
<?php //require_once(DIR_APPLICATION . 'view/theme/default/template/module/hyper_mega_menu/header_menu/cart/sliiide_menu.tpl'); ?>







