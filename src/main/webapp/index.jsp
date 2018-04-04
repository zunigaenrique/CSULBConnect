<!DOCTYPE html>
<html lang="en">
<head>
    <%@include file="resources/header.jsp"%>
</head>

<body>

<div class="jumbotron">
    <div class="container">
        <!--
        <h1 class="display-3">Hello, world!</h1>
        <p>This is a template for a simple marketing or informational website. It includes a large callout called a jumbotron and three supporting pieces of content. Use it as a starting point to create something more unique.</p>
        <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more &raquo;</a></p>
      -->
        <!-- <div class="container" id="modaldemo">
        <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#exampleModal">
        demo modal (event creation, etc)
      </button>
      <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
      <div class="modal-header">
      <h5 class="modal-title" id="exampleModalLabel">Create an Event</h5>
      <button type="button" class="close" data-dismiss="modal" aria-label="Cancel">
      <span aria-hidden="true">&times;</span>
    </button>
    </div>
    <div class="modal-body">
    <form class="align-items-center">
    <div class="form-group row">
    <label for="example-text-input" class="col-2 col-form-label">Name</label>
    <div class="col-10">
    <input class="form-control" type="text" value="Name" id="example-text-input">
    </div>
    </div>
    <div class="form-group row">
    <label for="example-search-input" class="col-2 col-form-label">Email</label>
    <div class="col-10">
    <input class="form-control" type="search" value="CSULB email" id="example-search-input">
    </div>
    </div>
    <div class="form-group row">
    <label for="example-email-input" class="col-2 col-form-label">Password</label>
    <div class="col-10">
    <input class="form-control" type="email" value="password"" id="example-email-input">
    </div>
    </div>
    <div class="form-group row">
    <label for="example-email-input" class="col-2 col-form-label">Confirm</label>
    <div class="col-10">
    <input class="form-control" type="email" value="password"" id="example-email-input">
    </div>
    </div>
    </form>
    </div>
    <div class="modal-footer">
    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
    <button type="button" class="btn btn-primary">Submit</button>
    </div>
    </div>
    </div>
    </div>
    </div> -->

        <div class="container" id="modaldemo">
            <%--<button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#groupsmodal" id="modalbutton">--%>
                <%--groups modal--%>
            <%--</button>--%>
            <%--<button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#addevent" >--%>
                <%--add event--%>
            <%--</button>--%>
            <%--<button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#exampleModal" >--%>
                <%--add group--%>
            <%--</button>--%>
            <div class="modal fade" id="groupsmodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id=""></h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Cancel">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body row">
                            <div class="col-sm-8"><img src="resources/img/temp/bookclub.jpg" /></div>
                            <div class="col-sm-4">
                                <h3>Book Club</h3>
                                <p class="muted">Members: 10</p>
                                <button type="button" class="btn btn-secondary">Join Us</button>

                            </div>
                        </div>
                        <div class="modal-body">

                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">About Us</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Events</a>
                                </li>
                            </ul>
                            <div class="tab-content" id="myTabContent">
                                <div class="tab-pane fade show active about" id="home" role="tabpanel" aria-labelledby="home-tab"><p >Est veniam fugiat et do culpa nisi proident incididunt ullamco voluptate consectetur incididunt nisi est ullamco eu. Nostrud qui velit culpa excepteur ipsum duis aliquip sit nulla dolore officia mollit ut minim aute laborum. Adipisicing reprehenderit veniam fugiat tempor ullamco enim pariatur consequat sint irure voluptate commodo. Amet non nisi anim cupidatat amet voluptate est reprehenderit eiusmod adipisicing exercitation ad nisi proident qui sint tempor. Amet nostrud laboris duis magna non commodo adipisicing culpa velit deserunt proident duis est. Adipisicing duis officia laborum eiusmod nulla aute culpa dolore tempor incididunt.</p>
                                    <p>Excepteur id cupidatat ea id ea anim consequat consectetur. Veniam sit duis ipsum nostrud ullamco Lorem esse mollit irure aliquip amet eiusmod. In voluptate ipsum occaecat tempor voluptate voluptate dolore cupidatat labore ex laborum. Veniam excepteur exercitation culpa nulla elit labore elit mollit. Id dolore commodo cupidatat eiusmod laborum nulla officia nulla reprehenderit est culpa duis excepteur enim dolor esse. Irure excepteur in veniam cillum id officia ad deserunt cillum est eiusmod velit sint eu id eiusmod.</p>
                                </div>
                                <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">

                                    <div class="card">
                                        <div class="card-block">
                                            <h4 class="card-title">Book Club Meeting</h4>
                                            <h6 class="card-subtitle mb-2 text-muted">Book Club</h6>
                                            <p class="card-text"><small class="text-muted">LA5 245<br />4:30PM 3/6/18</small></p>
                                            <p class="card-text">Minim voluptate deserunt et amet occaecat qui fugiat. Mollit cupidatat et Lorem minim ut labore cupidatat. Laborum esse irure veniam consectetur exercitation consectetur est aliquip incididunt nisi mollit magna ut ad excepteur.</p>
                                            <h5 class="attending">12 attending</h5>
                                        </div>
                                    </div>
                                    <div class="card">
                                        <div class="card-block">
                                            <h4 class="card-title">Phys 345 Midterm Study</h4>
                                            <h6 class="card-subtitle mb-2 text-muted">Book Club</h6>
                                            <p class="card-text"><small class="text-muted">Library, third floor<br />4:30PM 3/6/18</small></p>
                                            <p class="card-text">Cupidatat exercitation culpa excepteur culpa officia nostrud cupidatat adipisicing nulla nisi ea culpa elit quis tempor sit laborum. Ullamco ad irure exercitation occaecat amet irure reprehenderit labore nulla cillum. Sint cupidatat aute velit enim dolore officia nostrud.</p>
                                            <h5 class="attending">12 attending</h5>

                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <!-- <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Submit</button>
                      </div> -->
                    </div>
                </div>
            </div>
            <div class="modal fade" id="addevent" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Add an Event</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Cancel">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body row">

                                <form class="form form-horizontal">

                                        <div class="form-group row">
                                            <label  class="col- control-label"
                                                    for="inputEmail3">Email</label>
                                            <div class="">
                                                <input type="email" class="form-control"
                                                       id="inputEmail3" placeholder="Email"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label"
                                                   for="inputPassword3" >Password</label>
                                            <div class="col-sm-10">
                                                <input type="password" class="form-control"
                                                       id="inputPassword3" placeholder="Password"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-offset-2 col-sm-10">
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox"/> Remember me
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-offset-2 col-sm-10">
                                                <button type="submit" class="btn btn-default">Sign in</button>
                                            </div>
                                        </div>
                                    </form>


                        </div>

                        <!-- <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Submit</button>
                      </div> -->
                    </div>
                </div>
            </div>

        </div>


    </div>

    <div class="container" id="search">
        <div class="input-group">
    <span class="input-group-btn">
      <button class="btn btn-secondary" type="button">Events</button>
    </span>
            <span class="input-group-btn">
      <button class="btn btn-secondary" type="button">Groups</button>
    </span>
            <input type="text" class="form-control" placeholder="Search">
        </div>
    </div>
