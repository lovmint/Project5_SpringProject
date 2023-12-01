<%--
  Created by IntelliJ IDEA.
  User: sumin
  Date: 2023/11/30
  Time: 11:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@page import="com.example.BoardDAO, com.example.BoardVO,java.util.*"%>
<%@page import="com.example.BoardVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
  <head>
    <title>Title</title>
    <style>
      #list {
        font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
        border-collapse: collapse;
        width: 100%;
      }
      #list td, #list th {
        border: 1px solid #ddd;
        padding: 8px;
        text-align:center;
      }

    </style>
    <script>
      function delete_ok(id){
        var a = confirm("정말로 삭제하겠습니까?");
        if(a) location.href='deleteOK/' + id;
      }
    </script>
  </head>
  <body>
    <h1>일반공지</h1>
    <table id="list" width="90%">
      <tr>
        <th>Id</th>
        <th>Title</th>
        <th>Writer</th>
        <th>Content</th>
        <th>Category</th>
        <th>Edit</th>
        <th>Delete</th>
      </tr>
      <c:forEach items="${list}" var="u">
        <tr>
          <td>${u.getSeq()}</td>
          <td><a href="view/${u.getSeq()}">${u.getTitle()}</a></td>
          <td>${u.getWriter()}</td>
          <td>${u.getContent()}</td>
          <td>${u.getCategory()}</td>
          <td><a href="editform/${u.getSeq()}">Edit</a></td>
          <td><a href="javascript:delete_ok('${u.getSeq()}')">Delete</a></td>
        </tr>
      </c:forEach>
    </table>

    <br/><a href="add">Add New Post</a>
  </body>
</html>
