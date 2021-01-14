<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Manage</title>
    <jsp:include page="part/header.jsp"/>
</head>
<body>

<div class="site-wrap">

    <jsp:include page="part/navManage.jsp"/>
    <!--Table-->
    <div align="center">
        <br/>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal1">
            Insert
        </button>
        <br/>
        <h2>${alert}</h2>
        <br/>
        <table class="table table-striped table-bordered table-sm table-hover">
            <thead>
            <tr>
                <th class="th-sm" scope="col">#</th>
                <th class="th-sm" scope="col">Username</th>
                <th class="th-sm" scope="col">First Name</th>
                <th class="th-sm" scope="col">Last Name</th>
                <th class="th-sm" scope="col">Date</th>
                <th class="th-sm" scope="col"></th>
                <th class="th-sm" scope="col"></th>
            </tr>
            </thead>
            <!--Table head-->

            <!--Table body-->
            <tbody>
            <c:forEach var="u" items="${listUser}">
                <tr>
                    <th scope="row">${u.id}</th>
                    <td>${u.username}</td>
                    <td>${u.firstname}</td>
                    <td>${u.lastname}</td>
                    <td><fmt:formatDate value="${u.date}" pattern="dd-MM-yyyy"/></td>
                    <td><a href="/edit/${u.id}">Edit</a></td>
                    <td><a href="/delete/${u.id}">Delete</a></td>
                </tr>
            </c:forEach>
            </tbody>
            <!--Table body-->


        </table>
        <!--Table-->
    </div>
    <jsp:include page="part/modals.jsp"/>
    <jsp:include page="part/footer.jsp"/>
</div>

<jsp:include page="part/javascript.jsp"/>

</body>
</html>