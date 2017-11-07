<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <@kt.addAllKotlinDependencies />
    <#if useSupport><dependency mavenUrl="com.android.support:support-v4:${buildApi}.+"/></#if>
    <merge from="root/res/values/strings.xml.ftl" to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

    <instantiate from="root/res/layout/fragment_blank.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />

        <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />

    <open file="${escapeXmlAttribute(srcOut)}/${className}.java" />

    <instantiate from="root/src/app_package/HomeFragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}.java" />

    <instantiate from="root/src/app_package/HomePresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className?replace('Fragment', '')}Presenter.java" />

    <instantiate from="root/src/app_package/HomeView.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className?replace('Fragment', '')}View.java" />

</recipe>
