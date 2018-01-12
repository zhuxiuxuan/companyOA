<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String writepath = request.getContextPath();
String writePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+writepath+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>写周报</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <style type="text/css">
body {
	data-type: generalComponents;
</style>
<jsp:include page="../header.jsp"></jsp:include>
    <div class="tpl-page-container tpl-page-header-fixed">
       <jsp:include page="../left.jsp"></jsp:include>
		<div class="tpl-content-wrapper">
            <ol class="am-breadcrumb">
                <li><a href="#" class="am-icon-home">首页</a></li>
                <li><a href="#">周报</a></li>
                <li class="am-active">写周报</li>
            </ol>
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span> 周报
                    </div>
                </div>
                <input type="hidden" value="${weeklyMsg }" id="weeklyOK">
                <div class="tpl-block ">
                    <div class="am-g tpl-amazeui-form">
                        <div class="am-u-sm-12 am-u-md-9">
                            <form class="am-form am-form-horizontal" action="../weekly/YR6YCB.action" method="post">
                            	
                                <div class="am-form-group">
                                    <label  class="am-u-sm-3 am-form-label">发与 / Recipient</label>
                                    <div class="am-u-sm-9">
                                    <select data-am-selected="{searchBox: 1}" name="weekly_recipient" >
                                    	<s:if test="#request.staffList != null">
                                    		<s:iterator value="#request.staffList" var="s">
											  <option value="${s.staff_info.info_id }">&nbsp;${s.staff_info.info_position.p_name }&nbsp;->&nbsp;${s.staff_info.info_name }</option>
                                    		</s:iterator>
                                    	</s:if>
											</select>
                                    </div>
                                </div>
                                <div class="am-form-group">
                                    <label for="weekly_complete" class="am-u-sm-3 am-form-label">本周完成工作</label>
                                    <div class="am-u-sm-9">
                                        <textarea  rows="5" id="weekly_complete" placeholder="留下您本周完成的工作..." name="weekly_complete" onkeydown="format(weekly_complete);" onfocus="sequence(weekly_complete);"></textarea>
                                        <small class="font-green">忙碌了一周，辛苦了！来写下您的汗水吧☺...</small>
                                    </div>
                                </div>
                                <div class="am-form-group">
                                    <label for="weekly_problem" class="am-u-sm-3 am-form-label">本周遇到问题</label>
                                    <div class="am-u-sm-9">
                                        <textarea class="" rows="5" id="weekly_problem" placeholder="留下您本周遇到的问题..." name="weekly_problem" onkeydown="format(weekly_problem);" onfocus="sequence(weekly_problem);"></textarea>
                                        <small class="font-green">忙碌了一周，辛苦了！来写下您本周遇到的问题吧☺...</small>
                                    </div>
                                </div>
								<div class="am-form-group">
                                    <label for="weekly_plan" class="am-u-sm-3 am-form-label">下周工作计划</label>
                                    <div class="am-u-sm-9">
                                        <textarea rows="5" id="weekly_plan" placeholder="留下您下周工作的计划..." name="weekly_plan" onkeydown="format(weekly_plan);" onfocus="sequence(weekly_plan);"></textarea>
                                        <small class="font-green">忙碌了一周，辛苦了！来写下对下周的计划吧☺...</small>
                                    </div>
                                </div>
                                <div class="am-form-group">
                                    <div class="am-u-sm-9 am-u-sm-push-3">
                                        <button type="submit" class="am-btn am-btn-primary">提    交</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <jsp:include page="../bottom.jsp"></jsp:include>
    <script type="text/javascript">
    $(function(){
    	var weeklyOK = $("#weeklyOK").val();
    	if(weeklyOK > 0){
    		$("#alertMsg").html("您的周报已经提交！祝您有个愉快的假期！");
    		$("#alert").modal({
    			relatedTarget: this,
		     	closeViaDimmer: false,
				onConfirm: function(e) {
				window.location.href="<%=writePath %>";
				}
    		});
    	}
    });
    </script>
</body>

</html>