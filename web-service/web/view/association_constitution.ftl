<div id="container">
	<form class="form-inline" action="" method="POST">

		<div style="margin-bottom: 20px">
			<label>操&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作:</label>
			<!--<input type="button" class="form-control" style="margin-left: 10px" onclick="addRecord()" value="增加">-->
			<input type="button" class="form-control" style="margin-left: 10px" onclick="aaaadda()" value="保存">
			<!--<input type="button" class="form-control" style="margin-left: 10px" onclick="addRecord()" id="deleteRecord" value="删除">-->
		</div>
		<div class="form-group" style="margin-bottom: 20px">
			<label>协会名称：</label>
			<input type="text" class="form-control" value='${association_constitution.name}' readonly="true">
		</div>

		<div style="margin-bottom: 20px">
			<label style="width: 70px">类&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;型:</label>
			<input type="text" class="form-control" value="协会章程" readonly="true">
		</div>

		<div>
			<label>编辑内容:</label>
			<#include "editor.ftl"/>
		</div>
	</form>
</div>
<script type="text/javascript">

	ue.ready(function() {
		ue.setContent('${association_constitution.content}');
	});

	function aaaadda(){
		var content = UE.getEditor('editor').getContent();
		var json = JSON.stringify({"type":"12312","content":content});
		$.ajax({
			type:"post",
			contentType: "application/json;charset=utf-8",
			url: "/association_constitution_updateRecord",
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
			},
			error: function(result) {
				alert(result);
				console.log(result);
			}
		});
	}
</script>