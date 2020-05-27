<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />

    <link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/H-ui.admin.css" />
    <link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
    <link rel="stylesheet" type="text/css" href="static/h-ui.admin/skin/default/skin.css" id="skin" />
    <link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/style.css" />

    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <!-- Google fonts - Roboto -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700">
    <!-- owl carousel-->
    <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.carousel.css">
    <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.theme.default.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <script src="vendor/jquery/jquery.min.js"></script>

    <title>需求发布</title>
    <link href="lib/webuploader/0.1.5/webuploader.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        h1{
            text-align: center;
            align-content: center;
            background: #76caf9;
            margin-bottom: 50px;
            padding-bottom: 20px;
            color: #f9f7f7;
        }
    </style>
    <style>
        img {
            width: 100%;
            display: block;
            border: none;
            vertical-align: bottom;
            border: none;
        }
        input[type="button"] {
            -webkit-appearance: none;
        }
        .productDrawingBox {
            background-color: #fcfcfc;
            color: #333333;
            font-size: 16px;
            padding-left: 10px;
            border-bottom: solid 1px #e5e5e5;
            margin-left: 380px;
            margin-right: 450px;
        }
        .productDescription {
            height: 44px;
            line-height: 44px;
        }
        .productImg {
            height: 96px;
            overflow: hidden;
        }
        .imgBiMG{
            width: 78px;
            height: 81px;
            float: left;
            display: block;
        }
        .uploadDIv {
            width: 78px;
            height: 81px;
            background-color: #edf0f2;
            font-size: 28px;
            color: #bfbfbf;
            text-align: center;
            line-height: 81px;
            float: left;
            position: relative;
        }
        .uploadDIv input {
            width: 78px;
            height: 78px;
            opacity: 0;
            position: absolute;
            right: 0px;
            top: 0px;
            z-index: 4;
            padding: 0;
        }
        #uploadBox{
            position: relative;
        }
        .delete{
            width: 78px;
            height:81px;
            float: left;
            position: absolute;
            text-align: center;
            line-height: 81px;
            z-index: 10;
            font-size: 15px;
            background-color: rgba(255,255,255,0.8);
            color: #777;
            opacity: 0;
            transition-duration: 0.7s;
            -webkit-transition-duration: 0.7s;
        }
        .delete:hover{
            cursor: pointer;
            opacity: 1;
        }
    </style>
