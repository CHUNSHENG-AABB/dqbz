<div id="container">
	<form class="form-inline" action="" method="POST">

		<div style="margin-bottom: 70px">
			<label>操&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作:</label>
			<input type="button" class="form-control" style="margin-left: 10px" onclick="saveRecord()" value="保存">
			<#--<input type="button" class="form-control" style="margin-left: 10px" onclick="updateIntroductionRecord()" id="updateRecord" value="修改">-->
			<#--<input type="button" class="form-control" style="margin-left: 10px" onclick="addRecord()" id="deleteRecord" value="删除">-->
		</div>

		<div>
			<label>新闻标题：</label>
			<input type="text" id="title" class="form-control" style="width: 300px" value=${news.title}>
		</div>

        <div style="margin-top: 20px">
            <label>发布单位：</label>
            <input type="text" class="form-control" value=${news.memberid} readonly="true">
        </div>

		<div style="margin-top: 20px">
			<label>新闻内容：</label>
		</div>
		<div>
			<#include "editor.ftl"/>
		</div>

	</form>
</div>
<script type="text/javascript">

    ue.ready(function() {
        ue.setContent('${news.content}');
    });

    var cover_ue = UE.getEditor('cover_editor',{
        toolbars: [
            ['simpleupload','cleardoc']
        ],
        autoFloatEnabled: false,
		zIndex:0
    });

    var text_ue = UE.getEditor('text_editor',{
        toolbars: [
            ['justifyleft', 'justifyright', 'justifycenter', 'justifyjustify']
        ]
    });

	ue.ready(function() {
		ue.setContent('');
	});

	function saveRecord() {
		var title = $("#title").val();
		var member = $("#memberID").val();
		var content = UE.getEditor('editor').getContent();
		var json = JSON.stringify({"title":title,"memberid":member,"content":content});
		$.ajax({
            type:"post",
            contentType: "application/json;charset=utf-8",
            url: "/addNews",
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

	function updateIntroductionRecord(){
		var content = UE.getEditor('editor').getContent();
		var json = JSON.stringify({"memberName":$("#memberName").val(),"cover":cover_ue.getContent(),"content":ue.getContent()});
		$.ajax({
			type:"post",
			contentType: "application/json;charset=utf-8",
			url: "/addMember",
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