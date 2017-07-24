<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />

<#if generateLayout>
    <#include "../common/recipe_simple.xml.ftl" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>

    <instantiate from="root/src/app_package/SimpleActivity.scala.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.scala" />

    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.scala" />
</recipe>
