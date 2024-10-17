<%--
  Created by IntelliJ IDEA.
  User: rodri
  Date: 11/10/2024
  Time: 09:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%
  HttpSession currentSession = request.getSession(false);
  if (currentSession == null || currentSession.getAttribute("usuario") == null) {
    response.sendRedirect(request.getContextPath() + "/Pages/sistemaGestion.jsp?error=not_logged_in");
    return;
  }
%>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Dashboard - Venta de Melamina</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
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
        <h1 class="h2">Dashboard de Ventas de Melamina</h1>
      </div>

      <div class="row">
        <!-- Ventas Totales Card -->
        <div class="col-md-3 mb-4">
          <div class="card bg-primary text-white">
            <div class="card-body">
              <h5 class="card-title">Ventas Totales</h5>
              <h2 class="card-text">$50,000</h2>
              <p class="card-text"><i class="bi bi-arrow-up"></i> 15% desde el mes pasado</p>
            </div>
          </div>
        </div>

        <!-- Clientes Totales Card -->
        <div class="col-md-3 mb-4">
          <div class="card bg-success text-white">
            <div class="card-body">
              <h5 class="card-title">Clientes Totales</h5>
              <h2 class="card-text">1,250</h2>
              <p class="card-text"><i class="bi bi-person-plus"></i> 50 nuevos este mes</p>
            </div>
          </div>
        </div>

        <!-- Productos Vendidos Card -->
        <div class="col-md-3 mb-4">
          <div class="card bg-info text-white">
            <div class="card-body">
              <h5 class="card-title">Productos Vendidos</h5>
              <h2 class="card-text">500</h2>
              <p class="card-text"><i class="bi bi-box-seam"></i> 100 melaminas vendidas</p>
            </div>
          </div>
        </div>

        <!-- Ingresos por Melamina Card -->
        <div class="col-md-3 mb-4">
          <div class="card bg-warning text-dark">
            <div class="card-body">
              <h5 class="card-title">Ingresos por Melamina</h5>
              <h2 class="card-text">$30,000</h2>
              <p class="card-text"><i class="bi bi-currency-dollar"></i> 60% de las ventas totales</p>
            </div>
          </div>
        </div>
      </div>

      <div class="row">
        <!-- Gráfico de Ventas -->
        <div class="col-md-8 mb-4">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Ventas de Melamina por Mes</h5>
              <canvas id="ventasChart"></canvas>
            </div>
          </div>
        </div>

        <!-- Top 5 Productos de Melamina -->
        <div class="col-md-4 mb-4">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Top 5 Productos de Melamina</h5>
              <ul class="list-group">
                <li class="list-group-item d-flex justify-content-between align-items-center">
                  Melamina Blanca
                  <span class="badge bg-primary rounded-pill">210</span>
                </li>
                <li class="list-group-item d-flex justify-content-between align-items-center">
                  Melamina Nogal
                  <span class="badge bg-primary rounded-pill">185</span>
                </li>
                <li class="list-group-item d-flex justify-content-between align-items-center">
                  Melamina Roble
                  <span class="badge bg-primary rounded-pill">150</span>
                </li>
                <li class="list-group-item d-flex justify-content-between align-items-center">
                  Melamina Cerezo
                  <span class="badge bg-primary rounded-pill">120</span>
                </li>
                <li class="list-group-item d-flex justify-content-between align-items-center">
                  Melamina Gris
                  <span class="badge bg-primary rounded-pill">100</span>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>

      <div class="row">
        <!-- Gráfico de Distribución de Ventas -->
        <div class="col-md-6 mb-4">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Distribución de Ventas por Tipo de Melamina</h5>
              <canvas id="distribucionVentasChart"></canvas>
            </div>
          </div>
        </div>

        <!-- Mapa de Calor de Ventas -->
        <div class="col-md-6 mb-4">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Mapa de Calor de Ventas por Región</h5>
              <div id="mapaCalorVentas" style="height: 300px;"></div>
            </div>
          </div>
        </div>
      </div>
    </main>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="https://cdn.jsdelivr.net/npm/heatmap.js"></script>
<script>
  // Gráfico de ventas
  var ctx = document.getElementById('ventasChart').getContext('2d');
  var myChart = new Chart(ctx, {
    type: 'line',
    data: {
      labels: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun'],
      datasets: [{
        label: 'Ventas de Melamina',
        data: [12000, 19000, 15000, 20000, 18000, 23000],
        borderColor: 'rgb(75, 192, 192)',
        tension: 0.1
      }]
    },
    options: {
      responsive: true,
      scales: {
        y: {
          beginAtZero: true
        }
      }
    }
  });

  // Gráfico de distribución de ventas
  var ctxDistribucion = document.getElementById('distribucionVentasChart').getContext('2d');
  var distribucionChart = new Chart(ctxDistribucion, {
    type: 'pie',
    data: {
      labels: ['Blanca', 'Nogal', 'Roble', 'Cerezo', 'Gris', 'Otros'],
      datasets: [{
        data: [30, 25, 20, 15, 5, 5],
        backgroundColor: [
          'rgba(255, 99, 132, 0.8)',
          'rgba(54, 162, 235, 0.8)',
          'rgba(255, 206, 86, 0.8)',
          'rgba(75, 192, 192, 0.8)',
          'rgba(153, 102, 255, 0.8)',
          'rgba(255, 159, 64, 0.8)'
        ]
      }]
    },
    options: {
      responsive: true,
      plugins: {
        legend: {
          position: 'right',
        },
        title: {
          display: true,
          text: 'Distribución de Ventas por Tipo de Melamina'
        }
      }
    }
  });

  // Mapa de calor de ventas (simulado)
  var heatmapInstance = h337.create({
    container: document.querySelector('#mapaCalorVentas')
  });
  var points = [];
  var max = 0;
  var width = 840;
  var height = 400;
  var len = 200;

  while (len--) {
    var val = Math.floor(Math.random()*100);
    max = Math.max(max, val);
    var point = {
      x: Math.floor(Math.random()*width),
      y: Math.floor(Math.random()*height),
      value: val
    };
    points.push(point);
  }
  var data = {
    max: max,
    data: points
  };
  heatmapInstance.setData(data);
</script>
</body>
</html>