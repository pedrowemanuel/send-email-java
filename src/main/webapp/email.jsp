<!DOCTYPE html>

	<%
	if(session.getAttribute("user") == null) {
		response.sendRedirect("formlogin.jsp");
	}
	%>

<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Projeto Send Mail 1.0 - TJW</title>
</head>
<body>
    <div>
        <h1 align="center">Formulário de Envio de Emails</h1>
        <p align="center">Captura automática de parâmetros da Requisição usando JavaBeans - <a href="Logout">Sair</a></p>
    </div>
    <form action="SendMail" method="post" name="form_sendmail">
        <p>&nbsp;</p>
        <table width="230" border="0" align="center">
            <tr>
                <td width="70">Assunto:</td>
                <td width="144"><input type="text" name="subject" required></td>
            </tr>
            <tr>
                <td>Destinatário:</td>
                <td><input type="email" required name="to"></td>
            </tr>
            <tr>
                <td>Mensagem:</td>
                <td><textarea name="message" id="textarea" cols="45" rows="5"></textarea></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" name="sendmail" value="Enviar e-mail"></td>
            </tr>
        </table>
        <p>&nbsp;</p>
    </form>
</body>
</html>
