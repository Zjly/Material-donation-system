<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2020/5/12
  Time: 20:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="card sidebar-menu mb-4">
    <div class="card-header">
        <h3 class="h4 card-title">目录</h3>
    </div>
    <div class="card-body">
        <ul class="nav nav-pills flex-column category-menu">
            <li><a href="#" class="nav-link">小说类</a>
                <ul class="list-unstyled">
                    <li><a href="clientBookServlet?action=pageByType&bookType=现代小说&pageSize=6" class="nav-link ${param.bookType == '现代小说'?'active':''}">现代小说</a></li>
                    <li><a href="clientBookServlet?action=pageByType&bookType=古典小说&pageSize=6" class="nav-link ${param.bookType == '古典小说'?'active':''}">古典小说</a></li>
                    <li><a href="clientBookServlet?action=pageByType&bookType=外文小说&pageSize=6" class="nav-link ${param.bookType == '外文小说'?'active':''}">外文小说</a></li>
                </ul>
            </li>
            <li><a href="#" class="nav-link">文艺类</a>
                <ul class="list-unstyled">
                    <li><a href="clientBookServlet?action=pageByType&bookType=哲学宗教&pageSize=6" class="nav-link ${param.bookType == '哲学宗教'?'active':''}">哲学宗教</a></li>
                    <li><a href="clientBookServlet?action=pageByType&bookType=心理学&pageSize=6" class="nav-link ${param.bookType == '心理学'?'active':''}">心理学</a></li>
                    <li><a href="clientBookServlet?action=pageByType&bookType=历史&pageSize=6" class="nav-link ${param.bookType == '历史'?'active':''}">人文历史</a></li>
                </ul>
            </li>
            <li><a href="#" class="nav-link">科技类</a>
                <ul class="list-unstyled">
                    <li><a href="clientBookServlet?action=pageByType&bookType=工业&pageSize=6" class="nav-link ${param.bookType == '工业'?'active':''}">工业</a></li>
                    <li><a href="clientBookServlet?action=pageByType&bookType=计算机&pageSize=6" class="nav-link ${param.bookType == '计算机'?'active':''}">计算机</a></li>
                    <li><a href="clientBookServlet?action=pageByType&bookType=科普&pageSize=6" class="nav-link ${param.bookType == '科普'?'active':''}">科普</a></li>
                    <li><a href="clientBookServlet?action=pageByType&bookType=医学&pageSize=6" class="nav-link ${param.bookType == '医学'?'active':''}">医学</a></li>
                </ul>
            </li>
        </ul>
    </div>
</div>


<div class="mt-20">
    <table class="table table-border table-bordered table-bg table-hover table-sort">
        <thead>
        <tr class="text-c">
            <th width="80">图书编号</th>
            <th width="100">所属分类</th>
            <th width="100">图书封面</th>
            <th width="150">图书名称</th>
            <th width="150">图书单价</th>
            <th width="150">已售</th>
            <th width="60">库存</th>
            <th width="100">操作</th>
        </tr>
        </thead>

        <c:forEach  items="${requestScope.page.items}" var="book">
            <tbody>
            <tr class="text-c">
                <td>00${book.id}</td>
                <td>${book.type}</td>
                <td><img width="100" class="picture-thumb" src="../${book.imgPath}" alt="书籍"></td>
                <td class="text-c">${book.name}</td>
                <td class="text-c">${book.price}</td>
                <td>${book.sales}</td>
                <td class="td-status">${book.stock}</td>
                <td class="td-manage">
                    <!-- <a style="text-decoration:none" onClick="picture_stop(this,'10001')" href="javascript:;" title="下架"><i class="Hui-iconfont">&#xe6de;</i></a>  -->
                    <a style="text-decoration:none" class="ml-5" onClick="picture_edit('${book.id}','${requestScope.page.pageNo}')" href="javascript:;" title="编辑"><i class="Hui-iconfont">&#xe6df;</i></a>
                    <a style="text-decoration:none" class="ml-5" onClick="picture_del(this,'${book.id}')" href="javascript:;" title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a>
                </td>
            </tr>
            </tbody>
        </c:forEach>

    </table>
</div>



<div class="row cl">
    <div class="col-md-12">
        <div class="form-group">
            <label class="form-label col-md-9" for="demand" style="font-size: 20px"><span class="c-red">*</span>需求类型&emsp;：</label>
            <div class="formControls col-md-3">
                <select name="demand" id="demand" class="form-control" style="width: 500px">
                    <option value="0" selected>--请选择--</option>
                </select>
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
            <div class="productDescription">上传图片</div>
            <div class="productImg">
                <div id="uploadBox">
                </div>
                <div class="uploadDIv">
                    <span>+</span><input type="file" name="file" id="inputs" accept="image/*" class='fileTest' multiple="multiple" />
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row cl">
    <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>发布日期：</label>
    <div class="formControls col-xs-8 col-sm-9">
        <input type="text" onfocus="WdatePicker({ dateFmt:'yyyy-MM-dd HH:mm:ss',maxDate:'#F{$dp.$D(\'datemax\')||\'%y-%M-%d\'}' })" id="datemin" class="input-text Wdate">
    </div>
</div>
<div class="row cl">
    <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>结束日期：</label>
    <div class="formControls col-xs-8 col-sm-9">
        <input type="text" onfocus="WdatePicker({ dateFmt:'yyyy-MM-dd HH:mm:ss',minDate:'#F{$dp.$D(\'datemin\')}' })" id="datemax" class="input-text Wdate">
    </div>
</div>

