<!DOCTYPE html>
<html lang="en">
<head>
    <%@include file="resources/header.jsp" %>
</head>


<body id="login">
<div id="content">
    <div class="container">
        <div class="row row justify-content-around">

            <div class="col-md-6">
                <div class="box">
                    <!-- -->
                    <h2>Sign Up</h2>
                    <hr/>
                    <div id="regForm">
                    <form class="align-items-center boxcontent" id="reg1">
                        <%--<div id="reg1">--%>
                            <div class="form-group row">
                                <label for="regName" class="col-3 col-form-label">First Name</label>
                                <div class="col-9">
                                    <input class="form-control" type="text" name="regName" placeholder=""
                                           id="regName">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="regLName" class="col-3 col-form-label">Last Name</label>
                                <div class="col-9">
                                    <input class="form-control" type="text" name="regLName" placeholder=""
                                           id="regLName">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="regEmail" class="col-3 col-form-label">Email</label>
                                <div class="col-9">
                                    <input class="form-control" type="email" name="regEmail" placeholder=""
                                           id="regEmail">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="regPass" class="col-3 col-form-label">Password</label>
                                <div class="col-9">
                                    <input class="form-control" type="password" name="regPass" placeholder=""
                                           id="regPass">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="regConfirm" class="col-3 col-form-label">Confirm</label>
                                <div class="col-9">
                                    <input class="form-control" type="password" name="regConfirm" placeholder=""
                                           id="regConfirm">
                                </div>
                            </div>
                            <p class="text-center text-muted" id="conf">Or confirm your registration</p>
                            <div class="col text-center">
                                <button class="btn btn-primary" id="regSubmit">Submit</button>
                            </div>
                        <%--</div>--%>
                    </form>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="box">
                    <!-- -->
                    <h2>Sign In</h2>
                    <hr/>

                    <form class="align-items-center boxcontent">
                        <div class="form-group row">
                            <label for="loginEmail" class="col-2 col-form-label">Email</label>
                            <div class="col-10">
                                <input class="form-control" type="email" value="" id="loginEmail">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="loginPassword" class="col-2 col-form-label">Password</label>
                            <div class="col-10">
                                <input class="form-control" type="password" value="" id="loginPassword">
                            </div>
                        </div>
                        <div class="col text-center">
                            <button type="submit" class="btn btn-primary" id="loginSubmit">Submit</button>
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

<%@include file="resources/footer.jsp" %>
<%--pw strength--%>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/lib/zxcvbn.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/formValidation.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/fv_bs.js"></script>
<script src="${pageContext.request.contextPath}/resources/login.js"></script>

</body>
</html>

