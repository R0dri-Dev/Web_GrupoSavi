<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ventas de Melamina</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <style>
        .sidebar {
            min-height: 100vh;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            background-color: #2E58A8;;
        }

        .collapse{
            background-color: #FEFEFE;
        }
        .nav-link {
            padding: 0.5rem 1.5rem;
            transition: all 0.3s ease;
        }
        .nav-link:hover {
            background-color: #2E58A8;
        }
        .accordion-button:not(.collapsed) {
            background-color: #f8f9fa;
            color: #2E58A8;
        }
        .accordion-body {
            padding: 0;
        }
        .accordion-body .nav-link {
            padding-left: 3rem;
        }
        .header {
            background-color: #FEFEFE;
            padding: 1rem 0;
        }
        .logo {
            max-height: 50px;
        }
        .carousel-item img {
            height: 400px;
            object-fit: cover;
        }
        .card-img-top {
            height: 200px;
            object-fit: cover;
        }
        footer {
            background-color: #343a40;
            color: #ffffff;
            padding: 3rem 0;
        }
        footer a {
            color: #ffffff;
            text-decoration: none;
        }
        footer a:hover {
            color: #17a2b8;
        }
        .footer-logo {
            max-width: 150px;
        }
    </style>
</head>
<body>
<header class="header w-100">
    <div class="container-fluid">
        <div class="row align-items-center">
            <div class="col-12 col-md-2 mb-3 mb-md-0">
                <img src="Assets/image/logo.png" alt="Logo" class="logo">
            </div>
            <div class="col-12 col-md-6 mb-3 mb-md-0">
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Buscar" aria-label="Buscar">
                    <button class="btn btn-outline-success" type="submit">Buscar</button>
                </form>
            </div>
            <div class="col-12 col-md-4 text-end">
                <a href="#" class="btn btn-outline-primary me-2">
                    <i class="bi bi-cart"></i>
                </a>
                <div class="dropdown d-inline-block">
                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                        Iniciar Sesión
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                        <li><a class="dropdown-item" href="Pages/login.jsp">Iniciar sesión</a></li>
                        <li><a class="dropdown-item" href="Pages/Register.jsp">Registrarse</a></li>
                        <li><a class="dropdown-item" href="Pages/sistemaGestion.jsp">Sistema de gestión</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</header>
