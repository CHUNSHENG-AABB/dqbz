<div id="container">
    <form class="form-inline" action="" method="POST">

        <div style="margin-bottom: 20px">
            <label>操&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作:</label>
            <!--<input type="button" class="form-control" style="margin-left: 10px" onclick="addRecord()" value="增加">-->
            <input type="button" class="form-control" style="margin-left: 10px" onclick="saveRecord()" value="保存">
            <!--<input type="button" class="form-control" style="margin-left: 10px" onclick="addRecord()" id="deleteRecord" value="删除">-->
        </div>
        <div class="form-group" style="margin-bottom: 20px">
            <label>会员名称：</label>
            <input type="text" class="form-control" id="memberName" value=${member.name}>
        </div>

        <div style="margin-bottom: 20px">
            <label style="width: 70px">会员头像:</label>
            <div id="cover_editor" style="width: 270px; height: 203px"></div>
            <!--<input type="text" class="form-control" id="cover_editor" value="">-->
        </div>

        <div>
            <label>会员简介:</label>
            <div>
                <textarea id="memberIntro" class="form-control" style="width: 64%; height: 100px">${member.introduction}</textarea>
            </div>
        </div>

        <div style="margin-top: 20px">
            <label>会员介绍:</label>
        <#include "editor.ftl"/>
        </div>

        <div style="margin-top: 20px">
            <label>联系电话:</label>
            <div id="text_editor" style="width: 230px; height: 160px"></div>
            <!--<div>-->
                <!--<textarea id="phoneInfo" class="form-control" style="width: 300px; height: 50px"></textarea>-->
            <!--</div>-->

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
		],
		autoFloatEnabled: false,
		zIndex:0
	});

	ue.ready(function() {
        ue.setContent('${member.content}');
    });
	text_ue.ready(function() {
		text_ue.setContent('${member.contact}');
	});

	cover_ue.ready(function() {
		cover_ue.setContent('${member.cover}');
	});

	function saveRecord() {
        var content = UE.getEditor('editor').getContent();
        var json = JSON.stringify({"memberID":'${member.id}',"memberName":$("#memberName").val(),"cover":$("#cover_editor").val(),"content":ue.getContent(),"memberIntro":$("#memberName").val(),"memberIntro":$("#memberIntro").val(),"contact":text_ue.getContent()});
        $.ajax({
            type: "post",
            contentType: "application/json;charset=utf-8",
            url: "/updateMember",
            data: json,
            dataType: 'json',
            beforeSend: function () {
                if (content.length == 0) {
                    alert("请填写编辑内容！");
                    $.abort();
                }
            },
            success: function (result) {
                alert(result['key']);
                loadPage('memberList');
            },
            error: function (result) {
                alert(result);
                console.log(result);
            }

        });
    }
</script>