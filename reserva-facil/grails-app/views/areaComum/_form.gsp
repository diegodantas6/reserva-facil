<%@ page import="br.com.negocio.AreaComum" %>

<div class="fieldcontain ${hasErrors(bean: areaComumInstance, field: 'condominio', 'error')} required">
	<label for="condominio">
		<g:message code="areaComum.condominio.label" default="Condominio" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="condominio" name="condominio.id" from="${br.com.negocio.Condominio.list()}" optionKey="id" required="" value="${areaComumInstance?.condominio?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: areaComumInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="areaComum.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${areaComumInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: areaComumInstance, field: 'situacao', 'error')} required">
	<label for="situacao">
		<g:message code="areaComum.situacao.label" default="Situacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="situacao" required="" value="${areaComumInstance?.situacao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: areaComumInstance, field: 'valor', 'error')} required">
	<label for="valor">
		<g:message code="areaComum.valor.label" default="Valor" />
		<span class="required-indicator">*</span>
	</label>
	

</div>

