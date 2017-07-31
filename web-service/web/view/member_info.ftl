<div id="container">
	<form class="form-inline" action="" method="POST">

		<div style="margin-bottom: 20px">
			<label>操&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作:</label>
			<!--<input type="button" class="form-control" style="margin-left: 10px" onclick="addRecord()" value="增加">-->
			<input type="button" class="form-control" style="margin-left: 10px" onclick="updateIntroductionRecord()" id="updateRecord" value="保存">
			<!--<input type="button" class="form-control" style="margin-left: 10px" onclick="addRecord()" id="deleteRecord" value="删除">-->
		</div>
		<div class="form-group" style="margin-bottom: 20px">
			<label>会员名称：</label>
			<input type="text" class="form-control" id="memberName" value="">
		</div>

		<div style="margin-bottom: 20px">
			<label style="width: 70px">会员头像:</label>
			<div id="cover_editor" style="width: 230px; height: 160px"></div>
		</div>

		<div>
			<label>会员简介:</label>
			<#include "editor.ftl"/>
		</div>

        <div>
            <label>联系电话:</label>
            <#--<div id="text_editor" style="width: 230px; height: 160px"></div>-->
			<div>
                <textarea name="phoneInfo" style="width: 300px; height: 50px"></textarea>
			</div>

        </div>
	</form>
</div>
<script type="text/javascript">
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