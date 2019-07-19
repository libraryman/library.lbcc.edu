<?php
// Function to check response time
function pingDomain($domain){
    $starttime = microtime(true);
    $file      = fsockopen ($domain, 80, $errno, $errstr, 10);
    $stoptime  = microtime(true);
    $status    = 0;

    if (!$file) $status = -1;  // Site is down
    else {
        fclose($file);
        $status = ($stoptime - $starttime) * 1000;
        $status = floor($status);
    }
    return $status;
}
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "DTD/xhtml1-transitional.dtd">
<html>
<body>
      <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post" name="domain">
        Domain name:
        <table>
          <tr><td><input name="domainname" type="text" ></td></tr>
          <tr><td><input type="submit" name="submitBtn" value="Ping domain"></td></tr>
        </table>  
      </form>
<?php    
    // Check whether the for was submitted
    if (isset($_POST['submitBtn'])){
        $domainbase = (isset($_POST['domainname'])) ? $_POST['domainname'] : '';
        $domainbase = str_replace("http://","",strtolower($domainbase));
        
        echo '<table>';

        $status = pingDomain($domainbase);
        if ($status != -1) echo "<tr><td>http://$domainbase is ALIVE ($status ms)</td><tr>";
        else               echo "<tr><td>http://$domainbase is DOWN</td><tr>";

         echo '</table>';
    }
?>
</body>   