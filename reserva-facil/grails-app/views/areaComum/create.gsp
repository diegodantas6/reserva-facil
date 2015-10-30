<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'areaComum.label', default: 'AreaComum')}" />
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
			<form>
				<div class="box-header with-border">
					<h3 class="box-title">Incluir</h3>
				</div>
				<div class="box-body">
					<div class="col-sm-6 form-group">
						<label>Field 1</label> <input type="text" class="form-control">
					</div>
					<div class="col-sm-6 form-group">
						<label>Field 2</label> <input type="text" class="form-control">
					</div>
					<div class="col-sm-5 form-group">
						<label>Field 3</label> <input type="text" class="form-control">
					</div>
					<div class="col-sm-3 form-group">
						<label>Field 1</label> <input type="text" class="form-control">
					</div>
					<div class="col-sm-4 form-group">
						<label>Field 2</label> <input type="text" class="form-control">
					</div>
					<div class="col-sm-5 form-group">
						<label>Field 3</label> <input type="text" class="form-control"
							required>
					</div>
				</div>
				<!-- /.box-body -->
				<g:link controller="areaComum" action="save"
					class="botao btn-success" style="bottom: 80px;">
					<i class="fa fa-check"></i>
				</g:link>
				<g:link controller="areaComum"
					class="botao btn-danger">
					<i class="fa fa-remove"></i>
				</g:link>

			</form>
		</div>
		<!-- /.box -->

		<!--<a class="botao btn-danger" style="bottom: 80px;"><i
			class="fa fa-rotate-left"></i></a> <a class="botao btn-primary"><i
			class="fa fa-unlock-alt"></i></a>-->


	</section>
	<!-- /.content -->



	<a href="#create-areaComum" class="skip" tabindex="-1"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<div id="create-areaComum" class="content scaffold-create" role="main">
		<h1>
			<g:message code="default.create.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<g:hasErrors bean="${areaComumInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${areaComumInstance}" var="error">
					<li
						<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
							error="${error}" /></li>
				</g:eachError>
			</ul>
		</g:hasErrors>
		<g:form url="[resource:areaComumInstance, action:'save']">
			<fieldset class="form">
				<g:render template="form" />
			</fieldset>
			<fieldset class="buttons">
				<g:submitButton name="create" class="save"
					value="${message(code: 'default.button.create.label', default: 'Create')}" />
			</fieldset>
		</g:form>
	</div>
</body>
</html>
