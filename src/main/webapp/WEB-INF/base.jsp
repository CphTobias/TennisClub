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

<!-- Cookies -->
<jsp:include page="includes/cookies.jsp" flush="true"/>

<!-- Footer -->
<jsp:include page="includes/footer.jsp" flush="true"/>

<script src="${pageContext.request.contextPath}/js/cookies.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
        crossorigin="anonymous"></script>

</body>

</html>
