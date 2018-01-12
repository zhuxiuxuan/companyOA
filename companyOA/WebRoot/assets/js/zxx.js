//staff.jsp 开始
function jurisdictionStaff(id,level){
	var l = '';
	if(level == 1){
		l = '普通员工';
	}
	if(level == 2){
		l = '部门管理员';
	}
	if(level == 3){
		l = '会计';
	}
	$("#levelName").html(l);
	$("#jurisdictionModal").modal({
		relatedTarget: this,
        onConfirm: function(e) {
        	var leveln=$('input:radio[name="level"]:checked').val();
        	alert(leveln);
        	var data = {
          	info_level : leveln,
          	updateInfo_id : id,
         	 };
        	$.ajax({
          	url : "../staff/anVyaXNkaWN0aW9u.action",
			type : "post",
			data : data ,
			success : function(e) {
				window.location.reload();
					},
			error : function() {
					alert("异常情况，请重新点击");
					}
          });
        },
        onCancel: function(e) {
        }
    });
}
function resetStaff(id){
	$("#resetModal").modal({
		relatedTarget: this,
        onConfirm: function(e) {
        	$.ajax({
          	url : "../staff/UmVzZXRQV0Q.action",
			type : "post",
			data : "updateInfo_id="+id ,
			success : function(e) {
				window.location.reload();
					},
			error : function() {
					alert("异常情况，请重新点击");
					}
          });
        },
        onCancel: function(e) {
        }
    });
}
function delStaff(id,path){
	$("#delStaff").modal({
		relatedTarget: this,
        onConfirm: function(e) {
          //alert(id);
          var data = {
          	delectInfo_photo : path,
          	updateInfo_id : id,
          };
          $.ajax({
          	url : "../staff/Yig6Zmk5ZGY5bel.action",
			type : "post",
			data : data,
			success : function(e) {
				window.location.reload();
					},
			error : function() {
					alert("异常情况，请从新删除");
					}
          });
        },
        // closeOnConfirm: false,
        onCancel: function(e) {
        }
	});
}

function updateStaff(id,name,photo,dId,d,pId,p,entry,phone,WeChat){
	$("#mId").val(id);
	$("#mName").val(name);
	$("#mDepartment").val(dId);
	$("#mDepartment").html(d);
	$("#mPosition").val(pId);
	$("#mPosition").html(p);
	$("#mEntry").val(entry);
	$("#mPhone").val(phone);
	$("#mWeChat").val(WeChat);
	$("#mPhoto").val(photo);
	$("#updateStaff").modal({
      relatedTarget: this,
      onConfirm: function(e) {
      //alert(e.data[8]);
      var data = {
      updateInfo_id : e.data[0],
      info_photo : e.data[1],
      info_name	: e.data[2],
      info_department : e.data[3],
      info_position	: e.data[4],
      info_entry : e.data[5],
      info_phone : e.data[6],
      info_WeChat : e.data[7],
      delectInfo_photo : e.data[8],
      };
      //var fromDate = new FormData($("#updateFrom")[0]);
      $.ajax({
			url : "../staff/Lh5oGv5Lu5pS5.action",
			type : "post",
			data : data,
			success : function(e) {
				window.location.reload();
					},
			error : function() {
					alert("异常情况，请从新修改");
					}
			});
      },
    });
}
//staff.jsp结束
//staffAdd.jsp开始
function findPosition(){
    	var departmentID = $("#DID").val();
    	$("#position option:not(:first)").remove();
    	if(departmentID != null){
    		$.ajax({
    			url : "../department/i6IGM5L2N.action",
    			type : "get",
    			data : "departmentID="+departmentID,
    			success : function(re){
    				if(re.length == 0){
    					alert("没有");
    				}else{
    					for(var i = 0;i<re.length; i++){
    						var positionId = re[i].p_id;
							var positionName = re[i].p_name;
							$("#position").append("<option value='"+positionId+"'>"+positionName+"</option>");
    					}
    				}
    			},
    			error : function(){
    				alert("未知错误，请刷新页面！");
    			}
    		});
    	}
}
//staffAdd.jsp 结束  
//reviewWeekly.jsp开始
/**
 * 根据时间查询周报
 */
function findByDate(pageNO){
	var date = $("#date").val();
	var reData = {
			pageNo:pageNO,
			write_data:date,
	};
	$.ajax({
		url: "../weekly/a6h6ZiF.action",
		type : "post",
		data : reData,
		success : function(e){
			//alert(e.ajaxcompleteList.length);
			if("" != e.ajaxweeklyInfo){
				$("#reHtml").show();
				$("#info").html("<td>"+e.ajaxweeklyInfo.senderInfo.info_name+"</td>" +
						"<td>"+e.ajaxweeklyInfo.senderInfo.info_department.d_name+"</td>" +
								"<td>"+e.ajaxweeklyInfo.senderInfo.info_position.p_name+"</td>" +
										"<td>"+e.ajaxweeklyInfo.weekly_date+"</td>");
				$("#completes").html("<tr><th style='text-align:center;'>类别</th><th style='text-align:center;'>详情</th></tr>");
				$.each(e.ajaxcompleteList,function(n,value){
					if(n == 0){
						$("#completes").append("<tr><td rowspan='"+e.ajaxcompleteList.length+"' class='am-text-middle' style='text-align:center;width: 20%;'>本周完成任务</td><td>"+value+"</td></tr>");
					}else{
						$("#completes").append("<tr><td>"+value+"</td></tr>");
					}
				});
				$.each(e.ajaxproblemList,function(n,value){
					if(n == 0){
						$("#problems").html("<tr><td rowspan='"+e.ajaxproblemList.length+"' class='am-text-middle' style='text-align:center;width: 20%;'>本周遇到问题</td><td>"+value+"</td></tr>");
					}else{
						$("#problems").append("<tr><td>"+value+"</td></tr>");
					}
				});
				$.each(e.ajaxplanList,function(n,value){
					if(n == 0){
						$("#plans").html("<tr><td rowspan='"+e.ajaxplanList.length+"' class='am-text-middle' style='text-align:center;width: 20%;'>下周工作计划</td><td>"+value+"</td></tr>");
					}else{
						$("#plans").append("<tr><td>"+value+"</td></tr>");
					}
				});
				$("#pages").html("<li class='am-pagination-prev '>" +
						"<a href='javascript:void(0);' onclick='findByDate("+(e.ajaxpage.pageNo-1)+");'>上一条</a></li>" +
						"<li class='am-pagination-next'>" +
						"<a href='javascript:void(0);' onclick='findByDate("+(e.ajaxpage.pageNo+1)+");'>下一条</a></li>");
			}else{
				$("#reHtml").hide();
			}
		},
		error : function(){
			alert("未知错误，请刷新页面！");
		}
	});
}
//reviewWeekly.jsp结束
//writeWeekly.jsp开始
/**
 * 首次获取焦点加入1.序列号
 * @param name
 */
function sequence(name){
	v = $(name).val();
	if(v == ''){
		$(name).val(1+".");
	}
}
/**
 * 格式化textarea添加分号
 * @param name
 */
function format(name){
	if(event.keyCode==13){
		 v = $(name).val();
			$(name).val(v + ';');
	}
	/*自动加序列号
	var t = document.getElementById("weekly_complete"), s = t.value.split("\n"), len = s.length;
    for (var i = 1; i <= len; i++) {
        if ("" != s[i - 1]) {
            s[i - 1] = i + "." + s[i - 1];
        }
    }
    t.value = s.join("\n");*/
}
//writeWeekly.jsp结束