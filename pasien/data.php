<?php include_once('../_header.php'); ?>

<div class="box">
	<h1>Pasien</h1>
	  <h4>
		<small>Data Pasien</small>
		<div class="pull-right">
			<a href="" class="btn btn-default btn-xs"><i class="glyphicon glyphicon-refresh"></i></a>
			<a href="add.php" class="btn btn-success btn-xs"><i class="glyphicon glyphicon-plus"></i>Tambah Pasien</a>
			<a href="import.php" class="btn btn-info btn-xs"><i class="glyphicon glyphicon-import"></i>Import Pasien</a>
		</div>
	  </h4>
	  
	   <div class="table-responsive">
		<table class="table table-striped table-bordered table-hover" id="pasien">
		    <thead>
			<tr>
				<th>Nomor Identitas</th>
				<th>Nama Pasien</th>
				<th>Jenis Kelamin</th>
				<th>Alamat</th>
				<th>No. Telepon</th>
				<th><i class="glyphicon glyphicon-cog"></i></th>
			</tr>
		    </thead>	
			</table>
	   	 </div>
	   	 <script>
	   	 	$(document).ready(function() {
    		$('#pasien').DataTable( {
    		    "processing": true,
    		    "serverSide": true,
    		    "ajax": "pasien_data.php",
    		    // scrollY : '250px',
    		    dom : 'Bfrtip',
    		    buttons : [
    		    	{
    		    	extend : 'pdf',
    		    	orientation : 'potrait',
    		    	pageSize : 'Legal',
    		    	title : 'Data Pasien',
    		    	download : 'open'
    		    },

    		    'csv','excel','print','copy'

    		    ],
    		    columnDefs : [
    		    	{
    		    	"searchable" : false,
    		    	"orderable" : false,
    		    	"targets" :5,
    		    	"render" : function(data, type, row){
    		    		var btn = "<center><a href=\"edit.php?id="+data+"\" class=\"btn btn-warning btn-xs\"><i class=\"glyphicon glyphicon-edit\"></i></a> <a href=\"del.php?id="+data+"\" onclick=\"return confirm('Yakin Ingin Menghapus Data')\" class=\"btn btn-danger btn-xs\"><i class=\"glyphicon glyphicon-trash\"></i></a></center>";
    		    		return btn;
    		    	}
    		   	    }
				]
   			 } );
			} );
	   	 </script>
	</div>

	
<?php include_once('../_footer.php'); ?>
