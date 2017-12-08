<?php
/*
  BoxyBot Auth. API.
*/
  ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
  $crypt = new Crypt();
  if(!isset($_POST['Identifier']))
    die($crypt->encrypt($password, $authKey, json_encode(['status' => '0'])));
  $identifier = $_POST['Identifier'];
  $timestamp = $_POST['Timestamp'];
  $authKey = $_POST['AuthKey'];
  $userAgent = $_SERVER['HTTP_USER_AGENT'];
  $recieved_version = $_POST['Version'];
  $password = "32252821674067076967647077869621"; //TODO: change this every update.
  $version = "1.0.469";


  if(!check_user_agent($userAgent)) die($crypt->encrypt($password, $authKey, json_encode(['status' => '0']))); //wrong user_agent
  if ($version !== $recieved_version) die($crypt->encrypt($password, $authKey, json_encode(['status' => '-5'])));
  $hwid =  $crypt->decrypt($password, $authKey, $identifier);
  $ts = $crypt->decrypt($password, $authKey, $timestamp);
  $db = new mysqli('localhost', 'root', 'bambus', 'boxybot');

  if($db->connect_errno > 0 ){
    die($crypt->encrypt($password, $authKey, json_encode(['status' => '-1']))); //database connection error
  }

  //die($hwid);
  $sql = 'SELECT * FROM `license` WHERE `hwid` = "'.$hwid.'";';
  $result = $db->query($sql);
  if($result->num_rows > 0){
    $result = $result->fetch_assoc();
    //found, hwid
    //check valid_date
    $valid_until = date('Y-m-d H:i:s', strtotime($result['valid_until']));
    $today = date('Y-m-d H:i:s');
    if($valid_until > $today){
      //valid license
      if($result['banned'] == '1'){
        //hwid banned
        mysqli_close($db);
        die($crypt->encrypt($password, $authKey, json_encode(['status' => '-4'])));
      }else{
        //user is fine
        $ids = [];
	array_push($ids, ['timeleft' => $valid_until]);
        array_push($ids, ['status' => '1']);
        mysqli_close($db);
        die($crypt->encrypt($password, $authKey, json_encode($ids)));
      }
    }else{
      //license not valid
      $db->query("UPDATE `license` SET `license_type`='0' WHERE `hwid`='.$hwid.'");
      mysqli_close($db);
      die($crypt->encrypt($password, $authKey, json_encode(['status' => '-3'])));
    }
  }else{
    //add trail
    $d = date('Y-m-d H:i:s', strtotime('+24 hours'));
    $db->query("INSERT INTO license (id, hwid, user_agent, valid_until, license_type, banned) VALUES (NULL, '".$hwid."', '".$userAgent."', '".$d."', '1', '0');");
    $valid_until = date('Y-m-d H:i:s', strtotime($d));
    $ids = [];
    array_push($ids, ['timeleft' => $valid_until]);
    array_push($ids, ['status' => '1']);
    die($crypt->encrypt($password, $authKey, json_encode($ids)));
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
