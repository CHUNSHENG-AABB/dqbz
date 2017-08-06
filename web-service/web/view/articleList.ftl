﻿﻿<div id="container">
	<form class="form-inline" action="" method="POST">

		<div style="margin-bottom: 70px">
			<label>操&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作:</label>
			<input type="button" class="form-control" style="margin-left: 10px" onclick="loadPage('addArticlePage?type=${entity.type}')" value="新增">
			<input type="button" class="form-control" style="margin-left: 10px" onclick="updateArticle()" value="修改">
			<input type="button" class="form-control" style="margin-left: 10px" onclick="deleteArticle()" id="deleteRecord" value="删除">
		</div>

		<div class="container-fluid">
            <div class="col-md-1" style="background-color: #00a0e9; border:1px solid black;font-size: 16px; text-align: center">选择</div>
            <div class="col-md-5" style="background-color: #00a0e9; border:1px solid black;font-size: 16px; text-align: center">标题</div>
            <div class="col-md-3" style="background-color: #00a0e9; border:1px solid black;font-size: 16px; text-align: center">发布时间</div>
		</div>

		<#list entity.ArticleList as Article>
            <div class="container-fluid">
                <div class="col-md-1" style="border:1px solid black;font-size: 16px; text-align: center">
                    <input type="radio" name="radio" value=${Article.id}></input>
                </div>
                <div class="col-md-5" style="border:1px solid black;font-size: 16px; text-align: center">${Article.title}</div>
                <div class="col-md-3" style="border:1px solid black;font-size: 16px; text-align: center">${Article.updateTime?string("yyyy-MM-dd HH:mm:ss")}</div>
			</div>
		</#list>

	</form>
</div>
<script type="text/javascript">

    function updateArticle(){
        var ArticleID = $('input:radio:checked').val();
		if(ArticleID == null){
			alert("请选择要修改的记录！");
			$.abort();
		}
        loadPage('getArticleByID?ArticleID='+ArticleID);
	}

    function deleteArticle(){
        var ArticleID = $('input:radio:checked').val();
        var json = JSON.stringify({"ArticleID":ArticleID});
        $.ajax({
            type:"post",
            contentType: "application/json;charset=utf-8",
            url: "/deleteArticleByID",
            data: json,
            dataType:'json',
            beforeSend: function () {
                if(ArticleID == null ){
                    alert("请选择要删除的记录！");
                    $.abort();
                }
            },
            success:function (result){
                alert(result['key']);
                loadPage('ArticleList?type=${entity.type}');
            },
            error: function(result) {
                alert(result);
                console.log(result);
            }
        });

    }
</script>

<script type="text/javascript">
    function loadPage(pageLink) {
        $("#page-inner").html(null);
        $("#page-inner").load(pageLink);
    }
</script>