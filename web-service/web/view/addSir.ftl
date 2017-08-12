<div id="container">
	<form class="form-inline" action="" method="POST">

		<div style="margin-bottom: 70px">
			<label>操&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作:</label>
			<input type="button" class="form-control" style="margin-left: 10px" onclick="saveRecord()" value="保存">
		</div>

		<div>
			<label>名称：</label>
			<input type="text" id="title" class="form-control" style="width: 300px" value=''>
		</div>

        <div style="margin-top: 20px">
            <label>地址电话信息:</label>
            <div id="text_editor" style="width: 64%; height: 180px">
                <#--<textarea id="Intro" class="form-control" style="width: 64%; height: 100px">${sir.introduction}</textarea>-->
            </div>
        </div>

		<div style="margin-top: 20px">
			<label>详细介绍：</label>
		</div>
		<div>
			<#include "editor.ftl"/>
		</div>

	</form>
</div>
<script type="text/javascript">

    var text_ue = UE.getEditor('text_editor',{
        toolbars: [
            ['justifyleft', 'justifyright', 'justifycenter', 'justifyjustify']
        ],
        autoFloatEnabled: false,
        zIndex:0
    });

	<#--ue.ready(function() {-->
		<#--ue.setContent('${sir.content}');-->
	<#--});-->

    <#--text_ue.ready(function(){-->
        <#--text_ue.setContent('${sir.introduction}');-->
	<#--});-->

	function saveRecord() {
		var name = $("#title").val();
		var content = UE.getEditor('editor').getContent();
		var json = JSON.stringify({"name":name,"content":content,"type":'${type}',"intro":text_ue.getContent()});
		$.ajax({
			type:"post",
			contentType: "application/json;charset=utf-8",
			url: "/addSir",
			data: json,
			dataType:'json',
			beforeSend: function () {
				if(title == ""){
					alert("请填写标题！");
					$.abort();
				}
				if(content.length == 0 ){
					alert("请填写编辑内容！");
					$.abort();
				}
			},
			success: function (result) {
				alert(result['key']);
				loadPage('../sirList?type=${type}');
			},
			error: function (result) {
				alert(result);
				console.log(result);
			}

		});
	}
</script>