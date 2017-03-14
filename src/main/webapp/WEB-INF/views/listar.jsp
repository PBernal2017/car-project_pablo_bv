<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<spring:url value="/resources/css/hello-world-spring.css" var="helloCss" />
<spring:url value="/resources/css/font-awesome.css" var="fontAwesome" />
<spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCSS" />

<link href="${helloCss}" rel="stylesheet" />
<link href="${fontAwesome}" rel="stylesheet" />
<link href="${bootstrapCSS}" rel="stylesheet" />
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-9">
				<table class="table table-striped table-hover table-bordered">

					<tr>
						<th>Matricula</th>
						<th>Modelo</th>
						<th>Fecha de Matriculación</th>
						<th>Kilometros</th>
						<th>Precio</th>
					</tr>
					<c:forEach items="${Coches}" var="coche">
							<tr>
							<td class="vert-align"><c:out value="${coche.matricula}" /></td>
							<td class="vert-align"><c:out value="${coche.modelo}" /></td>
							<td class="vert-align"><c:out value="${coche.fechaMatriculacion}" /></td>
							<td class="vert-align"><c:out value="${coche.km}" /></td>
							<td class="vert-align"><c:out value="${coche.precio}" /></td>
						</tr>
					</c:forEach>
					
				</table>
					</div>
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
