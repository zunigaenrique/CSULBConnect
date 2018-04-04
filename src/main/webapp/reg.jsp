<!DOCTYPE html>
<html lang="en">
<head>
    <%@include file="resources/header.jsp"%>
</head>


<body id="login">
<div id="content">
    <div class="container">
        <div class="row row justify-content-around">

            <div class="col-md-6">
                <div class="box">
                    <!-- -->
                    <h2>Sign Up</h2>
                    <hr />

                    <form class="align-items-center boxcontent">
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
                                <input class="form-control" type="email" value="password" id="example-email-input">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="example-email-input" class="col-2 col-form-label">Confirm</label>
                            <div class="col-10">
                                <input class="form-control" type="email" value="password" id="example-email-input">
                            </div>
                        </div>
                        <div class="col text-center">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-md-6">
                <div class="box">
                    <!-- -->
                    <h2>Sign In</h2>
                    <hr />

                    <form class="align-items-center boxcontent">
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
                        <div class="col text-center">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </form>
                </div>

                <div class="box">
                    <h4 class="text-center">Don't know your CSULB email?</h4>
                    <a href="https://beachid.csulb.edu/Lookup/"><p class="text-center">Click Here</p></a>
                </div>
            </div>

        </div>
    </div>
</div>


<%@include file="resources/footer.jsp"%>


</body>
</html>
