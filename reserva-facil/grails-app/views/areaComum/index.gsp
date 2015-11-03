<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
</head>
<body>
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Cadastro <small>Area Comum</small>
		</h1>
	</section>

	<!-- Main content -->
	<section class="content">

		<div class="box box-primary">
			<div class="box-header with-border">
				<h3 class="box-title">Listar</h3>
			</div>
			<div class="box-body">
				<table id="example1" class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>Rendering engine</th>
							<th>Browser</th>
							<th>Platform(s)</th>
							<th>Engine version</th>
							<th>CSS grade</th>
						</tr>
					</thead>
					<tbody>
					
						<tr>
							<td><g:link controller="areaComum" action="edit">Misc</g:link></td>
							<td>Dillo 0.8</td>
							<td>Embedded devices</td>
							<td>-</td>
							<td>X</td>
						</tr>

					</tbody>
					<tfoot>
						<tr>
							<th>Rendering engine</th>
							<th>Browser</th>
							<th>Platform(s)</th>
							<th>Engine version</th>
							<th>CSS grade</th>
						</tr>
					</tfoot>
				</table>
			</div>
			<!-- /.box-body -->
		</div>
		<!-- /.box -->

		<g:link controller="areaComum" action="create" class="botao btn-primary"><i class="fa fa-plus"></i></g:link>

	</section>
	<!-- /.content -->

<!-- page script -->
<script>
  $(function () {
//    $('#example1').DataTable({
//      "paging": true,
//      "lengthChange": false,
//      "searching": false,
//      "ordering": true,
//      "info": true,
//      "autoWidth": false
//    });
      
    $('#example1').DataTable();
      
  });
</script>

</body>

</html>
