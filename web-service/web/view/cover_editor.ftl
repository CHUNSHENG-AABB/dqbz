<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>uEditor</title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <script type="text/javascript" charset="utf-8" src="/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="/ueditor/ueditor.all.min.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="/ueditor/lang/zh-cn/zh-cn.js"></script>


</head>
<body>

<script id="cover_editor"  type="text/plain" style="width:70%;height:200px;"></script>
<script type="text/javascript">
	var cover_ue = UE.getEditor('cover_editor',{
        toolbars: [
            ['fullscreen', 'source', 'undo', 'redo','simpleupload', 'justifyleft', 'justifyright', 'justifycenter', 'justifyjustify', 'pagebreak','cleardoc']
        ]
	});
	function getContent() {
		var arr = [];
		arr.push("使用editor.getContent()方法可以获得编辑器的内容");
		arr.push("内容为：");
		arr.push(cover_ue.getContent());
		alert(arr.join("\n"));
	}
	function setContent(isAppendTo) {
		var arr = [];
		arr.push("使用editor.setContent('欢迎使用ueditor')方法可以设置编辑器的内容");
        cover_ue.setContent('欢迎使用ueditor', isAppendTo);
		alert(arr.join("\n"));
	}
</script>
</body>
</html>