<div class="container-fluid">
    <div class="row">
        <!-- Barra lateral (Aside) -->
        <aside class="col-md-3 col-lg-2 d-md-block sidebar px-0">
            <div class="position-sticky pt-3">
                <h3 class="text-center text-light mb-4">Categoria</h3>
                <div class="list-group list-group-flush">
                    <a class="list-group-item list-group-item-action d-flex align-items-center" data-bs-toggle="collapse" href="#homeCollapse" aria-expanded="false" aria-controls="homeCollapse">
                        <i class="bi bi-house-door me-2"></i> Inicio <i class="bi bi-chevron-down ms-auto"></i>
                    </a>
                    <div class="collapse" id="homeCollapse">
                        <a class="list-group-item list-group-item-action" href="#">Página de inicio</a>
                    </div>
                    <a class="list-group-item list-group-item-action d-flex align-items-center" data-bs-toggle="collapse" href="#productosCollapse" aria-expanded="false" aria-controls="productosCollapse">
                        <i class="bi bi-box-seam me-2"></i> Productos  <i class="bi bi-chevron-down ms-auto"></i>
                    </a>
                    <div class="collapse" id="productosCollapse">
                        <a class="list-group-item list-group-item-action" href="#">Por Color</a>
                        <a class="list-group-item list-group-item-action" href="#">Por Espesor</a>
                        <a class="list-group-item list-group-item-action" href="#">Por Marca</a>
                        <a class="list-group-item list-group-item-action" href="#">Por Textura</a>
                    </div>
                    <a class="list-group-item list-group-item-action d-flex align-items-center" data-bs-toggle="collapse" href="#ofertasCollapse" aria-expanded="false" aria-controls="ofertasCollapse">
                        <i class="bi bi-tag me-2"></i> Ofertas  <i class="bi bi-chevron-down ms-auto"></i>
                    </a>
                    <div class="collapse" id="ofertasCollapse">
                        <a class="list-group-item list-group-item-action" href="#">Descuentos por Color</a>
                        <a class="list-group-item list-group-item-action" href="#">Promociones por Espesor</a>
                        <a class="list-group-item list-group-item-action" href="#">Ofertas por Marca</a>
                    </div>
                    <a class="list-group-item list-group-item-action d-flex align-items-center" data-bs-toggle="collapse" href="#contactoCollapse" aria-expanded="false" aria-controls="contactoCollapse">
                        <i class="bi bi-envelope me-2"></i> Contacto  <i class="bi bi-chevron-down ms-auto"></i>
                    </a>
                    <div class="collapse" id="contactoCollapse">
                        <a class="list-group-item list-group-item-action" href="#">Formulario de contacto</a>
                    </div>
                </div>
            </div>
        </aside>

        <!-- Contenido principal -->
        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                <h1 class="h2">Ventas de Melamina</h1>
            </div>

            <!-- Carrusel de imágenes -->
            <div id="carouselExampleIndicators" class="carousel slide mb-4" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="https://via.placeholder.com/800x400?text=Melamina+1" class="d-block w-100" alt="Melamina 1">
                    </div>
                    <div class="carousel-item">
                        <img src="https://via.placeholder.com/800x400?text=Melamina+2" class="d-block w-100" alt="Melamina 2">
                    </div>
                    <div class="carousel-item">
                        <img src="https://via.placeholder.com/800x400?text=Melamina+3" class="d-block w-100" alt="Melamina 3">
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Anterior</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Siguiente</span>
                </button>
            </div>

            <!-- Cards de productos -->
            <div class="row row-cols-1 row-cols-md-3 g-4">
                <div class="col">
                    <div class="card h-100">
                        <img src="https://via.placeholder.com/300x200?text=Tablón+Melamina+Blanco" class="card-img-top" alt="Tablón Melamina Blanco">
                        <div class="card-body">
                            <h5 class="card-title">Tablón Melamina Blanco</h5>
                            <p class="card-text">
                            <ul>
                                <li>Color: Blanco</li>
                                <li>Espesor: 18mm</li>
                                <li>Dimensiones: 2.44m x 1.22m</li>
                                <li>Acabado: Liso</li>
                            </ul>
                            </p>
                            <button class="btn btn-primary">Añadir al carrito</button>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <img src="https://via.placeholder.com/300x200?text=Tablón+Melamina+Roble" class="card-img-top" alt="Tablón Melamina Roble">
                        <div class="card-body">
                            <h5 class="card-title">Tablón Melamina Roble</h5>
                            <p class="card-text">
                            <ul>
                                <li>Color: Roble</li>
                                <li>Espesor: 15mm</li>
                                <li>Dimensiones: 2.44m x 1.22m</li>
                                <li>Acabado: Texturizado</li>
                            </ul>
                            </p>
                            <button class="btn btn-primary">Añadir al carrito</button>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <img src="https://via.placeholder.com/300x200?text=Tablón+Melamina+Nogal" class="card-img-top" alt="Tablón Melamina Nogal">
                        <div class="card-body">
                            <h5 class="card-title">Tablón Melamina Nogal</h5>
                            <p class="card-text">
                            <ul>
                                <li>Color: Nogal</li>
                                <li>Espesor: 25mm</li>
                                <li>Dimensiones: 2.44m x 1.22m</li>
                                <li>Acabado: Mate</li>
                            </ul>
                            </p>
                            <button class="btn btn-primary">Añadir al carrito</button>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <img src="https://via.placeholder.com/300x200?text=Tablón+Melamina+Cerezo" class="card-img-top" alt="Tablón Melamina Cerezo">
                        <div class="card-body">
                            <h5 class="card-title">Tablón Melamina Cerezo</h5>
                            <p class="card-text">
                            <ul>
                                <li>Color: Cerezo</li>
                                <li>Espesor: 18mm</li>
                                <li>Dimensiones: 2.44m x 1.22m</li>
                                <li>Acabado: Brillante</li>
                            </ul>
                            </p>
                            <button class="btn btn-primary">Añadir al carrito</button>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <img src="https://via.placeholder.com/300x200?text=Tablón+Melamina+Gris" class="card-img-top" alt="Tablón Melamina Gris">
                        <div class="card-body">
                            <h5 class="card-title">Tablón Melamina Gris</h5>
                            <p class="card-text">
                            <ul>
                                <li>Color: Gris</li>
                                <li>Espesor: 22mm</li>
                                <li>Dimensiones: 2.44m x 1.22m</li>
                                <li>Acabado: Satinado</li>
                            </ul>
                            </p>
                            <button class="btn btn-primary">Añadir al carrito</button>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <img src="https://via.placeholder.com/300x200?text=Tablón+Melamina+Wengué" class="card-img-top" alt="Tablón Melamina Wengué">
                        <div class="card-body">
                            <h5 class="card-title">Tablón Melamina Wengué</h5>
                            <p class="card-text">
                            <ul>
                                <li>Color: Wengué</li>
                                <li>Espesor: 20mm</li>
                                <li>Dimensiones: 2.44m x 1.22m</li>
                                <li>Acabado: Veteado</li>
                            </ul>
                            </p>
                            <button class="btn btn-primary">Añadir al carrito</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row row-cols-1 row-cols-md-3 g-4 mt-4">
                <div class="col">
                    <div class="card h-100">
                        <img src="https://via.placeholder.com/300x200?text=Tablón+Melamina+Blanco" class="card-img-top" alt="Tablón Melamina Blanco">
                        <div class="card-body">
                            <h5 class="card-title">Tablón Melamina Blanco</h5>
                            <p class="card-text">
                            <ul>
                                <li>Color: Blanco</li>
                                <li>Espesor: 15mm</li>
                                <li>Dimensiones: 2.44m x 1.22m</li>
                                <li>Acabado: Mate</li>
                            </ul>
                            </p>
                            <button class="btn btn-primary">Añadir al carrito</button>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <img src="https://via.placeholder.com/300x200?text=Tablón+Melamina+Roble" class="card-img-top" alt="Tablón Melamina Roble">
                        <div class="card-body">
                            <h5 class="card-title">Tablón Melamina Roble</h5>
                            <p class="card-text">
                            <ul>
                                <li>Color: Roble</li>
                                <li>Espesor: 18mm</li>
                                <li>Dimensiones: 2.44m x 1.22m</li>
                                <li>Acabado: Natural</li>
                            </ul>
                            </p>
                            <button class="btn btn-primary">Añadir al carrito</button>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <img src="https://via.placeholder.com/300x200?text=Tablón+Melamina+Negro" class="card-img-top" alt="Tablón Melamina Negro">
                        <div class="card-body">
                            <h5 class="card-title">Tablón Melamina Negro</h5>
                            <p class="card-text">
                            <ul>
                                <li>Color: Negro</li>
                                <li>Espesor: 22mm</li>
                                <li>Dimensiones: 2.44m x 1.22m</li>
                                <li>Acabado: Brillante</li>
                            </ul>
                            </p>
                            <button class="btn btn-primary">Añadir al carrito</button>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>

