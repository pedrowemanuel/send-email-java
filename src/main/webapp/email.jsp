<%@ include file="check-auth.jsp" %>

<!DOCTYPE html>

<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<title>Projeto Send Mail 1.0 - TJW</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
</head>
<body>
	<div>
		<h1 align="center">Formulário de Envio de Emails</h1>
		<p align="center">
			Captura automática de parâmetros da Requisição usando JavaBeans - <a
				href="Logout" class="text-danger">Sair</a>
		</p>
	</div>
	<form action="SendMail" method="post" name="form_sendmail">
		<p>&nbsp;</p>
		<table width="540" border="0" align="center">
			<tr>
				<td width="70">Assunto:</td>
				<td width="244"><input type="text" name="subject" class="form-control" required></td>
			</tr>
			<tr>
				<td>Destinatário:</td>
				<td><input type="email" class="form-control" required name="to"></td>
			</tr>
			<tr>
				<td>Mensagem:</td>
				<td><textarea name="message" class="form-control" id="textarea" cols="45" rows="5"></textarea></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" name="sendmail" value="Enviar e-mail"
					class="btn btn-primary mt-2"></td>
			</tr>
		</table>
		<p>&nbsp;</p>
	</form>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
</body>
</html>
