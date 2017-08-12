<div id="container">
    <video width="320" height="240" controls>
        <source src="http://player.youku.com/player.php/sid/XMjk2MjgyMzg4OA==/v.swf" type="video/mp4">
    </video>

    <embed src="http://player.youku.com/player.php/sid/XMjk2MjgyMzg4OA==/v.swf" quality="high" width="480" height="400" align="left" allowScriptAccess="sameDomain" type="application/x-shockwave-flash"></embed>
</div>
<script type="text/javascript">

    var text_ue = UE.getEditor('text_editor',{
        toolbars: [
            ['justifyleft', 'justifyright', 'justifycenter', 'justifyjustify']
        ],
        autoFloatEnabled: false,
        zIndex:0
    });

	ue.ready(function() {
		ue.setContent('${sir.content}');
	});

    text_ue.ready(function(){
        text_ue.setContent('${sir.introduction}');
	});

	function saveRecord() {
		var name = $("#title").val();
		var content = UE.getEditor('editor').getContent();
		var json = JSON.stringify({"name":name,"content":content,"type":'${sir.type}',"SirID":'${sir.id}',"intro":text_ue.getContent()});
		$.ajax({
			type:"post",
			contentType: "application/json;charset=utf-8",
			url: "/updateSir",
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
				loadPage('../sirList?type=${sir.type}');
			},
			error: function (result) {
				alert(result);
				console.log(result);
			}

		});
	}
</script>