<!DOCTYPE html>
<html lang="en">
<head>
    <%@include file="resources/header.jsp" %>
</head>

<style>
err   {color: red;}
</style>
    
<body id="login">
<div id="content">
    <div class="container">
        <div class="row row justify-content-around">
            <div class="col-md-6">
                <div class="box">
                    <!-- -->
                    <h2>Sign In</h2>
                    <hr/>

                    <form action= "login" id="loginForm" modelAttribute="login" method="post" class="align-items-center boxcontent">
                            <div class="form-group row">
                            <label for="loginEmail" class="col-2 col-form-label">Email</label>
                            <div class="col-9">
                                <input class="form-control" type="email" name="email" placeholder="" id="email">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="loginPass" class="col-2 col-form-label">Password</label>
                            <div class="col-9">
                                <input class="form-control" type="password" name="password" placeholder="" id="password">
                            </div>
                        </div>
                            <div class="col text-center">
                                <button class="btn btn-primary" id="regSubmit" >Submit</button>
                            </div>
                        <err>${message}</err>
                    </form>
                </div>
            </div>
            <div class="col-md-6">
                <div class="box">
                    <h4 class="text-center">Don't know your CSULB email?</h4>
                    <a href="https://beachid.csulb.edu/Lookup/"><p class="text-center">Click Here</p></a>
                </div>
                <div class="box">
                    <h4 class="text-center">Don't have an account?</h4>
                    <a href="/register"><p class="text-center"> Click here to register</p></a>
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

</body>
</html>

