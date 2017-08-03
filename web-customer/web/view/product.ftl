<ul>

<#list products as product>

    <li>
        <div class="news-grid-left1">
            <img src="${product.cover}" alt=" " class="img-responsive"/>
        </div>
        <div class="news-grid-right1">
            <h4><a href="#">${product.name}</a></h4>
            <#--<h4><a href="../productDetail?id=${product.id}">${product.name}</a></h4>-->
            <h5>价格： <label>|</label> <i>${product.price}</i></h5>
            <p>${product.introduction}</p>
        </div>
        <div class="clearfix"></div>
    </li>

</#list>

</ul>