<div class="row cl">
    <label class="form-label col-xs-4 col-sm-2">图片摘要：</label>
    <div class="formControls col-xs-8 col-sm-9">
        <textarea name="" cols="" rows="" class="textarea"  placeholder="说点什么...最少输入10个字符" datatype="*10-100" dragonfly="true" nullmsg="备注不能为空！" onKeyUp="$.Huitextarealength(this,200)"></textarea>
        <p class="textarea-numberbar"><em class="textarea-length">0</em>/200</p>
    </div>
</div>

<div class="row cl">--%>
    <%--			<label class="form-label col-xs-4 col-sm-2">缩略图：</label>--%>
    <%--			<div class="formControls col-xs-8 col-sm-9">--%>
    <%--				<div class="uploader-thum-container">--%>
    <%--					<div id="fileList" class="uploader-list"></div>--%>
    <%--					<div id="filePicker">选择图片</div>--%>
    <%--					<button id="btn-star" class="btn btn-default btn-uploadstar radius ml-10">开始上传</button>--%>
    <%--				</div>--%>
    <%--			</div>--%>
    <%--		</div>--%>
    <%--		<div class="row cl">--%>
    <%--			<label class="form-label col-xs-4 col-sm-2">图片上传：</label>--%>
    <%--			<div class="formControls col-xs-8 col-sm-9">--%>
    <%--				<div class="uploader-list-container">--%>
    <%--					<div class="queueList">--%>
    <%--						<div id="dndArea" class="placeholder">--%>
    <%--							<div id="filePicker-2"></div>--%>
    <%--							<p>或将照片拖到这里，单次最多可选300张</p>--%>
    <%--						</div>--%>
    <%--					</div>--%>
    <%--					<div class="statusBar" style="display:none;">--%>
    <%--						<div class="progress"> <span class="text">0%</span> <span class="percentage"></span> </div>--%>
    <%--						<div class="info"></div>--%>
    <%--						<div class="btns">--%>
    <%--							<div id="filePicker2"></div>--%>
    <%--							<div class="uploadBtn">开始上传</div>--%>
    <%--						</div>--%>
    <%--					</div>--%>
    <%--				</div>--%>
    <%--			</div>--%>
<%--		</div>


<li class="nav-item dropdown menu-large"><a href="clientNeedServlet?action=pageByFlag" data-toggle="dropdown" data-hover="dropdown" data-delay="200" class="dropdown-toggle nav-link">需求列表<b class="caret"></b></a>
<%--                        <ul class="dropdown-menu megamenu">--%>
    <%--                            <li>--%>
    <%--                                <div class="row">--%>
    <%--                                    <div class="col-md-6 col-lg-3">--%>
    <%--                                        <h5>小说类</h5>--%>
    <%--                                        <ul class="list-unstyled mb-3">--%>
    <%--                                            <li class="nav-item"><a href="clientNeedServlet?action=pageByFlag" class="nav-link">查看列表</a></li>--%>
    <%--                                            <li class="nav-item"><a href="userServlet?action=showUser&nextUrl=customer-account" class="nav-link">个人信息</a></li>--%>
    <%--                                            <li class="nav-item"><a href="basket.jsp" class="nav-link">助力清单</a></li>--%>
    <%--                                        </ul>--%>
    <%--                                    </div>--%>
    <%--                                    <div class="col-md-6 col-lg-3">--%>
    <%--                                        <h5>人文类</h5>--%>
    <%--                                        <ul class="list-unstyled mb-3">--%>
    <%--                                            <li class="nav-item"><a href="clientBookServlet?action=pageByType&bookType=哲学宗教&pageSize=6" class="nav-link">哲学宗教</a></li>--%>
    <%--                                            <li class="nav-item"><a href="clientBookServlet?action=pageByType&bookType=心理学&pageSize=6" class="nav-link">心理学</a></li>--%>
    <%--                                            <li class="nav-item"><a href="clientBookServlet?action=pageByType&bookType=历史&pageSize=6" class="nav-link">历史</a></li>--%>
    <%--                                        </ul>--%>
    <%--                                    </div>--%>
    <%--                                    <div class="col-md-6 col-lg-3">--%>
    <%--                                        <h5>科技类</h5>--%>
    <%--                                        <ul class="list-unstyled mb-3">--%>
    <%--                                            <li class="nav-item"><a href="clientBookServlet?action=pageByType&bookType=工业&pageSize=6" class="nav-link">工业</a></li>--%>
    <%--                                            <li class="nav-item"><a href="clientBookServlet?action=pageByType&bookType=计算机&pageSize=6" class="nav-link">计算机</a></li>--%>
    <%--                                            <li class="nav-item"><a href="clientBookServlet?action=pageByType&bookType=科普&pageSize=6" class="nav-link">科普</a></li>--%>
    <%--                                            <li class="nav-item"><a href="clientBookServlet?action=pageByType&bookType=医学&pageSize=6" class="nav-link">医学</a></li>--%>
    <%--                                        </ul>--%>
    <%--                                    </div>--%>
    <%--                                    <div class="col-md-6 col-lg-3">--%>
    <%--                                        <h5>全部图书</h5>--%>
    <%--                                        <ul class="list-unstyled mb-3">--%>
    <%--                                            <li class="nav-item"><a href="clientBookServlet?action=pageByPriceAndType&pageSize=6" class="nav-link">全部图书</a></li>--%>
    <%--                                        </ul>--%>

    <%--                                    </div>--%>
    <%--                                </div>--%>
    <%--                            </li>--%>
    <%--                        </ul>--%>
    </li>