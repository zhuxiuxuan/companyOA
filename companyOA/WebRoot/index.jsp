<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String indexpath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>欢迎您的到来</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <style type="text/css">
    	body{data-type:index;}
    </style>
    
    
	<jsp:include page="header.jsp"></jsp:include>
 <div class="tpl-page-container tpl-page-header-fixed">
 <jsp:include page="left.jsp"></jsp:include>
    <div class="tpl-content-wrapper">
            <div class="tpl-content-page-title">
                欢迎您的到来
            </div>
            <ol class="am-breadcrumb">
                <li class="am-icon-home am-active">首页</li>
            </ol>
            <div class="row">
                <div class="am-u-lg-3 am-u-md-6 am-u-sm-12">
                    <div class="dashboard-stat blue">
                    <a  href="staff/YOo6Zeo6auY5bGC.action"> 
                        <div class="visual">
                            <i class="am-icon-comments-o"></i>
                        </div>
                        <div class="details">
                            <div class="number"> 周报 </div>
                            <div class="desc">  </div>
                        </div>
                        
                    <i class="m-icon-swapright m-icon-white"></i>
                </a>
                    </div>
                    <input type="hidden" value="${pwd }" id="newStaff">
                </div>
                <div class="am-u-lg-3 am-u-md-6 am-u-sm-12">
                    <div class="dashboard-stat red">
                        <div class="visual">
                            <i class="am-icon-bar-chart-o"></i>
                        </div>
                        <div class="details">
                            <div class="number"> 外勤 </div>
                            <div class="desc">   </div>
                        </div>
                        <a class="more" href="#"> 
                    <i class="m-icon-swapright m-icon-white"></i>
                </a>
                    </div>
                </div>
                <div class="am-u-lg-3 am-u-md-6 am-u-sm-12">
                    <div class="dashboard-stat green">
                        <div class="visual">
                            <i class="am-icon-apple"></i>
                        </div>
                        <div class="details">
                            <div class="number"> 公出 </div>
                            <div class="desc">   </div>
                        </div>
                        <a class="more" href="#"> 
                    <i class="m-icon-swapright m-icon-white"></i>
                </a>
                    </div>
                </div>
                <div class="am-u-lg-3 am-u-md-6 am-u-sm-12">
                    <div class="dashboard-stat purple">
                        <div class="visual">
                            <i class="am-icon-android"></i>
                        </div>
                        <div class="details">
                            <div class="number"> 请假 </div>
                            <div class="desc">  </div>
                        </div>
                        <a class="more" href="#"> 
                    <i class="m-icon-swapright m-icon-white"></i>
                </a>
                    </div>
                </div>
                <hi>欢迎来到河南五象游学科技有限公司办公OA系统</hi>
                <div class="am-modal am-modal-prompt" tabindex="-1" id="delPwd">
				  <div class="am-modal-dialog">
				    <div class="am-modal-hd">您的密码过于简单，请重新设置</div>
				    <div class="am-modal-bd am-form am-form-horizontal">
				      			<div class="am-form-group">
                                    <label for="pwd" class="am-u-sm-3 am-form-label">密码</label>
                                    <div class="am-u-sm-9">
                                        <input type="password" id="pwd" class="am-modal-prompt-input" placeholder="输入你的新密码" autocomplete="off"/>
                                    </div>
                                </div>
                                <div class="am-form-group">
                                    <label for="pwd2" class="am-u-sm-3 am-form-label">确认密码</label>
                                    <div class="am-u-sm-9">
                                        <input type="password" id="pwd2" class="am-modal-prompt-input" placeholder="确认你的新密码" autocomplete="off"/>
                                    </div>
                                </div>
                                <input type="hidden" value="${staffInfo.info_id }" class="am-modal-prompt-input"/>
				    </div>
				    <div class="am-modal-footer">
				      <span class="am-modal-btn" data-am-modal-cancel>取消</span>
				      <span class="am-modal-btn" data-am-modal-confirm>提交</span>
				    </div>
				  </div>
				</div>
				
				
                 </div>
                 </div>
                 </div>
    <jsp:include page="bottom.jsp"></jsp:include>
    <script type="text/javascript">
    $(function(){
    	var newStaff = $("#newStaff").val();
    	if("" != newStaff){
			$("#delPwd").modal({
		      relatedTarget: this,
		      closeViaDimmer: false,
		      onConfirm: function(e) {
		      	if(e.data[0] == e.data[1]){
		      		var data = {
		      			staff_pwd : e.data[1],
		      			updateInfo_id : e.data[2],
		      		};
		      		$.ajax({
			          	url : "../staff/RoZSBwYXNzd29yZA.action",
						type : "post",
						data : data,
						success : function(e) {
							$("#alertMsg").html("修改成功！");
							$("#alert").modal({
								relatedTarget: this,
		     					closeViaDimmer: false,
								onConfirm: function(e) {
									window.location.href="<%=indexpath%>/login.jsp";
								}
							});
								},
						error : function() {
								alert("异常情况，请重新点击");
								}
			          });
		      	}else{
		      		$("#alertMsg").html("两次密码填写不同！");
							$("#alert").modal({
								relatedTarget: this,
		     					closeViaDimmer: false,
								onConfirm: function(e) {
									window.location.reload();
								}
							});
		      		}
		      },
		      onCancel: function(e) {
		      	window.location.href="<%=indexpath%>login.jsp";
		      }
    });
    	}
    });
    </script>
</body>

</html>
