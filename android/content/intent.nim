import jnim
import android/os/bundle
import android/net/uri

const FILL_IN_ACTION* = 1
const FILL_IN_CATEGORIES* = 4
const FILL_IN_CLIP_DATA* = 128
const FILL_IN_COMPONENT* = 8
const FILL_IN_DATA* = 2
const FILL_IN_IDENTIFIER* = 256
const FILL_IN_PACKAGE* = 16
const FILL_IN_SELECTOR* = 64
const FILL_IN_SOURCE_BOUNDS* = 32
const FLAG_ACTIVITY_BROUGHT_TO_FRONT* = 4194304
const FLAG_ACTIVITY_CLEAR_TASK* = 32768
const FLAG_ACTIVITY_CLEAR_TOP* = 67108864
const FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET* = 524288
const FLAG_ACTIVITY_EXCLUDE_FROM_RECENTS* = 8388608
const FLAG_ACTIVITY_FORWARD_RESULT* = 33554432
const FLAG_ACTIVITY_LAUNCHED_FROM_HISTORY* = 1048576
const FLAG_ACTIVITY_LAUNCH_ADJACENT* = 4096
const FLAG_ACTIVITY_MATCH_EXTERNAL* = 2048
const FLAG_ACTIVITY_MULTIPLE_TASK* = 134217728
const FLAG_ACTIVITY_NEW_DOCUMENT* = 524288
const FLAG_ACTIVITY_NEW_TASK* = 268435456
const FLAG_ACTIVITY_NO_ANIMATION* = 65536
const FLAG_ACTIVITY_NO_HISTORY* = 1073741824
const FLAG_ACTIVITY_NO_USER_ACTION* = 262144
const FLAG_ACTIVITY_PREVIOUS_IS_TOP* = 16777216
const FLAG_ACTIVITY_REORDER_TO_FRONT* = 131072
const FLAG_ACTIVITY_RESET_TASK_IF_NEEDED* = 2097152
const FLAG_ACTIVITY_RETAIN_IN_RECENTS* = 8192
const FLAG_ACTIVITY_SINGLE_TOP* = 536870912
const FLAG_ACTIVITY_TASK_ON_HOME* = 16384
const FLAG_DEBUG_LOG_RESOLUTION* = 8
const FLAG_DIRECT_BOOT_AUTO* = 256
const FLAG_EXCLUDE_STOPPED_PACKAGES* = 16
const FLAG_FROM_BACKGROUND* = 4
const FLAG_GRANT_PERSISTABLE_URI_PERMISSION* = 64
const FLAG_GRANT_PREFIX_URI_PERMISSION* = 128
const FLAG_GRANT_READ_URI_PERMISSION* = 1
const FLAG_GRANT_WRITE_URI_PERMISSION* = 2
const FLAG_INCLUDE_STOPPED_PACKAGES* = 32
const FLAG_RECEIVER_FOREGROUND* = 268435456
const FLAG_RECEIVER_NO_ABORT* = 134217728
const FLAG_RECEIVER_REGISTERED_ONLY* = 1073741824
const FLAG_RECEIVER_REPLACE_PENDING* = 536870912
const FLAG_RECEIVER_VISIBLE_TO_INSTANT_APPS* = 2097152


jclass android.content.Intent * of JVMObject:
    proc new*
    proc new*(action: string)
    proc addFlags*(flags: jint): Intent
    proc getExtras*(): Bundle
    proc getData*(): Uri
    proc getStringExtra*(key: string): string
    proc hasExtra*(key: string): bool
    proc removeExtra*(key: string)
    proc setData*(u: Uri)