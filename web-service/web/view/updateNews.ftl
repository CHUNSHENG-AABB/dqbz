<div id="container">
	<form class="form-inline" action="" method="POST">

		<div style="margin-bottom: 70px">
			<label>操&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作:</label>
			<input type="button" class="form-control" style="margin-left: 10px" onclick="saveRecord()" value="保存">
			<#--<input type="button" class="form-control" style="margin-left: 10px" onclick="updateIntroductionRecord()" id="updateRecord" value="修改">-->
			<#--<input type="button" class="form-control" style="margin-left: 10px" onclick="addRecord()" id="deleteRecord" value="删除">-->
		</div>
            <input type="text" style="display: none" id="newsID" value=${news.id}>
		<div>
			<label>新闻标题：</label>
			<input type="text" id="title" class="form-control" style="width: 300px" value=${news.title}>
		</div>

        <div style="margin-top: 20px">
            <label>发布单位：</label>
            <select id="memberID" class="form-control">
                <option value="1">龙凤公墓</option>
                <option value="2">天堂公墓</option>
                <option value="3">寿山公墓</option>
            </select>
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

	function saveRecord() {
        var title = $("#title").val();
        var member = $("#memberID").val();
        var content = UE.getEditor('editor').getContent();
        var newsId = $('#newsID').val();
        var json = JSON.stringify({"NewsID":newsId,"title": title, "memberid": member, "content": content});
        $.ajax({
            type: "post",
            contentType: "application/json;charset=utf-8",
            url: "/updateNews",
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
            },
            error: function (result) {
                alert(result);
                console.log(result);
            }

        });
    }
</script>