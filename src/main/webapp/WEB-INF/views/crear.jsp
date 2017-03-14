<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<spring:url value="/people" var="back" />

<spring:url value="/resources/css/hello-world-spring.css" var="helloCss" />
<spring:url value="/resources/css/font-awesome.css" var="fontAwesome" />
<spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCSS" />

<link href="${helloCss}" rel="stylesheet" />
<link href="${fontAwesome}" rel="stylesheet" />
<link href="${bootstrapCSS}" rel="stylesheet" />

<title>Añadir Vehículo</title>
</head>
<body>
	<div class="container">
		<div class="page-header">
			<h2>Añadir Vehículo</h2>
		</div>
		<div class="row">
			
		</div>
		<div class="row">
			<form:form modelAttribute="Coches" cssClass="form-horizontal">
				<div class="form-group">
					<form:label cssClass="col-sm-3 control-label" path="matricula">
						Matricula
					</form:label>
					<div class="col-sm-4">
						<form:input cssClass="form-control" path="matricula" />
					</div>
					<div class="col-sm-5 error">
						<form:errors path="matricula" />
					</div>
				</div>
				<div class="form-group">
					<form:label cssClass="col-sm-3 control-label" path="modelo">
					Modelo
					</form:label>
					<div class="col-sm-4">
						<form:input cssClass="form-control" path="modelo" />
					</div>
					<div class="col-sm-5 error">
						<form:errors path="modelo" />
					</div>
				</div>
				<div class="form-group">
					<form:label cssClass="col-sm-3 control-label" path="km">
						Kilometros
					</form:label>
					<div class="col-sm-4">
						<form:input cssClass="form-control" path="km" />
					</div>
					<div class="col-sm-5 error">
						<form:errors path="km" />
					</div>
				</div>
				<div class="form-group">
					<form:label cssClass="col-sm-3 control-label"
						path="fechaMatriculacion">
					Fecha de Matriculación
					</form:label>
					<div class="col-sm-4">
						<form:input cssClass="form-control" path="fechaMatriculacion" />
					</div>
					<div class="col-sm-5 error">
						<form:errors path="fechaMatriculacion" />
					</div>
				</div>
				<div class="form-group">
					<form:label cssClass="col-sm-3 control-label"
						path="precio">
					Precio
					</form:label>
					<div class="col-sm-4">
						<form:input cssClass="form-control" path="precio" />
					</div>
					<div class="col-sm-5 error">
						<form:errors path="precio" />
					</div>
				</div>

				<div class="form-group col-sm-7 text-right">
					<a href="${back}" class="btn btn-default" role="button"> <i
						class="fa fa-arrow-left" aria-hidden="true"></i>

					</a>
					<button type="submit" class="btn btn-primary">Registrar <i class="fa fa-floppy-o" aria-hidden="true"></i>

					</button>
				</div>
			</form:form>
		</div>
	</div>
</body>
<spring:url value="/resources/js/hello-world-spring.js" var="helloJS" />
<spring:url value="/resources/js/jquery.min.js" var="helloJQuery" />
<spring:url value="/resources/js/bootstrap.min.js" var="bootstrapJS" />
<script src="${helloJQuery}"></script>
<script src="${bootstrapJS}"></script>
<script src="${helloJS}"></script>
</html>