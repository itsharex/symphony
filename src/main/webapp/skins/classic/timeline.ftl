<#include "macro-head.ftl">
<#include "common/sub-nav.ftl">
<!DOCTYPE html>
<html>
    <head>
        <@head title="${timelineLabel} - ${symphonyLabel}">
        <meta name="description" content="${timelineLabel}"/>
        </@head>
        <link type="text/css" rel="stylesheet" href="${staticServePath}/css/index${miniPostfix}.css?${staticResourceVersion}" />
        <link rel="canonical" href="${servePath}/timeline">
    </head>
    <body>
        <#include "header.ftl">
        <@subNav 'timeline' ''/>
        <div class="main">
            <div class="wrapper">
                <div class="content fn-clear">
                    <#if timelines?size <= 0>
                    <div id="emptyTimeline">${emptyTimelineLabel}</div>
                    </#if>
                    <div class="list single-line ft-smaller ft-gray timeline">
                        <ul id="ul">
                            <#list timelines as timeline>
                            <li>${timeline.content}</li>
                            </#list>
                        </ul>
                    </div>
                    <#include "common/domains.ftl">
                </div>
                <div class="side">
                    <#include "side.ftl">
                </div>
            </div>
        </div>
        <#include "footer.ftl">

        <script type="text/javascript" src="${staticServePath}/js/channel${miniPostfix}.js?${staticResourceVersion}"></script>
        <script>
            // Init [Timeline] channel
            TimelineChannel.init("${wsScheme}://${serverHost}:${serverPort}${contextPath}/timeline-channel", ${timelineCnt});
        </script>
    </body>
</html>
