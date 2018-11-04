.class public final Landroid/view/MotionEvent;
.super Landroid/view/InputEvent;
.source "MotionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/MotionEvent$1;,
        Landroid/view/MotionEvent$PointerCoords;,
        Landroid/view/MotionEvent$PointerProperties;
    }
.end annotation


# static fields
.field public static final ACTION_BUTTON_PRESS:I = 0xb

.field public static final ACTION_BUTTON_RELEASE:I = 0xc

.field public static final ACTION_CANCEL:I = 0x3

.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_HOVER_ENTER:I = 0x9

.field public static final ACTION_HOVER_EXIT:I = 0xa

.field public static final ACTION_HOVER_MOVE:I = 0x7

.field public static final ACTION_MASK:I = 0xff

.field public static final ACTION_MOVE:I = 0x2

.field public static final ACTION_OUTSIDE:I = 0x4

.field public static final ACTION_POINTER_1_DOWN:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_1_UP:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_2_DOWN:I = 0x105
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_2_UP:I = 0x106
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_3_DOWN:I = 0x205
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_3_UP:I = 0x206
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_DOWN:I = 0x5

.field public static final ACTION_POINTER_ID_MASK:I = 0xff00
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_ID_SHIFT:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_INDEX_MASK:I = 0xff00

.field public static final ACTION_POINTER_INDEX_SHIFT:I = 0x8

.field public static final ACTION_POINTER_UP:I = 0x6

.field public static final ACTION_SCROLL:I = 0x8

.field public static final ACTION_UP:I = 0x1

.field public static final AXIS_BRAKE:I = 0x17

.field public static final AXIS_DISTANCE:I = 0x18

.field public static final AXIS_GAS:I = 0x16

.field public static final AXIS_GENERIC_1:I = 0x20

.field public static final AXIS_GENERIC_10:I = 0x29

.field public static final AXIS_GENERIC_11:I = 0x2a

.field public static final AXIS_GENERIC_12:I = 0x2b

.field public static final AXIS_GENERIC_13:I = 0x2c

.field public static final AXIS_GENERIC_14:I = 0x2d

.field public static final AXIS_GENERIC_15:I = 0x2e

.field public static final AXIS_GENERIC_16:I = 0x2f

.field public static final AXIS_GENERIC_2:I = 0x21

.field public static final AXIS_GENERIC_3:I = 0x22

.field public static final AXIS_GENERIC_4:I = 0x23

.field public static final AXIS_GENERIC_5:I = 0x24

.field public static final AXIS_GENERIC_6:I = 0x25

.field public static final AXIS_GENERIC_7:I = 0x26

.field public static final AXIS_GENERIC_8:I = 0x27

.field public static final AXIS_GENERIC_9:I = 0x28

.field public static final AXIS_HAT_X:I = 0xf

.field public static final AXIS_HAT_Y:I = 0x10

.field public static final AXIS_HSCROLL:I = 0xa

.field public static final AXIS_LTRIGGER:I = 0x11

.field public static final AXIS_ORIENTATION:I = 0x8

.field public static final AXIS_PRESSURE:I = 0x2

.field public static final AXIS_RELATIVE_X:I = 0x1b

.field public static final AXIS_RELATIVE_Y:I = 0x1c

.field public static final AXIS_RTRIGGER:I = 0x12

.field public static final AXIS_RUDDER:I = 0x14

.field public static final AXIS_RX:I = 0xc

.field public static final AXIS_RY:I = 0xd

.field public static final AXIS_RZ:I = 0xe

.field public static final AXIS_SCROLL:I = 0x1a

.field public static final AXIS_SIZE:I = 0x3

.field private static final AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final AXIS_THROTTLE:I = 0x13

.field public static final AXIS_TILT:I = 0x19

.field public static final AXIS_TOOL_MAJOR:I = 0x6

.field public static final AXIS_TOOL_MINOR:I = 0x7

.field public static final AXIS_TOUCH_MAJOR:I = 0x4

.field public static final AXIS_TOUCH_MINOR:I = 0x5

.field public static final AXIS_VSCROLL:I = 0x9

.field public static final AXIS_WHEEL:I = 0x15

.field public static final AXIS_X:I = 0x0

.field public static final AXIS_Y:I = 0x1

.field public static final AXIS_Z:I = 0xb

.field public static final BUTTON_BACK:I = 0x8

.field public static final BUTTON_FORWARD:I = 0x10

.field public static final BUTTON_PRIMARY:I = 0x1

.field public static final BUTTON_SECONDARY:I = 0x2

.field public static final BUTTON_STYLUS_PRIMARY:I = 0x20

.field public static final BUTTON_STYLUS_SECONDARY:I = 0x40

.field private static final BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

.field public static final BUTTON_TERTIARY:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final EDGE_BOTTOM:I = 0x2

.field public static final EDGE_LEFT:I = 0x4

.field public static final EDGE_RIGHT:I = 0x8

.field public static final EDGE_TOP:I = 0x1

.field public static final FLAG_TAINTED:I = -0x80000000

.field public static final FLAG_TARGET_ACCESSIBILITY_FOCUS:I = 0x40000000

.field public static final FLAG_WINDOW_IS_OBSCURED:I = 0x1

.field public static final FLAG_WINDOW_IS_PARTIALLY_OBSCURED:I = 0x2

.field private static final HISTORY_CURRENT:I = -0x80000000

.field public static final INVALID_POINTER_ID:I = -0x1

.field private static final LABEL_PREFIX:Ljava/lang/String; = "AXIS_"

.field private static final MAX_RECYCLED:I = 0xa

.field private static final NS_PER_MS:J = 0xf4240L

.field public static final TOOL_TYPE_EDGE_TOUCH:I = 0x5

.field public static final TOOL_TYPE_ERASER:I = 0x4

.field public static final TOOL_TYPE_FINGER:I = 0x1

.field public static final TOOL_TYPE_MOUSE:I = 0x3

.field public static final TOOL_TYPE_STYLUS:I = 0x2

.field private static final TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOOL_TYPE_UNKNOWN:I

.field private static final gRecyclerLock:Ljava/lang/Object;

.field private static gRecyclerTop:Landroid/view/MotionEvent;

.field private static gRecyclerUsed:I

.field private static final gSharedTempLock:Ljava/lang/Object;

