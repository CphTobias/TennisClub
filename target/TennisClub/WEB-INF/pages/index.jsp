<%@ page contentType="text/html;charset=UTF-8" %>
<div class="content">
    <h1>TennisClub</h1>
    <p class="lead">
        This TennisClub app is designed to be a good way to keep track of tennis signups
    </p>

    <form action="${pageContext.request.contextPath}/createmember/" method="GET">
        <button type="submit" class="btn btn-primary">To Memberpage</button>
    </form>

</div>