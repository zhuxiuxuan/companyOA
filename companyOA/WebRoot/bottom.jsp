<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
				<div class="am-modal am-modal-confirm" tabindex="-1" id="confirm">
				  <div class="am-modal-dialog">
				    <div class="am-modal-hd">河南五象游学科技办公OA</div>
				    <div class="am-modal-bd" id="confirmMsg">
				    </div>
				    <div class="am-modal-footer">
				      <span class="am-modal-btn" data-am-modal-cancel>取消</span>
				      <span class="am-modal-btn" data-am-modal-confirm>确定</span>
				    </div>
				  </div>
				</div>
				<div class="am-modal am-modal-alert" tabindex="-1" id="alert">
					  <div class="am-modal-dialog">
					    <div class="am-modal-hd">河南五象游学科技办公OA</div>
					    <div class="am-modal-bd" id="alertMsg">
					    </div>
					    <div class="am-modal-footer">
					      <span class="am-modal-btn" data-am-modal-confirm>确定</span>
					    </div>
					  </div>
					</div>
	<script src="<%=basePath %>assets/js/jquery.min.js"></script>
    <script src="<%=basePath %>assets/js/amazeui.min.js"></script>
    <script src="<%=basePath %>assets/js/iscroll.js"></script>
    <script src="<%=basePath %>assets/js/app.js"></script>
	<script src="<%=basePath %>assets/js/echarts.min.js"></script>
	<script src="<%=basePath %>assets/js/zxx.js"></script>
	<script type="text/javascript">
	function staffOut(){
		$("#confirmMsg").html("你，确定要退出吗？");
		$("#confirm").modal({
			relatedTarget: this,
		    closeViaDimmer: false,
			onConfirm: function(e) {
			window.location.href="<%=basePath %>staff/YCA5Ye6.action";
			},
			onCancel: function() {
       		}
		});
	}
	</script>