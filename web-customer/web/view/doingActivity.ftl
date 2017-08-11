<h3>最新动态</h3>
<ul>
    <#list activities as activity>
    <li>
        <div class="news-grid-left1">
            ${activity.cover}
        </div>
        <div class="news-grid-right1">
            <h4><a href="/activityDetail?id=${activity.id}">${activity.title}</a></h4>
            <h5><i>${activity.beginTime?string('yyyy-MM-dd HH:mm:ss')}</i><label>|</label> <i>${activity.endTime?string('yyyy-MM-dd HH:mm:ss')}</i></h5>
            <p>${activity.introduction}</p>
        </div>
        <div class="clearfix"></div>
    </li>
    </#list>
</ul>