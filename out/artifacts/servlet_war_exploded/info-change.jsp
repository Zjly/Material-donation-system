<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>修改信息</title>
        <link href="css/demo.css" rel="stylesheet" type="text/css">
        <%@ include file="common/base.jsp"%>
    </head>
    <body>
        <section id="getintouch" class="fadeIn animated">
            <div class="container" style="border-bottom: 0;">
                <h1>
                    <span>修改个人信息</span>
                </h1>
            </div>
            <div class="container">
                <form class="contact" action="userServlet" method="post" id="form">
                <div class="row clearfix">
                    <div class="lbl">
                        <label for="name">
                            昵称</label>
                    </div>
                    <div class="ctrl">
                        <input type="text" id="name" name="name" style="width: 300px" placeholder="昵称" value="${requestScope.detail.name}">
                    </div>
                </div>&emsp;&emsp;
                <div class="row clearfix">
                    <div class="lbl">
                        <label for="time">
                            创建日期</label>
                    </div>
                    <div class="ctrl">
                        <input type="text" id="time" name="time"  style="width: 300px" placeholder="Ex: 111-258-444" value="${requestScope.detail.time}">
                    </div>
                </div><br>
<%--                <div class="row clearfix">--%>
<%--                    <div class="lbl">--%>
<%--                        <label for="credit">--%>
<%--                            机构</label>--%>
<%--                    </div>--%>
<%--                    <div class="ctrl">--%>
<%--                        <input type="text" id="credit" name="credit" style="width: 300px" placeholder="个人/机构名">--%>
<%--                    </div>--%>
<%--                </div><br>--%>
                <div class="row clearfix">
                    <div class="lbl">
                        <label for="email">
                            邮箱</label>
                    </div>
                    <div class="ctrl">
                        <input type="text" name="email" id="email" style="width: 300px" placeholder="Ex: Quote for Project" value="${requestScope.detail.email}">
                    </div>
                </div>&emsp;&emsp;
                <div class="row clearfix">
                    <div class="lbl">
                        <label for="phone">
                            电话</label>
                    </div>
                    <div class="ctrl">
                        <input type="text" id="phone" name="phone"  style="width: 300px" placeholder="Ex: 111-258-444" value="${requestScope.detail.phone}">
                    </div>
                </div><br>
                <div class="row clearfix">
                    <div class="lbl">
                        <label for="address">
                            地址</label>
                    </div>
                    <div class="ctrl">
                        <input type="text" name="address" id="address" style="width: 636px" placeholder="Ex: Quote for Project" value="${requestScope.detail.address}">
                    </div>
                </div><br>
                <div class="row clearfix">
                    <div class="lbl">
                        <label for="introduction">
                            个性签名</label>
                    </div>
                    <div class="ctrl">
                        <input type="text" name="introduction" id="introduction" style="width: 636px" placeholder="Ex: Quote for Project" value="${requestScope.detail.introduction}">
                    </div>
                </div><br>
                <div class="row clearfix">
                    <div class="lbl">
                        <label for="details">
                            简介</label>
                    </div>
                    <div class="ctrl">
                        <textarea id="details" name="details" rows="3" cols="77" style="font-size: 16px">${requestScope.detail.details}</textarea>
                    </div>
                </div>
<%--                <div class="row clearfix">--%>
<%--                    <div class="lbl">--%>
<%--                        <label for="picture">--%>
<%--                            头像</label>--%>
<%--                    </div>--%>
<%--                    <div class="ctrl">--%>
<%--                        <input type="file" name="picture" id="picture" style="width: 300px" placeholder="Ex: Quote for Project">--%>
<%--                    </div>--%>
<%--                </div>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;--%>
                <div class="row  clearfix">
                    <div class="span10 offset2" >
                        <c:choose>
                            <c:when test="${not empty requestScope.detail}">
                                <input type="hidden" name="action" value="updateDetail">
                                <input type="submit" name="submit" id="submit" class="submit" value="确认更改">
                            </c:when>
                            <c:when test="${empty requestScope.detail}">
                                <input type="hidden" name="action" value="addDetail">
                                <input type="submit" name="submit" id="submit" class="submit" value="确认添加">
                            </c:when>
                        </c:choose>
                    </div>
                </div>
                </form>
<%--                <div id="success">--%>
<%--                    Your E-Mail has been sent successfully!</div>--%>
<%--                <div id="error">--%>
<%--                    Unable to send e-mail at the moment, please try later.</div>--%>
                <div id="validation">
                </div>
            </div>
        </section>
    </body>
</html>
