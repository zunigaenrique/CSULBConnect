<jsp:include page="header.jsp"/>

<html>

<head>

    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

    <title>Welcome</title>

</head>

<body>

<table align="center">
    1>2 is: ${1>2} (should display as either 0 or false)

    <tr>

        <td><a href="login">Login</a>

        </td>

        <td><a href="register">Register</a>

        </td>

    </tr>

</table>

<div class="container .col-xs-6 .col-md-4">
    <a href="login" class="btn btn-link">Login
    </a>
</div>

</body>

</html>

<jsp:include page="footer.jsp" />