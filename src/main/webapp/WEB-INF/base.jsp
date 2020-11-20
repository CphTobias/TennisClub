<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>${requestScope.title}</title>

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Big+Shoulders+Display:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
          integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
          crossorigin="anonymous">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"/>
</head>

<body class="d-flex flex-column h-100 bg-light">

<jsp:include page="/WEB-INF/includes/navbar.jsp" flush="true"/>

<main role="main" class="container flex-shrink-0" id="main">
    <jsp:include page="${requestScope.content}" flush="true"/>
    <jsp:include page="includes/modalpopup.jsp" flush="true"/>
    <jsp:include page="includes/svgtesting.jsp" flush="true"/>
    <button type="button" onclick="generatePDF()" class="btn btn-success">Generate PDF</button>
</main>

<footer class="footer flex-shrink-0 text-white">
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-2">
            <h3 class="my-footerheader">Hvordan køber jeg?</h3>
            <a class="my-footerlinks" href="#">Ofte Stillede spørgsmål</a>
            <br>
            <a class="my-footerlinks" href="#">Bliv kunde i Fog</a>
            <br>
        </div>
        <div class="col-md-2">
            <h3 class="my-footerheader">Aktuelt</h3>
            <a class="my-footerlinks" href="#">Tilbud</a>
            <br>
            <a class="my-footerlinks" href="#">Facebook</a>
            <br>
            <a class="my-footerlinks" href="#">Instagram</a>
            <br>
            <a class="my-footerlinks" href="#">LinkedIn</a>
            <br>
        </div>
        <div class="col-md-2">
            <h3 class="my-footerheader">Om Fog</h3>
            <a class="my-footerlinks" href="#">Åbningstider</a>
            <br>
            <a class="my-footerlinks" href="#">Om Fog</a>
            <br>
            <a class="my-footerlinks" href="#">Cookie-politik</a>
            <br>
            <a class="my-footerlinks" href="#">Persondata</a>
        </div>
        <div class="col-md-2">
            <br>
            <p class="fog-info">Johannes Fog</p>
            <br>
        </div>
        <div class="col-md-2"></div>
    </div>
    <div class="row bottom-footer py-1">
        <div class="col">
            <p style="margin-top: 10px">
                Johannes Fog A/S - Firskovvej 20 - 2800 Lyngby - CVR-nr. 16314439
            </p>
        </div>
    </div>
</footer>


<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.0.272/jspdf.debug.js"></script>
<script src="${pageContext.request.contextPath}/js/script.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
        crossorigin="anonymous"></script>

</body>

</html>
