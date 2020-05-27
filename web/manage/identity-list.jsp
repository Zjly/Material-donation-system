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

<!--[if lt IE 9]>
<script type="text/javascript" src="../lib/html5shiv.js"></script>
<script type="text/javascript" src="../lib/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="../static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="../static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="../lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="../static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="../static/h-ui.admin/css/style.css" />
<!--[if IE 6]>
<script type="text/javascript" src="../lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->

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
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> <a href="../index.jsp">主页</a> <span class="c-gray en">&gt;</span> 后台管理 <span class="c-gray en">&gt;</span>
	认证审核 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="managerServlet?action=showAuditNeed" title="需求管理" >需求管理</a></nav>
<div class="page-container">
	<div class="cl pd-5 bg-1 bk-gray mt-20">
		<div style="text-align: center;"><span style="align-content: center;font-size: 31px">认证信息管理</span></div>
	</div>
	<div class="cl pd-5 bg-1 bk-gray mt-20">
		<span class="r">共有数据：<strong>${requestScope.page.pageTotalCount}</strong> 条</span>
	</div>
<%--		<span class="l">--%>
<%--			<a class="btn btn-primary radius" onclick="window.location.href='demand-edit.jsp'"><i class="Hui-iconfont">&#xe600;</i> 添加图片</a>--%>
<%--		</span>--%>
<%--		<span class="r">共有数据：<strong>${requestScope.page.pageTotalCount}</strong> 条</span>--%>

	<div class="mt-20">
		<table class="table table-border table-bordered table-bg table-hover table-sort">
			<thead>
				<tr class="text-c">
					<th width="80">认证编号</th>
					<th width="100">昵称</th>
					<th width="100">认证称号</th>
					<th width="150">补充说明</th>
					<th width="100">当前状态</th>
					<th width="100">操作</th>
				</tr>
			</thead>

			<c:forEach  items="${requestScope.page.items}" var="i">
				<tbody>
				<tr class="text-c">
					<td>${i.checkId}</td>
					<td>${i.name}</td>
<%--					<img width="100" class="picture-thumb" src="../${book.imgPath}" alt="书籍">--%>
					<td>${i.title}</td>
					<td class="text-c">${i.supplement}</td>
