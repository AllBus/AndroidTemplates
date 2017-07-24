package ${packageName}

import android.<#if appCompat>support.v4.</#if>app.Fragment
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
<#if applicationPackage??>
import ${applicationPackage}.R
</#if>

/**
 * A placeholder fragment containing a simple view.
 */
class ${fragmentClass} extends Fragment {

    override def onCreateView(inflater : LayoutInflater, container : ViewGroup, savedInstanceState : Bundle):View = {
        inflater.inflate(R.layout.${fragmentLayoutName}, container, false)
    }
}