</div>


<div class="container" id="content">
    <div class="card-deck">
        <div class="card">
            <a data-toggle="modal" data-target="#groupsmodal">
            <img class="card-img img-fluid" src="resources/img/temp/bookclub.jpg" />
            <div class="card-img-overlay filter"> </div>
            <div class="card-img-overlay">
                <h2 class="card-title">Book Club</h2>
                <p class="memberCount">10 members</p>
            </div>
            </a>

        </div>

        <div class="card">
            <img class="card-img img-fluid" src="resources/img/temp/soccer.jpg" />
            <div class="card-img-overlay filter"> </div>
            <div class="card-img-overlay">
                <h2 class="card-title">Soccer Club</h2>
                <p class="memberCount">25 members</p>
            </div>
        </div>

        <div class="card">
            <img class="card-img img-fluid" src="resources/img/temp/hiking.jpg" />
            <div class="card-img-overlay filter"> </div>
            <div class="card-img-overlay">
                <h2 class="card-title">Hiking</h2>
                <p class="memberCount">10 members</p>
            </div>
        </div>
    </div>

    <div class="card-deck">
        <div class="card">
            <img class="card-img img-fluid" src="resources/img/temp/bookclub.jpg" />
            <div class="card-img-overlay filter"> </div>
            <div class="card-img-overlay">
                <h2 class="card-title">Book Club</h2>
                <p class="memberCount">10 members</p>
            </div>
        </div>

        <div class="card">
            <img class="card-img img-fluid" src="resources/img/temp/soccer.jpg" />
            <div class="card-img-overlay filter"> </div>
            <div class="card-img-overlay">
                <h2 class="card-title">Soccer Club</h2>
                <p class="memberCount">25 members</p>
            </div>
        </div>

        <div class="card">
            <img class="card-img img-fluid" src="resources/img/temp/hiking.jpg" />
            <div class="card-img-overlay filter"> </div>
            <div class="card-img-overlay">
                <h2 class="card-title">Heading</h2>
                <p class="memberCount">10 members</p>
            </div>
        </div>

    </div>

    <div class="card-deck">
        <div class="card">
            <img class="card-img img-fluid" src="resources/img/temp/bookclub.jpg" />
            <div class="card-img-overlay filter"> </div>
            <div class="card-img-overlay">
                <h2 class="card-title">Book Club</h2>
                <p class="memberCount">10 members</p>
            </div>
        </div>

        <div class="card">
            <img class="card-img img-fluid" src="resources/img/temp/soccer.jpg" />
            <div class="card-img-overlay filter"> </div>
            <div class="card-img-overlay">
                <h2 class="card-title">Soccer Club</h2>
                <p class="memberCount">25 members</p>
            </div>
        </div>

        <div class="card">
            <img class="card-img img-fluid" src="resources/img/temp/hiking.jpg" />
            <div class="card-img-overlay filter"> </div>
            <div class="card-img-overlay">
                <h2 class="card-title">Heading</h2>
                <p class="memberCount">10 members</p>
            </div>
        </div>
    </div>
