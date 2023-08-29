<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
<link rel="shortcut icon" href="imagem/binario_fav_icone.png" type="image/x-icon">
<link rel="stylesheet" href="style.css">
<title>Blog Code & Afins</title>
</head>
<body>

    <header>
        <h2 class="logo">Blog & Code Afins</h2>
        <nav class="navigation">
            <a href="index.jsp">Início</a>
            <a href="#">Pesquisar</a>
            <a href="#">Perfil</a>
            <a href="#">Sobre</a>
            <a href="#">Contato</a>
            <button class="botaoLogin_PopUp">Login</button>
        </nav>
   </header>

    <div class="wrapper">
        <span class="icon-close">
            <ion-icon name="close-sharp"></ion-icon>
        </span>

        <div class="form-box login">
            <h2>Login</h2>
            <form action="/login" method="POST">
                <div class="input-box">
                   <span class="icon">
                        <ion-icon name="mail"></ion-icon>
                    </span>
                   <input type="email" name="email" required> 
                   <label>Email</label>
                </div>
                <div class="input-box">
                   <span class="icon">
                        <ion-icon name="lock-closed"></ion-icon>
                    </span>
                   <input type="password" name="password" required> 
                   <label>Senha</label>
                </div>
                <div class="lembrar-esquecer">
                    <label><input type="checkbox">Lembre-me</label>
                    <br>
                    <a href="#">Eu aceito os Termos de Uso</a>
                </div>
                <button type="submit" class="botao" name="enviarDados">Login</button>
                <div class="login-resgistrado">
                    <p>Não tem nenhuma Conta? <a href="#" class="registro-link">Registre</a></p>
                </div>
            </form>
        </div>

        <div class="form-box register">
            <h2>Registração</h2>
            <form action="/register"  method="POST">
                <div class="input-box">
                   <span class="icon">
                        <ion-icon name="person"></ion-icon>
                    </span>
                   <input type="text" name="username" required> 
                   <label>Nome de Usuário</label>
                </div>
                <div class="input-box">
                   <span class="icon">
                        <ion-icon name="mail"></ion-icon>
                    </span>
                   <input type="email" name="email" required> 
                   <label>Email</label>
                </div>
                <div class="input-box">
                   <span class="icon">
                        <ion-icon name="lock-closed"></ion-icon>
                    </span>
                   <input type="password" name="password" required> 
                   <label>Senha</label>
                </div>
                <div class="lembrar-esquecer">
                    <label><input type="checkbox">Lembre-me</label>
                    <a href="#">Esqueceu Senha?</a>
                </div>
                <button type="submit" class="botao" name="enviarDados">Registrar</button>
                <div class="login-resgistrado">
                    <p>Já possuí uma Conta? <a href="#" class="login-link">Login</a></p>
                </div>
            </form>
        </div>
    </div>





    <footer>
        Desenvolvido por <a href="https://hto.ifsp.edu.br/institucional/" target="_blank"  class="no-underline">IFSP</a> &copy 2023 - <span id="current-year"></span>
    </footer>

    
    

    <script>
        const currentYear = new Date().getFullYear();
        document.getElementById('current-year').textContent = currentYear;
    </script>
   
   <script src="script.js"></script>    
   <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
   <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>