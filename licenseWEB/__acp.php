<?php
	ini_set('display_errors', 1);
	ini_set('display_startup_errors', 1);
	error_reporting(E_ALL);
    session_start();
    $db = new mysqli('localhost', 'root', 'bambus', 'boxybot');
    if(isset($_SESSION['isAdmin']))
    {
        if(isset($_GET['logout']))
        {
            unset($_SESSION['isAdmin']);
            header("Location: __acp.php");
        }
        if(isset($_GET['reset']))
        {
            $db->query("DELETE FROM `license` WHERE `license_type`='0'");
            echo "<script>alert('Resetted all trials, wish them luck!');</script>";
        }
        function get_paging_info($tot_rows,$pp,$curr_page)
        {
            $pages = ceil($tot_rows / $pp); // calc pages

            $data = array(); // start out array
            $data['si']        = ($curr_page * $pp) - $pp; // what row to start at
            $data['pages']     = $pages;                   // add the pages
            $data['curr_page'] = $curr_page;               // Whats the current page

            return $data; //return the paging data

        }
        $currPage = (isset($_GET['p'])) ? $_GET['p'] : 1;
        $dbres = $db->query("SELECT * FROM `license`");
        $count = $dbres->num_rows;
        $paging_info = get_paging_info($count,7,$currPage); 
?>
 <html>
  <head>
    <title>BoxyBot - ACP</title>
  </head>
  <body>
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,900" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <link href="style.css" rel="stylesheet">

    <div class="website">
      <header>
        <div class="container">
          <div class="col-12">
              <div class="header-brand"><i aria-hidden="true" class="fa fa-code"></i>BoxyBot - ACP</div>
          </div>
        </div>
    </header>
    <div class="content">
      <div class="col-13">
          <table class="table">
            <form method="get">
            <thead>
              <th width="300px"><?=$_SESSION['adminNickname'];?> &raquo; <a href="?p=1">Home</a> &raquo; <a href="?reset">Reset Trials</a> &raquo; <a href="?logout">Logout</a></th>
              <th width="400px"><input type="text" name="_search" placeholder="Search HWID" /></th>
            </thead>
            </form>
          </table>
          <table class="table">
            <thead>
              <th>#</th>
              <th>HWID</th>
              <th>Valid Until</th>
              <th>Actions</th>
            </thead>
            <tbody>
              <?php
                if(isset($_GET['_search']))
                {
                    $filteredSearch = mysqli_real_escape_string($db, $_GET['_search']);
                    $filteredSearch = str_replace(' ', '', $filteredSearch);
                    $filteredSearch = preg_replace('/\s+/', '', $filteredSearch);
                    $filteredSearch = preg_replace('~\x{00a0}~','',$filteredSearch);
                    $num = 1;
                    $result = $db->query("SELECT * FROM `license` WHERE `hwid` LIKE '%".$filteredSearch."%'");
                    while($row = $result->fetch_assoc()){
                      $id = $row['id'];
                      $hwid = $row['hwid'];
                      $valid_until = $row['valid_until'];
                      $banned = $row['banned']; 
                      ?>
                      <tr>
                        <td><?php echo $num ?></td>
                        <td><?php echo $hwid ?></td>
                        <td><?php echo $valid_until ?></td>
                        <td><div class="btn btn-xs btn-primary" onclick="<?php echo ($banned == '0' ? 'banId('.$id.')' : 'unlockId('.$id.')') ?>"><?php echo ($banned == '0' ? '<i class="fa fa-ban" aria-hidden="true"></i>' :  '<i class="fa fa-unlock" aria-hidden="true"></i>') ?></div>
                          <div class="btn btn-xs btn-primary" data-popup-open="popup-<?=$id;?>"><i class="fa fa-wrench" aria-hidden="true"></i></div></td>
                      </tr>
                      <div class="popup" data-popup="popup-<?=$id;?>">
                        <div class="popup-inner">
                            <h2>Edit License (ID: <?=$id;?>)</h2>
                            <p><select id="extendLicense_<?=$id;?>"><option value="1">Extend by 1 Month</option><option value="3">Extend by 3 Month</option></select></p>
                            <p><a data-popup-close="popup-<?=$id;?>" href="#" onclick="sendExtend('<?=$id;?>');">Okay</a></p>
                            <a class="popup-close" data-popup-close="popup-<?=$id;?>" href="#">x</a>
                        </div>
                      </div>
                      <script>
                          function sendExtend(id)
                          {
                            var e = document.getElementById("extendLicense_<?=$id;?>");
                            var strUser = e.options[e.selectedIndex].value;
                            extendId(id, strUser);
                          }
                      </script>
                      </tr>
                      <?php
                      $num++;
                    }
                }
                else
                {
                    $minRows = (($paging_info['curr_page'] - 1) * 7);
                    $num = ($minRows + 1);
                    $result = $db->query('SELECT * FROM `license` LIMIT 7 OFFSET '.$minRows);
                    while($row = $result->fetch_assoc()){
                      $id = $row['id'];
                      $hwid = $row['hwid'];
                      $valid_until = $row['valid_until'];
                      $banned = $row['banned'];
                      ?>
                      <tr>
                        <td><?php echo $num ?></td>
                        <td><?php echo $hwid ?></td>
                        <td><?php echo $valid_until ?></td>
                        <td><div class="btn btn-xs btn-primary" onclick="<?php echo ($banned == '0' ? 'banId('.$id.')' : 'unlockId('.$id.')') ?>"><?php echo ($banned == '0' ? '<i class="fa fa-ban" aria-hidden="true"></i>' :  '<i class="fa fa-unlock" aria-hidden="true"></i>') ?></div>
                          <div class="btn btn-xs btn-primary" data-popup-open="popup-<?=$id;?>"><i class="fa fa-wrench" aria-hidden="true"></i></div></td>
                      </tr>
                      <div class="popup" data-popup="popup-<?=$id;?>">
                        <div class="popup-inner">
                            <h2>Edit License (ID: <?=$id;?>)</h2>
                            <p><select id="extendLicense_<?=$id;?>"><option value="1">Extend by 1 Month</option><option value="3">Extend by 3 Month</option></select></p>
                            <p><a data-popup-close="popup-<?=$id;?>" href="#" onclick="sendExtend('<?=$id;?>');">Okay</a></p>
                            <a class="popup-close" data-popup-close="popup-<?=$id;?>" href="#">x</a>
                        </div>
                      </div>
                      <script>
                          function sendExtend(id)
                          {
                            var e = document.getElementById("extendLicense_<?=$id;?>");
                            var strUser = e.options[e.selectedIndex].value;
                            extendId(id, strUser);
                          }
                      </script>
                      <?php
                      $num++;
                    }
                }
               ?>
            </tbody>
          </table>
          <table class="table">
            <tbody>
              <?php
              if($paging_info['curr_page'] > 1 || isset($_GET['_search']))
              {
              ?>
              <td width="100px"><a href="?p=1">&laquo; First</a> <a href="?p=<?=($paging_info['curr_page'] - 1);?>">&laquo; Prev</a></td>
              <?php
              }
              else
              {
              ?>
              <td width="100px">&nbsp;</td>
              <?php
              }
              ?>
              <td width="500px" style="text-align: center;">
              <?php
              $max = 7;
              if($paging_info['curr_page'] < $max)
              $sp = 1;
              elseif($paging_info['curr_page'] >= ($paging_info['pages'] - floor($max / 2)) )
              $sp = $paging_info['pages'] - $max + 1;
              elseif($paging_info['curr_page'] >= $max)
              $sp = $paging_info['curr_page']  - floor($max/2);
              if($paging_info['curr_page'] >= $max)
              {
              ?>
              <a href="?p=1">1</a> <b>...</b>
              <?php
              }
              for($i = $sp; $i <= ($sp + $max -1);$i++)
              {
                  if($i > $paging_info['pages'])
                    continue;
                  if($paging_info['curr_page'] == $i)
                  {
                  ?>
                  <b><?=$i;?></b>
                  <?php
                  }
                  else
                  {
                  ?>
                  <b><a href="?p=<?=$i;?>"><?=$i;?></a></b>
                  <?php
                  }
              }
              if($paging_info['curr_page'] < ($paging_info['pages'] - floor($max / 2)))
              {
              ?>
              <b>...</b> <a href="?p=<?=$paging_info['pages'];?>"><?=$paging_info['pages'];?></a>
              <?php
              }
              ?>
              </td>
              <?php
              if($paging_info['curr_page'] < $paging_info['pages'])
              {
              ?>
              <td width="100px"><a href="?p=<?=($paging_info['curr_page'] + 1);?>">&raquo; Next</a> <a href="?p=<?=($paging_info['pages']);?>">&raquo; Last</a></td>
              <?php
              }
              else
              {
              ?>
              <td width="100px">&nbsp;</td>
              <?php
              }
              ?>
            </tbody>
          </table>
      </div>
    </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
    <script src="https://use.fontawesome.com/1166cdc87e.js"></script>
    <script src="acp.js"></script>
    <script>
      $(function() {
        //----- OPEN
        $('[data-popup-open]').on('click', function(e)  {
            var targeted_popup_class = jQuery(this).attr('data-popup-open');
            $('[data-popup="' + targeted_popup_class + '"]').fadeIn(350);

            e.preventDefault();
        });

        //----- CLOSE
        $('[data-popup-close]').on('click', function(e)  {
            var targeted_popup_class = jQuery(this).attr('data-popup-close');
            $('[data-popup="' + targeted_popup_class + '"]').fadeOut(350);

            e.preventDefault();
        });
      }); 
      </script>
  </body>
 </html>
<?php
    }
    else
    {
        if(isset($_POST['loginSubmit']))
        {
            if(isset($_POST['loginUsername']) && strlen($_POST['loginUsername']) > 3)
            {
                if(isset($_POST['loginPassword']) && strlen($_POST['loginPassword']) > 5)
                {
                    $salt = "209329088";
                    $dbresLogin = $db->query("SELECT * FROM `webusers` WHERE `username`='".mysqli_real_escape_string($db, $_POST['loginUsername'])."' AND `password`='".md5(mysqli_real_escape_string($db, $_POST['loginPassword']).$salt)."'");
                    if(mysqli_num_rows($dbresLogin) > 0)
                    {
                        $LoginData = mysqli_fetch_object($dbresLogin);
                        if($LoginData->canLogin == 1)
                        {
                            $_SESSION['isAdmin'] = $LoginData->isAdmin;
                            $_SESSION['adminNickname'] = $LoginData->username;
                            echo "<script>alert('Logged in.. redirecting to acp home page.');</script>";
                            header("Location: __acp.php");
                        }
                    }
                }
            }
        }
?>
 <html>
  <head>
    <title>BoxyBot - ACP</title>
  </head>
  <body>
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,900" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <link href="style.css" rel="stylesheet">

    <div class="website">
      <header>
        <div class="container">
          <div class="col-12">
              <div class="header-brand"><i aria-hidden="true" class="fa fa-code"></i>BoxyBot - ACP</div>
          </div>
        </div>
    </header>
    <div class="content">
      <div class="col-12">
          <form method="post">
          <table class="table">
            <tr>
                <td width="50%" valign="center">
                    Username:
                </td>
                <td width="50%" valign="center">
                    <input type="text" name="loginUsername" placeholder="Fill in your username." />
                </td>
            </tr>
            <tr>
                <td width="50%" valign="center">
                    Password:
                </td>
                <td width="50%" valign="center">
                    <input type="password" name="loginPassword" placeholder="Fill in your password." />
                </td>
            </tr>
            </table>
            <table width="100%">
            <tr>
            <tr>
                <td width="100%">
                    <input type="submit" class="btn-xs" name="loginSubmit" value="Login" />
                </td>
            </tr>
          </table>
          </form>
      </div>
    </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
    <script src="https://use.fontawesome.com/1166cdc87e.js"></script>
    <script src="acp.js"></script>
    <script>
      $(function() {
        //----- OPEN
        $('[data-popup-open]').on('click', function(e)  {
            var targeted_popup_class = jQuery(this).attr('data-popup-open');
            $('[data-popup="' + targeted_popup_class + '"]').fadeIn(350);

            e.preventDefault();
        });

        //----- CLOSE
        $('[data-popup-close]').on('click', function(e)  {
            var targeted_popup_class = jQuery(this).attr('data-popup-close');
            $('[data-popup="' + targeted_popup_class + '"]').fadeOut(350);

            e.preventDefault();
        });
      }); 
      </script>
  </body>
 </html>
<?php
    }
?>