<?php
require_once "_config/config.php";
if(isset($_SESSION['user'])) {
    echo "<script>window.location='".base_url('dashboard')."';</script>";
}else {
	echo "<script>window.location='".base_url('auth/login.php')."';</script>";
}
?>

 