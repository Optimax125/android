import jnim
import jnim/java/lang # for Runnable
import android / content / [context_wrapper, intent]
import android/app/application
import android/view/window_manager
import android/os/bundle

jclass android.app.Activity * of ContextWrapper:    
    proc getApplication*(): Application
    proc getIntent*(): Intent    
    proc getWindowManager*(): WindowManager
    proc onCreate*(savedInstanceState: Bundle)
    proc runOnUiThread*(r: Runnable)
    proc startActivity*(intent: Intent)
    proc startActivityForResult*(intent: Intent, requestCode: jint)

var gCurrentActivity {.threadvar.}: Activity

proc setCurrentActivity*(a: Activity) =
    ## This can be called by upper-level application framework.
    gCurrentActivity = a

proc getSDLMainActivity(): Activity =
    let cls = JVMClass.getByFqcn("org/libsdl/app/SDLActivity")
    if not cls.isNil:
        let meth = cls.getStaticMethodId("getContext", "()Landroid/content/Context;")
        if not cast[pointer](meth).isNil:
            let j = cls.callObjectMethodRaw(meth, [])
            if not j.isNil:
                result = Activity.fromJObject(j)

proc currentActivityIfPresent*(): Activity =
    if gCurrentActivity.isNil:
        gCurrentActivity = getSDLMainActivity()
    gCurrentActivity

proc currentActivity*(): Activity =
    result = currentActivityIfPresent()
    doAssert(not result.isNil, "Current activity was not set")
