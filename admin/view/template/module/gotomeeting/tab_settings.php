<div class="container-fluid">
<table id="Settings" class="table">

    <!-- Panel Name -->

    <tr>
        <td class="col-xs-3">
            <h5><strong><?php echo $text_panel_name; ?></strong></h5>
            <span class="help"><i class="fa fa-info-circle"></i>&nbsp;<?php echo $text_panel_name_help; ?></span></td>
        <td class="col-xs-9">
            <div class="col-xs-4">
                <?php foreach ($languages as $lang) : ?>
                        <div class="input-group">
                            <span class="input-group-addon"><img src="view/image/flags/<?php echo $lang['image']; ?>" title="<?php echo $lang['name']; ?>" /> <?php echo $lang['name']; ?>:</span> 
                            <input type="text" class="form-control" name="<?php echo $moduleNameSmall; ?>[PanelName][<?php echo $lang['code']; ?>]" value="<?php if(isset($moduleData['PanelName'][$lang['code']])) { echo $moduleData['PanelName'][$lang['code']]; } else { echo "GoToMeeting"; }?>" />           
                        </div>
                    <br />
                <?php endforeach;?>
            </div>
        </td>
    </tr>

    <!-- End Panel Name -->
    
    <!-- URL -->
    
    <tr>
        <td class="col-xs-3">
            <h5><span class="required">* </span><strong><?php echo $text_url; ?></strong></h5>
            <span class="help"><i class="fa fa-info-circle"></i>&nbsp;<?php echo $text_url_help; ?></span>
        </td>
        <td class="col-xs-9">
            <div class="col-xs-4">
                <div class="form-group" style="padding-top:10px;">
                    <input type="url" class="form-control" name="<?php echo $moduleNameSmall; ?>[URL]" value="<?php if(isset($moduleData['URL'])) { echo $moduleData['URL']; } else { echo ""; }?>" required pattern="https://gotomeet.me.+" placeholder="e.g. https://gotomeet.me/Test">
               </div>
            </div>
        </td>
    </tr>
    
    <!-- End URL -->
    
    <!-- Preview -->
    
    <tr>
        <td class="col-xs-3">
            <h5><strong><?php echo $text_button_preview; ?></strong></h5>
            <span class="help"><i class="fa fa-info-circle"></i>&nbsp;<?php echo $text_button_preview_help; ?></span>
        </td>
        <td class="col-xs-3">    
        <div class="col-xs-4">              
              <img id="img" width="160" height="80" border="0" >  
         </div>
        </td>                 
        </tr>
      
    <script type="text/javascript">
	(function($) {    
		$(document).ready(function() {
			$("#img").attr("src", "http://www.citrixonlinecdn.com/dtsimages/im/support/en/" + $("#input-status option:selected").val() + ".png");
			 
			$(document).on('change', '#input-status', function(){
				$("#img").attr("src", "http://www.citrixonlinecdn.com/dtsimages/im/support/en/" + $("#input-status option:selected").val() + ".png");   
			}); 
		});         
	})(jQuery);
	</script>  

     <!-- End Preview -->
      
     <!-- Design -->  

    <tr>
        <td class="col-xs-3">
            <h5><strong><?php echo $text_button_design; ?></strong></h5>
            <span class="help"><i class="fa fa-info-circle"></i>&nbsp;<?php echo $text_button_design_help; ?></span>
        </td>
        <td class="col-xs-3">
            <div class="col-xs-4">
                    <select name="<?php echo $moduleNameSmall; ?>[ButtonDesign]" id="input-status" class="form-control">
                    <option value="Large_160X80" <?php echo(!empty($moduleData['ButtonDesign']) && $moduleData['ButtonDesign'] == 'Large_160X80') ? 'selected=selected' : '' ?> ><?php echo $large_gray_button; ?></option>
                    <option value="Small_120X60" <?php echo(!empty($moduleData['ButtonDesign']) && $moduleData['ButtonDesign'] == 'Small_120X60') ? 'selected=selected' : '' ?> ><?php echo $small_white_button; ?></option>                           
                </select>
             </div>
         </td>
    </tr>

    <!-- End Design -->    
    
    <!-- Custom CSS -->
    
    <tr>
        <td class="col-xs-3">
            <h5><strong><?php echo $custom_css; ?></strong></h5>
            <span class="help"><i class="fa fa-info-circle"></i>&nbsp;<?php echo $custom_css_help; ?></span></td>
        <td class="col-xs-9">
            <div class="col-xs-4">
                <div class="form-group" style="padding-top:10px;">
                    <textarea class="form-control" name="<?php echo $moduleNameSmall; ?>[CustomCSS]" placeholder="<?php echo $custom_css_placeholder; ?>" rows="4"><?php if(isset($moduleData['CustomCSS'])) { echo $moduleData['CustomCSS']; } else { echo ""; }?></textarea>
                </div>
            </div>
        </td>
    </tr>
</table>
</div>