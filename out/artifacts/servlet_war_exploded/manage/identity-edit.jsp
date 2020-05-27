<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>认证审核</title>
    <link href="../css/demo.css" rel="stylesheet" type="text/css">
    <style>
        /* 触发弹窗图片的样式 */
        #img_path {
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s;
        }

        #img_path:hover {opacity: 0.7;}

        /* 弹窗背景 */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            padding-top: 100px; /* Location of the box */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
        }

        /* 图片 */
        .modal-content {
            margin: auto;
            display: block;
            width: 80%;
            max-width: 700px;
        }

        /* 文本内容 */
        #caption {
            margin: auto;
            display: block;
            width: 80%;
            max-width: 700px;
            text-align: center;
            color: #ccc;
            padding: 10px 0;
            height: 150px;
        }

        /* 添加动画 */
        .modal-content, #caption {
            -webkit-animation-name: zoom;
            -webkit-animation-duration: 0.6s;
            animation-name: zoom;
            animation-duration: 0.6s;
        }

        @-webkit-keyframes zoom {
            from {-webkit-transform:scale(0)}
            to {-webkit-transform:scale(1)}
        }

        @keyframes zoom {
            from {transform:scale(0)}
            to {transform:scale(1)}
        }

        /* 关闭按钮 */
        .close {
            position: absolute;
            top: 15px;
            right: 35px;
            color: #f1f1f1;
            font-size: 40px;
            font-weight: bold;
            transition: 0.3s;
        }

        .close:hover,
        .close:focus {
            color: #bbb;
            text-decoration: none;
            cursor: pointer;
        }

        /* 小屏幕中图片宽度为 100% */
        @media only screen and (max-width: 700px){
            .modal-content {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <section id="getintouch" >
        <div class="container" style="border-bottom: 0;">
            <h1>
                <span>认证审核</span>
            </h1>
        </div>
        <div class="container">
            <form class="contact" action="bookServlet" method="post" id="form">
            <input type="hidden" name="action" value="${empty param.id ? "add" : "update"}" />
            <input type="hidden" name="id" value="${requestScope.book.id}" />
            <input type="hidden" name="pageNo" value="${requestScope.pageNo}">
            <div class="row clearfix">
                <div class="lbl">
                    <label for="name">
                        昵称：</label>
                </div>
                <div class="ctrl">
                    <input type="text" id="name" name="name" placeholder="" value="${requestScope.check.name}" style="width: 640px">
                </div>
            </div>
            <div class="row clearfix">
                <div class="lbl">
                    <label for="title">
                        认证称号：</label>
                </div>
                <div class="ctrl">
                    <input type="text" id="title" name="title" placeholder="" value="${requestScope.check.title}" style="width: 640px">
                </div>
            </div>
            <div class="row clearfix">
                <div class="lbl">
                    <label for="supplement">
                        简介：</label>
                </div>
                <div class="ctrl">
                    <%--                    <input type="text" name="introduction" id="introduction" placeholder="" size="66px" value="${requestScope.book.introduction}">--%>
                    <textarea id="supplement" name="supplement" rows="3" cols="77" style="font-size: 16px">${requestScope.check.supplement}</textarea>
                </div>
            </div>
            <div class="row clearfix">
                <div class="lbl">
                    <label for="operator">
                        运营者姓名：</label>
                </div>
                <div class="ctrl">
                    <input type="text" name="operator" id="operator" placeholder="" value="${requestScope.check.operator}" style="width: 640px">
                </div>
            </div>
            <div class="row clearfix">
                <div class="lbl">
                    <label for="phone">
                        电话：</label>
                </div>
                <div class="ctrl">
                    <input type="text" name="phone" id="phone" placeholder="" value="${requestScope.check.phone}" style="width: 640px">
                </div>
            </div>
            <div class="row clearfix">
                <div class="lbl">
                    <label for="email">
                        邮箱：</label>
                </div>
                <div class="ctrl">
                    <input type="text" name="email" id="email" placeholder="" value="${requestScope.check.email}" style="width: 640px">
                </div>
            </div>
            <div class="row clearfix">
                <div class="lbl">
                    <label for="company">
                        企业全称：</label>
                </div>
                <div class="ctrl">
                    <input type="text" name="company" id="company" placeholder="" value="${requestScope.check.company}" style="width: 640px">
                </div>
            </div>
            <div class="row clearfix">
                <div class="lbl">
                    <label for="type">
                        机构类型：</label>
                </div>
                <div class="ctrl">
                    <input type="text" name="type" id="type" placeholder="" value="${requestScope.check.type}" style="width: 640px">
                </div>
            </div>
            <div class="row clearfix">
                <div class="lbl">
                    <label for="address">
                        所在地址：</label>
                </div>
                <div class="ctrl">
                    <input type="text" name="address" id="address" placeholder="" value="${requestScope.check.address}" style="width: 640px">
                </div>
            </div>
            <div class="row clearfix">
                <div class="lbl">
                    <label for="website">
                        官网地址：</label>
                </div>
                <div class="ctrl">
                    <input type="text" name="website" id="website" placeholder="" value="${requestScope.check.website}" style="width: 640px">
                </div>
            </div>
            <div class="row clearfix">
                <div class="lbl">
                    <label for="code">
                        社会信用代码：</label>
                </div>
                <div class="ctrl">
                    <input type="text" name="code" id="code" placeholder="" value="${requestScope.check.code}" style="width: 640px">
                </div>
            </div>
            <div class="row clearfix">
                <div class="lbl">
                    <label for="img_path">
                        图片：</label>
                </div>
                <div class="ctrl">
<%--                    <input type="text" name="introduction" id="introduction" placeholder="" size="66px" value="${requestScope.book.introduction}">--%>
<%--                        <textarea id="img_path" name="img_path" rows="3" cols="77" style="font-size: 16px"></textarea>--%>
                    <img src="../img3/${requestScope.check.img_path}" style="width: 300px;height: 300px;" id="img_path">
                </div>
                <div id="myModal" class="modal">
                <!-- 关闭按钮 -->
                    <span class="close" onclick="document.getElementById('myModal').style.display='none'">&times;</span>
                <!-- 弹窗内容 -->
                    <img class="modal-content" id="img01">
                    <!-- 文本描述 -->
                    <div id="caption"></div>
                </div>
            </div><br>
            <div class="row  clearfix" align="center">
                <div class="span10 offset2">
<%--                    <input type="submit" name="submit" id="submit" class="submit" value="确认" style="width: 150px;height: 50px">&emsp;&emsp;&emsp;--%>
                    <input type="button" name="submit" id="cancel" class="submit" value="返回" style="width: 150px;height: 50px" onclick="backto()">
                </div>
            </div>
            </form>

            <div id="validation">

            </div>
        </div>
    </section>
<script type="text/javascript">
    // 获取弹窗
    var modal = document.getElementById('myModal');

    // 获取图片插入到弹窗 - 使用 "alt" 属性作为文本部分的内容
    var img = document.getElementById('img_path');
    var modalImg = document.getElementById("img01");
    var captionText = document.getElementById("caption");
    img.onclick = function(){
        modal.style.display = "block";
        modalImg.src = this.src;
        captionText.innerHTML = this.alt;
    }

    // 获取 <span> 元素，设置关闭按钮
    var span = document.getElementsByClassName("close")[0];

    // 当点击 (x), 关闭弹窗
    span.onclick = function() {
        modal.style.display = "none";
    }
</script>
<script type="text/javascript">
    function backto() {
        window.location.href = "managerServlet?action=showCheck&pageNo=${requestScope.pageNoNow}";
    }
</script>
</body>
</html>