</head>
<body>
<div class="page-container">
    <h1>身份认证</h1>
    <form action="userServlet?action=applyForDonated" method="post" enctype="multipart/form-data" class="form form-horizontal" id="form-article-add">
        <input type="hidden" name="action" value="applyForDonated">
        <div class="row cl">
            <div class="col-md-12">
                <div class="form-group">
                    <label class="form-label col-md-9" for="name" style="font-size: 20px"><span class="c-red">*</span>昵称&emsp;&emsp;&emsp;：</label>
                    <div class="formControls col-md-3">
                        <input type="text" class="form-control" value="" placeholder="" id="name" name="name" style="width: 500px">
                    </div>
                </div>
            </div>
        </div>
        <div class="row cl">
            <div class="col-md-12">
                <div class="form-group">
                    <label class="form-label col-md-9" for="title" style="font-size: 20px"><span class="c-red">*</span>认证称号&emsp;：</label>
                    <div class="formControls col-md-3">
                        <input type="text" class="form-control" value="" placeholder="例如：xxx官方账号，需要有证明文件" id="title" name="title" style="width: 500px">
                    </div>
                </div>
            </div>
        </div>
        <div class="row cl">
            <div class="col-md-12">
                <div class="form-group">
                    <label class="form-label col-md-6" for="supplement" style="font-size: 20px">补充说明&emsp;：</label>
                    <div class="formControls col-md-6">
                        <textarea id="supplement" name="supplement" cols="113" rows="3" class="form-control"  placeholder="说点什么...最少输入10个字符"></textarea>
                        <p class="textarea-numberbar"><em class="textarea-length">0</em>/200</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="row cl">
            <div class="col-md-12">
                <div class="form-group">
                    <label class="form-label col-md-9" for="operator" style="font-size: 20px"><span class="c-red">*</span>运营者姓名：</label>
                    <div class="formControls col-md-3">
                        <input type="text" class="form-control" value="" placeholder="请填写真实姓名" id="operator" name="operator" style="width: 500px">
                    </div>
                </div>
            </div>
        </div>
        <div class="row cl">
            <div class="col-md-12">
                <div class="form-group">
                    <label class="form-label col-md-9" for="phone" style="font-size: 20px"><span class="c-red">*</span>电话号码&emsp;：</label>
                    <div class="formControls col-md-3">
                        <input type="text" class="form-control" value="" placeholder="" id="phone" name="phone" style="width: 500px">
                    </div>
                </div>
            </div>
        </div>
        <div class="row cl">
            <div class="col-md-12">
                <div class="form-group">
                    <label class="form-label col-md-9" for="email" style="font-size: 20px"><span class="c-red">*</span>联系邮箱&emsp;：</label>
                    <div class="formControls col-md-3">
                        <input type="text" class="form-control" value="" placeholder="" id="email" name="email" style="width: 500px">
                    </div>
                </div>
            </div>
        </div>
        <div class="row cl">
            <div class="col-md-12">
                <div class="form-group">
                    <label class="form-label col-md-9" for="company" style="font-size: 20px"><span class="c-red">*</span>企业全称&emsp;：</label>
                    <div class="formControls col-md-3">
                        <input type="text" class="form-control" value="" placeholder="企业注册全称" id="company" name="company" style="width: 500px">
                    </div>
                </div>
            </div>
        </div>
        <div class="row cl">
            <div class="col-md-12">
                <div class="form-group">
                    <label class="form-label col-md-9" for="type" style="font-size: 20px">&nbsp; 机构类型&emsp;：</label>
                    <div class="formControls col-md-3">
                        <input type="text" class="form-control" value="" placeholder="" id="type" name="type" style="width: 500px">
                    </div>
                </div>
            </div>
        </div>
        <div class="row cl">
            <div class="col-md-12">
                <div class="form-group">
                    <label class="form-label col-md-9" for="address" style="font-size: 20px"><span class="c-red">*</span>所在地址&emsp;：</label>
                    <div class="formControls col-md-3">
                        <input type="text" class="form-control" value="" placeholder="" id="address" name="address" style="width: 500px">
                    </div>
                </div>
            </div>
        </div>
        <div class="row cl">
            <div class="col-md-12">
                <div class="form-group">
                    <label class="form-label col-md-9" for="website" style="font-size: 20px">&nbsp; 官网地址&emsp;：</label>
                    <div class="formControls col-md-3">
                        <input type="text" class="form-control" value="" placeholder="" id="website" name="website" style="width: 500px">
                    </div>
                </div>
            </div>
        </div>
        <div class="row cl">
            <div class="col-md-12">
                <div class="form-group">
                    <label class="form-label col-md-9" for="code" style="font-size: 20px">社会信用代码&emsp;：</label>
                    <div class="formControls col-md-3">
                        <input type="text" class="form-control" value="" placeholder="" id="code" name="code" style="width: 487px">
                    </div>
                </div>
            </div>
        </div>
        <div class="row cl">
            <div class="col-md-12">
                <%--                    <div class="formControls col-md-3">--%>
                <%--                        <input type="file" class="form-control" value="" placeholder="" id="file" name="file" style="width: 500px" multiple/>--%>
                <%--                    </div>--%>
                <%--                    <div class="uploadImgBtn col-md-3" id="uploadImgBtn">--%>
                <%--                        <input class="uploadImg" type="file" name="file" multiple id="file">--%>
                <%--                    </div>--%>
                <%--                    <label class="form-label col-md-" style="font-size: 20px"><span class="c-red">*</span>其他&emsp;&emsp;&emsp;：</label>--%>
                <div class="productDrawingBox">
                    <div class="productDescription">上传营业执照/信用凭证等：</div>
                    <div class="productImg">
                        <div id="uploadBox">
                        </div>
                        <div class="uploadDIv">
