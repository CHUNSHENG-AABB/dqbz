<div id="container">
    <form class="form-inline" action="" method="POST">

        <div style="margin-bottom: 20px">
            <label>操&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作:</label>
            <!--<input type="button" class="form-control" style="margin-left: 10px" onclick="addRecord()" value="增加">-->
            <input type="button" class="form-control" style="margin-left: 10px" onclick="saveRecord()" value="保存">
            <!--<input type="button" class="form-control" style="margin-left: 10px" onclick="addRecord()" id="deleteRecord" value="删除">-->
        </div>
        <div class="form-group" style="margin-bottom: 20px">
            <label>服务名称：</label>
            <input type="text" class="form-control" id="ServiceName" value='${map.service.name}'>
        </div>

        <div style="margin-bottom: 20px">
            <label>所属单位：</label>
            <select id="memberID" class="form-control">
                <option value='${map.member.id}' selected>${map.member.name}</option>
                <#list map.memberList as member>
                    <option value='${member.id}'>${member.name}</option>
                </#list>
            </select>
        </div>

        <div style="margin-top: 20px">
            <label>服务介绍:</label>
            <#include "editor.ftl"/>
        </div>
    </form>
</div>
<script type="text/javascript">

	ue.ready(function() {
		ue.setContent('${map.service.context}');
	});

	function saveRecord(){
		var content = UE.getEditor('editor').getContent();
		var json = JSON.stringify({"serviceName":$("#ServiceName").val(),"content":ue.getContent(),"memberID":$("#memberID").val(),"ServiceID":'${map.service.id}'});
		$.ajax({
			type:"post",
			contentType: "application/json;charset=utf-8",
			url: "/updateService",
			data: json,
			dataType:'json',
			beforeSend: function () {
				if(content.length == 0 ){
					alert("请填写编辑内容！");
					$.abort();
				}
			},
			success:function (result){
				alert(result['key']);
				loadPage('ServiceList');
			},
			error: function(result) {
				alert(result);
				console.log(result);
			}
		});
	}
</script>