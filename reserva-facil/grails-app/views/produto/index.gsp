<!DOCTYPE html>
<html>
<head>
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
