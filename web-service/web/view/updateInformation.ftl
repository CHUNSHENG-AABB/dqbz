<div id="container">
	<form class="form-inline" action="" method="POST">

		<div style="margin-bottom: 70px">
			<label>操&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作:</label>
			<input type="button" class="form-control" style="margin-left: 10px" onclick="saveRecord()" value="保存">
		</div>
            <input type="text" style="display: none" id="newsID" value='${map.news.id}'>
		<div>
			<label>资讯标题：</label>
			<input type="text" id="title" class="form-control" style="width: 300px" value='${map.news.title}'>
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
        ue.setContent('${map.news.content}');
    });

	function saveRecord() {
        var title = $("#title").val();
        var member = $("#memberID").val();
        var content = UE.getEditor('editor').getContent();
        var newsId = $('#newsID').val();
        var json = JSON.stringify({"NewsID":newsId,"title": title, "memberid": '0', "content": content});
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
                loadPage('informationList');
            },
            error: function (result) {
                alert(result);
                console.log(result);
            }

        });
    }
</script>