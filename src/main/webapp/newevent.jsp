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
                    <h2>New Event</h2>
                    <hr/>

                    <form action= "newevent" id="eventForm" modelAttribute="event" method="post" class="align-items-center boxcontent">
              <div class="form-group">
                <label for="event-name" class="col-2 col-form-label">Event Name:</label>
                <div class="col-lg-10">
                  <input type="text" class="form-control" id="event-name" placeholder="Enter Event Name" name = "event-name">
                </div>
              </div>

              <div class="form-group">
                <label for="event-location" class="col-lg-2 control-label">Location:</label>
                <div class="col-lg-10">
                  <input type="text" class="form-control" id="event-location" placeholder="Enter Location Details" name = "event-location">
                </div>
              </div>

              <div class="form-group">
                <span for="event-date" class="col-lg-2 control-label">Enter Date and Time:</span>
                <div class="col-lg-10">
                  <input type="datetime-local" class="form-control" id="event-date" placeholder="Enter Date and Time of Event" name="event-date">
                </div>
              </div>

              <div class="form-group">
                <span for="event-description" class="col-lg-2 control-label">Description of Event</span>
                <div class="col-lg-10">
                  <input type="text" class="form-control" id="event-description" placeholder="Enter Description Here" name="event-description">
                </div>
              </div>
                <div class="col text-center">
                    <button class="btn btn-primary" id="event">Submit</button>
                </div>
                    </form>
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

