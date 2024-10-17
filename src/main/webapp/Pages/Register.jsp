<%--
  Created by IntelliJ IDEA.
  User: rodri
  Date: 11/10/2024
  Time: 21:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Registro - Venta de Melamina</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  <script src="https://accounts.google.com/gsi/client" async defer></script>
  <style>
    body {
      background-color: #f8f9fa;
    }
    .register-container {
      background-color: rgba(255, 255, 255, 0.9);
      border-radius: 15px;
      box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
    }
    .company-image {
      /*background-image: url('ruta_a_tu_imagen_de_empresa.jpg');*/
      background-size: cover;
      background-position: center;
      min-height: 100%;
      border-radius: 0 15px 15px 0;
    }
  </style>
</head>
<body>
<div class="container mt-5">
  <div class="row justify-content-center">
    <div class="col-md-10">
      <div class="card register-container">
        <div class="row g-0">
          <div class="col-md-6">
            <div class="card-body p-5">
              <div class="text-center mb-4">
                <img src="logo.png" alt="Logo de la empresa" class="img-fluid mb-3" style="max-width: 150px;">
                <h2 class="card-title">Registro de Cliente</h2>
              </div>
              <form>
                <div class="mb-3">
                  <label for="nombre" class="form-label"><i class="bi bi-person-fill me-2"></i>Nombre completo</label>
                  <input type="text" class="form-control" id="nombre" required>
                </div>
                <div class="mb-3">
                  <label for="email" class="form-label"><i class="bi bi-envelope-fill me-2"></i>Correo electrónico</label>
                  <input type="email" class="form-control" id="email" required>
                </div>
                <div class="mb-3">
                  <label for="password" class="form-label"><i class="bi bi-lock-fill me-2"></i>Contraseña</label>
                  <input type="password" class="form-control" id="password" required>
                </div>
                <div class="mb-3">
                  <label for="confirm-password" class="form-label"><i class="bi bi-lock-fill me-2"></i>Confirmar contraseña</label>
                  <input type="password" class="form-control" id="confirm-password" required>
                </div>
                <div class="d-grid gap-2">
                  <button type="submit" class="btn btn-primary btn-lg"><i class="bi bi-person-plus-fill me-2"></i>Registrarse</button>
                </div>
              </form>
              <hr>
              <div class="text-center">
                <p>O regístrate con:</p>
                <div id="g_id_onload"
                     data-client_id="TU_ID_DE_CLIENTE_DE_GOOGLE"
                     data-context="signup"
                     data-ux_mode="popup"
                     data-callback="handleCredentialResponse"
                     data-auto_prompt="false">
                </div>
                <div class="g_id_signin"
                     data-type="standard"
                     data-shape="rectangular"
                     data-theme="outline"
                     data-text="signup_with"
                     data-size="large"
                     data-logo_alignment="left">
                </div>
              </div>
              <div class="mt-3 text-center">
                <p>¿Ya tienes una cuenta? <a href="#" class="text-decoration-none"><i class="bi bi-box-arrow-in-right me-1"></i>Inicia sesión aquí</a></p>
              </div>
            </div>
          </div>
          <div class="col-md-6 company-image d-none d-md-block">
            <!-- Aquí irá la imagen de la empresa -->
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<script>
  function handleCredentialResponse(response) {
    // Aquí manejarías la respuesta de Google Sign-In
    console.log("ID: " + response.credential);
    // Envía el token ID al servidor para verificación y registro
  }
</script>
</body>
</html>