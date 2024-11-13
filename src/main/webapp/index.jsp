<%--Incluimos el tag del page--%>
<%@page contentType="text/html" pageEncoding ="UTF-8" %>

<%--importar libreria utilMap--%>
<%@page import="java.util.Map" %>

<%--incluimos un scriplets para llamar a los errores--%>
<%
    Map<String,String> errores = (Map<String, String>) request.getAttribute("errores");
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Manejo de formularios</title>
</head>
<body>

<h1>Manejo de Formulario</h1>
<%--implementamos una condicion para saber si existe errores o no
eso queires decir si esta vacio estar lleno--%>

<%
    if(errores != null && errores.size()>0){

%>
<ul>
    <%
        //listamos  los errores

        for (String error:errores.values()){


    %>
    <li>
        <%=error%>
    </li>
    <%
        }
    %>

</ul>
<%
    }
%>



<div>
  <form action="/Formulario/ingresar" method="post">
    <div>
      <label for="username">Ingrese el usuario</label>
      <input type="text" name="username" id="username" placeholder="usuario">
    </div>
    <div>
      <label for="password">Ingrese la contraseña</label>
      <input type="password" name="password" id="password">
    </div>
    <div>
      <label for="email">Ingrese el email</label>
      <input type="email" name="email" id="email" placeholder="Email">
    </div>
      <!--Lenguajes de progrmación select -->
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

    <label> Seleciona el idioma </label>
    <div>
      <input type="radio" name="idioma" value="Es">
      <label>Español</label>
    </div>
    <div>
      <input type="radio" name="idioma" value="En">
      <label>Igles</label>
    </div>
    <div>
      <input type="radio" name="idioma" value="Ru">
      <label>Ruso</label>
    </div>
   </div>
   <div>
    <label>Nacionalidad</label>
    <div>
      <select name="pais" id="pais">
      <option value="">----Seleccione un pais---</option>
      <option value="EC">Ecuador</option>
      <option value="PE">Peru</option>
      <option value="CO">Colombia</option>
      <option value="CH">Chile</option>
      <option value="AR">Argentina</option>
      </select>
    </div>
   </div>
   <------ROLES------------>
   <div>
    <label>Roles</label>
    <div>
      <input type="checkbox" name="roles" value="Role_Admin"> ></input>
      <label>Administrador</label>
    </div>
    <div>
      <input type="checkbox" name="roles" value="Role_User"> ></input>
      <label>Usuario</label>
    </div>
    <div>
      <input type="checkbox" name="roles" value="Role_Digitador"> ></input>
      <label>Digitador</label>
    </div>
   </div>
    <!--Checkboox-->
   <div>
   <label for="Habilitar">Habilitar</label>
   <div>
    <input type="checkbox" name="Habilitar" id="Habilitar" checked>
    <label>Habilitar</label>
   </div>
   </div>
    <div>
      <input type="submit" value="Enviar">
    </div>
  </form>
</div>

</body>
</html>