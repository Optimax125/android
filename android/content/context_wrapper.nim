import jnim
import android/content/context
import android/content/res/resources
import android/content/pm/package_manager

jclass android.content.ContextWrapper * of Context:
    proc getResources*(): Resources
    proc getPackageManager*(): PackageManager
