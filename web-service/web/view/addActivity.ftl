<div id="container">
	<form class="form-inline" action="" method="POST">

		<div style="margin-bottom: 20px">
			<label>操&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作:</label>
			<!--<input type="button" class="form-control" style="margin-left: 10px" onclick="addRecord()" value="增加">-->
			<input type="button" class="form-control" style="margin-left: 10px" onclick="saveRecord()" id="updateRecord" value="保存">
			<!--<input type="button" class="form-control" style="margin-left: 10px" onclick="addRecord()" id="deleteRecord" value="删除">-->
		</div>
		<div class="form-group" style="margin-bottom: 20px">
			<label>活动名称：</label>
			<input type="text" class="form-control" id="activityName" value="">
		</div>

		<div style="margin-bottom: 20px">
			<label>所属单位：</label>
			<select id="memberID" class="form-control">
				<#list memberList as member>
					<option value='${member.id}'>${member.name}</option>
				</#list>
			</select>
		</div>

		<div style="margin-bottom: 20px">
			<label style="width: 70px">开始时间:</label>
			<input type="datetime-local" class="form-control" id="startTime" value="">

			<label style="width: 70px">结束时间:</label>
			<input type="datetime-local" class="form-control" id="endTime" value="">
		</div>

		<div style="margin-bottom: 20px">
			<label>活动简介:</label>
			<div>
				<textarea id="Intro" class="form-control" style="width: 64%; height: 100px"></textarea>
			</div>
		</div>

		<div style="margin-bottom: 20px">
			<label style="width: 70px">活动头像:</label>
			<div id="cover_editor" style="width: 270px; height: 203px"></div>
			<!--<input type="text" class="form-control" id="cover_editor" value="">-->
		</div>


		<div style="margin-top: 20px">
			<label>活动介绍:</label>
			<#include "editor.ftl"/>
		</div>
	</form>
</div>

<script type="text/javascript">

	var cover_ue = UE.getEditor('cover_editor',{
        toolbars: [
            ['simpleupload','cleardoc','justifyleft', 'justifyright', 'justifycenter', 'justifyjustify']
        ],
        autoFloatEnabled: false,
		zIndex:0
    });

	function saveRecord(){
		var content = UE.getEditor('editor').getContent();
		var json = JSON.stringify({"activityName":$("#activityName").val(),"cover":cover_ue.getContent(),"content":ue.getContent(),"memberID":$("#memberID").val(),"startTime":$("#startTime").val(),"endTime":$("#endTime").val(),"intro":$('#Intro').val()});
		$.ajax({
			type:"post",
			contentType: "application/json;charset=utf-8",
			url: "/addActivity",
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
                loadPage('activityList');
			},
			error: function(result) {
				alert(result);
				console.log(result);
			}
		});
	}


</script>

