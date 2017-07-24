package ${packageName}

import android.os.Bundle
<#if includeCppSupport!false>
import android.widget.TextView
</#if>
<#if hasAppBar>
import android.support.design.widget.FloatingActionButton
import android.support.design.widget.Snackbar
import android.support.v7.app.AppCompatActivity
import android.support.v7.widget.Toolbar
import android.view.View
<#else>
import ${superClassFqcn}
</#if>
<#if isNewProject>
import android.view.Menu
import android.view.MenuItem
</#if>
<#if applicationPackage??>
import ${applicationPackage}.R
</#if>

class ${activityClass} extends ${superClass} {

    override protected def onCreate(savedInstanceState: Bundle) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.${layoutName})
<#if hasAppBar>
        val toolbar = findViewById(R.id.toolbar).asInstanceOf[Toolbar]
        setSupportActionBar(toolbar)
		
		val fab = findViewById(R.id.fab).asInstanceOf[FloatingActionButton]
        fab.setOnClickListener(new View.OnClickListener() {
            override def onClick(view : View) {
                Snackbar.make(view, "Replace with your own action", Snackbar.LENGTH_LONG)
                        .setAction("Action", null).show()
            }
        })
</#if>
<#if parentActivityClass != "">
        get${Support}ActionBar.setDisplayHomeAsUpEnabled(true)
</#if>

    }

<#if isNewProject>
    override def onCreateOptionsMenu(menu : Menu): Boolean = {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater.inflate(R.menu.${menuName}, menu)
        true
    }

    override def onOptionsItemSelected(item :MenuItem): Boolean = {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        item.getItemId match {
			case R.id.action_settings =>
			case _ => return super.onOptionsItemSelected(item)
		}

		true        
    }
</#if>

}
