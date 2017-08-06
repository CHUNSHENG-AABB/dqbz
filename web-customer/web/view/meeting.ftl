<h3>历届会议</h3>
<ul>
<#list news as new>
    <li>
        <div class="news-grid-right1" style="float: left;">
            <h4><a href="/newDetail?newId=${new.id}">${new.title}</a></h4>
        </div>
        <div class="clearfix"></div>
    </li>
</#list>
</ul>