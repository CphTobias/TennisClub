<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>${requestScope.title}</title>
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
          integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
          crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"/>
</head>
<body>
<jsp:include page="/WEB-INF/navbar.jsp" flush="true"/>

<main role="main" class="container">

    <div class="content">
        <h1>TennisClub</h1>
        <p class="lead">
            This TennisClub app is designed to be a good way to keep track of tennis signups
        </p>
    </div>

</main>


</body>
</html>