<%--                             multiple="multiple" --%>
                            <span>+</span><input type="file" name="img_path" id="inputs" class="fileTest">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row cl">
<%--            <label class="form-label col-xs-4 col-sm-2">允许评论：</label>--%>
        <div class="formControls" style="margin-left: 560px">
            <div class="check-box">
                <input type="checkbox" id="checkbox-1" name="checkbox">
                <label for="checkbox-1">&nbsp;我已同意<a href="#">《官方认证服务协议》</a> </label>
            </div>
        </div>
        </div>
        <div class="row cl">
            <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2" style="margin-left: 570px">
                <input name="submit" class="btn btn-primary radius" disabled="disabled" id="btn" type="submit" value="提交认证">
                <button class="btn btn-danger radius" type="button" onclick="back()">&nbsp;&nbsp;返回&nbsp;&nbsp;</button>
            </div>
        </div>
    </form>
</div>


<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">
    $(function () {
        $("#checkbox-1").click(function () {
            var obj = $("#btn").get(0);
            obj.disabled = !$("#checkbox-1")[0].checked;
        })
    })
</script>
<script type="text/javascript">
    function back() {
        window.location.href = "userServlet?action=showUser&nextUrl=customer-account";
    }
</script>
<%--<script type="text/javascript">--%>
<%--    $(function() {--%>
<%--        var img = []; //创建一个空对象用来保存传入的图片--%>
<%--        var AllowImgFileSize = '101376'; //1兆--%>
<%--        $("#inputs").change(function() {--%>
<%--            var fil = this.files;--%>
<%--            for(var i = 0; i < fil.length; i++) {--%>
<%--                // var curr = $('#inputs')[i].files[0].size;--%>
<%--                var curr = fil[i].size;--%>
<%--                // if (currr == curr) alert("y");--%>
<%--                if(curr > AllowImgFileSize * 101376) { //当图片大于1兆提示--%>
<%--                    layer.msg("图片文件大小超过限制 请上传小于99M的文件");--%>
<%--                } else {--%>
<%--                    reads(fil[i]);--%>
<%--                    // img.push($('#inputs')[i].files[0]); //将传入的图片push到空对象中--%>
<%--                    img.push(fil[i]);--%>
<%--                }--%>
<%--            }--%>
<%--            if(img.length >= 6) { //判断图片的数量，数量不能超过6张--%>
<%--                $('.uploadDIv').hide();--%>
<%--            } else {--%>
<%--                $('.uploadDIv').show();--%>
<%--            }--%>
<%--            console.log(img);--%>
<%--        });--%>

<%--        function reads(fil) {--%>
<%--            var reader = new FileReader();--%>
<%--            reader.readAsDataURL(fil);--%>
<%--            reader.onload = function() {--%>
<%--                // var result = "<div class='delete'>delete</div><div class='divImg' id='uploadImg'><img src='" + reader.result + "' class='imgBiMG'></div>";--%>
<%--                var result = "<div class='delete'>delete</div><img src='" + reader.result + "' class='imgBiMG'>";--%>
<%--                var div = document.createElement('div');--%>
<%--                div.innerHTML = result;--%>
<%--                div['className'] = 'float';--%>
<%--                document.getElementById("uploadBox").appendChild(div);--%>
<%--                // document.getElementById("uploadBox").innerHTML += result;--%>
<%--                div.onclick = function(){--%>
<%--                    $(this).remove();                  // 在页面中删除该图片元素--%>
<%--                    img.pop(fil);--%>
<%--                    // alert(img.length);--%>
<%--                    $('.uploadDIv').show();--%>
<%--                }--%>
<%--            }--%>
<%--        }--%>

<%--    });--%>
<%--</script>--%>

</body>
</html>
