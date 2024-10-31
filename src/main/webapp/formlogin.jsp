<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<title>Login</title>
</head>

<body>
	<form id="formulario" name="formulario1" method="post" action="Login">
		<div class="row p-5">
		<h1>Login</h1>
			<div class="col-4">
				<div class=" mb-4">
					<label class="form-label" for="userName">Nome de Usuário</label> <input
						type="text" id="userName" name="userName" class="form-control"
						required />
				</div>

				<!-- Password input -->
				<div class="mb-4">
					<label class="form-label" for="password">Senha</label> <input
						type="password" id="password" name="password" required
						class="form-control" />
				</div>

				<input type="submit" name="button" id="button" value="Efetuar Login"
					class="btn btn-primary" />
			</div>
			<div class="col-2">
				<img src="login.svg" class="w-100" />
			</div>
		</div>

	</form>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
<body>
</html>