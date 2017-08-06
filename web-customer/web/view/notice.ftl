<ul>

<#list news as new>

    <li>

        <div class="news-grid-right1" style="float: left;width: 700px;margin-top: 0.5em">
            <h4><a href="/newDetail?newId=${new.id}">${new.title}</a></h4>
        <#--<h4><a href="../productDetail?id=${product.id}">${product.name}</a></h4>-->
        </div>
        <div class="clearfix"></div>
    </li>

</#list>

</ul>