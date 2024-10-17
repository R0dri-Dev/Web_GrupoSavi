<%--
  Created by IntelliJ IDEA.
  User: rodri
  Date: 12/10/2024
  Time: 21:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sistema de Gestión - Grupo Savi</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  <script src="https://accounts.google.com/gsi/client" async defer></script>
  <style>
    body {
      background-color: #e8f4f8;
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100vh;
      background-image: linear-gradient(135deg, #e8f4f8 0%, #d4e7f7 100%);
    }
    .login-container {
      background-color: rgba(255, 255, 255, 0.9);
      border-radius: 15px;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
      padding: 2.5rem;
      width: 100%;
      max-width: 450px;
      transition: all 0.3s ease;
    }
    .login-container:hover {
      transform: translateY(-5px);
      box-shadow: 0 15px 35px rgba(0, 0, 0, 0.15);
    }
    h2, h3 {
      color: #2c3e50;
    }
    .form-control {
      border: none;
      border-bottom: 2px solid #bdc3c7;
      border-radius: 0;
      padding: 0.75rem 0;
      transition: all 0.3s ease;
    }
    .form-control:focus {
      box-shadow: none;
      border-color: #3498db;
    }
    .btn-primary {
      background-color: #3498db;
      border: none;
      padding: 0.75rem;
      transition: all 0.3s ease;
    }
    .btn-primary:hover {
      background-color: #2980b9;
      transform: translateY(-2px);
    }
  </style>
</head>
<body>
<div class="container">
  <div class="row justify-content-center">
    <div class="col-md-6">
      <div class="login-container">
        <h2 class="text-center mb-4">Sistema de Gestión</h2>
        <h3 class="text-center mb-4">Grupo Savi</h3>
        <form action="${pageContext.request.contextPath}/sistemaGestion" method="post">
          <div class="mb-4">
            <label for="username" class="form-label"><i class="bi bi-person-fill me-2"></i>Usuario</label>
            <input type="text" class="form-control" id="username" name="username" required>
          </div>
          <div class="mb-4">
            <label for="password" class="form-label"><i class="bi bi-lock-fill me-2"></i>Contraseña</label>
            <input type="password" class="form-control" id="password" name="password" required>
          </div>
          <div class="d-grid gap-2">
            <button type="submit" class="btn btn-primary btn-lg"><i class="bi bi-box-arrow-in-right me-2"></i>Ingresar</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
</body>
</html>