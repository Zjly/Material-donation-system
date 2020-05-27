<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>需求审核</title>
    <link href="../css/demo.css" rel="stylesheet" type="text/css">
</head>
<body>
    <section id="getintouch" >
        <div class="container" style="border-bottom: 0;">
            <h1>
                <span>需求审核</span>
            </h1>
        </div>
        <div class="container">
            <form class="contact" action="bookServlet" method="post" id="form">
            <input type="hidden" name="action" value="${empty param.id ? "add" : "update"}" />
            <input type="hidden" name="id" value="${requestScope.book.id}" />
            <input type="hidden" name="pageNo" value="${requestScope.pageNo}">
            <div class="row clearfix">
                <div class="lbl">
                    <label for="theme">
                        主题：</label>
                </div>
                <div class="ctrl">
                    <input type="text" id="theme" name="theme" placeholder="" value="${requestScope.need.theme}" style="width: 640px">
                </div>
            </div>
            <div class="row clearfix">
                <div class="lbl">
                    <label for="launcher">
                        发起人：</label>
                </div>
                <div class="ctrl">
                    <input type="text" id="launcher" name="promoter" placeholder="" value="${requestScope.need.promoter}" style="width: 640px">
                </div>
            </div>
            <div class="row clearfix">
                <div class="lbl">
                    <label for="time">
                        发布时间：</label>
                </div>
                <div class="ctrl">
                    <input type="text" name="time" id="time" placeholder="" value="${requestScope.need.time}" style="width: 640px">
                </div>
            </div>
            <div class="row clearfix">
                <div class="lbl">
                    <label for="name">
                        需求内容：</label>
                </div>
                <div class="ctrl">
                    <input type="text" name="name" id="name" placeholder="" value="${requestScope.need.name}" style="width: 640px">
                </div>
            </div>
            <div class="row clearfix">
                <div class="lbl">
                    <label for="demond">
                        需求目标：</label>
                </div>
                <div class="ctrl">
                    <input type="text" name="count" id="demond" placeholder="" value="${requestScope.need.count}" style="width: 640px">
                </div>
            </div>
<%--            <div class="row clearfix">--%>
<%--                <div class="lbl">--%>
<%--                    <label for="detail">--%>
<%--                        需求说明：</label>--%>
<%--                </div>--%>
<%--                <div class="ctrl">--%>
<%--                    <input type="text" name="detail" id="detail" placeholder="" value="${requestScope.book.time}" style="width: 640px">--%>
<%--                </div>--%>
<%--            </div>--%>
            <div class="row clearfix">
                <div class="lbl">
                    <label for="introduction">
                        简介：</label>
                </div>
                <div class="ctrl">
<%--                    <input type="text" name="introduction" id="introduction" placeholder="" size="66px" value="${requestScope.book.introduction}">--%>
                        <textarea id="introduction" name="describe" rows="3" cols="77" style="font-size: 16px">${requestScope.need.describe}</textarea>
                </div>
            </div><br>
            <div class="row  clearfix" align="center">
                <div class="span10 offset2">
<%--                    <input type="submit" name="submit" id="submit" class="submit" value="确认" style="width: 150px;height: 50px">&emsp;&emsp;&emsp;--%>
                    <input type="button" name="submit" id="cancel" class="submit" value="返回" style="width: 150px;height: 50px" onclick="backto('${requestScope.pageNoNow}')">
                </div>
            </div>
            </form>
            <div id="validation">
            </div>
        </div>
    </section>
</body>
<script type="text/javascript">
    function backto(pageNo) {
        window.location.href = "managerServlet?action=showAuditNeed&pageNo=" + pageNo;
    }
</script>
</html>
