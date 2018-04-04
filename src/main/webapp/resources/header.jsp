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
    <a class="navbar-brand" href="${pageContext.request.contextPath}/index"><img src="resources/img/logo.png" height=30px /></a>
    <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <!-- <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
        <a class="nav-link" href="#">Home</a>
      </li>
      <li class="nav-item">
      <a class="nav-link" href="#">Link</a>
    </li>
    <li class="nav-item">
    <a class="nav-link disabled" href="#">Disabled</a>
    </li>
    <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" href="http://example.com" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown</a>
    <div class="dropdown-menu" aria-labelledby="dropdown01">
    <a class="dropdown-item" href="#">Action</a>
    <a class="dropdown-item" href="#">Another action</a>
    <a class="dropdown-item" href="#">Something else here</a>
    </div>
    </li>
    </ul> -->
        <ul class="navbar-nav ml-auto">
            <!-- <li id="loggedout" class="nav-item active" id="login">
              <a class="nav-link" href="#">Log In/ Sign Up</a>
            </li> -->
            <li class="nav-item">
                <a class="nav-link" data-toggle="modal" data-target="#addevent" >Add an Event</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Add a Group</a>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle nav-link active" data-toggle="dropdown" href="#">Jane Doe
                    <span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <!-- <li><a class="nav-link" href="#">Page 1-1</a></li> -->
                    <li><a class="nav-link" href="#">My Events</a></li>
                    <li><a class="nav-link" href="${pageContext.request.contextPath}/reg">Sign Out</a></li>
                </ul>
            </li>
        </ul>

    </div>
</nav>
