<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2020/5/14
  Time: 17:42
  To change this template use File | Settings | File Templates.
--%>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + request.getContextPath() + "/";
%>
<base href="<%=basePath%>">