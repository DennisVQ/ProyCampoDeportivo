<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>

<!doctype html>
<html lang="esS">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Lector Online</title>
	<link href="css/estilos.css" rel="stylesheet" type="text/css">
	<sb:head />
</head>

<body>
	<header>
		<img src="img/logo.png" alt="logo"/>
		<img src="img/banner.jpg" alt="baner"/>
	</header>
	<aside>
		<nav>
		<a href="#">Historia</a>
		<a href="#">Filosofía</a>
		<a href="#">Literatura</a>
		<a href="#">Geografia</a>
		</nav>
	</aside>
	<div id="articulos">
		<s:actionerror theme="bootstrap" />
		<s:actionmessage theme="bootstrap" />
		<s:fielderror theme="bootstrap" />
		
	<div class="container">
		<h1>Listado de Productos</h1>

		<a class="btn btn-primary" href="listando">Ver data</a>
		<a class="btn btn-primary" href="registro.jsp">Registra</a>
	</div>

	<br>
	<br>
	<div class="container">
		<table class="table">

			<tr>
				<th></th>
				<th>Id</th>
				<th>Producto</th>
				<th>Precio</th>
				<th>Stock</th>
				<th></th>
				<th></th>
			</tr>
			<s:iterator value="lstproductos">
				    <tr class="grilla_campo">
					<td><img  src="img/<s:property value="codigo"/>.png" width="50px"></td>
					<td><s:property value="codigo"/> </td>
					<td><s:property value="nombre"/></td>
					<td><s:property value="precio"/></td>
					<td><s:property value="stock"/></td>
					<td>
					<s:url id="idPasar" action="pasarProd">
						<s:param name="codigo" value="codigo"/>
						<s:param name="nombre" value="nombre"/>
					</s:url>
					<s:a href="%{idPasar}"><img alt="" src="img/carro.png" width="23px" title="Pasar">
					</s:a> 
					</td>
					<td>
					</td>
				</tr>
			</s:iterator>
		</table>
	</div>
</div>

<footer>
	<p>
		Lector Online.Todos los Derechos Reservados. 2017.
	</p>
	<div>
		<img src="img/youtube.png" alt="youtube"/>
		<img src="img/twitter.png" alt="twitter"/>
		<img src="img/facebook.png" alt="facebook"/>
	</div>
</footer>
</body>
</html>
