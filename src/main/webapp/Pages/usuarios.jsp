<%--
  Created by IntelliJ IDEA.
  User: rodri
  Date: 15/10/2024
  Time: 20:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Usuarios</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <style>
        .sidebar {
            height: 100vh;
            background-color: #FEFEFE;
            display: flex;
            flex-direction: column;
            top: 0;
            overflow-y: auto;
        }
        .nav-link {
            color: #333;
            background-color: #FEFEFE;
            border-color: #2E58A8;
        }
        .nav-link:hover {
            background-color: #2E58A8;
            color: #FEFEFE;
        }
        .card {
            margin-bottom: 20px;
        }
        .logo {
            max-width: 150px;
            margin: 20px auto;
        }
        .logout-btn {
            margin-top: auto;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <!-- Sidebar -->
        <nav class="col-md-3 col-lg-2 d-md-block sidebar position-fixed">
            <div class="position-centered">
                <img src="${pageContext.request.contextPath}/Assets/image/logo.png" alt="Logo de la empresa" class="logo">
                <ul class="nav flex-column">
                    <li class="nav-item mb-4">
                        <a class="nav-link active" href="dashboard.jsp">
                            <i class="bi bi-speedometer2"></i> Dashboard
                        </a>
                    </li>
                    <li class="nav-item mb-4">
                        <a class="nav-link" href="${pageContext.request.contextPath}/Pages/usuarios.jsp">
                            <i class="bi bi-people-fill"></i> Usuarios
                        </a>
                    </li>
                    <li class="nav-item mb-4">
                        <a class="nav-link" href="${pageContext.request.contextPath}/Pages/clientes.jsp">
                            <i class="bi bi-person-circle"></i> Clientes
                        </a>
                    </li>
                    <li class="nav-item mb-4">
                        <a class="nav-link" href="${pageContext.request.contextPath}/Pages/catalogo.jsp">
                            <i class="bi bi-bag-check-fill"></i> Catalogo
                        </a>
                    </li>
                    <li class="nav-item mb-4">
                        <a class="nav-link" href="${pageContext.request.contextPath}/Pages/rolesPermisos.jsp">
                            <i class="bi bi-lock-fill"></i> Roles y permisos
                        </a>
                    </li>
                    <li class="nav-item mb-4">
                        <a class="nav-link" href="${pageContext.request.contextPath}/Pages/ofertas.jsp">
                            <i class="bi bi-bar-chart-fill"></i> Ofertas
                        </a>
                    </li>
                    <li class="nav-item mb-4">
                        <a class="nav-link" href="${pageContext.request.contextPath}/Pages/reportes.jsp">
                            <i class="bi bi-file-earmark-bar-graph-fill"></i> Reportes
                        </a>
                    </li>
                    <li class="nav-item mb-4">
                        <a class="nav-link" href="${pageContext.request.contextPath}/Pages/pedidos.jsp">
                            <i class="bi bi-cart-check-fill"></i> Pedidos
                        </a>
                    </li>
                    <li class="nav-item mb-4">
                        <a class="nav-link" href="${pageContext.request.contextPath}/Pages/servicios.jsp">
                            <i class="bi bi-bag"></i> Servicios
                        </a>
                    </li>
                    <li class="nav-item mb-4">
                        <a class="nav-link" href="${pageContext.request.contextPath}/Pages/servicioTecnico.jsp">
                            <i class="bi bi-tools"></i> Servicio técnico
                        </a>
                    </li>
                </ul>
                <div class="logout-btn">
                    <a class="btn btn-danger w-100" href="#" onclick="confirmLogout(event)">
                        <i class="bi bi-box-arrow-right"></i> Cerrar Sesión
                    </a>
                </div>

            </div>
            <script>
                function confirmLogout(event) {
                    event.preventDefault();
                    if (confirm("¿Estás seguro de que deseas cerrar sesión?")) {
                        window.location.href = "${pageContext.request.contextPath}/logout";
                    }
                }
            </script>

        </nav>

        <!-- Main content -->
        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                <h1 class="h2">Registro de usuarios</h1>
            </div>
            <div class="row">

            </div>
        </main>
    </div>
</div>


</body>
</html>