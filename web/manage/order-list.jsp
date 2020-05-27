<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />

<link rel="stylesheet" type="text/css" href="../static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="../static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="../lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="../static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="../static/h-ui.admin/css/style.css" />


<title>后台管理</title>

<style type="text/css">
	.page-nav{
		height: 60px;
		width:100%;
		line-height: 60px;
		text-align: center;
		overflow: hidden;
		float: right;
	}
	.page-nav>ul{
		overflow: hidden;
		margin: 0 30%;
		width:80%;
	}
	.page-nav>ul>li{
		float: left;
		list-style-type: none;
		margin-right:20px;
	}
</style>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> <a href="../index.jsp">主页</a> <span class="c-gray en">&gt;</span> <a href="bookServlet?action=page">后台管理</a> <span class="c-gray en">&gt;</span> 需求列表
<a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="apply-list.jsp" title="订单管理" >认证审核</a></nav>
<div class="page-container">
	<div class="cl pd-5 bg-1 bk-gray mt-20">
		<div style="text-align: center;"><span style="align-content: center;font-size: 31px">后台管理</span></div>
	</div>
	<div class="cl pd-5 bg-1 bk-gray mt-20">
		<span class="l">
			<a class="btn btn-primary radius" onclick="window.location.href='demand-edit.jsp'"><i class="Hui-iconfont">&#xe600;</i> 添加需求</a>
		</span>
		<span class="r">共有数据：<strong>${requestScope.page.pageTotalCount}</strong> 条</span>
	</div>
	<div class="mt-20">
		<table class="table table-border table-bordered table-bg table-hover table-sort">
			<thead>
				<tr class="text-c">
					<th width="80">需求编号</th>
					<th width="100">发起人</th>
					<th width="100">创建时间</th>
					<th width="150">当前状态</th>
					<th width="100">操作</th>
				</tr>
			</thead>

			<c:forEach  items="${requestScope.orders}" var="order">
				<tbody>
				<tr class="text-c">
					<td>#aaa</td>
					<td>${order.createTime}</td>
					<td>${order.price}</td>
					<c:if test="${order.status == 0}">
						<td class="text-c"><span class="badge badge-info">审核失败</span></td>
						<td class="td-manage">
							<a style="text-decoration:none" class="ml-5" onClick="picture_edit('${book.id}','${requestScope.page.pageNo}')" href="javascript:;" title="编辑"><i class="Hui-iconfont">&#xe6df;</i></a>
							<a style="text-decoration:none" class="ml-5" onClick="picture_del(this,'${book.id}')" href="javascript:;" title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a>
						</td>
					</c:if>
					<c:if test="${order.status == 1}">
						<td class="text-c"><span class="badge badge-warning">等待审核</span></td>
						<td class="td-manage">
							<a style="text-decoration:none" class="ml-5" onClick="picture_edit('${book.id}','${requestScope.page.pageNo}')" href="javascript:;" title="编辑"><i class="Hui-iconfont">&#xe6df;</i></a>
							<a style="text-decoration:none" class="ml-5" onClick="picture_del(this,'${book.id}')" href="javascript:;" title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a>
						</td>
<%--						<td class="td-manage">--%>
<%--							<a href="orderServlet?action=sendOrder&orderId=${order.orderId}" style="text-decoration:none" class="btn btn-primary btn-sm"  title="审核">详细信息</a>--%>
<%--						</td>--%>
					</c:if>
					<c:if test="${order.status == 2}">
						<td class="text-c"><span class="badge badge-success">审核通过</span></td>
						<td class="td-manage">
							<!-- <a style="text-decoration:none" onClick="picture_stop(this,'10001')" href="javascript:;" title="下架"><i class="Hui-iconfont">&#xe6de;</i></a>  -->
							<a style="text-decoration:none" class="ml-5" onClick="picture_edit(1,'${requestScope.page.pageNo}')" href="javascript:;" title="编辑"><i class="Hui-iconfont">&#xe6df;</i></a>
							<a style="text-decoration:none" class="ml-5" onClick="picture_del(this,'')" href="javascript:;" title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a>
						</td>
					</c:if>
				</tr>
				</tbody>
			</c:forEach>

		</table>
	</div>


</div>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="../lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="../lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="../static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="../static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="../lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="../lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="../lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">

/*图片-添加*/
function picture_add(title,url){
	var index = layer.open({
		type: 2,
		title: title,
		content: url
	});
	layer.full(index);
}

/*图片-编辑*/
function picture_edit(id){
	window.location.href = 'bookServlet?action=getBook&id=' + id;
}

/*图片-删除*/
function picture_del(obj,id){
	layer.confirm('确认要删除吗？',function(){
	window.location.href = 'bookServlet?action=delete&id='+id;
	});
}
</script>
</body>
</html>