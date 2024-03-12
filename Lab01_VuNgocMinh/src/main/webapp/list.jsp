<%-- 
    Document   : list
    Created on : Oct 4, 2023, 8:13:13 AM
    Author     : Minh Vu
--%>

<%-- 
    Document   : list
    Created on : Oct 4, 2023, 8:13:13 AM
    Author     : Minh Vu
--%>

<%@page import="Models.Account"%>
<%@page import="DAO.AccountDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>List page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css"/>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#tb').DataTable();
        });
    </script>
</head>
<body>
    <c:choose>
        <c:when test="${empty cookie.username.value}">
            <c:redirect url="index.jsp" />
        </c:when>
        <c:otherwise>
            <c:set var="username" value="${cookie.username.value}" />
            <c:set var="acc_dao" value="${DAO.AccountDAO}" />
            <c:set var="account" value="${acc_dao.getAcount(username)}" />

            Hello, ${account.fullname}<a href="AccountServlet">   Sign out</a>
            <br>
            <br>
            <table id="tb" class="table table-striped" style="width:100%">
                <thead>
                    <tr>
                        <th>Username</th>
                        <th>Full Name</th>
                        <th>Gender</th>
                        <th>Birthday</th>
                        <th>Department</th>
                    </tr>
                </thead>
                <tbody>
                    <c:set var="dao" value="${DAO.AccountDAO}" />
                    <c:set var="rs" value="${dao.getAll()}" />
                    <c:forEach var="row" items="${rs.rows}">
                        <tr>
                            <td>${row.username}</td>
                            <td>${row.fullname}</td>
                            <td>${row.gender}</td>
                            <td>${row.birthday}</td>
                            <td>${row.department}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:otherwise>
    </c:choose>
</body>
</html>
