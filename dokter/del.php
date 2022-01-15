<?php
	require_once "../_config/config.php";

	$chk = $_POST['checked'];
	if(!isset($chk)) {
		echo "<script>alert('Tidak ada Data yang dipilih!');window.location='data.php';</script>";
	}else {
		foreach ($chk as $id ) {
		$sql = mysqli_query($con,"DELETE FROM tb_dokter WHERE id_dokter = '$id'") or die (mysqli_error($con));
 	}
 	if($sql) {
		echo "<script>alert('".count($chk)." Data Berhasil Di Hapus');window.location='data.php'</script>";
	}else {
		echo "<script>alert('Gagal Hapus Data, Coba Lagi');</script>";
	}
 }
?>