</div>



<%@include file="resources/footer.jsp"%>
<%--<script src="jquery-3.1.1.slim.min.js"></script>--%>
<%--<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>--%>
<%--<script src="https://v4-alpha.getbootstrap.com/dist/js/bootstrap.min.js"></script>--%>
<%--<script src="https://cdnjs.cloudflare.com/ajax/libs/less.js/3.0.0/less.min.js" ></script>--%>


</body>
</html>


<%--<!doctype html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
    <%--<meta charset="utf-8">--%>
    <%--<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">--%>
    <%--<meta name="description" content="">--%>
    <%--<meta name="author" content="">--%>
    <%--&lt;%&ndash;<link rel="icon" href="../../../../favicon.ico">&ndash;%&gt;--%>

    <%--<title>Jumbotron Template for Bootstrap</title>--%>
<%--<jsp:include page="header.jsp"/>--%>
<%--</head>--%>

<%--<body>--%>

<%--&lt;%&ndash;<nav class="navbar navbar-inverse navbar-fixed-top">&ndash;%&gt;--%>
    <%--&lt;%&ndash;<div class="container">&ndash;%&gt;--%>
        <%--&lt;%&ndash;<div class="navbar-header">&ndash;%&gt;--%>
            <%--&lt;%&ndash;<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<span class="sr-only">Toggle navigation</span>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<span class="icon-bar"></span>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<span class="icon-bar"></span>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<span class="icon-bar"></span>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</button>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<a class="navbar-brand" href="#">Project name</a>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<div id="navbar" class="navbar-collapse collapse">&ndash;%&gt;--%>
            <%--&lt;%&ndash;<form class="navbar-form navbar-right">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="form-group">&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<input type="text" placeholder="Email" class="form-control">&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="form-group">&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<input type="password" placeholder="Password" class="form-control">&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<button type="submit" class="btn btn-success">Sign in</button>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</form>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</div><!--/.navbar-collapse -->&ndash;%&gt;--%>
    <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;</nav>&ndash;%&gt;--%>

<%--<main role="main">--%>

    <%--<!-- Main jumbotron for a primary marketing message or call to action -->--%>
    <%--<div class="jumbotron">--%>
        <%--<div class="container">--%>
            <%--<h1 class="display-3">Hello, world!</h1>--%>
            <%--<p>This is a template for a simple marketing or informational website. It includes a large callout called a jumbotron and three supporting pieces of content. Use it as a starting point to create something more unique.</p>--%>
            <%--<p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more &raquo;</a></p>--%>
        <%--</div>--%>
    <%--</div>--%>

    <%--<div class="container">--%>
        <%--<!-- Example row of columns -->--%>
        <%--<div class="row">--%>
            <%--<div class="col-md-4">--%>
                <%--<h2>Heading</h2>--%>
                <%--<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>--%>
                <%--<p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>--%>
            <%--</div>--%>
            <%--<div class="col-md-4">--%>
                <%--<h2>Heading</h2>--%>
                <%--<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>--%>
                <%--<p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>--%>
            <%--</div>--%>
            <%--<div class="col-md-4">--%>
                <%--<h2>Heading</h2>--%>
                <%--<p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>--%>
                <%--<p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>--%>
            <%--</div>--%>
        <%--</div>--%>

        <%--<hr>--%>

    <%--</div> <!-- /container -->--%>

<%--</main>--%>

<%--<footer class="container">--%>
    <%--<p>&copy; Company 2017-2018</p>--%>
<%--</footer>--%>

<%--<!-- Bootstrap core JavaScript--%>
<%--================================================== -->--%>
<%--<jsp:include page="footer.jsp"/>--%>
<%--</body>--%>
<%--</html>--%>