<%--					审核按钮--%>
					<c:if test="${i.status == 2}">
					<td class="text-c"><span class="badge badge-info">审核失败</span></td>
					<td class="td-manage">
						<!-- <a style="text-decoration:none" onClick="picture_stop(this,'10001')" href="javascript:;" title="下架"><i class="Hui-iconfont">&#xe6de;</i></a>  -->
						<a style="text-decoration:none" class="ml-5" onClick="picture_edit('${i.checkId}','${requestScope.page.pageNo}')" href="javascript:;" title="详情"><i class="Hui-iconfont">&#xe687;</i></a>
						<a style="text-decoration:none" class="ml-5" onClick="pass('${i.identityId}')" href="javascript:;" title="通过"><i class="Hui-iconfont">&#xe615;</i></a>
						<a style="text-decoration:none" class="ml-5" onClick="not_pass('${i.identityId}')" href="javascript:;" title="未通过"><i class="Hui-iconfont">&#xe706;</i></a>
					</td>
					</c:if>
					<c:if test="${i.status == 0}">
						<td class="text-c"><span class="badge badge-warning">等待审核</span></td>
						<td class="td-manage">
							<a style="text-decoration:none" class="ml-5" onClick="picture_edit('${i.checkId}','${requestScope.page.pageNo}')" href="javascript:;" title="详情"><i class="Hui-iconfont">&#xe687;</i></a>
							<a style="text-decoration:none" class="ml-5" onClick="pass('${i.identityId}')" href="javascript:;" title="通过"><i class="Hui-iconfont">&#xe615;</i></a>
							<a style="text-decoration:none" class="ml-5" onClick="not_pass('${i.identityId}')" href="javascript:;" title="未通过"><i class="Hui-iconfont">&#xe706;</i></a>
						</td>
					</c:if>
					<c:if test="${i.status == 1}">
						<td class="text-c"><span class="badge badge-success">审核通过</span></td>
						<td class="td-manage">
							<!-- <a style="text-decoration:none" onClick="picture_stop(this,'10001')" href="javascript:;" title="下架"><i class="Hui-iconfont">&#xe6de;</i></a>  -->
							<a style="text-decoration:none" class="ml-5" onClick="picture_edit('${i.checkId}','${requestScope.page.pageNo}')" href="javascript:;" title="详情"><i class="Hui-iconfont">&#xe687;</i></a>
							<a style="text-decoration:none" class="ml-5" onClick="pass('${i.identityId}')" href="javascript:;" title="通过"><i class="Hui-iconfont">&#xe615;</i></a>
							<a style="text-decoration:none" class="ml-5" onClick="not_pass('${i.identityId}')" href="javascript:;" title="未通过"><i class="Hui-iconfont">&#xe706;</i></a>
						</td>
					</c:if>
				</tr>
				</tbody>
			</c:forEach>

		</table>
	</div>

	<div class='page-nav'>
		<ul>
			<c:if test="${requestScope.page.pageNo > 1}">
				<li><a href="managerServlet?action=showCheck&pageNo=1">首页</a></li>
				<li><a href="managerServlet?action=showCheck&pageNo=${requestScope.page.pageNo-1}">上一页</a></li>
			</c:if>
			<c:choose>
				<c:when test="${requestScope.page.pageTotal <= 5}">
					<c:forEach begin="1" end="${requestScope.page.pageTotal}" var="i">
						<c:if test="${requestScope.page.pageNo == i}">
							<li>【${i}】</li>
						</c:if>
						<c:if test="${i != requestScope.page.pageNo}">
							<li><a href="managerServlet?action=showCheck&pageNo=${i}">${i}</a></li>
						</c:if>
					</c:forEach>
				</c:when>
				<c:when test="${requestScope.page.pageTotal > 5}">
					<c:choose>
						<%--					当前页码为前三个--%>
						<c:when test="${requestScope.page.pageNo <= 3}">
							<c:forEach begin="1" end="5" var="i">
								<c:if test="${requestScope.page.pageNo == i}">
									<li>【${i}】</li>
								</c:if>
								<c:if test="${i != requestScope.page.pageNo}">
									<li><a href="managerServlet?action=showCheck&pageNo=${i}">${i}</a></li>
								</c:if>
							</c:forEach>
						</c:when>
						<%--					当前页码为最后三个--%>
						<c:when test="${requestScope.page.pageNo > requestScope.page.pageTotal - 3 }">
							<c:forEach begin="${requestScope.page.pageTotal - 4}" end="${requestScope.page.pageTotal}" var="i">
								<c:if test="${requestScope.page.pageNo == i}">
									<li>【${i}】</li>
								</c:if>
								<c:if test="${i != requestScope.page.pageNo}">
									<li><a href="managerServlet?action=showCheck&pageNo=${i}">${i}</a></li>
								</c:if>
							</c:forEach>
						</c:when>
						<%--					其他页码--%>
						<c:otherwise>
							<c:forEach begin="${requestScope.page.pageNo - 2}" end="${requestScope.page.pageNo + 2}" var="i">
								<c:if test="${requestScope.page.pageNo == i}">
									<li>【${i}】</li>
								</c:if>
								<c:if test="${i != requestScope.page.pageNo}">
									<li><a href="managerServlet?action=showCheck&pageNo=${i}">${i}</a></li>
								</c:if>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</c:when>
			</c:choose>

			<c:if test="${requestScope.page.pageNo < requestScope.page.pageTotal}">
				<li><a href="managerServlet?action=showCheck&pageNo=${requestScope.page.pageNo+1}">下一页</a></li>
				<li><a href="managerServlet?action=showCheck&pageNo=${requestScope.page.pageTotal}">末页</a></li>
			</c:if>
			共${requestScope.page.pageTotal}页，${requestScope.page.pageTotalCount}条记录
		</ul>
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
function picture_edit(checkid,pageNo){
	window.location.href = 'managerServlet?action=showCheckDetail&checkId=' + checkid + "&pageNo=" + pageNo;

}
/*图片-删除*/
function picture_del(obj,id){
	layer.confirm('确认要删除吗？',function(){
	window.location.href = 'bookServlet?action=delete&id='+id;
	});
}
</script>

<script type="text/javascript">
	function pass(identityId) {
		window.location.href = 'managerServlet?action=approvedCheck&id=' + identityId;
	}

	function not_pass(identityId) {
		window.location.href = "managerServlet?action=dismissCheck&id=" + identityId;
	}
</script>
</body>
</html>