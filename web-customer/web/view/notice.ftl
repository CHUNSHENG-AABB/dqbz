<ul>

<#list news as new>

    <li>
        <div class="news-grid-left1">
        </div>
        <div class="news-grid-right1">
            <h4><a href="#">${new.title}</a></h4>
        <#--<h4><a href="../productDetail?id=${product.id}">${product.name}</a></h4>-->
        </div>
        <div class="clearfix"></div>
    </li>

</#list>

</ul>