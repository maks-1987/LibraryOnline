<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8"/>
    <title>OnlineLib::Enter</title>
    <link href="css/style_index.css" rel="stylesheet" type="text/css"/>
</head>

<body>
<div class="main">
    <div class="content">
        <p class="title"><span class="text"><img src="images/Index_library.jpg" height="150px" width="250px"
                                                  alt="Index_lib"></span></p>
        <p class="title">Библиотека онлайн</p>
        <p class="text">Добропожаловать!</p>
        <p class="text">Проект еще в разработке</p>
        <p class="text">По всем вопросам обращайтесь по адресу <a
                href="mailto:support@testlib.com">support@testlib.com</a></p>
        <p>&nbsp;</p> <%--это неразрывный пробел, чтобы наприм Фамилия и инициаля не печатались на разн строках--%>
    </div>

    <div class="login_div">
        <p class="title">Для входа введите данные в поле:</p>
        <form class="login_form" name="username" action="jspPages/main.jsp" method="post">
            Имя: <label>
            <input type="text" name="username" value="" size="20"/>
        </label>
            <input type="submit" value="Войти"/>
        </form>
    </div>

    <div class="footer">
        Developed by Max D., 2019
    </div>
</div>

</body>


</html>