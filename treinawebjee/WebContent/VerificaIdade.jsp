<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Verificador de Idade</title>
</head>
<body>
	<form action="SvtVerificaIdade">
		<table style="border:0px">
			<tr>
				<td>
					Nome:
				</td>
				<td>
					<input type="text" name="nome"/>
				</td>
			</tr>
						<tr>
				<td>
					Idade:
				</td>
				<td>
					<input type="text" name="idade"/>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="Enviar"/>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>