.field private static gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private static gSharedTempPointerIndexMap:[I

.field private static gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;


# instance fields
.field private mNativePtr:J

.field private mNext:Landroid/view/MotionEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1207
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1209
    sget-object v0, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1210
    .local v0, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string/jumbo v1, "AXIS_X"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1211
    const-string/jumbo v1, "AXIS_Y"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1212
    const-string/jumbo v1, "AXIS_PRESSURE"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1213
    const-string/jumbo v1, "AXIS_SIZE"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1214
    const-string/jumbo v1, "AXIS_TOUCH_MAJOR"

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1215
    const-string/jumbo v1, "AXIS_TOUCH_MINOR"

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1216
    const-string/jumbo v1, "AXIS_TOOL_MAJOR"

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1217
    const-string/jumbo v1, "AXIS_TOOL_MINOR"

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1218
    const-string/jumbo v1, "AXIS_ORIENTATION"

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1219
    const-string/jumbo v1, "AXIS_VSCROLL"

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1220
    const-string/jumbo v1, "AXIS_HSCROLL"

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1221
    const-string/jumbo v1, "AXIS_Z"

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1222
    const-string/jumbo v1, "AXIS_RX"

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1223
    const-string/jumbo v1, "AXIS_RY"

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1224
    const-string/jumbo v1, "AXIS_RZ"

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1225
    const-string/jumbo v1, "AXIS_HAT_X"

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1226
    const-string/jumbo v1, "AXIS_HAT_Y"

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1227
    const-string/jumbo v1, "AXIS_LTRIGGER"

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1228
    const-string/jumbo v1, "AXIS_RTRIGGER"

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1229
    const-string/jumbo v1, "AXIS_THROTTLE"

    const/16 v2, 0x13

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1230
    const-string/jumbo v1, "AXIS_RUDDER"

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1231
    const-string/jumbo v1, "AXIS_WHEEL"

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1232
    const-string/jumbo v1, "AXIS_GAS"

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1233
    const-string/jumbo v1, "AXIS_BRAKE"

    const/16 v2, 0x17

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1234
    const-string/jumbo v1, "AXIS_DISTANCE"

    const/16 v2, 0x18

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1235
    const-string/jumbo v1, "AXIS_TILT"

    const/16 v2, 0x19

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1236
    const-string/jumbo v1, "AXIS_SCROLL"

    const/16 v2, 0x1a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1237
    const-string/jumbo v1, "AXIS_REALTIVE_X"

    const/16 v2, 0x1b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1238
    const-string/jumbo v1, "AXIS_REALTIVE_Y"

    const/16 v2, 0x1c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1239
    const-string/jumbo v1, "AXIS_GENERIC_1"

    const/16 v2, 0x20

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1240
    const-string/jumbo v1, "AXIS_GENERIC_2"

    const/16 v2, 0x21

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1241
    const-string/jumbo v1, "AXIS_GENERIC_3"

    const/16 v2, 0x22

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1242
    const-string/jumbo v1, "AXIS_GENERIC_4"

    const/16 v2, 0x23

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1243
    const-string/jumbo v1, "AXIS_GENERIC_5"

    const/16 v2, 0x24

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1244
    const-string/jumbo v1, "AXIS_GENERIC_6"

    const/16 v2, 0x25

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1245
    const-string/jumbo v1, "AXIS_GENERIC_7"

    const/16 v2, 0x26

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1246
    const-string/jumbo v1, "AXIS_GENERIC_8"

    const/16 v2, 0x27

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1247
    const-string/jumbo v1, "AXIS_GENERIC_9"

    const/16 v2, 0x28

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1248
    const-string/jumbo v1, "AXIS_GENERIC_10"

    const/16 v2, 0x29

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1249
    const-string/jumbo v1, "AXIS_GENERIC_11"

    const/16 v2, 0x2a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1250
    const-string/jumbo v1, "AXIS_GENERIC_12"

    const/16 v2, 0x2b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1251
    const-string/jumbo v1, "AXIS_GENERIC_13"

    const/16 v2, 0x2c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1252
    const-string/jumbo v1, "AXIS_GENERIC_14"

    const/16 v2, 0x2d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1253
    const-string/jumbo v1, "AXIS_GENERIC_15"

    const/16 v2, 0x2e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1254
    const-string/jumbo v1, "AXIS_GENERIC_16"

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1322
    const/16 v1, 0x20

    new-array v1, v1, [Ljava/lang/String;

    .line 1323
    const-string/jumbo v2, "BUTTON_PRIMARY"

    aput-object v2, v1, v4

    .line 1324
    const-string/jumbo v2, "BUTTON_SECONDARY"

    aput-object v2, v1, v5

    .line 1325
    const-string/jumbo v2, "BUTTON_TERTIARY"

    aput-object v2, v1, v6

    .line 1326
    const-string/jumbo v2, "BUTTON_BACK"

    aput-object v2, v1, v7

    .line 1327
    const-string/jumbo v2, "BUTTON_FORWARD"

    aput-object v2, v1, v8

    .line 1328
    const-string/jumbo v2, "BUTTON_STYLUS_PRIMARY"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 1329
    const-string/jumbo v2, "BUTTON_STYLUS_SECONDARY"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 1330
    const-string/jumbo v2, "0x00000080"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 1331
    const-string/jumbo v2, "0x00000100"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 1332
    const-string/jumbo v2, "0x00000200"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 1333
    const-string/jumbo v2, "0x00000400"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 1334
    const-string/jumbo v2, "0x00000800"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    .line 1335
    const-string/jumbo v2, "0x00001000"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    .line 1336
    const-string/jumbo v2, "0x00002000"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    .line 1337
    const-string/jumbo v2, "0x00004000"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    .line 1338
    const-string/jumbo v2, "0x00008000"

    const/16 v3, 0xf

    aput-object v2, v1, v3

    .line 1339
    const-string/jumbo v2, "0x00010000"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    .line 1340
    const-string/jumbo v2, "0x00020000"

    const/16 v3, 0x11

    aput-object v2, v1, v3

    .line 1341
    const-string/jumbo v2, "0x00040000"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    .line 1342
    const-string/jumbo v2, "0x00080000"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    .line 1343
    const-string/jumbo v2, "0x00100000"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    .line 1344
    const-string/jumbo v2, "0x00200000"

    const/16 v3, 0x15

    aput-object v2, v1, v3

    .line 1345
    const-string/jumbo v2, "0x00400000"

    const/16 v3, 0x16

    aput-object v2, v1, v3

    .line 1346
    const-string/jumbo v2, "0x00800000"

    const/16 v3, 0x17

    aput-object v2, v1, v3

    .line 1347
    const-string/jumbo v2, "0x01000000"

    const/16 v3, 0x18

    aput-object v2, v1, v3

    .line 1348
    const-string/jumbo v2, "0x02000000"

    const/16 v3, 0x19

    aput-object v2, v1, v3

    .line 1349
    const-string/jumbo v2, "0x04000000"

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    .line 1350
    const-string/jumbo v2, "0x08000000"

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    .line 1351
    const-string/jumbo v2, "0x10000000"

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    .line 1352
    const-string/jumbo v2, "0x20000000"

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    .line 1353
    const-string/jumbo v2, "0x40000000"

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    .line 1354
    const-string/jumbo v2, "0x80000000"

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    .line 1322
    sput-object v1, Landroid/view/MotionEvent;->BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

    .line 1405
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1407
    sget-object v0, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1408
    const-string/jumbo v1, "TOOL_TYPE_UNKNOWN"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1409
    const-string/jumbo v1, "TOOL_TYPE_FINGER"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1410
    const-string/jumbo v1, "TOOL_TYPE_STYLUS"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1411
    const-string/jumbo v1, "TOOL_TYPE_MOUSE"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1412
    const-string/jumbo v1, "TOOL_TYPE_ERASER"

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1413
    const-string/jumbo v1, "TOOL_TYPE_EDGE_TOUCH"

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1420
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    .line 1426
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    .line 3350
    new-instance v1, Landroid/view/MotionEvent$1;

    invoke-direct {v1}, Landroid/view/MotionEvent$1;-><init>()V

    .line 3349
    sput-object v1, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 168
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1509
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    return-void
.end method

.method public static actionToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "action"    # I

    .prologue
    .line 3210
    packed-switch p0, :pswitch_data_0

    .line 3234
    :pswitch_0
    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v0, v1, 0x8

    .line 3235
    .local v0, "index":I
    and-int/lit16 v1, p0, 0xff

    packed-switch v1, :pswitch_data_1

    .line 3241
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3212
    .end local v0    # "index":I
    :pswitch_1
    const-string/jumbo v1, "ACTION_DOWN"

    return-object v1

    .line 3214
    :pswitch_2
    const-string/jumbo v1, "ACTION_UP"

    return-object v1

    .line 3216
    :pswitch_3
    const-string/jumbo v1, "ACTION_CANCEL"

    return-object v1

    .line 3218
    :pswitch_4
    const-string/jumbo v1, "ACTION_OUTSIDE"

    return-object v1

    .line 3220
    :pswitch_5
    const-string/jumbo v1, "ACTION_MOVE"

    return-object v1

    .line 3222
    :pswitch_6
    const-string/jumbo v1, "ACTION_HOVER_MOVE"

    return-object v1

    .line 3224
    :pswitch_7
    const-string/jumbo v1, "ACTION_SCROLL"

    return-object v1

    .line 3226
    :pswitch_8
    const-string/jumbo v1, "ACTION_HOVER_ENTER"

    return-object v1

    .line 3228
    :pswitch_9
    const-string/jumbo v1, "ACTION_HOVER_EXIT"

    return-object v1

    .line 3230
    :pswitch_a
    const-string/jumbo v1, "ACTION_BUTTON_PRESS"

    return-object v1

    .line 3232
    :pswitch_b
    const-string/jumbo v1, "ACTION_BUTTON_RELEASE"

    return-object v1

    .line 3237
    .restart local v0    # "index":I
    :pswitch_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ACTION_POINTER_DOWN("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3239
    :pswitch_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ACTION_POINTER_UP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3210
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 3235
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static axisFromString(Ljava/lang/String;)I
    .locals 3
    .param p0, "symbolicName"    # Ljava/lang/String;

    .prologue
    .line 3266
    const-string/jumbo v2, "AXIS_"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3267
    const-string/jumbo v2, "AXIS_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 3268
    invoke-static {p0}, Landroid/view/MotionEvent;->nativeAxisFromString(Ljava/lang/String;)I

    move-result v0

    .line 3269
    .local v0, "axis":I
    if-ltz v0, :cond_0

    .line 3270
    return v0

    .line 3274
    .end local v0    # "axis":I
    :cond_0
    const/16 v2, 0xa

    :try_start_0
    invoke-static {p0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 3275
    :catch_0
    move-exception v1

    .line 3276
    .local v1, "ex":Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    return v2
.end method

.method public static axisToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "axis"    # I

    .prologue
    .line 3253
    invoke-static {p0}, Landroid/view/MotionEvent;->nativeAxisToString(I)Ljava/lang/String;

    move-result-object v0

    .line 3254
    .local v0, "symbolicName":Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AXIS_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static buttonStateToString(I)Ljava/lang/String;
    .locals 6
    .param p0, "buttonState"    # I

    .prologue
    const/4 v4, 0x0

    .line 3291
    if-nez p0, :cond_0

    .line 3292
    const-string/jumbo v4, "0"

    return-object v4

    .line 3294
    :cond_0
    const/4 v3, 0x0

    .line 3295
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 3296
    .end local v3    # "result":Ljava/lang/StringBuilder;
    .local v0, "i":I
    :goto_0
    if-eqz p0, :cond_5

    .line 3297
    and-int/lit8 v5, p0, 0x1

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    .line 3298
    .local v1, "isSet":Z
    :goto_1
    ushr-int/lit8 p0, p0, 0x1

    .line 3299
    if-eqz v1, :cond_3

    .line 3300
    sget-object v5, Landroid/view/MotionEvent;->BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

    aget-object v2, v5, v0

    .line 3301
    .local v2, "name":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 3302
    if-nez p0, :cond_2

    .line 3303
    return-object v2

    .end local v1    # "isSet":Z
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    move v1, v4

    .line 3297
    goto :goto_1

    .line 3305
    .restart local v1    # "isSet":Z
    .restart local v2    # "name":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3311
    .end local v2    # "name":Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3307
    .restart local v2    # "name":Ljava/lang/String;
    :cond_4
    const/16 v5, 0x7c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3308
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3313
    .end local v1    # "isSet":Z
    .end local v2    # "name":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static final clamp(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .prologue
    .line 3034
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .line 3035
    return p1

    .line 3036
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    .line 3037
    return p2

    .line 3039
    :cond_1
    return p0
.end method

.method public static createFromParcelBody(Landroid/os/Parcel;)Landroid/view/MotionEvent;
    .locals 4
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 3363
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 3364
    .local v0, "ev":Landroid/view/MotionEvent;
    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3, p0}, Landroid/view/MotionEvent;->nativeReadFromParcel(JLandroid/os/Parcel;)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3365
    return-object v0
.end method

.method private static final ensureSharedTempPointerCapacity(I)V
    .locals 2
    .param p0, "desiredCapacity"    # I

    .prologue
    .line 1432
    sget-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v1, :cond_0

    .line 1433
    sget-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v1, v1

    if-ge v1, p0, :cond_3

    .line 1434
    :cond_0
    sget-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v0, v1

    .line 1435
    .local v0, "capacity":I
    :goto_0
    if-ge v0, p0, :cond_2

    .line 1436
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1434
    .end local v0    # "capacity":I
    :cond_1
    const/16 v0, 0x8

    .restart local v0    # "capacity":I
    goto :goto_0

    .line 1438
    :cond_2
    invoke-static {v0}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    sput-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 1439
    invoke-static {v0}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v1

    sput-object v1, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 1440
    new-array v1, v0, [I

    sput-object v1, Landroid/view/MotionEvent;->gSharedTempPointerIndexMap:[I

    .line 1431
    .end local v0    # "capacity":I
    :cond_3
    return-void
.end method

.method private static native nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V
.end method

.method private static native nativeAxisFromString(Ljava/lang/String;)I
.end method

.method private static native nativeAxisToString(I)Ljava/lang/String;
.end method

.method private static native nativeCopy(JJZ)J
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeFindPointerIndex(JI)I
.end method

.method private static native nativeGetAction(J)I
.end method

.method private static native nativeGetActionButton(J)I
.end method

.method private static native nativeGetAxisValue(JIII)F
.end method

.method private static native nativeGetButtonState(J)I
.end method

.method private static native nativeGetDeviceId(J)I
.end method

.method private static native nativeGetDownTimeNanos(J)J
.end method

.method private static native nativeGetEdgeFlags(J)I
.end method

.method private static native nativeGetEventTimeNanos(JI)J
.end method

.method private static native nativeGetFlags(J)I
.end method

.method private static native nativeGetHistorySize(J)I
.end method

.method private static native nativeGetMetaState(J)I
.end method

.method private static native nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V
.end method

.method private static native nativeGetPointerCount(J)I
.end method

.method private static native nativeGetPointerId(JI)I
.end method

.method private static native nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V
.end method

.method private static native nativeGetRawAxisValue(JIII)F
.end method

.method private static native nativeGetSource(J)I
.end method

.method private static native nativeGetToolType(JI)I
.end method

.method private static native nativeGetXOffset(J)F
.end method

.method private static native nativeGetXPrecision(J)F
.end method

.method private static native nativeGetYOffset(J)F
.end method

.method private static native nativeGetYPrecision(J)F
.end method

.method private static native nativeInitialize(JIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J
.end method

.method private static native nativeIsTouchEvent(J)Z
.end method

.method private static native nativeOffsetLocation(JFF)V
.end method

.method private static native nativeReadFromParcel(JLandroid/os/Parcel;)J
.end method

.method private static native nativeScale(JF)V
.end method

.method private static native nativeSetAction(JI)V
.end method

.method private static native nativeSetActionButton(JI)V
.end method

.method private static native nativeSetButtonState(JI)V
.end method

.method private static native nativeSetDownTimeNanos(JJ)V
.end method

.method private static native nativeSetEdgeFlags(JI)V
.end method

.method private static native nativeSetFlags(JI)V
.end method

.method private static native nativeSetSource(JI)I
.end method

.method private static native nativeTransform(JLandroid/graphics/Matrix;)V
.end method

.method private static native nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method

.method private static obtain()Landroid/view/MotionEvent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1526
    sget-object v2, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1527
    :try_start_0
    sget-object v0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 1528
    .local v0, "ev":Landroid/view/MotionEvent;
    if-nez v0, :cond_0

    .line 1529
    new-instance v1, Landroid/view/MotionEvent;

    invoke-direct {v1}, Landroid/view/MotionEvent;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 1531
    :cond_0
    :try_start_1
    iget-object v1, v0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    sput-object v1, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 1532
    sget v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/view/MotionEvent;->gRecyclerUsed:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 1534
    iput-object v3, v0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    .line 1535
    invoke-virtual {v0}, Landroid/view/MotionEvent;->prepareForReuse()V

    .line 1536
    return-object v0

    .line 1526
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;
    .locals 24
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "pressure"    # F
    .param p8, "size"    # F
    .param p9, "metaState"    # I
    .param p10, "xPrecision"    # F
    .param p11, "yPrecision"    # F
    .param p12, "deviceId"    # I
    .param p13, "edgeFlags"    # I

    .prologue
    .line 1660
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v2

    .line 1661
    .local v2, "ev":Landroid/view/MotionEvent;
    sget-object v23, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v23

    .line 1662
    const/4 v3, 0x1

    :try_start_0
    invoke-static {v3}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 1663
    sget-object v21, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 1664
    .local v21, "pp":[Landroid/view/MotionEvent$PointerProperties;
    const/4 v3, 0x0

    aget-object v3, v21, v3

    invoke-virtual {v3}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 1665
    const/4 v3, 0x0

    aget-object v3, v21, v3

    const/4 v4, 0x0

    iput v4, v3, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 1667
    sget-object v22, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 1668
    .local v22, "pc":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v3, 0x0

    aget-object v3, v22, v3

    invoke-virtual {v3}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 1669
    const/4 v3, 0x0

    aget-object v3, v22, v3

    move/from16 v0, p5

    iput v0, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1670
    const/4 v3, 0x0

    aget-object v3, v22, v3

    move/from16 v0, p6

    iput v0, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1671
    const/4 v3, 0x0

    aget-object v3, v22, v3

    move/from16 v0, p7

    iput v0, v3, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 1672
    const/4 v3, 0x0

    aget-object v3, v22, v3

    move/from16 v0, p8

    iput v0, v3, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 1674
    iget-wide v3, v2, Landroid/view/MotionEvent;->mNativePtr:J

    .line 1676
    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 1677
    const-wide/32 v6, 0xf4240

    mul-long v16, p0, v6

    const-wide/32 v6, 0xf4240

    mul-long v18, p2, v6

    .line 1675
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 1678
    const/16 v20, 0x1

    move/from16 v5, p12

    move/from16 v7, p4

    move/from16 v9, p13

    move/from16 v10, p9

    move/from16 v14, p10

    move/from16 v15, p11

    .line 1674
    invoke-static/range {v3 .. v22}, Landroid/view/MotionEvent;->nativeInitialize(JIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J

    move-result-wide v4

    iput-wide v4, v2, Landroid/view/MotionEvent;->mNativePtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v23

    .line 1679
    return-object v2

    .line 1661
    .end local v21    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .end local v22    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    :catchall_0
    move-exception v3

    monitor-exit v23

    throw v3
.end method

.method public static obtain(JJIFFI)Landroid/view/MotionEvent;
    .locals 14
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "metaState"    # I

    .prologue
    .line 1741
    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    .line 1742
    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v9, p7

    .line 1741
    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(JJIIFFFFIFFII)Landroid/view/MotionEvent;
    .locals 14
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "pointerCount"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "pressure"    # F
    .param p9, "size"    # F
    .param p10, "metaState"    # I
    .param p11, "xPrecision"    # F
    .param p12, "yPrecision"    # F
    .param p13, "deviceId"    # I
    .param p14, "edgeFlags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    move-wide v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    .line 1720
    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;
    .locals 20
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "pointerCount"    # I
    .param p6, "pointerIds"    # [I
    .param p7, "pointerCoords"    # [Landroid/view/MotionEvent$PointerCoords;
    .param p8, "metaState"    # I
    .param p9, "xPrecision"    # F
    .param p10, "yPrecision"    # F
    .param p11, "deviceId"    # I
    .param p12, "edgeFlags"    # I
    .param p13, "source"    # I
    .param p14, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1615
    sget-object v19, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v19

    .line 1616
    :try_start_0
    invoke-static/range {p5 .. p5}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 1617
    sget-object v8, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 1618
    .local v8, "pp":[Landroid/view/MotionEvent$PointerProperties;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, p5

    if-ge v0, v1, :cond_0

    .line 1619
    aget-object v2, v8, v18

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 1620
    aget-object v2, v8, v18

    aget v3, p6, v18

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 1618
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 1623
    :cond_0
    const/4 v11, 0x0

    move-wide/from16 v2, p0

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    .line 1622
    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit v19

    return-object v2

    .line 1615
    .end local v8    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .end local v18    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v19

    throw v2
.end method

.method public static obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;
    .locals 22
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "pointerCount"    # I
    .param p6, "pointerProperties"    # [Landroid/view/MotionEvent$PointerProperties;
    .param p7, "pointerCoords"    # [Landroid/view/MotionEvent$PointerCoords;
    .param p8, "metaState"    # I
    .param p9, "buttonState"    # I
    .param p10, "xPrecision"    # F
    .param p11, "yPrecision"    # F
    .param p12, "deviceId"    # I
    .param p13, "edgeFlags"    # I
    .param p14, "source"    # I
    .param p15, "flags"    # I

    .prologue
    .line 1572
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 1573
    .local v0, "ev":Landroid/view/MotionEvent;
    iget-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 1575
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1576
    const-wide/32 v4, 0xf4240

    mul-long v14, p0, v4

    const-wide/32 v4, 0xf4240

    mul-long v16, p2, v4

    move/from16 v3, p12

    move/from16 v4, p14

    move/from16 v5, p4

    move/from16 v6, p15

    move/from16 v7, p13

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v18, p5

    move-object/from16 v19, p6

    move-object/from16 v20, p7

    .line 1573
    invoke-static/range {v1 .. v20}, Landroid/view/MotionEvent;->nativeInitialize(JIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 1578
    return-object v0
.end method

.method public static obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 6
    .param p0, "other"    # Landroid/view/MotionEvent;

    .prologue
    .line 1749
    if-nez p0, :cond_0

    .line 1750
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "other motion event must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1753
    :cond_0
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 1754
    .local v0, "ev":Landroid/view/MotionEvent;
    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v1, 0x1

    invoke-static {v2, v3, v4, v5, v1}, Landroid/view/MotionEvent;->nativeCopy(JJZ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 1755
    return-object v0
.end method

.method public static obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 6
    .param p0, "other"    # Landroid/view/MotionEvent;

    .prologue
    .line 1763
    if-nez p0, :cond_0

    .line 1764
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "other motion event must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1767
    :cond_0
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 1768
    .local v0, "ev":Landroid/view/MotionEvent;
    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v1, 0x0

    invoke-static {v2, v3, v4, v5, v1}, Landroid/view/MotionEvent;->nativeCopy(JJZ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 1769
    return-object v0
.end method

.method public static toolTypeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "toolType"    # I

    .prologue
    .line 3325
    sget-object v1, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3326
    .local v0, "symbolicName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "symbolicName":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "symbolicName":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final addBatch(JFFFFI)V
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "pressure"    # F
    .param p6, "size"    # F
    .param p7, "metaState"    # I

    .prologue
    .line 2927
    sget-object v6, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2928
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 2929
    sget-object v4, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 2930
    .local v4, "pc":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v0, 0x0

    aget-object v0, v4, v0

    invoke-virtual {v0}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 2931
    const/4 v0, 0x0

    aget-object v0, v4, v0

    iput p3, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 2932
    const/4 v0, 0x0

    aget-object v0, v4, v0

    iput p4, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 2933
    const/4 v0, 0x0

    aget-object v0, v4, v0

    iput p5, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 2934
    const/4 v0, 0x0

    aget-object v0, v4, v0

    iput p6, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 2936
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    move v5, p7

    invoke-static/range {v0 .. v5}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 2926
    return-void

    .line 2927
    .end local v4    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public final addBatch(J[Landroid/view/MotionEvent$PointerCoords;I)V
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "pointerCoords"    # [Landroid/view/MotionEvent$PointerCoords;
    .param p4, "metaState"    # I

    .prologue
    .line 2952
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V

    .line 2951
    return-void
.end method

.method public final addBatch(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2968
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v8

    .line 2969
    .local v8, "action":I
    const/4 v2, 0x2

    if-eq v8, v2, :cond_0

    const/4 v2, 0x7

    if-eq v8, v2, :cond_0

    .line 2970
    const/4 v2, 0x0

    return v2

    .line 2972
    :cond_0
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v2

    if-eq v8, v2, :cond_1

    .line 2973
    const/4 v2, 0x0

    return v2

    .line 2976
    :cond_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v2

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 2977
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v2

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 2979
    :cond_2
    const/4 v2, 0x0

    return v2

    .line 2978
    :cond_3
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v2

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 2982
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v13

    .line 2983
    .local v13, "pointerCount":I
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v2

    if-eq v13, v2, :cond_4

    .line 2984
    const/4 v2, 0x0

    return v2

    .line 2987
    :cond_4
    sget-object v15, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v15

    .line 2988
    const/4 v2, 0x2

    :try_start_0
    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 2989
    sget-object v14, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 2990
    .local v14, "pp":[Landroid/view/MotionEvent$PointerProperties;
    sget-object v6, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 2992
    .local v6, "pc":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v13, :cond_6

    .line 2993
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v16, 0x0

    aget-object v16, v14, v16

    move-object/from16 v0, v16

    invoke-static {v2, v3, v12, v0}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    .line 2994
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v16, 0x1

    aget-object v16, v14, v16

    move-object/from16 v0, v16

    invoke-static {v2, v3, v12, v0}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    .line 2995
    const/4 v2, 0x0

    aget-object v2, v14, v2

    const/4 v3, 0x1

    aget-object v3, v14, v3

    invoke-static {v2, v3}, Landroid/view/MotionEvent$PointerProperties;->-wrap0(Landroid/view/MotionEvent$PointerProperties;Landroid/view/MotionEvent$PointerProperties;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_5

    .line 2996
    const/4 v2, 0x0

    monitor-exit v15

    return v2

    .line 2992
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 3000
    :cond_6
    :try_start_1
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    move-result v7

    .line 3001
    .local v7, "metaState":I
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetHistorySize(J)I

    move-result v11

    .line 3002
    .local v11, "historySize":I
    const/4 v9, 0x0

    .local v9, "h":I
    :goto_1
    if-gt v9, v11, :cond_9

    .line 3003
    if-ne v9, v11, :cond_7

    const/high16 v10, -0x80000000

    .line 3005
    .local v10, "historyPos":I
    :goto_2
    const/4 v12, 0x0

    :goto_3
    if-ge v12, v13, :cond_8

    .line 3006
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v16, v6, v12

    move-object/from16 v0, v16

    invoke-static {v2, v3, v12, v10, v0}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    .line 3005
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 3003
    .end local v10    # "historyPos":I
    :cond_7
    move v10, v9

    .restart local v10    # "historyPos":I
    goto :goto_2

    .line 3009
    :cond_8
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3, v10}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v4

    .line 3010
    .local v4, "eventTimeNanos":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static/range {v2 .. v7}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3002
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .end local v4    # "eventTimeNanos":J
    .end local v10    # "historyPos":I
    :cond_9
    monitor-exit v15

    .line 3013
    const/4 v2, 0x1

    return v2

    .line 2987
    .end local v6    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    .end local v7    # "metaState":I
    .end local v9    # "h":I
    .end local v11    # "historySize":I
    .end local v12    # "i":I
    .end local v14    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    :catchall_0
    move-exception v2

    monitor-exit v15

    throw v2
.end method

.method public final cancel()V
    .locals 1

    .prologue
    .line 3371
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3370
    return-void
.end method

.method public final clampNoHistory(FFFF)Landroid/view/MotionEvent;
    .locals 28
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 3047
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v4

    .line 3048
    .local v4, "ev":Landroid/view/MotionEvent;
    sget-object v26, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v26

    .line 3049
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v6, v7}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v22

    .line 3051
    .local v22, "pointerCount":I
    invoke-static/range {v22 .. v22}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 3052
    sget-object v23, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 3053
    .local v23, "pp":[Landroid/view/MotionEvent$PointerProperties;
    sget-object v24, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 3055
    .local v24, "pc":[Landroid/view/MotionEvent$PointerCoords;
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_0
    move/from16 v0, v25

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 3056
    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v5, v23, v25

    move/from16 v0, v25

    invoke-static {v6, v7, v0, v5}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    .line 3057
    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v5, v24, v25

    const/high16 v8, -0x80000000

    move/from16 v0, v25

    invoke-static {v6, v7, v0, v8, v5}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    .line 3058
    aget-object v5, v24, v25

    aget-object v6, v24, v25

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    move/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v6, v0, v1}, Landroid/view/MotionEvent;->clamp(FFF)F

    move-result v6

    iput v6, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3059
    aget-object v5, v24, v25

    aget-object v6, v24, v25

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v6, v0, v1}, Landroid/view/MotionEvent;->clamp(FFF)F

    move-result v6

    iput v6, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3055
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 3061
    :cond_0
    iget-wide v5, v4, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3062
    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v8, v9}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v7

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v8, v9}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v8

    .line 3063
    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v10, v11}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v10, v11}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v10

    .line 3064
    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v12, v13}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(J)I

    move-result v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v12, v13}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    move-result v12

    .line 3065
    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v14, v15}, Landroid/view/MotionEvent;->nativeGetButtonState(J)I

    move-result v13

    .line 3066
    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v14, v15}, Landroid/view/MotionEvent;->nativeGetXOffset(J)F

    move-result v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Landroid/view/MotionEvent;->nativeGetYOffset(J)F

    move-result v15

    .line 3067
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Landroid/view/MotionEvent;->nativeGetXPrecision(J)F

    move-result v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Landroid/view/MotionEvent;->nativeGetYPrecision(J)F

    move-result v17

    .line 3068
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(J)J

    move-result-wide v18

    .line 3069
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move-wide/from16 v20, v0

    const/high16 v27, -0x80000000

    move-wide/from16 v0, v20

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v20

    .line 3061
    invoke-static/range {v5 .. v24}, Landroid/view/MotionEvent;->nativeInitialize(JIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J

    move-result-wide v6

    iput-wide v6, v4, Landroid/view/MotionEvent;->mNativePtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v26

    .line 3071
    return-object v4

    .line 3048
    .end local v22    # "pointerCount":I
    .end local v23    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .end local v24    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    .end local v25    # "i":I
    :catchall_0
    move-exception v5

    monitor-exit v26

    throw v5
.end method

.method public bridge synthetic copy()Landroid/view/InputEvent;
    .locals 1

    .prologue
    .line 1774
    invoke-virtual {p0}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/view/MotionEvent;
    .locals 1

    .prologue
    .line 1775
    invoke-static {p0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 1515
    :try_start_0
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1516
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeDispose(J)V

    .line 1517
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1520
    :cond_0
    invoke-super {p0}, Landroid/view/InputEvent;->finalize()V

    .line 1513
    return-void

    .line 1519
    :catchall_0
    move-exception v0

    .line 1520
    invoke-super {p0}, Landroid/view/InputEvent;->finalize()V

    .line 1519
    throw v0
.end method

.method public final findPointerIndex(I)I
    .locals 2
    .param p1, "pointerId"    # I

    .prologue
    .line 2124
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeFindPointerIndex(JI)I

    move-result v0

    return v0
.end method

.method public final getAction()I
    .locals 2

    .prologue
    .line 1838
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v0

    return v0
.end method

.method public final getActionButton()I
    .locals 2

    .prologue
    .line 2366
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetActionButton(J)I

    move-result v0

    return v0
.end method

.method public final getActionIndex()I
    .locals 2

    .prologue
    .line 1861
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final getActionMasked()I
    .locals 2

    .prologue
    .line 1847
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final getAxisValue(I)F
    .locals 4
    .param p1, "axis"    # I

    .prologue
    .line 2074
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, p1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getAxisValue(II)F
    .locals 3
    .param p1, "axis"    # I
    .param p2, "pointerIndex"    # I

    .prologue
    .line 2284
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, p2, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getButtonState()I
    .locals 2

    .prologue
    .line 2344
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetButtonState(J)I

    move-result v0

    return v0
.end method

.method public final getDeviceId()I
    .locals 2

    .prologue
    .line 1815
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v0

    return v0
.end method

.method public final getDownTime()J
    .locals 4

    .prologue
    .line 1930
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(J)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getEdgeFlags()I
    .locals 2

    .prologue
    .line 2854
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(J)I

    move-result v0

    return v0
.end method

.method public final getEventTime()J
    .locals 4

    .prologue
    .line 1952
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, v2}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getEventTimeNano()J
    .locals 3

    .prologue
    .line 1971
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, v2}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getFlags()I
    .locals 2

    .prologue
    .line 1894
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v0

    return v0
.end method

.method public final getHistoricalAxisValue(II)F
    .locals 3
    .param p1, "axis"    # I
    .param p2, "pos"    # I

    .prologue
    .line 2636
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalAxisValue(III)F
    .locals 2
    .param p1, "axis"    # I
    .param p2, "pointerIndex"    # I
    .param p3, "pos"    # I

    .prologue
    .line 2817
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalEventTime(I)J
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 2458
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getHistoricalEventTimeNano(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 2484
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getHistoricalOrientation(I)F
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 2619
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalOrientation(II)F
    .locals 3
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .prologue
    .line 2798
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v2, 0x8

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V
    .locals 2
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I
    .param p3, "outPointerCoords"    # Landroid/view/MotionEvent$PointerCoords;

    .prologue
    .line 2838
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    .line 2837
    return-void
.end method

.method public final getHistoricalPressure(I)F
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 2529
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalPressure(II)F
    .locals 3
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .prologue
    .line 2690
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalSize(I)F
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 2544
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalSize(II)F
    .locals 3
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .prologue
    .line 2708
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x3

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalToolMajor(I)F
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 2589
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalToolMajor(II)F
    .locals 3
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .prologue
    .line 2762
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x6

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalToolMinor(I)F
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 2604
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalToolMinor(II)F
    .locals 3
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .prologue
    .line 2780
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x7

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalTouchMajor(I)F
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 2559
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalTouchMajor(II)F
    .locals 3
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .prologue
    .line 2726
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x4

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalTouchMinor(I)F
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 2574
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalTouchMinor(II)F
    .locals 3
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .prologue
    .line 2744
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x5

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalX(I)F
    .locals 3
    .param p1, "pos"    # I

    .prologue
    const/4 v2, 0x0

    .line 2499
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, v2, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalX(II)F
    .locals 3
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .prologue
    .line 2654
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalY(I)F
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 2514
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalY(II)F
    .locals 3
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .prologue
    .line 2672
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistorySize()I
    .locals 2

    .prologue
    .line 2438
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetHistorySize(J)I

    move-result v0

    return v0
.end method

.method public final getMetaState()I
    .locals 2

    .prologue
    .line 2327
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    move-result v0

    return v0
.end method

.method public final getOrientation()F
    .locals 5

    .prologue
    .line 2061
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getOrientation(I)F
    .locals 4
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2268
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v2, 0x8

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V
    .locals 3
    .param p1, "pointerIndex"    # I
    .param p2, "outPointerCoords"    # Landroid/view/MotionEvent$PointerCoords;

    .prologue
    .line 2298
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, v2, p2}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    .line 2297
    return-void
.end method

.method public final getPointerCount()I
    .locals 2

    .prologue
    .line 2082
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v0

    return v0
.end method

.method public final getPointerId(I)I
    .locals 2
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2094
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetPointerId(JI)I

    move-result v0

    return v0
.end method

.method public final getPointerIdBits()I
    .locals 6

    .prologue
    .line 3080
    const/4 v1, 0x0

    .line 3081
    .local v1, "idBits":I
    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v2

    .line 3082
    .local v2, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 3083
    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5, v0}, Landroid/view/MotionEvent;->nativeGetPointerId(JI)I

    move-result v3

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v1, v3

    .line 3082
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3085
    :cond_0
    return v1
.end method

.method public final getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V
    .locals 2
    .param p1, "pointerIndex"    # I
    .param p2, "outPointerProperties"    # Landroid/view/MotionEvent$PointerProperties;

    .prologue
    .line 2313
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    .line 2312
    return-void
.end method

.method public final getPressure()F
    .locals 5

    .prologue
    .line 2001
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getPressure(I)F
    .locals 4
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2171
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x2

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getRawX()F
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2389
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, v3, v3, v2}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getRawY()F
    .locals 5

    .prologue
    .line 2402
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getSize()F
    .locals 5

    .prologue
    .line 2011
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getSize(I)F
    .locals 4
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2189
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x3

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getSource()I
    .locals 2

    .prologue
    .line 1821
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v0

    return v0
.end method

.method public final getToolMajor()F
    .locals 5

    .prologue
    .line 2041
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getToolMajor(I)F
    .locals 4
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2233
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x6

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getToolMinor()F
    .locals 5

    .prologue
    .line 2051
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getToolMinor(I)F
    .locals 4
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2249
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x7

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getToolType(I)I
    .locals 2
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2112
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetToolType(JI)I

    move-result v0

    return v0
.end method

.method public final getTouchMajor()F
    .locals 5

    .prologue
    .line 2021
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getTouchMajor(I)F
    .locals 4
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2203
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x4

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getTouchMinor()F
    .locals 5

    .prologue
    .line 2031
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getTouchMinor(I)F
    .locals 4
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2217
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x5

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getX()F
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1981
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, v3, v3, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getX(I)F
    .locals 4
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2139
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getXPrecision()F
    .locals 2

    .prologue
    .line 2414
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetXPrecision(J)F

    move-result v0

    return v0
.end method

.method public final getY()F
    .locals 5

    .prologue
    .line 1991
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getY(I)F
    .locals 4
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2154
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getYPrecision()F
    .locals 2

    .prologue
    .line 2426
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetYPrecision(J)F

    move-result v0

    return v0
.end method

.method public final isButtonPressed(I)Z
    .locals 2
    .param p1, "button"    # I

    .prologue
    const/4 v0, 0x0

    .line 3343
    if-nez p1, :cond_0

    .line 3344
    return v0

    .line 3346
    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    and-int/2addr v1, p1

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final isEdgeTouchEvent()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1885
    iget-wide v2, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3, v0}, Landroid/view/MotionEvent;->nativeGetToolType(JI)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isTainted()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1900
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 1901
    .local v0, "flags":I
    const/high16 v2, -0x80000000

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final isTargetAccessibilityFocus()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1913
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 1914
    .local v0, "flags":I
    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final isTouchEvent()Z
    .locals 2

    .prologue
    .line 1876
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeIsTouchEvent(J)Z

    move-result v0

    return v0
.end method

.method public final isWithinBoundsNoHistory(FFFF)Z
    .locals 9
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, -0x80000000

    .line 3022
    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v1

    .line 3023
    .local v1, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 3024
    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5, v7, v0, v6}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v2

    .line 3025
    .local v2, "x":F
    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5, v8, v0, v6}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v3

    .line 3026
    .local v3, "y":F
    cmpg-float v4, v2, p1

    if-ltz v4, :cond_0

    cmpl-float v4, v2, p3

    if-lez v4, :cond_1

    .line 3027
    :cond_0
    return v7

    .line 3026
    :cond_1
    cmpg-float v4, v3, p2

    if-ltz v4, :cond_0

    cmpl-float v4, v3, p4

    if-gtz v4, :cond_0

    .line 3023
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3030
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_2
    return v8
.end method

.method public final offsetLocation(FF)V
    .locals 2
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    const/4 v1, 0x0

    .line 2880
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    cmpl-float v0, p2, v1

    if-eqz v0, :cond_1

    .line 2881
    :cond_0
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeOffsetLocation(JFF)V

    .line 2879
    :cond_1
    return-void
.end method

.method public final recycle()V
    .locals 3

    .prologue
    .line 1784
    invoke-super {p0}, Landroid/view/InputEvent;->recycle()V

    .line 1786
    sget-object v1, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1787
    :try_start_0
    sget v0, Landroid/view/MotionEvent;->gRecyclerUsed:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 1788
    sget v0, Landroid/view/MotionEvent;->gRecyclerUsed:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/MotionEvent;->gRecyclerUsed:I

    .line 1789
    sget-object v0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    iput-object v0, p0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    .line 1790
    sput-object p0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1783
    return-void

    .line 1786
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final scale(F)V
    .locals 2
    .param p1, "scale"    # F

    .prologue
    .line 1807
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1808
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeScale(JF)V

    .line 1806
    :cond_0
    return-void
.end method

.method public final setAction(I)V
    .locals 2
    .param p1, "action"    # I

    .prologue
    .line 2871
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetAction(JI)V

    .line 2870
    return-void
.end method

.method public final setActionButton(I)V
    .locals 2
    .param p1, "button"    # I

    .prologue
    .line 2376
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetActionButton(JI)V

    .line 2375
    return-void
.end method

.method public final setButtonState(I)V
    .locals 2
    .param p1, "buttonState"    # I

    .prologue
    .line 2354
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetButtonState(JI)V

    .line 2353
    return-void
.end method

.method public final setDownTime(J)V
    .locals 5
    .param p1, "downTime"    # J

    .prologue
    .line 1940
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeSetDownTimeNanos(JJ)V

    .line 1939
    return-void
.end method

.method public final setEdgeFlags(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 2864
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetEdgeFlags(JI)V

    .line 2863
    return-void
.end method

.method public final setLocation(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2893
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2894
    .local v0, "oldX":F
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 2895
    .local v1, "oldY":F
    sub-float v2, p1, v0

    sub-float v3, p2, v1

    invoke-virtual {p0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2892
    return-void
.end method

.method public final setSource(I)V
    .locals 2
    .param p1, "source"    # I

    .prologue
    .line 1827
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetSource(JI)I

    .line 1826
    return-void
.end method

.method public final setTainted(Z)V
    .locals 4
    .param p1, "tainted"    # Z

    .prologue
    .line 1907
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 1908
    .local v0, "flags":I
    iget-wide v2, p0, Landroid/view/MotionEvent;->mNativePtr:J

    if-eqz p1, :cond_0

    const/high16 v1, -0x80000000

    or-int/2addr v1, v0

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/view/MotionEvent;->nativeSetFlags(JI)V

    .line 1906
    return-void

    .line 1908
    :cond_0
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    goto :goto_0
.end method

.method public final setTargetAccessibilityFocus(Z)V
    .locals 4
    .param p1, "targetsFocus"    # Z

    .prologue
    .line 1919
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 1920
    .local v0, "flags":I
    iget-wide v2, p0, Landroid/view/MotionEvent;->mNativePtr:J

    if-eqz p1, :cond_0

    .line 1921
    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v1, v0

    .line 1920
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/view/MotionEvent;->nativeSetFlags(JI)V

    .line 1918
    return-void

    .line 1922
    :cond_0
    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v1, v0

    goto :goto_0
.end method

.method public final split(I)Landroid/view/MotionEvent;
    .locals 36
    .param p1, "idBits"    # I

    .prologue
    .line 3093
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v2

    .line 3094
    .local v2, "ev":Landroid/view/MotionEvent;
    sget-object v35, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v35

    .line 3095
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v34

    .line 3096
    .local v34, "oldPointerCount":I
    invoke-static/range {v34 .. v34}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 3097
    sget-object v21, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 3098
    .local v21, "pp":[Landroid/view/MotionEvent$PointerProperties;
    sget-object v22, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 3099
    .local v22, "pc":[Landroid/view/MotionEvent$PointerCoords;
    sget-object v28, Landroid/view/MotionEvent;->gSharedTempPointerIndexMap:[I

    .line 3101
    .local v28, "map":[I
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v31

    .line 3102
    .local v31, "oldAction":I
    move/from16 v0, v31

    and-int/lit16 v0, v0, 0xff

    move/from16 v32, v0

    .line 3103
    .local v32, "oldActionMasked":I
    const v3, 0xff00

    and-int v3, v3, v31

    shr-int/lit8 v33, v3, 0x8

    .line 3105
    .local v33, "oldActionPointerIndex":I
    const/16 v29, -0x1

    .line 3106
    .local v29, "newActionPointerIndex":I
    const/16 v20, 0x0

    .line 3107
    .local v20, "newPointerCount":I
    const/16 v30, 0x0

    .line 3108
    .local v30, "newIdBits":I
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_0
    move/from16 v0, v26

    move/from16 v1, v34

    if-ge v0, v1, :cond_2

    .line 3109
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v3, v21, v20

    move/from16 v0, v26

    invoke-static {v4, v5, v0, v3}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    .line 3110
    aget-object v3, v21, v20

    iget v3, v3, Landroid/view/MotionEvent$PointerProperties;->id:I

    const/4 v4, 0x1

    shl-int v27, v4, v3

    .line 3111
    .local v27, "idBit":I
    and-int v3, v27, p1

    if-eqz v3, :cond_1

    .line 3112
    move/from16 v0, v26

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    .line 3113
    move/from16 v29, v20

    .line 3115
    :cond_0
    aput v26, v28, v20

    .line 3116
    add-int/lit8 v20, v20, 0x1

    .line 3117
    or-int v30, v30, v27

    .line 3108
    :cond_1
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .line 3121
    .end local v27    # "idBit":I
    :cond_2
    if-nez v20, :cond_3

    .line 3122
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "idBits did not match any ids in the event"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3094
    .end local v20    # "newPointerCount":I
    .end local v21    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .end local v22    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    .end local v26    # "i":I
    .end local v28    # "map":[I
    .end local v29    # "newActionPointerIndex":I
    .end local v30    # "newIdBits":I
    .end local v31    # "oldAction":I
    .end local v32    # "oldActionMasked":I
    .end local v33    # "oldActionPointerIndex":I
    .end local v34    # "oldPointerCount":I
    :catchall_0
    move-exception v3

    monitor-exit v35

    throw v3

    .line 3126
    .restart local v20    # "newPointerCount":I
    .restart local v21    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .restart local v22    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    .restart local v26    # "i":I
    .restart local v28    # "map":[I
    .restart local v29    # "newActionPointerIndex":I
    .restart local v30    # "newIdBits":I
    .restart local v31    # "oldAction":I
    .restart local v32    # "oldActionMasked":I
    .restart local v33    # "oldActionPointerIndex":I
    .restart local v34    # "oldPointerCount":I
    :cond_3
    const/4 v3, 0x5

    move/from16 v0, v32

    if-eq v0, v3, :cond_4

    const/4 v3, 0x6

    move/from16 v0, v32

    if-ne v0, v3, :cond_8

    .line 3127
    :cond_4
    if-gez v29, :cond_5

    .line 3129
    const/4 v7, 0x2

    .line 3144
    .local v7, "newAction":I
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetHistorySize(J)I

    move-result v25

    .line 3145
    .local v25, "historySize":I
    const/16 v23, 0x0

    .local v23, "h":I
    :goto_2
    move/from16 v0, v23

    move/from16 v1, v25

    if-gt v0, v1, :cond_c

    .line 3146
    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    const/high16 v24, -0x80000000

    .line 3148
    .local v24, "historyPos":I
    :goto_3
    const/16 v26, 0x0

    :goto_4
    move/from16 v0, v26

    move/from16 v1, v20

    if-ge v0, v1, :cond_a

    .line 3149
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/view/MotionEvent;->mNativePtr:J

    aget v3, v28, v26

    aget-object v6, v22, v26

    move/from16 v0, v24

    invoke-static {v4, v5, v3, v0, v6}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    .line 3148
    add-int/lit8 v26, v26, 0x1

    goto :goto_4

    .line 3130
    .end local v7    # "newAction":I
    .end local v23    # "h":I
    .end local v24    # "historyPos":I
    .end local v25    # "historySize":I
    :cond_5
    const/4 v3, 0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_7

    .line 3132
    const/4 v3, 0x5

    move/from16 v0, v32

    if-ne v0, v3, :cond_6

    .line 3133
    const/4 v7, 0x0

    .restart local v7    # "newAction":I
    goto :goto_1

    .end local v7    # "newAction":I
    :cond_6
    const/4 v7, 0x1

    .restart local v7    # "newAction":I
    goto :goto_1

    .line 3137
    .end local v7    # "newAction":I
    :cond_7
    shl-int/lit8 v3, v29, 0x8

    .line 3136
    or-int v7, v32, v3

    .restart local v7    # "newAction":I
    goto :goto_1

    .line 3141
    .end local v7    # "newAction":I
    :cond_8
    move/from16 v7, v31

    .restart local v7    # "newAction":I
    goto :goto_1

    .line 3146
    .restart local v23    # "h":I
    .restart local v25    # "historySize":I
    :cond_9
    move/from16 v24, v23

    .restart local v24    # "historyPos":I
    goto :goto_3

    .line 3152
    :cond_a
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move/from16 v0, v24

    invoke-static {v4, v5, v0}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v18

    .line 3153
    .local v18, "eventTimeNanos":J
    if-nez v23, :cond_b

    .line 3154
    iget-wide v3, v2, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3155
    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v8, v9}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v5

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v8, v9}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v6

    .line 3156
    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v8, v9}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v8

    .line 3157
    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v10, v11}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(J)I

    move-result v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v10, v11}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    move-result v10

    .line 3158
    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v12, v13}, Landroid/view/MotionEvent;->nativeGetButtonState(J)I

    move-result v11

    .line 3159
    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v12, v13}, Landroid/view/MotionEvent;->nativeGetXOffset(J)F

    move-result v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v14, v15}, Landroid/view/MotionEvent;->nativeGetYOffset(J)F

    move-result v13

    .line 3160
    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v14, v15}, Landroid/view/MotionEvent;->nativeGetXPrecision(J)F

    move-result v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Landroid/view/MotionEvent;->nativeGetYPrecision(J)F

    move-result v15

    .line 3161
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(J)J

    move-result-wide v16

    .line 3154
    invoke-static/range {v3 .. v22}, Landroid/view/MotionEvent;->nativeInitialize(JIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J

    move-result-wide v4

    iput-wide v4, v2, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3145
    :goto_5
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    .line 3164
    :cond_b
    iget-wide v8, v2, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v13, 0x0

    move-wide/from16 v10, v18

    move-object/from16 v12, v22

    invoke-static/range {v8 .. v13}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .end local v18    # "eventTimeNanos":J
    .end local v24    # "historyPos":I
    :cond_c
    monitor-exit v35

    .line 3167
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 3173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3174
    .local v1, "msg":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "MotionEvent { action="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3175
    const-string/jumbo v3, ", actionButton="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v4

    invoke-static {v4}, Landroid/view/MotionEvent;->buttonStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3177
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 3178
    .local v2, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 3179
    const-string/jumbo v3, ", id["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3180
    const-string/jumbo v3, ", x["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 3181
    const-string/jumbo v3, ", y["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 3182
    const-string/jumbo v3, ", toolType["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3183
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    invoke-static {v4}, Landroid/view/MotionEvent;->toolTypeToString(I)Ljava/lang/String;

    move-result-object v4

    .line 3182
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3186
    :cond_0
    const-string/jumbo v3, ", buttonState="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    invoke-static {v4}, Landroid/view/MotionEvent;->buttonStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3187
    const-string/jumbo v3, ", metaState="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3188
    const-string/jumbo v3, ", flags=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3189
    const-string/jumbo v3, ", edgeFlags=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3190
    const-string/jumbo v3, ", pointerCount="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3191
    const-string/jumbo v3, ", historySize="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3192
    const-string/jumbo v3, ", eventTime="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3193
    const-string/jumbo v3, ", downTime="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3194
    const-string/jumbo v3, ", deviceId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3195
    const-string/jumbo v3, ", source=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3196
    const-string/jumbo v3, " }"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3197
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public final transform(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 2904
    if-nez p1, :cond_0

    .line 2905
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "matrix must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2908
    :cond_0
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeTransform(JLandroid/graphics/Matrix;)V

    .line 2903
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 3375
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3376
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeWriteToParcel(JLandroid/os/Parcel;)V

    .line 3374
    return-void
.end method
