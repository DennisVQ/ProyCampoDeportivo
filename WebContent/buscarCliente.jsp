<%@taglib prefix="libreria" uri="WEB-INF/libreria.tld"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel=StyleSheet href="css/forms.css">
<title>Insert title here</title>
</head>
<body>
<header>
<table>
<tr bgcolor="#27AE60">
	<td width="50%">
	<h2>BUSCAR CLIENTE</h2>
	</td>
	<td width="10%">
		<img src="images/logo.png" width="130px" height="100px" align="right">
	</td>
</tr>
</table>
</header>
<hr>
<section>
<form action="RegistrarCliente" method="post">

<fieldset style="width: 250px;">
<legend>Buscar Cliente</legend>
<table>
	<tr>
		<td>Codigo:</td>
		<td><input type="text" name="txtCodigo" placeholder="Ingrese codigo de cliente" required maxlength="8"></td>
	</tr>
	
 </table>
<input type="submit" value="Buscar">
<input type="button" value="Cancelar">
</fieldset>
</form>
</section>

</body>
</html>