<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="nav-container py-3 fixed-top" style="background-color: #0D2069">
    <nav class="navbar navbar-expand-md navbar-dark">

        <a href="#"><img class="foglogoheader" src="${pageContext.request.contextPath}/images/fogheaderlogo.png" alt="FogLogo"/></a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02"
                aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
            <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                <li class="nav-item">
                    <a class="nav-link my-navlinks" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <div class="dropdown">
                        <a class="dropdown-toggle nav-link my-navlinks" href="#" role="button" id="dropdownItems"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Items
                        </a>

                        <div class="dropdown-menu" aria-labelledby="dropdownItems">
                            <div class="list-group px-4 py-3">

                                <c:forEach items="${requestScope.version}" var="item" varStatus="vs">
                                <div class="row row-cols-1 row-cols-md-4">
                                    <div class="col-mb-3">
                                        <div class="card h-100 my-card" style="width: 18rem;">
                                            <div class="card-body">
                                                <h5 class="card-title">Special title treatment</h5>
                                                <p class="card-text">With supporting text below as a natural lead-in to
                                                    additional
                                                    content.</p>
                                                <button type="button"
                                                        class="list-group-item list-group-item-action text-center"
                                                        style="background-color: lightblue">
                                                        ${item}
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link my-navlinks" href="#">Disabled</a>
                </li>
            </ul>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link my-navlinks" href="#" data-toggle="modal" data-target="#myModal"><b>Login</b></a>
                </li>
            </ul>
        </div>
    </nav>
</div>