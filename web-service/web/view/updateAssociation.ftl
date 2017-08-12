<div id="container">
	<form class="form-inline" action="" method="POST">

		<div style="margin-bottom: 20px">
			<label>操&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作:</label>
			<!--<input type="button" class="form-control" style="margin-left: 10px" onclick="addRecord()" value="增加">-->
			<input type="button" class="form-control" style="margin-left: 10px" onclick="saveRecord()" value="保存">
			<!--<input type="button" class="form-control" style="margin-left: 10px" onclick="addRecord()" id="deleteRecord" value="删除">-->
		</div>
		<div class="form-group" style="margin-bottom: 20px">
			<label>协会名称：</label>
			<input type="text" class="form-control" value='${map.association.name}' readonly="true">
		</div>

		<div style="margin-bottom: 20px">
			<label style="width: 70px">类&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;型:</label>
			<input type="text" class="form-control" value='${map.typeName}' readonly="true">
		</div>

		<div>
			<label>编辑内容:</label>
			<#include "editor.ftl"/>
		</div>
	</form>
</div>
<script type="text/javascript">

    ue.ready(function() {
        ue.setContent('${map.association.content}');
    });

	function saveRecord(){
		var content = UE.getEditor('editor').getContent();
		var json = JSON.stringify({"associationID":'${map.association.id}',"content":content});
		$.ajax({
			type:"post",
			contentType: "application/json;charset=utf-8",
			url: "/updateAssociation",
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
				loadPage('../associationList?type='+${map.association.type});
			},
			error: function(result) {
				alert(result);
				console.log(result);
			}
		});
	}
</script>