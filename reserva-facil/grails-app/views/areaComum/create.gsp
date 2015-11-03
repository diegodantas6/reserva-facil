<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
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
			<g:form url="[resource:areaComumInstance, action:'save']">
				<div class="box-header with-border">
					<h3 class="box-title">Incluir</h3>
				</div>
				
				<g:render template="form" />
				
				<g:link controller="areaComum" action="save" class="botao btn-success" style="bottom: 80px;">
					<i class="fa fa-check"></i>
				</g:link>
				
				<g:link controller="areaComum" class="botao btn-danger">
					<i class="fa fa-remove"></i>
				</g:link>

			</g:form>
		</div>
		<!-- /.box -->

	</section>
	<!-- /.content -->

</body>
</html>
