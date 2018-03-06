<%--
  Created by IntelliJ IDEA.
  User: JitendraSingh
  Date: 14/02/18
  Time: 1:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html ng-app="app">
<head>
    <title>index</title>
    <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"/>
    <link href="<c:url value='/static/css/login.css' />" rel="stylesheet"/>
    <link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"/>
</head>
<body>
<%--<header style="background: #a4a0a5; height: 70px; width: 100%">
    <p align="right" ng-show="islogin"><a href="#!/login" class="btn btn-primary" style="margin: 20px;">Logout</a></p>
</header>--%>

<div class="jumbotron">
    <div class="container">
        <div class="col-sm-8 col-sm-offset-2">
            <div ng-class="{ 'alert': flash, 'alert-success': flash.type === 'success', 'alert-danger': flash.type === 'error' }" ng-if="flash" ng-bind="flash.message"></div>
            <div ng-view></div>
        </div>
    </div>
</div>
<div class="credits text-center">
    <p>
        <%--<a href="http://jasonwatmore.com/post/2015/03/10/angularjs-user-registration-and-login-example-tutorial">AngularJS User Registration and Login Example</a>--%>
    </p>
    <p>
        <%--<a href="http://jasonwatmore.com">JasonWatmore.com</a>--%>
    </p>
</div>
<script src="<c:url value='/resource/angular.min.js'/>"></script>
<script src="<c:url value='/resource/angular-route.min.js'/>"></script>
<script src="<c:url value='/resource/angular-cookies.min.js'/>"></script>
<script src="<c:url value='/resource/jquery-3.1.1.min.js'/>"></script>

<script src="<c:url value='/static/js/service/app.js' />"></script>
<script src="<c:url value='/static/js/service/authentication.service.js' />"></script>
<script src="<c:url value='/static/js/service/flash.service.js' />"></script>
<script src="<c:url value='/static/js/service/user_service.js' />"></script>

<!-- Real user service that uses an api -->
<!-- <script src="app-services/user.service.js"></script> -->

<!-- Fake user service for demo that uses local storage -->
<script src="<c:url value='/static/js/service/user.service.local-storage.js'/>"></script>
<script src="<c:url value='/static/js/controller/home_controller.js' />"></script>
<script src="<c:url value='/static/js/controller/login_controller.js' />"></script>
<script src="<c:url value='/static/js/controller/register_controller.js' />"></script>
<script src="<c:url value='/static/js/controller/user_controller.js' />"></script>

</body>
</html>
