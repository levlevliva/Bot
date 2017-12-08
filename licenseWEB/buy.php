<?php
 $key = $_GET['key'];
?>
<html>



<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="DK5SQ85T6RX4C">
<table>
<tr><td><input type="hidden" name="on0" value="Buy BoxyBot">Buy BoxyBot</td></tr><tr><td><select name="os0">
	<option value="1 Month">1 Month €7,50 EUR</option>
	<option value="3 Month">3 Month €20,00 EUR</option>
</select> </td></tr>
<tr><td><input type="hidden" name="on1" value="License:">License:</td></tr><tr><td><input type="text" name="os1" maxlength="200" value="<?php echo $key?>"></td></tr>
</table>
<input type="hidden" name="currency_code" value="EUR">
<input type="image" src="https://www.paypalobjects.com/de_DE/DE/i/btn/btn_buynowCC_LG.gif" border="0" name="submit" alt="Jetzt einfach, schnell und sicher online bezahlen – mit PayPal.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
</form>



</html>
