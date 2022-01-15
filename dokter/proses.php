<?php 
require_once "../_config/config.php";
require "../_assets/libs/vendor/autoload.php";

use Ramsey\Uuid\Uuid;
use Ramsey\Uuid\Exception\UnsatisfiedDependecyException;


if(isset($_POST['add'])) {
	$uuid = Uuid::uuid4()->toString();
	$nama = trim(mysqli_real_escape_string($con, $_POST['nama']));
	$spesialis = trim(mysqli_real_escape_string($con, $_POST['spesialis']));
	$alamat = trim(mysqli_real_escape_string($con, $_POST['alamat']));
	$telp = trim(mysqli_real_escape_string($con, $_POST['telp']));
	mysqli_query($con, "INSERT INTO tb_dokter (id_dokter, nama_dokter, spesialis, alamat, no_telp) VALUES ('$uuid', '$nama', '$spesialis', '$alamat', '$telp')") or die (mysqli_error($con));
	echo "<script>window.location='data.php';</script>";

}else if (isset($_POST['edit'])) {
	$id =$_POST['id'];
	$nama = trim(mysqli_real_escape_string($con, $_POST['nama']));
	$spesialis = trim(mysqli_real_escape_string($con, $_POST['spesialis']));
	$alamat = trim(mysqli_real_escape_string($con, $_POST['alamat']));
	$telp = trim(mysqli_real_escape_string($con, $_POST['telp']));
	mysqli_query($con," UPDATE tb_dokter SET nama_dokter = '$nama', spesialis = '$spesialis', alamat = '$alamat', no_telp = '$telp' WHERE id_dokter = '$id'") or die (mysqli_error($con));
	echo "<script>window.location='data.php';</script>";
}
 ?>