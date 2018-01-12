<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String base2 = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<div class="tpl-left-nav tpl-left-nav-hover">
	<div class="tpl-left-nav-title">Company management</div>
	<div class="tpl-left-nav-list">
		<ul class="tpl-left-nav-menu">
		<s:if test="#session.modulelist != null">
			<s:iterator value="#session.modulelist" var="module">
				<s:if test="#module.module_showmodule != 0">
					<s:if test="#module.module_showmodule == 1 && #module.module_istwomodule == null">
						<li class="tpl-left-nav-item">
						<a href="<%=base2 %>${module.module_like }" class="nav-link">
						 <i class="${module.module_style }"></i>
						 <span>${module.module_name }</span>
						</a></li>
					</s:if>
					<s:if test="#module.module_showmodule == -1">
						<li class="tpl-left-nav-item">
                        <!-- 打开状态 a 标签添加 active 即可   -->
                        <a for="#${module.module_id }"  class="nav-link tpl-left-nav-link-list">
                            <i class="${module.module_style }"></i>
                            <span>${module.module_name }</span>
                            <!-- 列表打开状态的i标签添加 tpl-left-nav-more-ico-rotate 图表即90°旋转  -->
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right "></i>
                        </a>
                        <!-- 打开状态 添加 display:block-->
                        <ul class="tpl-left-nav-sub-menu"  id="${module.module_id }">
                            <li>
                            	<s:iterator value="#session.modulelist" var="m">
                        		<s:if test="#module.module_id == #m.module_istwomodule">
                                <!-- 打开状态 a 标签添加 active 即可   -->
                                <a href="<%=base2 %>${m.module_like }">
                                    <i class="${m.module_style }"></i>
                                    <span>${m.module_name }</span><!-- 
                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i> -->
                                </a>
                                </s:if>
                            	</s:iterator>
                            </li>
                            
                        </ul>
                    </li>
					</s:if>
				</s:if>
			</s:iterator>
		</s:if>
			
		</ul>
	</div>
</div>
