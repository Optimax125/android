import jnim
import android/content/intent

jclass android.content.pm.PackageManager of JVMObject:
    proc getLaunchIntentForPackage*(var1: jstring): Intent