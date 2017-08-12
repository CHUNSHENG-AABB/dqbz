<div id="container">
	<form class="form-inline" action="" method="POST">

		<div style="margin-bottom: 70px">
			<label>操&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作:</label>
			<input type="button" class="form-control" style="margin-left: 10px" onclick="addRecord()" value="保存">
		</div>

		<div>
			<label>图片标题：</label>
			<input type="text" id="title" class="form-control" style="width: 300px" value='${resource.title}'>
		</div>

        <div style="margin-top: 20px">
            <label>所属单位：</label>
            <input type="text" id="memberID" class="form-control" style="width: 200px" value='${resource.name}' readonly="true">
        </div>

		<div style="margin-top: 20px">
			<label>宣传内容：</label>
			<#include "editor.ftl"/>
		</div>

	</form>
</div>
<script type="text/javascript">


    ue.ready(function() {
        ue.setContent('${resource.introduction}');
    });


	function addRecord() {
		var title = $("#title").val();
		var json = JSON.stringify({"resourceID":'${resource.id}',"title":title,"videoUrl":"","type":'${resource.type}',"content":ue.getContent()});
		$.ajax({
            type:"post",
            contentType: "application/json;charset=utf-8",
            url: "/updateResource",
            data: json,
            dataType:'json',
            beforeSend: function () {

            },
        	success: function (result) {
            	alert(result['key']);
                loadPage('../resourceList?type=${resource.type}');
        	},
        	error: function (result) {
				alert(result);
				console.log(result);
			}

		});
    }
</script>