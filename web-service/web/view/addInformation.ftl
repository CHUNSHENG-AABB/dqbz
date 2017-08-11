<div id="container">
	<form class="form-inline" action="" method="POST">

		<div style="margin-bottom: 70px">
			<label>操&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作:</label>
			<input type="button" class="form-control" style="margin-left: 10px" onclick="addNewsRecord()" value="保存">
		</div>

		<div>
			<label>资讯标题：</label>
			<input type="text" id="title" class="form-control" style="width: 300px">
		</div>

		<div style="margin-top: 20px">
			<label>资讯内容：</label>
		</div>
		<div>
			<#include "editor.ftl"/>
		</div>

	</form>
</div>
<script type="text/javascript">
	ue.ready(function() {
		ue.setContent('');
	});

	function addNewsRecord() {
		var title = $("#title").val();
		var member = $("#memberID").val();
		var content = UE.getEditor('editor').getContent();
		var json = JSON.stringify({"title":title,"memberid":'0',"content":content,"type":'3'});
		$.ajax({
            type:"post",
            contentType: "application/json;charset=utf-8",
            url: "/addNews",
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
                loadPage('informationList');
        	},
        	error: function (result) {
				alert(result);
				console.log(result);
			}

		});
    }
</script>