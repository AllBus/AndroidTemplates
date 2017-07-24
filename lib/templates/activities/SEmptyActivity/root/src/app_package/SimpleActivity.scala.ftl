package ${packageName}

import ${superClassFqcn}
import android.os.Bundle
<#if includeCppSupport!false>
import android.widget.TextView
</#if>
<#if applicationPackage?? && generateLayout>
import ${applicationPackage}.R
</#if>

class ${activityClass} extends ${superClass} {

    override protected def onCreate(savedInstanceState : Bundle) {
        super.onCreate(savedInstanceState)
<#if generateLayout>
        setContentView(R.layout.${layoutName})
</#if>
	}
}
