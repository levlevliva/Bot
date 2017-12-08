<?php
	$db = new mysqli('localhost', 'root', 'bambus', 'boxybot');
	ini_set('display_errors', 1);
	ini_set('display_startup_errors', 1);
	error_reporting(E_ALL);
	
	$data = file_get_contents('php://input');
	
	$paypalInfos = [];
	$row_post_array = explode('&', $data);
	foreach($row_post_array as $keyval){
		$keyval = explode('=', $keyval);
		if(count($keyval) == 2){
			$paypalInfos[$keyval[0]] = urldecode($keyval[1]);
		}
	}
	
	$payment_status = $paypalInfos["payment_status"];
	$month_type = $paypalInfos["option_selection1"];
	$hwid = $paypalInfos["option_selection2"];
	$dateTime = "";
	
	if($month_type == "1 Month"){
		$dateTime = date('Y-m-d', strtotime('+30 days'));
	}else if($month_type == "3 Month"){
		$dateTime = date('Y-m-d', strtotime('+90 days'));
	}
	
	if($payment_status == "Completed"){
		$sql = "SELECT * FROM `license` WHERE `hwid` = '".$hwid."'";
  		$result = $db->query($sql);
		if ($result->num_rows > 0) {
			$result = $result->fetch_assoc();
            if($month_type == "1 Month"){
                $dateTime = date('Y-m-d H:i:s', strtotime('+31 days', strtotime($result['valid_until'])));
            }else if($month_type == "3 Month"){
                $dateTime = date('Y-m-d H:i:s', strtotime('+91 days', strtotime($result['valid_until'])));
            }
            $db->query("UPDATE `license` SET `license_type`='2', `paymentstatus`='".$payment_status." -- ".$month_type."' WHERE `hwid`='".$hwid."'");
            $db->query("UPDATE `license` SET `valid_until`='".$dateTime."' WHERE `hwid`='".$hwid."'");
		} else {
			$db->query("INSERT INTO `license` (`id`, `hwid`, `valid_until`, `license_type`, `banned`, `paymentstatus`) VALUES (NULL, '".$hwid."', '".$dateTime."', '2', '0', '".$payment_status." -- ".$month_type."')");
		}
	}
?>