<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page import="java.util.Map" %>

<%
    Map<String, String> errores = (Map<String, String>) request.getAttribute("errores");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Manejo de Formularios</title>
</head>
<body>

<h1>Manejo de Formulario</h1>

<div>
    <form action="/Formulario/ingresar" method="post">
        <!-- Campo Usuario -->
        <div>
            <label for="username">Ingrese el usuario</label>
            <input type="text" name="username" id="username" placeholder="usuario">
            <% if (errores != null && errores.get("username") != null) { %>
            <div style="color: red;"><%= errores.get("username") %></div>
            <% } %>
        </div>

        <!-- Campo Contraseña -->
        <div>
            <label for="password">Ingrese la contraseña</label>
            <input type="password" name="password" id="password">
            <% if (errores != null && errores.get("password") != null) { %>
            <div style="color: red;"><%= errores.get("password") %></div>
            <% } %>
        </div>

        <!-- Campo Email -->
        <div>
            <label for="email">Ingrese el email</label>
            <input type="email" name="email" id="email" placeholder="Email">
            <% if (errores != null && errores.get("email") != null) { %>
            <div style="color: red;"><%= errores.get("email") %></div>
            <% } %>
        </div>

        <!-- Lenguajes de programación -->
        <div>
            <label for="lenguajes">Lenguajes de programación</label>
            <div>
                <select name="lenguajes" id="lenguajes" multiple>
                    <option value="Java" selected>Java SE</option>
                    <option value="jakartaaee" selected>Jakarta EE</option>
                    <option value="php" selected>PHP</option>
                    <option value="laravel">LARAVEL</option>
                    <option value="springboot">SPRING BOOT</option>
                </select>
            </div>
        </div>

        <!-- Campo Idioma -->
        <div>
            <label>Selecciona el idioma</label>
            <div>
                <input type="radio" name="idioma" value="Es">
                <label>Español</label>
            </div>
            <div>
                <input type="radio" name="idioma" value="En">
                <label>Inglés</label>
            </div>
            <div>
                <input type="radio" name="idioma" value="Ru">
                <label>Ruso</label>
            </div>
            <% if (errores != null && errores.get("idioma") != null) { %>
            <div style="color: red;"><%= errores.get("idioma") %></div>
            <% } %>
        </div>

        <!-- Nacionalidad -->
        <div>
            <label>Nacionalidad</label>
            <div>
                <select name="pais" id="pais">
                    <option value="">----Seleccione un país---</option>
                    <option value="EC">Ecuador</option>
                    <option value="PE">Perú</option>
                    <option value="CO">Colombia</option>
                    <option value="CH">Chile</option>
                    <option value="AR">Argentina</option>
                </select>
                <% if (errores != null && errores.get("pais") != null) { %>
                <div style="color: red;"><%= errores.get("pais") %></div>
                <% } %>
            </div>
        </div>

        <!-- Roles -->
        <div>
            <label>Roles</label>
            <div>
                <input type="checkbox" name="roles" value="Role_Admin">
                <label>Administrador</label>
            </div>
            <div>
                <input type="checkbox" name="roles" value="Role_User">
                <label>Usuario</label>
            </div>
            <div>
                <input type="checkbox" name="roles" value="Role_Digitador">
                <label>Digitador</label>
            </div>
        </div>

        <!-- Habilitar -->
        <div>
            <label for="Habilitar">Habilitar</label>
            <div>
                <input type="checkbox" name="Habilitar" id="Habilitar" checked>
                <label>Habilitar</label>
            </div>
        </div>

        <!-- Botón Enviar -->
        <div>
            <input type="submit" value="Enviar">
        </div>
    </form>
</div>

</body>
</html>
