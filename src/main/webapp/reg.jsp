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

                    <form class="align-items-center boxcontent" id="regForm">
                        <div class="form-group row">
                            <label for="regName" class="col-2 col-form-label">Name</label>
                            <div class="col-10">
                                <input class="form-control" type="text" name="regName" placeholder="Name" id="regName">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="regEmail" class="col-2 col-form-label">Email</label>
                            <div class="col-10">
                                <input class="form-control" type="email" name="regEmail" placeholder="Email" id="regEmail">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="regPass" class="col-2 col-form-label">Password</label>
                            <div class="col-10">
                                <input class="form-control" type="password" name="regPass" placeholder="Password" id="regPass">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="regConfirm" class="col-2 col-form-label">Confirm</label>
                            <div class="col-10">
                                <input class="form-control" type="password" name="regConfirm" placeholder="Password" id="regConfirm">
                            </div>
                        </div>
                        <div class="col text-center">
                            <button type="submit" class="btn btn-primary" id="regSubmit">Submit</button>
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
                            <label for="loginEmail" class="col-2 col-form-label">Password</label>
                            <div class="col-10">
                                <input class="form-control" type="email" value="password" id="loginEmail">
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
<%--pw strength--%>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/lib/zxcvbn.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/formValidation.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/fv_bs.js"></script>
<script src="${pageContext.request.contextPath}/resources/login.js"></script>

</body>
</html>

