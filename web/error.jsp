<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error</title>
    <Style>
        body{
            background-image: linear-gradient(
            rgba(0, 0, 0, 0.7),
            rgba(180, 125, 125, 0.7)),
            url(Imagenes/Arepa1.jpg);
            font-family: Arial, sans-serif;
            background-color:#f0f0f0;
            margin: 0;
            padding: 0;
        }
                
        .Login{
        background-position: center bottom;
        background-repeat: no-repeat;
        background-size: cover;
        background-attachment: fixed;
        min-height: 100vh;
        align-items: center;
        padding: 10px 250px;
        }
        
        h1  {
        text-align: center;
        font-size: 50px;
        line-height: 80px;
        color: #F9FAFC;
        text-transform: uppercase;
        margin-bottom: 30px;
        }
        
        form {
        display: flex;
        flex-direction: column;
        max-width: 400px;
        margin: 50px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0,1);
        }
        
        label{
        display: block;
        margin-bottom: 8px;
        font-weight: bold;
        }
        
        input {type="text"},
        input {type="password"} {
        width: calc(100%-22px);
        margin-bottom: 20px;
        padding: 10px;
        border: 1px solid #ddd;
        border-radius: 5px;
        font-size: 16px;
        }
        
        .button {
        padding: 10px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        transition: background-color 0.3s ease;
        }
        
        .button-acceder {
        border-spacing: 10px;
        display: inline-block;
        padding: 11px 35px;
        background-color: #e6a683;
        color: #F9FAFC;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(241, 0, 0, 0.2);
        transition: transform 0.3;
        text-transform: uppercase;
        }

        .form button:hover {
        background-color: #d74f0b;
        }
        
        .error {
            color: red;
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <header class="Login">
    <section>
    <h1>Iniciar Sesión</h1>
    <form action="procesarFormulario" method="post" autocomplete="off" novalidate
        class="<%= request.getAttribute("errorExist") !=null ? "error-bg" : "" %>">
        <label for="Usuario">Usuario:</label>
        <input type="text" id="Usuario" name="Usuario" placeholder="Usuario" required>
        
        <label for="Contraseña">Contraseña:</label>
        <input type="password" id="Contraseña" name="Contraseña" placeholder="Contraseña" required>
        
        <div class="buttons">
            <button type="submit" class="button-acceder">Acceder</button>
        </div>
    </form>
    <% 
        String error = (String) request.getAttribute("error");
        if (error !=null) {
        %>
        <p class="error"><%=error %></p>
        <% 
            }
        %>
    </section>
    </header>
</body>
</html>
