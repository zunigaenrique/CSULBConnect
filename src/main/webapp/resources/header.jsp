<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="resources/img/favicon.png">

    <title>CSULBConnect</title>


    <link href="resources/lib/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet/less" type="text/css" href="resources/custom.less" />
</head>


<nav class="navbar navbar-toggleable-md navbar-inverse fixed-top bg-inverse">
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand" href="${pageContext.request.contextPath}/"><img src="resources/img/logo.png" height=30px /></a>
    <div class="collapse navbar-collapse" id="navbarsExampleDefault">

        <ul class="navbar-nav ml-auto">
            <li class="dropdown">
                <a class="dropdown-toggle nav-link active" data-toggle="dropdown" href="#">My Account
                    <span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a class="nav-link" href="#">My Events</a></li>
                    <li><a class="nav-link" href="${pageContext.request.contextPath}/login">Sign Out</a></li>
                </ul>
            </li>
        </ul>

    </div>
</nav>
