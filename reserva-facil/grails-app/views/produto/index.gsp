<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.botao {
	/*centralizar a imagem*/
	text-align: center;
	font-size: 35px;
	vertical-align: middle;
	line-height: 60px;
	-webkit-user-select: none;
	margin-right: 0px;
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	border-radius: 50%;
	border: none;
	
	bottom: 60px;
	
	-webkit-box-shadow: 0px 2px 10px rgba(0, 0, 0, .3), 0px 0px 1px
		rgba(0, 0, 0, .1), inset 0px 1px 0px rgba(255, 255, 255, .25), inset
		0px -1px 0px rgba(0, 0, 0, .15);
	-moz-box-shadow: 0px 2px 10px rgba(0, 0, 0, .3), 0px 0px 1px
		rgba(0, 0, 0, .1), inset 0px 1px 0px rgba(255, 255, 255, .25), inset
		0px -1px 0px rgba(0, 0, 0, .15);
	box-shadow: 0px 2px 10px rgba(0, 0, 0, .3), 0px 0px 1px
		rgba(0, 0, 0, .1), inset 0px 1px 0px rgba(255, 255, 255, .25), inset
		0px -1px 0px rgba(0, 0, 0, .15);
	cursor: pointer;
	height: 56px;
	position: fixed;
	-webkit-transition-duration: 0.25s;
	transition-duration: 0.25s;
	-webkit-transition-property: background-color, -webkit-box-shadow;
	transition-property: background-color, box-shadow;
	right: 24px;
	width: 56px;
	z-index: 2;
}
</style>

<meta name="layout" content="main" />

</head>
<body>
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Cadastro <small>Produto</small>
		</h1>
	</section>

	<!-- Main content -->
	<section class="content">

		<div class="box box-primary">
			<div class="box-header">
				<h3 class="box-title">Date picker</h3>
			</div>
			<div class="box-body">
				<!-- Date range -->
				<div class="form-group col-xs-4">
					<label>Date range:</label>
					<div class="input-group">
						<div class="input-group-addon">
							<i class="fa fa-calendar"></i>
						</div>
						<input type="text" class="form-control pull-right"
							id="reservation">
					</div>
					<!-- /.input group -->
				</div>
				<!-- /.form group -->

				<!-- Date and time range -->
				<div class="form-group col-xs-5">
					<label>Date and time range:</label>
					<div class="input-group">
						<div class="input-group-addon">
							<i class="fa fa-clock-o"></i>
						</div>
						<input type="text" class="form-control pull-right"
							id="reservationtime">
					</div>
					<!-- /.input group -->
				</div>
				<!-- /.form group -->

				<!-- Date and time range -->
				<div class="form-group col-xs-5">
					<label>Date range button:</label>
					<div class="input-group">
						<button class="btn btn-default pull-right" id="daterange-btn">
							<i class="fa fa-calendar"></i> Date range picker <i
								class="fa fa-caret-down"></i>
						</button>
					</div>
				</div>
				<!-- /.form group -->

			</div>
			<!-- /.box-body -->
		</div>
		<!-- /.box -->

		<!--  <a class="botao btn-info"><i class="fa fa-plus"></i></a>    -->
		<!--  <a class="botao btn-danger pull-left"><i class="fa fa-minus"></i></a>-->
		<!--  <a class="botao btn-danger"><i class="fa fa-rotate-left"></i></a>    -->
		<a class="botao btn-primary"><i class="fa fa-unlock-alt"></i></a>


	</section>
	<!-- /.content -->

	<!-- Page script -->
	<script type="text/javascript">
		$(document).ready(
				function() {

					$('#reservation').daterangepicker();

					$('#reservationtime').daterangepicker({
						timePicker : true,
						timePickerIncrement : 30,
						format : 'MM/DD/YYYY h:mm A'
					});

					$('#daterange-btn').daterangepicker(
							{
								ranges : {
									'Today' : [ moment(), moment() ],
									'Yesterday' : [
											moment().subtract(1, 'days'),
											moment().subtract(1, 'days') ],
									'Last 7 Days' : [
											moment().subtract(6, 'days'),
											moment() ],
									'Last 30 Days' : [
											moment().subtract(29, 'days'),
											moment() ],
									'This Month' : [ moment().startOf('month'),
											moment().endOf('month') ],
									'Last Month' : [
											moment().subtract(1, 'month')
													.startOf('month'),
											moment().subtract(1, 'month')
													.endOf('month') ]
								},
								startDate : moment().subtract(29, 'days'),
								endDate : moment()
							},
							function(start, end) {
								$('#reportrange span').html(
										start.format('MMMM D, YYYY') + ' - '
												+ end.format('MMMM D, YYYY'));
							});

				});
	</script>

</body>
</html>
