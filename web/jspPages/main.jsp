<%@ page import="webBeans.AuthorList" %>
<%@ page import="webBeans.Author" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Biblioteka</title>
    <link href="../css/style_main.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="container">
    <div class="header">
        <img src="../images/Index_library.jpg" alt="LOGO" width="150" height="100"/>
        <form class="search_form" name="search_form" method="post">
            <img src="../images/search.jpg" alt="search"/>
            <input type="text" name="search_String" value="" size="70"/>
            <input type="submit" name="search_button" value="Поиск"/>
            <select name="search_option">
                <option>Название</option>
                <option>Автор</option>
            </select>
        </form>
    </div><%--end header div--%>

    <div class="sidebar">
        <h3>Список авторов</h3>
        <ul class="nav">
            <%
                AuthorList authorList = new AuthorList();
                for (Author autor : authorList.getAuthorList()) {
            %>
            <li>
                <a href="#"><%=autor.getName()%>
                </a>
            </li>
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
