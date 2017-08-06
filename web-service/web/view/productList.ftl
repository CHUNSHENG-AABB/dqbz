﻿﻿<div id="container">
	<form class="form-inline" action="" method="POST">

		<div style="margin-bottom: 70px">
			<label>操&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作:</label>
			<input type="button" class="form-control" style="margin-left: 10px" onclick="loadPage('addProductPage')" value="新增">
			<input type="button" class="form-control" style="margin-left: 10px" onclick="updateProduct()" value="修改">
			<input type="button" class="form-control" style="margin-left: 10px" onclick="deleteProduct()" value="删除">
		</div>

		<div class="container-fluid">
            <div class="col-md-1" style="background-color: #00a0e9; border:1px solid black;font-size: 16px; text-align: center">选择</div>
            <div class="col-md-3" style="background-color: #00a0e9; border:1px solid black;font-size: 16px; text-align: center">产品名称</div>
            <div class="col-md-2" style="background-color: #00a0e9; border:1px solid black;font-size: 16px; text-align: center">发布单位</div>
            <div class="col-md-2" style="background-color: #00a0e9; border:1px solid black;font-size: 16px; text-align: center">开始时间</div>
            <div class="col-md-2" style="background-color: #00a0e9; border:1px solid black;font-size: 16px; text-align: center">结束时间</div>
		</div>

		<#list ProductList as product>
            <div class="container-fluid">
                <div class="col-md-1" style="border:1px solid black;font-size: 16px; text-align: center">
                    <input type="radio" name="radio" value='${product.id}'></input>
                </div>
                <div class="col-md-3" style="border:1px solid black;font-size: 16px; text-align: center">${product.name}</div>
                <div class="col-md-2" style="border:1px solid black;font-size: 16px; text-align: center">${product.memberName}</div>
                <div class="col-md-2" style="border:1px solid black;font-size: 16px; text-align: center">${product.inputTime?string("yyyy-MM-dd HH:mm:ss")}</div>
                <div class="col-md-2" style="border:1px solid black;font-size: 16px; text-align: center">${product.updateTime?string("yyyy-MM-dd HH:mm:ss")}</div>
			</div>
		</#list>

	</form>
</div>
<script type="text/javascript">

    function updateProduct(){
        var productID = $('input:radio:checked').val();
		if(productID == null){
			alert("请选择要修改的记录！");
			$.abort();
		}
        loadPage('getProductByID?ProductID='+productID);
	}

    function deleteProduct(){
        var productID = $('input:radio:checked').val();
        var json = JSON.stringify({"ProductID":productID});
        $.ajax({
            type:"post",
            contentType: "application/json;charset=utf-8",
            url: "/deleteProductByID",
            data: json,
            dataType:'json',
            beforeSend: function () {
                if(productID == null ){
                    alert("请选择要删除的记录！");
                    $.abort();
                }
            },
            success:function (result){
                alert(result['key']);
                loadPage('productList');
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