<%--<%@ taglib prefix="c"  tagdir="http://oracle.com/jsp/jstl/core/"%>--%>
<%@ page import="webBeans.AuthorList" %>
<%@ page import="webBeans.Author" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Biblioteka</title>
    <link href="../css/style_main.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="container">
    <div class="header">
        <div class="logo">
        <img src="../images/library.png" alt="LOGO" name="logo"/>
        </div>

        <div class="descr">
            <h3>Онлайн библиотека проекта</h3>
        </div>
        <div class="search_form">
        <form name="search_form" method="post">
            <input type="text" name="search_String" value="" size="70"/>
            <input class="search_button" type="submit" name="search_button" value="Поиск"/>
            <select name="search_option">
                <option>Название книги</option>
                <option>Автор</option>
            </select>
        </form>
        </div>
    </div><%--end header div--%>

    <div class="sidebar1">
        <h3>Список авторов</h3>
        <ul class="nav">
            <jsp:useBean id="authorList" class="webBeans.AuthorList" scope="application"/>
<%--            <c:forEach var="author" items="${authorList.getAuthorList()}">--%>
<%--                <li><a href="#">${author.name}</a> </li>--%>
<%--            </c:forEach>--%>
            <%
                for (Author author:authorList.getAuthorList()) {
            %>
            <li><a href="#"><%=author.getName()%></a></li>
            <%}%>
        </ul>
        <p>&nbsp;</p><%--это неразрывный пробел, чтобы наприм Фамилия и инициаля не печатались на разн строках--%>
    </div><%--end sidebar div--%>

    <div class="content">
        <h1>&nbsp;</h1>
        <p>&nbsp;</p>
    </div>

</div><%--end container div--%>

</body>
</html>