<footer class="bg-dark text-light py-4 mt-4">
    <div class="container">
        <div class="row">
            <div class="col-md-4 mb-3 mb-md-0">
                <h5>Grupo Savi</h5>
                <p>Especialistas en melamina y soluciones para el hogar y la industria.</p>
            </div>
            <div class="col-md-4 mb-3 mb-md-0">
                <h5>Enlaces rápidos</h5>
                <ul class="list-unstyled">
                    <li><a href="#" class="text-light">Inicio</a></li>
                    <li><a href="#" class="text-light">Productos</a></li>
                    <li><a href="#" class="text-light">Ofertas</a></li>
                    <li><a href="#" class="text-light">Contacto</a></li>
                </ul>
            </div>
            <div class="col-md-4">
                <h5>Contáctanos</h5>
                <address>
                    <p><i class="bi bi-geo-alt-fill me-2"></i>Av. Principal 123, Ciudad</p>
                    <p><i class="bi bi-telephone-fill me-2"></i>(123) 456-7890</p>
                    <p><i class="bi bi-envelope-fill me-2"></i>info@gruposavi.com</p>
                </address>
            </div>
        </div>
        <hr class="my-4">
        <div class="row">
            <div class="col-md-6 text-center text-md-start">
                <p>&copy; 2024 Grupo Savi. Todos los derechos reservados.</p>
            </div>
            <div class="col-md-6 text-center text-md-end">
                <a href="#" class="text-light me-2"><i class="bi bi-facebook"></i></a>
                <a href="#" class="text-light me-2"><i class="bi bi-twitter"></i></a>
                <a href="#" class="text-light me-2"><i class="bi bi-instagram"></i></a>
                <a href="#" class="text-light"><i class="bi bi-linkedin"></i></a>
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-12 text-center">
                <h6>Desarrolladores:</h6>
                <p>Rodrigo Tejeda, Janluvi Burga, Maryori Ysique, Abner Cubas</p>
            </div>
        </div>
    </div>
</footer>

</body>
</html>