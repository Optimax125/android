import jnim
import android/os/bundle
import android/net/uri

jclass android.content.Intent * of JVMObject:
    proc addFlags*(flags: jint): Intent
    proc getExtras*(): Bundle
    proc getData*(): Uri
    proc getStringExtra*(key: string): string
    proc hasExtra*(key: string): bool
    proc removeExtra*(key: string)
    proc setData*(u: Uri)
