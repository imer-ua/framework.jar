.class public Lmiui/app/ToggleManager;
.super Ljava/lang/Object;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/ToggleManager$10;,
        Lmiui/app/ToggleManager$11;,
        Lmiui/app/ToggleManager$12;,
        Lmiui/app/ToggleManager$13;,
        Lmiui/app/ToggleManager$14;,
        Lmiui/app/ToggleManager$15;,
        Lmiui/app/ToggleManager$16;,
        Lmiui/app/ToggleManager$17;,
        Lmiui/app/ToggleManager$18;,
        Lmiui/app/ToggleManager$19;,
        Lmiui/app/ToggleManager$1;,
        Lmiui/app/ToggleManager$20;,
        Lmiui/app/ToggleManager$2;,
        Lmiui/app/ToggleManager$3;,
        Lmiui/app/ToggleManager$4;,
        Lmiui/app/ToggleManager$5;,
        Lmiui/app/ToggleManager$6;,
        Lmiui/app/ToggleManager$7;,
        Lmiui/app/ToggleManager$8;,
        Lmiui/app/ToggleManager$9;,
        Lmiui/app/ToggleManager$OnToggleChangedListener;,
        Lmiui/app/ToggleManager$OnToggleOrderChangedListener;,
        Lmiui/app/ToggleManager$WorkHandler;
    }
.end annotation


# static fields
.field public static final ALPHA_DEFAULT:I = 0xff

.field public static final ALPHA_HALF:I = 0x7d

.field public static final AUTO_BRIGHTNESS_OPTIMIZE_STRATEGY:Ljava/lang/String;

.field public static final COMPONENT_NAME_MIDROP_STARTUP_RECEIVER:Ljava/lang/String; = "com.xiaomi.midrop.startup.StartupReceiver"

.field public static final DEFAULT_BACKLIGHT:I = 0x66

.field private static final EXECUTE_TOGGLE_BLUETOOTH_DELAY_TIME:I = 0x1f4

.field private static final KEY_POWER_MODE_OPEN:Ljava/lang/String; = "POWER_SAVE_MODE_OPEN"

.field public static final MAXIMUM_BACKLIGHT:I = 0xff

.field public static final META_DATA_KEY_FRAGMENT_CLASS:Ljava/lang/String; = "com.android.settings.FRAGMENT_CLASS"

.field private static final METHOD_CHANGE_POWER_MODE:Ljava/lang/String; = "changePowerMode"

.field public static final MINIMUM_BACKLIGHT:I

.field public static final MIUI_BRIGHTNESS_OPT_STRATEGY:Ljava/lang/String; = "miui"

.field private static final MSG_UPDATE_SYNC_TOGGLE:I = 0x2

.field private static final MSG_VERIFY_BLUETOOTH_STATE:I = 0x1

.field public static final PINECONE_BRIGHTNESS_OPT_STRATEGY:Ljava/lang/String; = "pinecone"

.field public static final PKG_NAME_MIDROP:Ljava/lang/String; = "com.xiaomi.midrop"

.field private static final POWER_MODE_URI_PATH:Ljava/lang/String; = "content://com.miui.powercenter.powersaver"

.field private static final PROCESS_NAME_SYSTEM_UI:Ljava/lang/String; = "com.android.systemui"

.field public static final RANGE:I

.field private static final SETTINGS_MIDROP:Ljava/lang/String; = "key_midrop_enabled"

.field public static final SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

.field static final TAG:Ljava/lang/String; = "ToggleManager"

.field public static final TOGGLE_ADVANCED_SYNC:I = 0x13

.field public static final TOGGLE_AUTO_BRIGHTNESS:I = 0x16

.field public static final TOGGLE_BATTERY_SAVER:I = 0x1e

.field public static final TOGGLE_BLUETOOTH:I = 0x2

.field public static final TOGGLE_BRIGHTNESS:I = 0x4

.field public static final TOGGLE_CAST:I = 0x1c

.field public static final TOGGLE_COUNT:I = 0x20

.field public static final TOGGLE_DATA:I = 0x1

.field public static final TOGGLE_DIVIDER:I = 0x0

.field public static final TOGGLE_DRIVE_MODE:I = 0x15

.field public static final TOGGLE_EDIT:I = 0x1d

.field public static final TOGGLE_FLIGHT_MODE:I = 0x9

.field public static final TOGGLE_GPS:I = 0x7

.field public static final TOGGLE_LOCK:I = 0xa

.field public static final TOGGLE_MIDROP:I = 0x1b

.field public static final TOGGLE_NETWORK_TYPE:I = 0x11

.field public static final TOGGLE_PAPER_MODE:I = 0x1a

.field public static final TOGGLE_POWER_MODE:I = 0x17

.field public static final TOGGLE_QUIET_MODE:I = 0x19

.field public static final TOGGLE_REBOOT:I = 0xc

.field public static final TOGGLE_RINGER:I = 0x5

.field public static final TOGGLE_ROTATE:I = 0x3

.field public static final TOGGLE_SCREENSHOT:I = 0x12

.field public static final TOGGLE_SCREEN_BUTTON:I = 0x14

.field public static final TOGGLE_SHUTDOWN:I = 0xd

.field public static final TOGGLE_SYNC:I = 0x8

.field public static final TOGGLE_TORCH:I = 0xb

.field public static final TOGGLE_VIBRATE:I = 0x6

.field public static final TOGGLE_WIFI:I = 0xf

.field public static final TOGGLE_WIFI_AP:I = 0x18

.field public static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

.field private static final VERIFY_BLUETOOTH_STATE_DELAY_TIME:I = 0x3e8

.field private static mWifiApEnabler:Lmiui/app/WifiApEnabler;

.field private static mWifiManager:Landroid/net/wifi/WifiManager;

.field private static sCurrentUserId:I

.field private static volatile sHasCast:Z

.field private static volatile sHasGpsFeature:Z

.field private static sHasMiDrop:Z

.field private static volatile sHasMobileData:Z

.field private static volatile sHasVibrator:Z

.field private static sLongClickActions:[I

.field private static final sRemoveByMultiUserList:[I

.field private static volatile sStaticFieldsInited:Z

.field private static sToggleDisabled:[Z

.field private static sToggleGeneralImages:[I

.field private static sToggleImages:[I

.field private static sToggleManager:Lmiui/app/ToggleManager;

.field private static sToggleNames:[I

.field private static sToggleOffImages:[I

.field private static sToggleOnImages:[I

.field private static sToggleStatus:[Z

.field private static sToggleStatusNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sToggleStringToId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sWifiApAvailable:Z


# instance fields
.field private mAccelerometer:Z

.field private final mAccelerometerRotationObserver:Landroid/database/ContentObserver;

.field private mBatterySaveMode:Z

.field private final mBatterySaverObserver:Landroid/database/ContentObserver;

.field private mBgHandler:Landroid/os/Handler;

.field private mBgThread:Landroid/os/HandlerThread;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothDelay:Z

.field private mBluetoothEnable:Z

.field private mBrightnessAutoAvailable:Z

.field private mBrightnessAutoLevel:F

.field private mBrightnessAutoMode:Z

.field private mBrightnessManualLevel:I

.field private final mBrightnessObserver:Landroid/database/ContentObserver;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mFlightMode:Z

.field private final mFlightModeObserver:Landroid/database/ContentObserver;

.field private mGpsEnable:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsSimMissing:Z

.field private final mLocationAllowedObserver:Landroid/database/ContentObserver;

.field private mMiDropChanging:Z

.field private final mMiDropObserver:Landroid/database/ContentObserver;

.field private mMobileDataEnable:Z

.field private final mMobileDataEnableObserver:Landroid/database/ContentObserver;

.field private mMobileDataUtils:Landroid/app/MobileDataUtils;

.field private mMobilePolicyEnable:Z

.field private final mMobilePolicyEnableObserver:Landroid/database/ContentObserver;

.field private mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mPaperMode:Z

.field private final mPaperModeObserver:Landroid/database/ContentObserver;

.field private mPowerMode:Ljava/lang/String;

.field private final mPowerModeObserver:Landroid/database/ContentObserver;

.field private mQuietMode:Z

.field private final mQuietModeObserver:Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mResource:Landroid/content/res/Resources;

.field private mScreenButtonDisabled:Z

.field private final mScreenButtonStateObserver:Landroid/database/ContentObserver;

.field private mStatusChangeListenerHandle:Ljava/lang/Object;

.field private final mSyncStatusObserver:Landroid/content/SyncStatusObserver;

.field private final mTogglOrderObserver:Landroid/database/ContentObserver;

.field private mToggleChangedListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/app/ToggleManager$OnToggleChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mToggleOrderChangedListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/app/ToggleManager$OnToggleOrderChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTorchEnable:Z

.field private final mTorchEnableObserver:Landroid/database/ContentObserver;

.field private final mUpdateSyncStateRunnable:Ljava/lang/Runnable;

.field private final mVibrateEnableObserver:Landroid/database/ContentObserver;

.field mWifiChanging:Z

.field mWifiConnected:Z

.field mWifiEnable:Z

.field mWifiSsid:Ljava/lang/String;

.field private mZenMode:I


# direct methods
.method static synthetic -get0(Lmiui/app/ToggleManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/app/ToggleManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lmiui/app/ToggleManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lmiui/app/ToggleManager;)Landroid/app/MobileDataUtils;
    .locals 1

    iget-object v0, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    return-object v0
.end method

.method static synthetic -get4(Lmiui/app/ToggleManager;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get5(Lmiui/app/ToggleManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleOrderChangedListener:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get6(Lmiui/app/ToggleManager;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lmiui/app/ToggleManager;->mUpdateSyncStateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get7()Landroid/net/wifi/WifiManager;
    .locals 1

    sget-object v0, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get8()I
    .locals 1

    sget v0, Lmiui/app/ToggleManager;->sCurrentUserId:I

    return v0
.end method

.method static synthetic -get9()Z
    .locals 1

    sget-boolean v0, Lmiui/app/ToggleManager;->sHasMiDrop:Z

    return v0
.end method

.method static synthetic -set0(Lmiui/app/ToggleManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/app/ToggleManager;->mIsSimMissing:Z

    return p1
.end method

.method static synthetic -set1(Lmiui/app/ToggleManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnable:Z

    return p1
.end method

.method static synthetic -set2(Z)Z
    .locals 0

    sput-boolean p0, Lmiui/app/ToggleManager;->sHasMiDrop:Z

    return p0
.end method

.method static synthetic -wrap0(Lmiui/app/ToggleManager;)Z
    .locals 1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->isSyncOn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lmiui/app/ToggleManager;IZ)V
    .locals 0
    .param p1, "brightness"    # I
    .param p2, "write"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lmiui/app/ToggleManager;->applyBrightnessIntenal(IZ)V

    return-void
.end method

.method static synthetic -wrap10(Lmiui/app/ToggleManager;)V
    .locals 0

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateFlightModeToggle()V

    return-void
.end method

.method static synthetic -wrap11(Lmiui/app/ToggleManager;)V
    .locals 0

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateGpsToggle()V

    return-void
.end method

.method static synthetic -wrap12(Lmiui/app/ToggleManager;)V
    .locals 0

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateMiDropToggle()V

    return-void
.end method

.method static synthetic -wrap13(Lmiui/app/ToggleManager;)V
    .locals 0

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updatePaperModeToggle()V

    return-void
.end method

.method static synthetic -wrap14(Lmiui/app/ToggleManager;)V
    .locals 0

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updatePowerModeToggle()V

    return-void
.end method

.method static synthetic -wrap15(Lmiui/app/ToggleManager;)V
    .locals 0

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateQuietModeToggle()V

    return-void
.end method

.method static synthetic -wrap16(Lmiui/app/ToggleManager;)V
    .locals 0

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateScreenButtonState()V

    return-void
.end method

.method static synthetic -wrap17(Lmiui/app/ToggleManager;)V
    .locals 0

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateSyncToggle()V

    return-void
.end method

.method static synthetic -wrap18(Lmiui/app/ToggleManager;Z)V
    .locals 0
    .param p1, "isSyncOn"    # Z

    .prologue
    invoke-direct {p0, p1}, Lmiui/app/ToggleManager;->updateSyncToggle(Z)V

    return-void
.end method

.method static synthetic -wrap19(Lmiui/app/ToggleManager;)V
    .locals 0

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateTorchToggle()V

    return-void
.end method

.method static synthetic -wrap2(Lmiui/app/ToggleManager;)V
    .locals 0

    invoke-direct {p0}, Lmiui/app/ToggleManager;->queryBrightnessStatus()V

    return-void
.end method

.method static synthetic -wrap20(Lmiui/app/ToggleManager;)V
    .locals 0

    invoke-direct {p0}, Lmiui/app/ToggleManager;->verifyBluetoothState()V

    return-void
.end method

.method static synthetic -wrap3(Lmiui/app/ToggleManager;Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lmiui/app/ToggleManager;->toggleBluetooth(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lmiui/app/ToggleManager;)V
    .locals 0

    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleSyncIntenal()V

    return-void
.end method

.method static synthetic -wrap5(Lmiui/app/ToggleManager;)V
    .locals 0

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateAccelerometerToggle()V

    return-void
.end method

.method static synthetic -wrap6(Lmiui/app/ToggleManager;)V
    .locals 0

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateBatterySaverToggle()V

    return-void
.end method

.method static synthetic -wrap7(Lmiui/app/ToggleManager;)V
    .locals 0

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateBluetoothToggle()V

    return-void
.end method

.method static synthetic -wrap8(Lmiui/app/ToggleManager;)V
    .locals 0

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateBrightnessToggle()V

    return-void
.end method

.method static synthetic -wrap9(Lmiui/app/ToggleManager;)V
    .locals 0

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateDataToggle()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x1b

    const/16 v7, 0x18

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x20

    .line 106
    sget-boolean v1, Lmiui/os/DeviceFeature;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    sput-boolean v1, Lmiui/app/ToggleManager;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    .line 148
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    .line 154
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmiui/app/ToggleManager;->sToggleStatusNames:Ljava/util/HashMap;

    .line 156
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "bluetooth"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "brightness_mode"

    const/16 v3, 0x16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "data"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "flight_mode"

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "gps"

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "lock"

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "power_mode"

    const/16 v3, 0x17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "quiet_mode"

    const/16 v3, 0x19

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "rotate"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "ringer_mode"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "screenshot"

    const/16 v3, 0x12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "screen_button"

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "sync_mode"

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "torch"

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "vibration_mode"

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "wifi"

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "wifi_ap"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "paper_mode"

    const/16 v3, 0x1a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "midrop"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "cast"

    const/16 v3, 0x1c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "battery_safer"

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "edit"

    const/16 v3, 0x1d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    new-array v1, v4, [I

    sput-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    .line 180
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11090001

    const/16 v3, 0x16

    aput v2, v1, v3

    .line 181
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/high16 v2, 0x11090000

    const/4 v3, 0x2

    aput v2, v1, v3

    .line 182
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11090002

    aput v2, v1, v6

    .line 183
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11090003

    const/16 v3, 0x9

    aput v2, v1, v3

    .line 184
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11090004

    const/4 v3, 0x7

    aput v2, v1, v3

    .line 185
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11090005

    const/16 v3, 0xa

    aput v2, v1, v3

    .line 186
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11090006

    const/4 v3, 0x5

    aput v2, v1, v3

    .line 187
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x1109000e

    const/16 v3, 0x17

    aput v2, v1, v3

    .line 188
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11090007

    const/4 v3, 0x3

    aput v2, v1, v3

    .line 189
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11090008

    const/16 v3, 0x14

    aput v2, v1, v3

    .line 190
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11090009

    const/16 v3, 0x12

    aput v2, v1, v3

    .line 191
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x1109000a

    const/16 v3, 0x8

    aput v2, v1, v3

    .line 192
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x1109000b

    const/16 v3, 0xb

    aput v2, v1, v3

    .line 193
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x1109000c

    const/4 v3, 0x6

    aput v2, v1, v3

    .line 194
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x1109000d

    const/16 v3, 0xf

    aput v2, v1, v3

    .line 195
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x1109000f

    aput v2, v1, v7

    .line 196
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11090010

    const/16 v3, 0x19

    aput v2, v1, v3

    .line 197
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11090011

    const/16 v3, 0x1a

    aput v2, v1, v3

    .line 198
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11090012

    aput v2, v1, v8

    .line 199
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11090013

    const/16 v3, 0x1c

    aput v2, v1, v3

    .line 200
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11090015

    const/16 v3, 0x1e

    aput v2, v1, v3

    .line 201
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11090014

    const/16 v3, 0x1d

    aput v2, v1, v3

    .line 203
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 204
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStatusNames:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lmiui/app/ToggleManager;->sToggleNames:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_0
    new-array v1, v4, [I

    sput-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    .line 211
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x11090019

    const/16 v3, 0x16

    aput v2, v1, v3

    .line 212
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x11090017

    aput v2, v1, v6

    .line 213
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x11090018

    const/4 v3, 0x2

    aput v2, v1, v3

    .line 214
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x1109001a

    const/16 v3, 0x9

    aput v2, v1, v3

    .line 215
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x1109001b

    const/4 v3, 0x7

    aput v2, v1, v3

    .line 216
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x1109001c

    const/4 v3, 0x5

    aput v2, v1, v3

    .line 217
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x11090021

    const/16 v3, 0x17

    aput v2, v1, v3

    .line 218
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x1109001d

    const/4 v3, 0x3

    aput v2, v1, v3

    .line 219
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x1109001e

    const/16 v3, 0x8

    aput v2, v1, v3

    .line 220
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x1109001f

    const/4 v3, 0x6

    aput v2, v1, v3

    .line 221
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x11090020

    const/16 v3, 0xf

    aput v2, v1, v3

    .line 222
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x11090022

    aput v2, v1, v7

    .line 223
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x11090023

    const/16 v3, 0x19

    aput v2, v1, v3

    .line 224
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x11090024

    const/16 v3, 0x1a

    aput v2, v1, v3

    .line 225
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x11090025

    aput v2, v1, v8

    .line 226
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x11090026

    const/16 v3, 0x1e

    aput v2, v1, v3

    .line 234
    new-array v1, v4, [I

    sput-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    .line 235
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200a1

    const/16 v3, 0x16

    aput v2, v1, v3

    .line 236
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200a0

    const/4 v3, 0x2

    aput v2, v1, v3

    .line 237
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200a6

    aput v2, v1, v6

    .line 238
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200ac

    const/16 v3, 0x9

    aput v2, v1, v3

    .line 239
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200ae

    const/4 v3, 0x7

    aput v2, v1, v3

    .line 240
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200b4

    const/4 v3, 0x5

    aput v2, v1, v3

    .line 241
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200be

    const/16 v3, 0x17

    aput v2, v1, v3

    .line 242
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200c2

    const/4 v3, 0x3

    aput v2, v1, v3

    .line 243
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200c3

    const/16 v3, 0x14

    aput v2, v1, v3

    .line 244
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200c8

    const/16 v3, 0x8

    aput v2, v1, v3

    .line 245
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200ca

    const/16 v3, 0xb

    aput v2, v1, v3

    .line 246
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200cc

    const/4 v3, 0x6

    aput v2, v1, v3

    .line 247
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200d0

    const/16 v3, 0xf

    aput v2, v1, v3

    .line 248
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200ce

    aput v2, v1, v7

    .line 249
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200c0

    const/16 v3, 0x19

    aput v2, v1, v3

    .line 250
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200bc

    const/16 v3, 0x1a

    aput v2, v1, v3

    .line 251
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200b2

    aput v2, v1, v8

    .line 252
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x1102009e

    const/16 v3, 0x1e

    aput v2, v1, v3

    .line 255
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200af

    const/16 v3, 0xa

    aput v2, v1, v3

    .line 256
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200c5

    const/16 v3, 0x12

    aput v2, v1, v3

    .line 257
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200a3

    const/16 v3, 0x1c

    aput v2, v1, v3

    .line 258
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200aa

    const/16 v3, 0x1d

    aput v2, v1, v3

    .line 260
    new-array v1, v4, [I

    sput-object v1, Lmiui/app/ToggleManager;->sToggleGeneralImages:[I

    .line 261
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    .line 262
    sget-object v1, Lmiui/app/ToggleManager;->sToggleGeneralImages:[I

    sget-object v2, Lmiui/app/ToggleManager;->sToggleImages:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 264
    :cond_1
    sget-object v1, Lmiui/app/ToggleManager;->sToggleGeneralImages:[I

    const v2, 0x110200b0

    const/16 v3, 0xa

    aput v2, v1, v3

    .line 265
    sget-object v1, Lmiui/app/ToggleManager;->sToggleGeneralImages:[I

    const v2, 0x110200c6

    const/16 v3, 0x12

    aput v2, v1, v3

    .line 266
    sget-object v1, Lmiui/app/ToggleManager;->sToggleGeneralImages:[I

    const v2, 0x110200a4

    const/16 v3, 0x1c

    aput v2, v1, v3

    .line 268
    new-array v1, v4, [I

    sput-object v1, Lmiui/app/ToggleManager;->sToggleOnImages:[I

    .line 269
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_2

    .line 270
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOnImages:[I

    sget-object v2, Lmiui/app/ToggleManager;->sToggleImages:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 273
    :cond_2
    new-array v1, v4, [I

    sput-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    .line 274
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200a2

    const/16 v3, 0x16

    aput v2, v1, v3

    .line 275
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x1102009f

    const/4 v3, 0x2

    aput v2, v1, v3

    .line 276
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200a5

    aput v2, v1, v6

    .line 277
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200ab

    const/16 v3, 0x9

    aput v2, v1, v3

    .line 278
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200ad    # 1.02554E-28f

    const/4 v3, 0x7

    aput v2, v1, v3

    .line 279
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200b3

    const/4 v3, 0x5

    aput v2, v1, v3

    .line 280
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200bd

    const/16 v3, 0x17

    aput v2, v1, v3

    .line 281
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200c1

    const/4 v3, 0x3

    aput v2, v1, v3

    .line 282
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200c4

    const/16 v3, 0x14

    aput v2, v1, v3

    .line 283
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200c7

    const/16 v3, 0x8

    aput v2, v1, v3

    .line 284
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200c9

    const/16 v3, 0xb

    aput v2, v1, v3

    .line 285
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200cb

    const/4 v3, 0x6

    aput v2, v1, v3

    .line 286
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200cf

    const/16 v3, 0xf

    aput v2, v1, v3

    .line 287
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200cd

    aput v2, v1, v7

    .line 288
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200bf

    const/16 v3, 0x19

    aput v2, v1, v3

    .line 289
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200bb

    const/16 v3, 0x1a

    aput v2, v1, v3

    .line 290
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200b1

    aput v2, v1, v8

    .line 291
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x1102009d

    const/16 v3, 0x1e

    aput v2, v1, v3

    .line 294
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200af

    const/16 v3, 0xa

    aput v2, v1, v3

    .line 295
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200c5

    const/16 v3, 0x12

    aput v2, v1, v3

    .line 296
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200a3

    const/16 v3, 0x1c

    aput v2, v1, v3

    .line 297
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200a9

    const/16 v3, 0x1d

    aput v2, v1, v3

    .line 303
    new-array v1, v4, [Z

    sput-object v1, Lmiui/app/ToggleManager;->sToggleStatus:[Z

    .line 304
    new-array v1, v4, [Z

    sput-object v1, Lmiui/app/ToggleManager;->sToggleDisabled:[Z

    .line 344
    const-string/jumbo v1, "auto_brightness_optimize_strategy"

    .line 343
    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmiui/app/ToggleManager;->AUTO_BRIGHTNESS_OPTIMIZE_STRATEGY:Ljava/lang/String;

    .line 350
    const-string/jumbo v1, "persist.power.useautobrightadj"

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 349
    sput-boolean v1, Lmiui/app/ToggleManager;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    .line 354
    sput v5, Lmiui/app/ToggleManager;->sCurrentUserId:I

    .line 394
    const/4 v1, 0x0

    sput-object v1, Lmiui/app/ToggleManager;->sToggleManager:Lmiui/app/ToggleManager;

    .line 785
    sput-boolean v5, Lmiui/app/ToggleManager;->sHasCast:Z

    .line 786
    sput-boolean v5, Lmiui/app/ToggleManager;->sWifiApAvailable:Z

    .line 787
    sput-boolean v5, Lmiui/app/ToggleManager;->sHasMobileData:Z

    .line 788
    sput-boolean v5, Lmiui/app/ToggleManager;->sHasGpsFeature:Z

    .line 789
    sput-boolean v5, Lmiui/app/ToggleManager;->sStaticFieldsInited:Z

    .line 790
    sput-boolean v5, Lmiui/app/ToggleManager;->sHasVibrator:Z

    .line 865
    filled-new-array {v7, v8}, [I

    move-result-object v1

    sput-object v1, Lmiui/app/ToggleManager;->sRemoveByMultiUserList:[I

    .line 1082
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11080005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1081
    sput v1, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    .line 1084
    sget v1, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    rsub-int v1, v1, 0xff

    sput v1, Lmiui/app/ToggleManager;->RANGE:I

    .line 94
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    new-instance v4, Lmiui/app/ToggleManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lmiui/app/ToggleManager$1;-><init>(Lmiui/app/ToggleManager;Landroid/os/Looper;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    .line 1086
    iput-object v6, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 1101
    iput-boolean v3, p0, Lmiui/app/ToggleManager;->mIsSimMissing:Z

    .line 1104
    new-instance v4, Lmiui/app/ToggleManager$2;

    invoke-direct {v4, p0}, Lmiui/app/ToggleManager$2;-><init>(Lmiui/app/ToggleManager;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1126
    new-instance v4, Lmiui/app/ToggleManager$3;

    invoke-direct {v4, p0}, Lmiui/app/ToggleManager$3;-><init>(Lmiui/app/ToggleManager;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1149
    new-instance v4, Lmiui/app/ToggleManager$4;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lmiui/app/ToggleManager$4;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mTogglOrderObserver:Landroid/database/ContentObserver;

    .line 1160
    new-instance v4, Lmiui/app/ToggleManager$5;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lmiui/app/ToggleManager$5;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mFlightModeObserver:Landroid/database/ContentObserver;

    .line 1167
    new-instance v4, Lmiui/app/ToggleManager$6;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lmiui/app/ToggleManager$6;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    .line 1175
    new-instance v4, Lmiui/app/ToggleManager$7;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lmiui/app/ToggleManager$7;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnableObserver:Landroid/database/ContentObserver;

    .line 1184
    new-instance v4, Lmiui/app/ToggleManager$8;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lmiui/app/ToggleManager$8;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mTorchEnableObserver:Landroid/database/ContentObserver;

    .line 1191
    new-instance v4, Lmiui/app/ToggleManager$9;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lmiui/app/ToggleManager$9;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mScreenButtonStateObserver:Landroid/database/ContentObserver;

    .line 1198
    new-instance v4, Lmiui/app/ToggleManager$10;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lmiui/app/ToggleManager$10;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mLocationAllowedObserver:Landroid/database/ContentObserver;

    .line 1204
    new-instance v4, Lmiui/app/ToggleManager$11;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lmiui/app/ToggleManager$11;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    .line 1211
    new-instance v4, Lmiui/app/ToggleManager$12;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lmiui/app/ToggleManager$12;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 1218
    new-instance v4, Lmiui/app/ToggleManager$13;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lmiui/app/ToggleManager$13;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mPowerModeObserver:Landroid/database/ContentObserver;

    .line 1224
    new-instance v4, Lmiui/app/ToggleManager$14;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lmiui/app/ToggleManager$14;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mBatterySaverObserver:Landroid/database/ContentObserver;

    .line 1231
    new-instance v4, Lmiui/app/ToggleManager$15;

    invoke-direct {v4, p0}, Lmiui/app/ToggleManager$15;-><init>(Lmiui/app/ToggleManager;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mQuietModeObserver:Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    .line 1238
    new-instance v4, Lmiui/app/ToggleManager$16;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lmiui/app/ToggleManager$16;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mPaperModeObserver:Landroid/database/ContentObserver;

    .line 1244
    new-instance v4, Lmiui/app/ToggleManager$17;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lmiui/app/ToggleManager$17;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mMiDropObserver:Landroid/database/ContentObserver;

    .line 1263
    new-instance v4, Lmiui/app/ToggleManager$18;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lmiui/app/ToggleManager$18;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mVibrateEnableObserver:Landroid/database/ContentObserver;

    .line 1271
    new-instance v4, Lmiui/app/ToggleManager$19;

    invoke-direct {v4, p0}, Lmiui/app/ToggleManager$19;-><init>(Lmiui/app/ToggleManager;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mUpdateSyncStateRunnable:Ljava/lang/Runnable;

    .line 1277
    new-instance v4, Lmiui/app/ToggleManager$20;

    invoke-direct {v4, p0}, Lmiui/app/ToggleManager$20;-><init>(Lmiui/app/ToggleManager;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    .line 1418
    iput-boolean v3, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    .line 1419
    iput-boolean v3, p0, Lmiui/app/ToggleManager;->mWifiConnected:Z

    .line 1420
    iput-boolean v3, p0, Lmiui/app/ToggleManager;->mWifiChanging:Z

    .line 1421
    iput-object v6, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    .line 1501
    iput-boolean v3, p0, Lmiui/app/ToggleManager;->mBluetoothDelay:Z

    .line 407
    iput-object p1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    .line 408
    new-instance v4, Landroid/os/HandlerThread;

    const-string/jumbo v5, "ToggleManager"

    const/16 v6, 0xa

    invoke-direct {v4, v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mBgThread:Landroid/os/HandlerThread;

    .line 409
    iget-object v4, p0, Lmiui/app/ToggleManager;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 410
    new-instance v4, Lmiui/app/ToggleManager$WorkHandler;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lmiui/app/ToggleManager$WorkHandler;-><init>(Lmiui/app/ToggleManager;Landroid/os/Looper;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    .line 411
    sput p2, Lmiui/app/ToggleManager;->sCurrentUserId:I

    .line 412
    iget-object v4, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 413
    iget-object v4, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lmiui/app/ToggleManager;->mResource:Landroid/content/res/Resources;

    .line 414
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    .line 415
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mToggleOrderChangedListener:Ljava/util/List;

    .line 416
    invoke-static {}, Landroid/app/MobileDataUtils;->getInstance()Landroid/app/MobileDataUtils;

    move-result-object v4

    iput-object v4, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    .line 418
    iget-object v4, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    sput-object v4, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 420
    iget-object v4, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    .line 421
    const-string/jumbo v5, "connectivity"

    .line 420
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 423
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    iget-object v4, p0, Lmiui/app/ToggleManager;->mResource:Landroid/content/res/Resources;

    .line 424
    const v5, 0x110a0001

    .line 423
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lmiui/app/ToggleManager;->mBrightnessAutoAvailable:Z

    .line 426
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, "mWifiRegexs":[Ljava/lang/String;
    array-length v4, v2

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 428
    .local v3, "wifiAvailable":Z
    :cond_0
    if-eqz v3, :cond_1

    .line 429
    new-instance v4, Lmiui/app/WifiApEnabler;

    invoke-direct {v4, p1, p0}, Lmiui/app/WifiApEnabler;-><init>(Landroid/content/Context;Lmiui/app/ToggleManager;)V

    sput-object v4, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    .line 432
    :cond_1
    const-string/jumbo v4, "com.android.systemui"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 433
    .local v1, "isSystemUI":Z
    invoke-direct {p0, v1}, Lmiui/app/ToggleManager;->registerListener(Z)V

    .line 435
    sget-boolean v4, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v4, :cond_2

    .line 436
    sget-object v4, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v5, 0x11090028

    const/16 v6, 0x19

    aput v5, v4, v6

    .line 406
    :cond_2
    return-void
.end method

.method private static addIfUnselected(Ljava/util/ArrayList;I)V
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 905
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 906
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    :cond_0
    return-void
.end method

.method private applyBrightnessIntenal(IZ)V
    .locals 5
    .param p1, "brightness"    # I
    .param p2, "write"    # Z

    .prologue
    .line 1638
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Lmiui/app/ToggleManager;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v2, :cond_2

    .line 1639
    const-string/jumbo v2, "pinecone"

    sget-object v3, Lmiui/app/ToggleManager;->AUTO_BRIGHTNESS_OPTIMIZE_STRATEGY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1640
    sget v2, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    add-int v0, p1, v2

    .line 1641
    .local v0, "brightnessValue":I
    invoke-static {v0}, Lmiui/app/CompatibilityP;->setTemporaryScreenBrightness(I)V

    .line 1637
    .end local v0    # "brightnessValue":I
    :cond_0
    :goto_0
    return-void

    .line 1643
    :cond_1
    int-to-float v2, p1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    sget v3, Lmiui/app/ToggleManager;->RANGE:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v1, v2, v3

    .line 1644
    .local v1, "valf":F
    invoke-static {v1}, Lmiui/app/CompatibilityP;->setTemporaryScreenAutoBrightness(F)V

    .line 1645
    if-eqz p2, :cond_0

    .line 1646
    iget-object v2, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "screen_auto_brightness_adj"

    .line 1647
    sget v4, Lmiui/app/ToggleManager;->sCurrentUserId:I

    .line 1646
    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    goto :goto_0

    .line 1651
    .end local v1    # "valf":F
    :cond_2
    sget v2, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    add-int v0, p1, v2

    .line 1652
    .restart local v0    # "brightnessValue":I
    invoke-static {v0}, Lmiui/app/CompatibilityP;->setTemporaryScreenBrightness(I)V

    .line 1653
    if-eqz p2, :cond_0

    .line 1654
    iget-object v2, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "screen_brightness"

    .line 1655
    sget v4, Lmiui/app/ToggleManager;->sCurrentUserId:I

    .line 1654
    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method public static createInstance(Landroid/content/Context;)Lmiui/app/ToggleManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 396
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Lmiui/app/ToggleManager;->createInstance(Landroid/content/Context;I)Lmiui/app/ToggleManager;

    move-result-object v0

    return-object v0
.end method

.method public static createInstance(Landroid/content/Context;I)Lmiui/app/ToggleManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 400
    sget-object v0, Lmiui/app/ToggleManager;->sToggleManager:Lmiui/app/ToggleManager;

    if-nez v0, :cond_0

    .line 401
    new-instance v0, Lmiui/app/ToggleManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lmiui/app/ToggleManager;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lmiui/app/ToggleManager;->sToggleManager:Lmiui/app/ToggleManager;

    .line 403
    :cond_0
    sget-object v0, Lmiui/app/ToggleManager;->sToggleManager:Lmiui/app/ToggleManager;

    return-object v0
.end method

.method private ensureBluetoothAdapter()Z
    .locals 1

    .prologue
    .line 1495
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 1496
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 1498
    :cond_0
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static filterToggle(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 792
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 794
    const-class v8, Lmiui/app/ToggleManager;

    monitor-enter v8

    .line 795
    :try_start_0
    sget-boolean v7, Lmiui/app/ToggleManager;->sStaticFieldsInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_0

    .line 797
    :try_start_1
    const-string/jumbo v7, "vibrator"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    .line 798
    .local v4, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v4}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v7

    sput-boolean v7, Lmiui/app/ToggleManager;->sHasVibrator:Z

    .line 801
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static {}, Lmiui/app/ToggleManager;->getCastIntent()Landroid/content/Intent;

    move-result-object v9

    .line 802
    const/high16 v10, 0xd0000

    .line 801
    invoke-virtual {v7, v9, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_c

    move v7, v6

    :goto_0
    sput-boolean v7, Lmiui/app/ToggleManager;->sHasCast:Z

    .line 804
    const-string/jumbo v7, "connectivity"

    .line 803
    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 805
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v5

    .line 806
    .local v5, "wifiRegexs":[Ljava/lang/String;
    array-length v7, v5

    if-eqz v7, :cond_d

    move v7, v6

    :goto_1
    sput-boolean v7, Lmiui/app/ToggleManager;->sWifiApAvailable:Z

    .line 808
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v7

    .line 807
    sput-boolean v7, Lmiui/app/ToggleManager;->sHasMobileData:Z

    .line 809
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string/jumbo v9, "android.hardware.location.gps"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lmiui/app/ToggleManager;->sHasGpsFeature:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 814
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v4    # "vibrator":Landroid/os/Vibrator;
    .end local v5    # "wifiRegexs":[Ljava/lang/String;
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string/jumbo v9, "com.xiaomi.midrop"

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    if-eqz v7, :cond_e

    move v7, v6

    :goto_3
    sput-boolean v7, Lmiui/app/ToggleManager;->sHasMiDrop:Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 818
    :goto_4
    const/4 v7, 0x1

    :try_start_3
    sput-boolean v7, Lmiui/app/ToggleManager;->sStaticFieldsInited:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    monitor-exit v8

    .line 822
    const-string/jumbo v7, "support_power_mode"

    invoke-static {v7, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_1

    .line 823
    const/16 v7, 0x17

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 826
    :cond_1
    sget-boolean v7, Lmiui/app/ToggleManager;->sWifiApAvailable:Z

    if-nez v7, :cond_2

    .line 827
    const/16 v7, 0x18

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 830
    :cond_2
    invoke-static {p0}, Lmiui/os/Build;->hasCameraFlash(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 831
    const/16 v7, 0xb

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 834
    :cond_3
    sget-boolean v7, Lmiui/app/ToggleManager;->sHasMobileData:Z

    if-nez v7, :cond_4

    .line 835
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 836
    const/16 v7, 0x19

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 839
    :cond_4
    sget-boolean v7, Lmiui/app/ToggleManager;->sHasVibrator:Z

    if-nez v7, :cond_5

    .line 840
    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 843
    :cond_5
    sget-boolean v7, Lmiui/app/ToggleManager;->sHasGpsFeature:Z

    if-nez v7, :cond_6

    .line 844
    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 846
    :cond_6
    const-string/jumbo v7, "support_screen_paper_mode"

    invoke-static {v7, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_7

    .line 847
    const/16 v7, 0x1a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 850
    :cond_7
    sget-boolean v7, Lmiui/app/ToggleManager;->sHasMiDrop:Z

    if-eqz v7, :cond_8

    sget-boolean v7, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v7, :cond_9

    .line 851
    :cond_8
    const/16 v7, 0x1b

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 853
    :cond_9
    sget-boolean v7, Lmiui/app/ToggleManager;->sHasCast:Z

    if-nez v7, :cond_a

    .line 854
    const/16 v7, 0x1c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 857
    :cond_a
    invoke-static {}, Lmiui/app/ToggleManager;->isMiPad()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 858
    .local v3, "hasBatterySaver":Z
    :goto_5
    if-nez v3, :cond_b

    .line 859
    const/16 v6, 0x1e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 862
    :cond_b
    invoke-static {p0, p1, p2}, Lmiui/app/ToggleManager;->filterToggleByUser(Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 791
    return-void

    .end local v3    # "hasBatterySaver":Z
    .restart local v4    # "vibrator":Landroid/os/Vibrator;
    :cond_c
    move v7, v3

    .line 801
    goto/16 :goto_0

    .restart local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    .restart local v5    # "wifiRegexs":[Ljava/lang/String;
    :cond_d
    move v7, v3

    .line 806
    goto/16 :goto_1

    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v4    # "vibrator":Landroid/os/Vibrator;
    .end local v5    # "wifiRegexs":[Ljava/lang/String;
    :cond_e
    move v7, v3

    .line 814
    goto/16 :goto_3

    .line 794
    :catchall_0
    move-exception v6

    monitor-exit v8

    throw v6

    :cond_f
    move v3, v6

    .line 857
    goto :goto_5

    .line 815
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_4

    .line 810
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    goto/16 :goto_2
.end method

.method private static filterToggleByUser(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 871
    if-eqz p2, :cond_0

    .line 872
    sget-object v2, Lmiui/app/ToggleManager;->sRemoveByMultiUserList:[I

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget v0, v2, v1

    .line 873
    .local v0, "index":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 872
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 870
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method public static getAllToggles(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 638
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 639
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    invoke-static {p0}, Lmiui/app/ToggleManager;->getUserId(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0, v0, v1}, Lmiui/app/ToggleManager;->filterToggle(Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 663
    return-object v0
.end method

.method private static getCastIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 1393
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.MIPLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1394
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1395
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1397
    return-object v0
.end method

.method public static getDefaultToggleOrder(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 631
    invoke-static {p0}, Lmiui/app/ToggleManager;->getUserId(Landroid/content/Context;)I

    move-result v1

    .line 632
    .local v1, "userId":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 633
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p0, v1}, Lmiui/app/ToggleManager;->isListStyle(Landroid/content/Context;I)Z

    move-result v2

    invoke-static {p0, v0, v2, v1}, Lmiui/app/ToggleManager;->validateToggleOrder(Landroid/content/Context;Ljava/util/ArrayList;ZI)V

    .line 634
    return-object v0
.end method

.method public static getEditFixedPosition(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 709
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x11080000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public static getGeneralImage(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 1010
    sget-object v0, Lmiui/app/ToggleManager;->sToggleGeneralImages:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getImage(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 960
    sget-object v0, Lmiui/app/ToggleManager;->sToggleImages:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getImageDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "id"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 988
    invoke-static {p0}, Lmiui/app/ToggleManager;->getStatus(I)Z

    move-result v0

    invoke-static {p0, v0, p1}, Lmiui/app/ToggleManager;->getImageDrawable(IZLandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getImageDrawable(IZLandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p0, "id"    # I
    .param p1, "isOpen"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 992
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->getImageResource(IZ)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 993
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez p1, :cond_0

    .line 994
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x110200b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 995
    .local v0, "bgDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 996
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 995
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 997
    .local v2, "combined":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 998
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v0, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 999
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1000
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 1001
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    .line 1002
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 1000
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1003
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1004
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1006
    .end local v0    # "bgDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "combined":Landroid/graphics/Bitmap;
    .restart local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v3
.end method

.method public static getImageResource(IZ)I
    .locals 1
    .param p0, "id"    # I
    .param p1, "isOpen"    # Z

    .prologue
    .line 972
    if-eqz p1, :cond_0

    sget-object v0, Lmiui/app/ToggleManager;->sToggleOnImages:[I

    aget v0, v0, p0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    aget v0, v0, p0

    goto :goto_0
.end method

.method public static getName(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 948
    sget-object v0, Lmiui/app/ToggleManager;->sToggleNames:[I

    aget v0, v0, p0

    return v0
.end method

.method private getRotation(Landroid/view/IWindowManager;)I
    .locals 4
    .param p1, "wm"    # Landroid/view/IWindowManager;

    .prologue
    const/4 v3, 0x0

    .line 1723
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    .line 1724
    const-string/jumbo v1, "getRotation"

    const-class v2, Ljava/lang/Integer;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v1, v2, v3}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    move-result-object v0

    .line 1728
    .local v0, "reference":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Integer;>;"
    :goto_0
    invoke-virtual {v0}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 1726
    .end local v0    # "reference":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Integer;>;"
    :cond_0
    const-string/jumbo v1, "getDefaultDisplayRotation"

    const-class v2, Ljava/lang/Integer;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v1, v2, v3}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    move-result-object v0

    .restart local v0    # "reference":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Integer;>;"
    goto :goto_0
.end method

.method public static getStatus(I)Z
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 964
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStatus:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static getStatusName(ILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 3
    .param p0, "id"    # I
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 952
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStatusNames:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 953
    .local v0, "statusName":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 954
    nop

    nop

    .end local v0    # "statusName":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 956
    .restart local v0    # "statusName":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getToggleIdFromString(Ljava/lang/String;)I
    .locals 1
    .param p0, "toggleString"    # Ljava/lang/String;

    .prologue
    .line 932
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 933
    const/4 v0, -0x1

    return v0

    .line 935
    :cond_0
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static getToggleOrderSettingID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 713
    invoke-static {p0}, Lmiui/app/ToggleManager;->isListStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    const-string/jumbo v0, "status_bar_toggle_list_order_new"

    .line 713
    :goto_0
    return-object v0

    .line 715
    :cond_0
    const-string/jumbo v0, "status_bar_toggle_page_order"

    goto :goto_0
.end method

.method public static getToggleStringFromId(I)Ljava/lang/String;
    .locals 3
    .param p0, "toggleId"    # I

    .prologue
    .line 939
    sget-object v2, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 940
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p0, v2, :cond_0

    .line 941
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 944
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getUserId(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 704
    const-string/jumbo v1, "com.android.systemui"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 705
    .local v0, "isSystemUI":Z
    if-eqz v0, :cond_0

    sget v1, Lmiui/app/ToggleManager;->sCurrentUserId:I

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    goto :goto_0
.end method

.method public static getUserSelectedToggleOrder(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 594
    invoke-static {p0}, Lmiui/app/ToggleManager;->getUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lmiui/app/ToggleManager;->getUserSelectedToggleOrder(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getUserSelectedToggleOrder(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 602
    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->isListStyle(Landroid/content/Context;I)Z

    move-result v0

    invoke-static {p0, v0, p1}, Lmiui/app/ToggleManager;->getUserSelectedToggleOrder(Landroid/content/Context;ZI)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getUserSelectedToggleOrder(Landroid/content/Context;Z)Ljava/util/ArrayList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listStyle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 598
    invoke-static {p0}, Lmiui/app/ToggleManager;->getUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, p1, v0}, Lmiui/app/ToggleManager;->getUserSelectedToggleOrder(Landroid/content/Context;ZI)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getUserSelectedToggleOrder(Landroid/content/Context;ZI)Ljava/util/ArrayList;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listStyle"    # Z
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZI)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 607
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 608
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_1

    const-string/jumbo v4, "status_bar_toggle_list_order_new"

    .line 611
    .local v4, "settingID":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 610
    invoke-static {v7, v4, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 612
    .local v5, "toggleList":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 613
    const-string/jumbo v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 614
    .local v6, "toggles":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v6

    if-ge v1, v7, :cond_2

    .line 616
    :try_start_0
    aget-object v7, v6, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 617
    .local v2, "id":I
    invoke-static {v2}, Lmiui/app/ToggleManager;->getName(I)I

    move-result v7

    if-eqz v7, :cond_0

    .line 618
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 609
    .end local v1    # "i":I
    .end local v2    # "id":I
    .end local v4    # "settingID":Ljava/lang/String;
    .end local v5    # "toggleList":Ljava/lang/String;
    .end local v6    # "toggles":[Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "status_bar_toggle_page_order"

    .restart local v4    # "settingID":Ljava/lang/String;
    goto :goto_0

    .line 620
    .restart local v1    # "i":I
    .restart local v5    # "toggleList":Ljava/lang/String;
    .restart local v6    # "toggles":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 621
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 626
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    .end local v6    # "toggles":[Ljava/lang/String;
    :cond_2
    invoke-static {p0, v3, p1, p2}, Lmiui/app/ToggleManager;->validateToggleOrder(Landroid/content/Context;Ljava/util/ArrayList;ZI)V

    .line 627
    return-object v3
.end method

.method private huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 1477
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 1478
    .local v3, "ssid":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 1480
    sget-object v4, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 1481
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "net$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1482
    .local v0, "net":Landroid/net/wifi/WifiConfiguration;
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 1483
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1488
    .end local v0    # "net":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "net$iterator":Ljava/util/Iterator;
    .end local v2    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_1
    if-eqz v3, :cond_2

    const-string/jumbo v4, "<unknown ssid>"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1489
    const/4 v3, 0x0

    .line 1491
    .end local v3    # "ssid":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method public static initDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "id"    # I
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1013
    return-void
.end method

.method public static isDisabled(I)Z
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 968
    sget-object v0, Lmiui/app/ToggleManager;->sToggleDisabled:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static isListStyle(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 693
    invoke-static {p0}, Lmiui/app/ToggleManager;->getUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lmiui/app/ToggleManager;->isListStyle(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static isListStyle(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 697
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 698
    const-string/jumbo v2, "status_bar_style_type"

    .line 697
    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isMiPad()Z
    .locals 1

    .prologue
    .line 2174
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    return v0
.end method

.method private isSyncOn()Z
    .locals 7

    .prologue
    .line 1854
    :try_start_0
    const-class v2, Landroid/content/ContentResolver;

    const-string/jumbo v3, "getMasterSyncAutomaticallyAsUser"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1855
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lmiui/app/ToggleManager;->sCurrentUserId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1856
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 1857
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ToggleManager"

    const-string/jumbo v3, "getMasterSyncAutomaticallyAsUser not found."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    return v2
.end method

.method public static isValid(Landroid/content/Context;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x0

    .line 590
    if-ltz p1, :cond_0

    const/16 v1, 0x20

    if-ge p1, v1, :cond_0

    invoke-static {p1}, Lmiui/app/ToggleManager;->getName(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private longClickScreenshot()Z
    .locals 14

    .prologue
    const/4 v9, 0x0

    .line 2052
    const/4 v3, 0x0

    .line 2053
    .local v3, "path":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    .line 2054
    sget-object v8, Lmiui/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    .line 2053
    invoke-static {v8}, Lmiui/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 2054
    const-string/jumbo v10, "Screenshots"

    .line 2053
    invoke-direct {v7, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2055
    .local v7, "screenShotFolder":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2057
    new-instance v6, Lmiui/app/ToggleManager$21;

    invoke-direct {v6, p0}, Lmiui/app/ToggleManager$21;-><init>(Lmiui/app/ToggleManager;)V

    .line 2069
    .local v6, "pictureFilter":Ljava/io/FilenameFilter;
    invoke-virtual {v7, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 2070
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_0

    .line 2071
    return v9

    .line 2073
    :cond_0
    const-wide/16 v4, 0x0

    .line 2074
    .local v4, "maxLastModifed":J
    array-length v10, v1

    move v8, v9

    .end local v3    # "path":Ljava/lang/String;
    :goto_0
    if-ge v8, v10, :cond_2

    aget-object v0, v1, v8

    .line 2075
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    cmp-long v11, v12, v4

    if-lez v11, :cond_1

    .line 2076
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 2077
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 2074
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2082
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    .end local v4    # "maxLastModifed":J
    .end local v6    # "pictureFilter":Ljava/io/FilenameFilter;
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    return v9

    .line 2084
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.VIEW"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2085
    .local v2, "intent":Landroid/content/Intent;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    const-string/jumbo v9, "image/*"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2086
    const/high16 v8, 0x10000000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2087
    iget-object v8, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v8, v2, v9}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2088
    const/4 v8, 0x1

    return v8
.end method

.method public static maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 2157
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 2158
    return-object p0

    .line 2160
    :cond_0
    if-nez p0, :cond_1

    return-object v3

    .line 2161
    :cond_1
    const/4 v1, -0x2

    if-eq p1, v1, :cond_2

    .line 2162
    const-string/jumbo v1, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2161
    if-eqz v1, :cond_2

    .line 2163
    invoke-static {p0}, Lmiui/app/ToggleManager;->uriHasUserId(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2165
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2166
    .local v0, "builder":Landroid/net/Uri$Builder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2167
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 2170
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_2
    return-object p0
.end method

.method private queryBrightnessStatus()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1251
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBrightnessAutoAvailable:Z

    if-eqz v2, :cond_1

    .line 1253
    iget-object v2, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 1254
    const-string/jumbo v3, "screen_brightness_mode"

    .line 1255
    sget v4, Lmiui/app/ToggleManager;->sCurrentUserId:I

    .line 1252
    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 1251
    :goto_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    .line 1258
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_brightness"

    sget v2, Lmiui/app/ToggleManager;->sCurrentUserId:I

    const/16 v3, 0x66

    .line 1257
    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lmiui/app/ToggleManager;->mBrightnessManualLevel:I

    .line 1259
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_auto_brightness_adj"

    .line 1260
    const/4 v2, 0x0

    sget v3, Lmiui/app/ToggleManager;->sCurrentUserId:I

    .line 1259
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 1260
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1259
    add-float/2addr v0, v1

    .line 1260
    sget v1, Lmiui/app/ToggleManager;->RANGE:I

    int-to-float v1, v1

    .line 1259
    mul-float/2addr v0, v1

    .line 1260
    const/high16 v1, 0x40000000    # 2.0f

    .line 1259
    div-float/2addr v0, v1

    iput v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoLevel:F

    .line 1250
    return-void

    :cond_0
    move v0, v1

    .line 1252
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1256
    goto :goto_0
.end method

.method private registerListener(Z)V
    .locals 13
    .param p1, "isSystemUI"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x0

    .line 441
    if-eqz p1, :cond_1

    const/4 v11, -0x1

    .line 442
    .local v11, "userId":I
    :goto_0
    if-eqz p1, :cond_2

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 444
    .local v2, "user":Landroid/os/UserHandle;
    :goto_1
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 445
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 446
    const-string/jumbo v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 447
    const-string/jumbo v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 448
    const-string/jumbo v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 449
    const-string/jumbo v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 450
    const-string/jumbo v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 451
    const-string/jumbo v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 455
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 456
    .local v8, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 457
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 458
    const-string/jumbo v0, "package"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 459
    iget-object v5, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lmiui/app/ToggleManager;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    move-object v7, v2

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 462
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 463
    const-string/jumbo v1, "status_bar_toggle_list_order_new"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 465
    iget-object v4, p0, Lmiui/app/ToggleManager;->mTogglOrderObserver:Landroid/database/ContentObserver;

    .line 462
    invoke-virtual {v0, v1, v12, v4, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 466
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 467
    const-string/jumbo v1, "status_bar_toggle_page_order"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 469
    iget-object v4, p0, Lmiui/app/ToggleManager;->mTogglOrderObserver:Landroid/database/ContentObserver;

    .line 466
    invoke-virtual {v0, v1, v12, v4, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 472
    iget-object v0, p0, Lmiui/app/ToggleManager;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    .line 471
    const v1, 0x7fffffff

    .line 470
    invoke-static {v1, v0}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/ToggleManager;->mStatusChangeListenerHandle:Ljava/lang/Object;

    .line 473
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 474
    const-string/jumbo v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 476
    iget-object v4, p0, Lmiui/app/ToggleManager;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    .line 473
    invoke-virtual {v0, v1, v12, v4, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 477
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 478
    const-string/jumbo v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 480
    iget-object v4, p0, Lmiui/app/ToggleManager;->mFlightModeObserver:Landroid/database/ContentObserver;

    .line 477
    invoke-virtual {v0, v1, v12, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 481
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 482
    const-string/jumbo v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 484
    iget-object v4, p0, Lmiui/app/ToggleManager;->mLocationAllowedObserver:Landroid/database/ContentObserver;

    .line 481
    invoke-virtual {v0, v1, v12, v4, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 486
    iget-object v0, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lmiui/app/ToggleManager;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4}, Landroid/app/MobileDataUtils;->registerContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 488
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 489
    const-string/jumbo v1, "mobile_policy"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 491
    iget-object v4, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnableObserver:Landroid/database/ContentObserver;

    .line 488
    invoke-virtual {v0, v1, v12, v4, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 492
    sget-boolean v0, Lmiui/app/ToggleManager;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    if-nez v0, :cond_0

    .line 493
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 494
    const-string/jumbo v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 496
    iget-object v4, p0, Lmiui/app/ToggleManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 493
    invoke-virtual {v0, v1, v12, v4, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 497
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 498
    const-string/jumbo v1, "screen_auto_brightness_adj"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 500
    iget-object v4, p0, Lmiui/app/ToggleManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 497
    invoke-virtual {v0, v1, v12, v4, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 502
    :cond_0
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 503
    const-string/jumbo v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 505
    iget-object v4, p0, Lmiui/app/ToggleManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 502
    invoke-virtual {v0, v1, v12, v4, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 506
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 507
    const-string/jumbo v1, "screen_buttons_state"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 509
    iget-object v4, p0, Lmiui/app/ToggleManager;->mScreenButtonStateObserver:Landroid/database/ContentObserver;

    .line 506
    invoke-virtual {v0, v1, v12, v4, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 510
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 511
    const-string/jumbo v1, "torch_state"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 513
    iget-object v4, p0, Lmiui/app/ToggleManager;->mTorchEnableObserver:Landroid/database/ContentObserver;

    const/4 v5, -0x1

    .line 510
    invoke-virtual {v0, v1, v12, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 514
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 515
    const-string/jumbo v1, "vibrate_in_silent"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 517
    iget-object v4, p0, Lmiui/app/ToggleManager;->mVibrateEnableObserver:Landroid/database/ContentObserver;

    .line 514
    invoke-virtual {v0, v1, v12, v4, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 518
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 519
    const-string/jumbo v1, "vibrate_in_normal"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 521
    iget-object v4, p0, Lmiui/app/ToggleManager;->mVibrateEnableObserver:Landroid/database/ContentObserver;

    .line 518
    invoke-virtual {v0, v1, v12, v4, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 522
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 523
    const-string/jumbo v1, "power_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 525
    iget-object v4, p0, Lmiui/app/ToggleManager;->mPowerModeObserver:Landroid/database/ContentObserver;

    .line 522
    invoke-virtual {v0, v1, v12, v4, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 526
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 527
    const-string/jumbo v1, "POWER_SAVE_MODE_OPEN"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 529
    iget-object v4, p0, Lmiui/app/ToggleManager;->mBatterySaverObserver:Landroid/database/ContentObserver;

    .line 526
    invoke-virtual {v0, v1, v12, v4, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 530
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mQuietModeObserver:Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    invoke-static {v0, v1}, Lmiui/provider/ExtraTelephony;->registerQuietModeEnableListener(Landroid/content/Context;Lmiui/provider/ExtraTelephony$QuietModeEnableListener;)V

    .line 531
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 532
    const-string/jumbo v1, "screen_paper_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 534
    iget-object v4, p0, Lmiui/app/ToggleManager;->mPaperModeObserver:Landroid/database/ContentObserver;

    .line 531
    invoke-virtual {v0, v1, v12, v4, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 535
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 536
    const-string/jumbo v1, "key_midrop_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 538
    iget-object v4, p0, Lmiui/app/ToggleManager;->mMiDropObserver:Landroid/database/ContentObserver;

    .line 535
    invoke-virtual {v0, v1, v12, v4, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 539
    sget v0, Lmiui/app/ToggleManager;->sCurrentUserId:I

    invoke-virtual {p0, v0}, Lmiui/app/ToggleManager;->updateAllToggles(I)V

    .line 440
    return-void

    .line 441
    .end local v2    # "user":Landroid/os/UserHandle;
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v8    # "intentFilter":Landroid/content/IntentFilter;
    .end local v11    # "userId":I
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    .restart local v11    # "userId":I
    goto/16 :goto_0

    .line 442
    :cond_2
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v11}, Landroid/os/UserHandle;-><init>(I)V

    .restart local v2    # "user":Landroid/os/UserHandle;
    goto/16 :goto_1
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 1468
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 1469
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1470
    .local v0, "length":I
    if-le v0, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1471
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1473
    :cond_1
    return-object p1
.end method

.method private setBrightnessMode()V
    .locals 4

    .prologue
    .line 1606
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 1607
    const-string/jumbo v2, "screen_brightness_mode"

    .line 1608
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    if-eqz v0, :cond_0

    .line 1609
    const/4 v0, 0x1

    .line 1610
    :goto_0
    sget v3, Lmiui/app/ToggleManager;->sCurrentUserId:I

    .line 1606
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1605
    return-void

    .line 1610
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setUserSelectedToggleOrderStatic(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 672
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p0}, Lmiui/app/ToggleManager;->isListStyle(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, p1, v0}, Lmiui/app/ToggleManager;->setUserSelectedToggleOrderStatic(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 671
    return-void
.end method

.method public static setUserSelectedToggleOrderStatic(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p2, "isListStyle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 677
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_0

    const-string/jumbo v1, "status_bar_toggle_list_order_new"

    .line 679
    .local v1, "settingId":Ljava/lang/String;
    :goto_0
    invoke-static {p0}, Lmiui/app/ToggleManager;->getUserId(Landroid/content/Context;)I

    move-result v3

    invoke-static {p0, p1, p2, v3}, Lmiui/app/ToggleManager;->validateToggleOrder(Landroid/content/Context;Ljava/util/ArrayList;ZI)V

    .line 680
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x60

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 681
    .local v2, "toggleList":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 682
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 678
    .end local v0    # "i":I
    .end local v1    # "settingId":Ljava/lang/String;
    .end local v2    # "toggleList":Ljava/lang/StringBuilder;
    :cond_0
    const-string/jumbo v1, "status_bar_toggle_page_order"

    .restart local v1    # "settingId":Ljava/lang/String;
    goto :goto_0

    .line 686
    .restart local v0    # "i":I
    .restart local v2    # "toggleList":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 688
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 689
    invoke-static {p0}, Lmiui/app/ToggleManager;->getUserId(Landroid/content/Context;)I

    move-result v5

    .line 685
    invoke-static {v3, v1, v4, v5}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 676
    return-void
.end method

.method private showToast(II)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "length"    # I

    .prologue
    .line 1776
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lmiui/app/ToggleManager;->showToast(Ljava/lang/CharSequence;I)V

    .line 1775
    return-void
.end method

.method private showToast(Ljava/lang/CharSequence;I)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "length"    # I

    .prologue
    .line 1780
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1781
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x7d6

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setType(I)V

    .line 1782
    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1784
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1779
    return-void
.end method

.method private toggleAccelerometer()V
    .locals 5

    .prologue
    .line 1707
    :try_start_0
    const-string/jumbo v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1706
    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .line 1708
    .local v2, "wm":Landroid/view/IWindowManager;
    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mAccelerometer:Z

    if-nez v3, :cond_0

    .line 1709
    invoke-interface {v2}, Landroid/view/IWindowManager;->thawRotation()V

    .line 1704
    .end local v2    # "wm":Landroid/view/IWindowManager;
    :goto_0
    return-void

    .line 1711
    .restart local v2    # "wm":Landroid/view/IWindowManager;
    :cond_0
    invoke-direct {p0, v2}, Lmiui/app/ToggleManager;->getRotation(Landroid/view/IWindowManager;)I

    move-result v1

    .line 1712
    .local v1, "rotation":I
    if-eqz v1, :cond_1

    const/4 v3, 0x2

    if-eq v3, v1, :cond_1

    .line 1713
    const v3, 0x11090029

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lmiui/app/ToggleManager;->showToast(II)V

    .line 1715
    :cond_1
    const/4 v3, -0x1

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1717
    .end local v1    # "rotation":I
    .end local v2    # "wm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .local v0, "exc":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private toggleAutoBrightness()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1586
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    if-eqz v2, :cond_1

    .line 1587
    iput-boolean v3, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    .line 1593
    :goto_0
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    if-nez v2, :cond_0

    .line 1594
    const-string/jumbo v2, "pinecone"

    sget-object v4, Lmiui/app/ToggleManager;->AUTO_BRIGHTNESS_OPTIMIZE_STRATEGY:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1593
    if-eqz v2, :cond_0

    .line 1595
    const-string/jumbo v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 1596
    .local v0, "pm":Landroid/os/IPowerManager;
    const-string/jumbo v2, "getScreenBrightness"

    const-class v4, Ljava/lang/Integer;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v4, v3}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    move-result-object v1

    .line 1597
    .local v1, "reference":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    .line 1598
    iget-object v3, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "screen_brightness"

    .line 1599
    invoke-virtual {v1}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v5, Lmiui/app/ToggleManager;->sCurrentUserId:I

    .line 1598
    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1602
    .end local v0    # "pm":Landroid/os/IPowerManager;
    .end local v1    # "reference":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Integer;>;"
    :cond_0
    invoke-direct {p0}, Lmiui/app/ToggleManager;->setBrightnessMode()V

    .line 1585
    return-void

    .line 1590
    :cond_1
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBrightnessAutoAvailable:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method private toggleBatterySaverToggle()V
    .locals 5

    .prologue
    .line 1934
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBatterySaveMode:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lmiui/app/ToggleManager;->mBatterySaveMode:Z

    .line 1935
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1936
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "POWER_SAVE_MODE_OPEN"

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mBatterySaveMode:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1937
    const-string/jumbo v2, "content://com.miui.powercenter.powersaver"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget v3, Lmiui/app/ToggleManager;->sCurrentUserId:I

    invoke-static {v2, v3}, Lmiui/app/ToggleManager;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    .line 1938
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "changePowerMode"

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1933
    return-void

    .line 1934
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private toggleBluetooth()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x2

    const/4 v2, 0x0

    .line 1504
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    .line 1505
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    invoke-virtual {p0, v5, v1}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1507
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    if-eqz v1, :cond_2

    .line 1508
    const v1, 0x110200a0

    .line 1506
    :goto_1
    invoke-virtual {p0, v5, v1}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1510
    iget-object v1, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1511
    iget-object v1, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1512
    iget-object v1, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    if-eqz v4, :cond_3

    :goto_2
    invoke-virtual {v1, v5, v3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1513
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mBluetoothDelay:Z

    if-eqz v3, :cond_0

    const/16 v2, 0x1f4

    :cond_0
    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1503
    return-void

    .end local v0    # "message":Landroid/os/Message;
    :cond_1
    move v1, v3

    .line 1504
    goto :goto_0

    .line 1509
    :cond_2
    const v1, 0x1102009f

    goto :goto_1

    :cond_3
    move v3, v2

    .line 1512
    goto :goto_2
.end method

.method private toggleBluetooth(Z)V
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1517
    invoke-direct {p0}, Lmiui/app/ToggleManager;->ensureBluetoothAdapter()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1518
    iget-object v5, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    .line 1519
    .local v2, "state":I
    const/16 v5, 0xb

    if-eq v2, v5, :cond_1

    .line 1520
    const/16 v5, 0xd

    if-ne v2, v5, :cond_2

    move v0, v3

    .line 1521
    .local v0, "changing":Z
    :goto_0
    if-nez v0, :cond_5

    .line 1522
    if-eqz p1, :cond_3

    const/16 v5, 0xc

    if-eq v2, v5, :cond_3

    .line 1523
    iput-boolean v3, p0, Lmiui/app/ToggleManager;->mBluetoothDelay:Z

    .line 1524
    iget-object v3, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 1516
    .end local v0    # "changing":Z
    .end local v2    # "state":I
    :cond_0
    :goto_1
    return-void

    .restart local v2    # "state":I
    :cond_1
    move v0, v3

    .line 1519
    goto :goto_0

    :cond_2
    move v0, v4

    .line 1520
    goto :goto_0

    .line 1525
    .restart local v0    # "changing":Z
    :cond_3
    if-nez p1, :cond_4

    const/16 v5, 0xa

    if-eq v2, v5, :cond_4

    .line 1526
    iput-boolean v3, p0, Lmiui/app/ToggleManager;->mBluetoothDelay:Z

    .line 1527
    iget-object v3, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_1

    .line 1529
    :cond_4
    iput-boolean v4, p0, Lmiui/app/ToggleManager;->mBluetoothDelay:Z

    goto :goto_1

    .line 1532
    :cond_5
    iget-object v5, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    if-eqz p1, :cond_6

    :goto_2
    const/4 v6, 0x2

    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1533
    .local v1, "message":Landroid/os/Message;
    iget-object v3, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .end local v1    # "message":Landroid/os/Message;
    :cond_6
    move v3, v4

    .line 1532
    goto :goto_2
.end method

.method private toggleData()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 1665
    const/4 v1, 0x0

    .line 1666
    .local v1, "result":Z
    invoke-static {v4}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1667
    iget-boolean v5, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnable:Z

    if-eqz v5, :cond_2

    .line 1668
    iget-boolean v5, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    :cond_0
    iput-boolean v4, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    .line 1669
    iget-object v4, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-boolean v6, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    invoke-virtual {v4, v5, v6}, Landroid/app/MobileDataUtils;->enableMobileData(Landroid/content/Context;Z)V

    .line 1684
    :cond_1
    :goto_0
    return v1

    .line 1671
    :cond_2
    iget-object v4, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/app/BaseMobileDataUtils;->getSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1672
    .local v2, "subscriberId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1673
    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    .line 1674
    .local v3, "template":Landroid/net/NetworkTemplate;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1675
    .local v0, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    .line 1676
    const-string/jumbo v5, "com.miui.securitycenter"

    const-string/jumbo v6, "com.miui.networkassistant.ui.activity.NetworkOverLimitActivity"

    .line 1675
    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1677
    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1678
    const-string/jumbo v4, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1679
    iget-object v4, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1680
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private toggleEdit()V
    .locals 6

    .prologue
    .line 2120
    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lmiui/app/ToggleManager;->isListStyle(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v1, "com.android.settings.ToggleArrangementFragment"

    .line 2122
    .local v1, "extraShowFragment":Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2123
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x14000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2124
    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2125
    const-string/jumbo v3, ":android:show_fragment"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2126
    const-string/jumbo v3, ":android:no_headers"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2127
    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "com.android.settings.SubSettings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2129
    :try_start_0
    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2119
    :goto_1
    return-void

    .line 2121
    .end local v1    # "extraShowFragment":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    const-string/jumbo v1, "com.android.settings.TogglePositionFragment"

    .restart local v1    # "extraShowFragment":Ljava/lang/String;
    goto :goto_0

    .line 2130
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 2131
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ToggleManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "toggleEdit() Exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private toggleFlightMode()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1868
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/enterprise/RestrictionsHelper;->hasAirplaneRestriction(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1869
    return-void

    .line 1872
    :cond_0
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    .line 1873
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "airplane_mode_on"

    iget-boolean v5, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    if-eqz v5, :cond_2

    :goto_1
    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1874
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1875
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1876
    const-string/jumbo v1, "state"

    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1877
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1866
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    move v1, v3

    .line 1872
    goto :goto_0

    :cond_2
    move v3, v2

    .line 1873
    goto :goto_1
.end method

.method private toggleGps()V
    .locals 4

    .prologue
    .line 1808
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 1809
    const-string/jumbo v2, "gps"

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mGpsEnable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sget v3, Lmiui/app/ToggleManager;->sCurrentUserId:I

    .line 1808
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 1807
    return-void

    .line 1809
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private toggleMiDrop()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2010
    const/16 v2, 0x1b

    invoke-static {v2}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2011
    iput-boolean v5, p0, Lmiui/app/ToggleManager;->mMiDropChanging:Z

    .line 2012
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->isDisplayMiDropOn()Z

    move-result v1

    .line 2013
    .local v1, "isMiDropOn":Z
    new-instance v0, Landroid/content/Intent;

    if-eqz v1, :cond_1

    const-string/jumbo v2, "miui.intent.action.midrop_off"

    :goto_0
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2014
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.xiaomi.midrop"

    const-string/jumbo v4, "com.xiaomi.midrop.startup.StartupReceiver"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2015
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2016
    iget-object v2, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2017
    const-string/jumbo v3, "ToggleManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MiDrop: toggle MiDrop to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_2

    const-string/jumbo v2, "OFF"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    invoke-virtual {p0, v5}, Lmiui/app/ToggleManager;->updateMiDropToggle(Z)V

    .line 2009
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "isMiDropOn":Z
    :cond_0
    return-void

    .line 2013
    .restart local v1    # "isMiDropOn":Z
    :cond_1
    const-string/jumbo v2, "miui.intent.action.midrop_on"

    goto :goto_0

    .line 2017
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_2
    const-string/jumbo v2, "ON"

    goto :goto_1
.end method

.method private togglePaperMode()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1980
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    .line 1981
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "screen_paper_mode_enabled"

    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    if-eqz v4, :cond_1

    .line 1982
    :goto_1
    sget v1, Lmiui/app/ToggleManager;->sCurrentUserId:I

    .line 1981
    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1979
    return-void

    :cond_0
    move v0, v2

    .line 1980
    goto :goto_0

    :cond_1
    move v2, v1

    .line 1981
    goto :goto_1
.end method

.method private togglePowerMode()V
    .locals 5

    .prologue
    .line 1908
    const-string/jumbo v1, "high"

    iget-object v2, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1909
    const-string/jumbo v1, "middle"

    iput-object v1, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    .line 1914
    :goto_0
    const-string/jumbo v1, "persist.sys.aries.power_profile"

    iget-object v2, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "power_mode"

    iget-object v3, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    sget v4, Lmiui/app/ToggleManager;->sCurrentUserId:I

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1917
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.POWER_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1918
    .local v0, "powerModeChange":Landroid/content/Intent;
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1906
    return-void

    .line 1911
    .end local v0    # "powerModeChange":Landroid/content/Intent;
    :cond_0
    const-string/jumbo v1, "high"

    iput-object v1, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    goto :goto_0
.end method

.method private toggleQuietMode()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1950
    sget-boolean v4, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v4, :cond_3

    .line 1951
    iget v4, p0, Lmiui/app/ToggleManager;->mZenMode:I

    if-eq v4, v2, :cond_0

    const/4 v0, 0x1

    .line 1953
    .local v0, "enabled":Z
    :goto_0
    iget-object v4, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    .line 1954
    if-eqz v0, :cond_1

    .line 1955
    :goto_1
    const/4 v3, 0x0

    .line 1952
    invoke-static {v4, v2, v3}, Landroid/provider/MiuiSettings$SilenceMode;->setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 1958
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 1959
    .local v1, "mode":I
    :goto_2
    const-string/jumbo v2, "silence_DND"

    .line 1960
    sget-object v3, Landroid/provider/MiuiSettings$SilenceMode;->MISTAT_RINGERMODE_LIST:[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 1961
    const-string/jumbo v4, "0"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1959
    invoke-static {v2, v3, v4, v6, v7}, Landroid/provider/MiuiSettings$SilenceMode;->reportRingerModeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1962
    return-void

    .line 1951
    .end local v0    # "enabled":Z
    .end local v1    # "mode":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0

    :cond_1
    move v2, v3

    .line 1954
    goto :goto_1

    .line 1958
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "mode":I
    goto :goto_2

    .line 1964
    .end local v0    # "enabled":Z
    .end local v1    # "mode":I
    :cond_3
    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    if-eqz v4, :cond_4

    :goto_3
    iput-boolean v3, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    .line 1965
    iget-object v2, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    invoke-static {v2, v3}, Landroid/provider/MiuiSettings$AntiSpam;->setQuietMode(Landroid/content/Context;Z)V

    .line 1949
    return-void

    :cond_4
    move v3, v2

    .line 1964
    goto :goto_3
.end method

.method private toggleRinger()V
    .locals 8

    .prologue
    const/4 v2, 0x4

    .line 1746
    sget-boolean v3, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v3, :cond_3

    .line 1747
    iget v3, p0, Lmiui/app/ToggleManager;->mZenMode:I

    if-eq v3, v2, :cond_0

    const/4 v0, 0x1

    .line 1749
    .local v0, "enabled":Z
    :goto_0
    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    .line 1750
    if-eqz v0, :cond_1

    .line 1751
    :goto_1
    const/4 v4, 0x0

    .line 1748
    invoke-static {v3, v2, v4}, Landroid/provider/MiuiSettings$SilenceMode;->setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 1754
    if-eqz v0, :cond_2

    const/4 v1, 0x4

    .line 1755
    .local v1, "mode":I
    :goto_2
    const-string/jumbo v2, "silence_DND"

    .line 1756
    sget-object v3, Landroid/provider/MiuiSettings$SilenceMode;->MISTAT_RINGERMODE_LIST:[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 1757
    const-string/jumbo v4, "0"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1755
    invoke-static {v2, v3, v4, v6, v7}, Landroid/provider/MiuiSettings$SilenceMode;->reportRingerModeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1758
    return-void

    .line 1747
    .end local v0    # "enabled":Z
    .end local v1    # "mode":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0

    .line 1750
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 1754
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "mode":I
    goto :goto_2

    .line 1761
    .end local v0    # "enabled":Z
    .end local v1    # "mode":I
    :cond_3
    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lmiui/util/AudioManagerHelper;->toggleSilent(Landroid/content/Context;I)V

    .line 1745
    return-void
.end method

.method private toggleScreenButtonState()V
    .locals 7

    .prologue
    const v4, 0x110900bd

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2092
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    .line 2094
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "screen_buttons_has_been_disabled"

    .line 2095
    sget v6, Lmiui/app/ToggleManager;->sCurrentUserId:I

    .line 2094
    invoke-static {v1, v5, v2, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_1

    .line 2096
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "screen_buttons_has_been_disabled"

    .line 2097
    sget v6, Lmiui/app/ToggleManager;->sCurrentUserId:I

    .line 2096
    invoke-static {v1, v5, v3, v6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2098
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget v6, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-direct {v1, v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2100
    const v4, 0x104000a

    const/4 v5, 0x0

    .line 2098
    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2103
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v4, 0x7da

    invoke-virtual {v1, v4}, Landroid/view/Window;->setType(I)V

    .line 2104
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 2105
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2114
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :goto_1
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 2115
    const-string/jumbo v4, "screen_buttons_state"

    .line 2116
    iget-boolean v5, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    if-eqz v5, :cond_3

    :goto_2
    sget v2, Lmiui/app/ToggleManager;->sCurrentUserId:I

    .line 2114
    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2091
    return-void

    :cond_0
    move v1, v3

    .line 2092
    goto :goto_0

    .line 2108
    :cond_1
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    if-eqz v1, :cond_2

    move v1, v4

    :goto_3
    invoke-direct {p0, v1, v2}, Lmiui/app/ToggleManager;->showToast(II)V

    goto :goto_1

    .line 2110
    :cond_2
    const v1, 0x110900bc

    goto :goto_3

    :cond_3
    move v3, v2

    .line 2116
    goto :goto_2
.end method

.method private toggleScreenshot()V
    .locals 3

    .prologue
    .line 2047
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 2048
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.CAPTURE_SCREENSHOT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2046
    return-void
.end method

.method private toggleSync()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 1825
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1826
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1824
    return-void
.end method

.method private toggleSyncIntenal()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1831
    :try_start_0
    const-class v4, Landroid/content/ContentResolver;

    const-string/jumbo v5, "setMasterSyncAutomaticallyAsUser"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 1832
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 1831
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1833
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-direct {p0}, Lmiui/app/ToggleManager;->isSyncOn()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    sget v4, Lmiui/app/ToggleManager;->sCurrentUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1829
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_1
    return-void

    .restart local v1    # "method":Ljava/lang/reflect/Method;
    :cond_0
    move v4, v3

    .line 1833
    goto :goto_0

    .line 1834
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 1835
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ToggleManager"

    const-string/jumbo v5, "setMasterSyncAutomaticallyAsUser not found."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_2
    invoke-static {v2}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_2
.end method

.method private toggleTorch()V
    .locals 3

    .prologue
    .line 1901
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.TOGGLE_TORCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1902
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "miui.intent.extra.IS_TOGGLE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1903
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1900
    return-void
.end method

.method private toggleVibrate()V
    .locals 1

    .prologue
    .line 1792
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/util/AudioManagerHelper;->toggleVibrateSetting(Landroid/content/Context;)V

    .line 1791
    return-void
.end method

.method private updateAccelerometerToggle()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1732
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "accelerometer_rotation"

    .line 1733
    sget v4, Lmiui/app/ToggleManager;->sCurrentUserId:I

    .line 1732
    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mAccelerometer:Z

    .line 1735
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mAccelerometer:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p0, v5, v2}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1736
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mAccelerometer:Z

    if-eqz v0, :cond_2

    .line 1737
    const v0, 0x110200c1

    .line 1736
    :goto_2
    invoke-virtual {p0, v5, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1731
    return-void

    :cond_0
    move v0, v2

    .line 1732
    goto :goto_0

    :cond_1
    move v2, v1

    .line 1735
    goto :goto_1

    .line 1738
    :cond_2
    const v0, 0x110200c2

    goto :goto_2
.end method

.method private updateBatterySaverToggle()V
    .locals 5

    .prologue
    const/16 v4, 0x1e

    const/4 v0, 0x0

    .line 1942
    const-string/jumbo v1, "ToggleManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateBatterySaverToggle() old mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mBatterySaveMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "POWER_SAVE_MODE_OPEN"

    sget v3, Lmiui/app/ToggleManager;->sCurrentUserId:I

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mBatterySaveMode:Z

    .line 1944
    const-string/jumbo v0, "ToggleManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBatterySaverToggle() new mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBatterySaveMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBatterySaveMode:Z

    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1946
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBatterySaveMode:Z

    invoke-static {v4, v0}, Lmiui/app/ToggleManager;->getImageResource(IZ)I

    move-result v0

    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1941
    return-void
.end method

.method private updateBluetoothToggle()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 1554
    invoke-direct {p0}, Lmiui/app/ToggleManager;->ensureBluetoothAdapter()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1555
    iget-object v2, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    .line 1556
    .local v1, "state":I
    iget-object v2, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0xb

    if-ne v1, v2, :cond_4

    :cond_0
    const/4 v0, 0x1

    .line 1557
    .local v0, "enable":Z
    :goto_0
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBluetoothDelay:Z

    if-eqz v2, :cond_1

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    .end local v0    # "enable":Z
    :cond_1
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    .line 1558
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    invoke-virtual {p0, v3, v2}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1559
    invoke-virtual {p0, v3, v4}, Lmiui/app/ToggleManager;->updateToggleDisabled(IZ)V

    .line 1561
    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    .line 1562
    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 1564
    :cond_2
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    if-eqz v2, :cond_5

    .line 1565
    const v2, 0x110200a0

    .line 1563
    :goto_1
    invoke-virtual {p0, v3, v2}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1567
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBluetoothDelay:Z

    if-eqz v2, :cond_3

    .line 1568
    iput-boolean v4, p0, Lmiui/app/ToggleManager;->mBluetoothDelay:Z

    .line 1569
    iget-object v2, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1570
    iget-object v2, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1553
    .end local v1    # "state":I
    :cond_3
    return-void

    .line 1556
    .restart local v1    # "state":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "enable":Z
    goto :goto_0

    .line 1566
    .end local v0    # "enable":Z
    :cond_5
    const v2, 0x1102009f

    goto :goto_1
.end method

.method private updateBrightnessToggle()V
    .locals 3

    .prologue
    const/16 v2, 0x16

    .line 1577
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    if-eqz v1, :cond_0

    .line 1578
    const v0, 0x110200a1

    .line 1581
    .local v0, "autoResId":I
    :goto_0
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    invoke-virtual {p0, v2, v1}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1582
    invoke-virtual {p0, v2, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1576
    return-void

    .line 1579
    .end local v0    # "autoResId":I
    :cond_0
    const v0, 0x110200a2

    .restart local v0    # "autoResId":I
    goto :goto_0
.end method

.method private updateDataToggle()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1688
    iget-object v1, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/app/MobileDataUtils;->isMobileEnable(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    .line 1689
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mIsSimMissing:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1690
    .local v0, "isDataEnabled":Z
    :goto_0
    const-string/jumbo v1, "ToggleManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mMobileDataEnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1691
    const-string/jumbo v4, ";mMobilePolicyEnable="

    .line 1690
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1691
    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnable:Z

    .line 1690
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1692
    const-string/jumbo v4, ";mFlightMode="

    .line 1690
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1692
    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    .line 1690
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1693
    const-string/jumbo v4, ";mIsSimMissing="

    .line 1690
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1693
    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mIsSimMissing:Z

    .line 1690
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    invoke-virtual {p0, v2, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1695
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mIsSimMissing:Z

    :goto_1
    invoke-virtual {p0, v2, v1}, Lmiui/app/ToggleManager;->updateToggleDisabled(IZ)V

    .line 1697
    if-eqz v0, :cond_3

    const v1, 0x110200a6

    .line 1696
    :goto_2
    invoke-virtual {p0, v2, v1}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1687
    return-void

    .line 1689
    .end local v0    # "isDataEnabled":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "isDataEnabled":Z
    goto :goto_0

    :cond_2
    move v1, v2

    .line 1695
    goto :goto_1

    .line 1697
    :cond_3
    const v1, 0x110200a5

    goto :goto_2
.end method

.method private updateFlightModeToggle()V
    .locals 4

    .prologue
    const/16 v3, 0x9

    const/4 v0, 0x0

    .line 1881
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    .line 1883
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    invoke-virtual {p0, v3, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1884
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    if-eqz v0, :cond_1

    .line 1885
    const v0, 0x110200ac

    .line 1884
    :goto_0
    invoke-virtual {p0, v3, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1888
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateDataToggle()V

    .line 1880
    return-void

    .line 1886
    :cond_1
    const v0, 0x110200ab

    goto :goto_0
.end method

.method private updateGpsToggle()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 1814
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "gps"

    sget v2, Lmiui/app/ToggleManager;->sCurrentUserId:I

    .line 1813
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mGpsEnable:Z

    .line 1815
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mGpsEnable:Z

    invoke-virtual {p0, v3, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1816
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mGpsEnable:Z

    if-eqz v0, :cond_0

    .line 1817
    const v0, 0x110200ae

    .line 1816
    :goto_0
    invoke-virtual {p0, v3, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1812
    return-void

    .line 1818
    :cond_0
    const v0, 0x110200ad    # 1.02554E-28f

    goto :goto_0
.end method

.method public static updateImageView(ILandroid/widget/ImageView;)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 1017
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/app/ToggleManager;->updateImageView(ILandroid/widget/ImageView;I)V

    .line 1016
    return-void
.end method

.method public static updateImageView(ILandroid/widget/ImageView;I)V
    .locals 2
    .param p0, "id"    # I
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "color"    # I

    .prologue
    .line 1021
    if-eqz p1, :cond_1

    .line 1022
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0, v1}, Lmiui/app/ToggleManager;->getImageDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1023
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1024
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1026
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1027
    invoke-static {p0, v0}, Lmiui/app/ToggleManager;->initDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 1020
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method private updateMiDropToggle()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2023
    iget-object v3, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "key_midrop_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2024
    .local v0, "setting":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lmiui/app/ToggleManager;->mMiDropChanging:Z

    .line 2025
    const-string/jumbo v1, "ToggleManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MiDrop: isMiDropDisabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x1b

    invoke-static {v4}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2026
    const-string/jumbo v4, " isWifiAPDisabled:"

    .line 2025
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2026
    const/16 v4, 0x18

    invoke-static {v4}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v4

    .line 2025
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2026
    const-string/jumbo v4, " mMiDropChanging:"

    .line 2025
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2026
    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mMiDropChanging:Z

    .line 2025
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2027
    const-string/jumbo v4, " setting:"

    .line 2025
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    invoke-virtual {p0, v2}, Lmiui/app/ToggleManager;->updateMiDropToggle(Z)V

    .line 2022
    return-void
.end method

.method private updatePaperModeToggle()V
    .locals 5

    .prologue
    const/16 v4, 0x1a

    const/4 v0, 0x0

    .line 1986
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "screen_paper_mode_enabled"

    .line 1987
    sget v3, Lmiui/app/ToggleManager;->sCurrentUserId:I

    .line 1986
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    .line 1988
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1989
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    if-eqz v0, :cond_1

    .line 1990
    const v0, 0x110200bc

    .line 1989
    :goto_0
    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1985
    return-void

    .line 1991
    :cond_1
    const v0, 0x110200bb

    goto :goto_0
.end method

.method private updatePowerModeToggle()V
    .locals 5

    .prologue
    const/16 v4, 0x17

    .line 1922
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "power_mode"

    sget v3, Lmiui/app/ToggleManager;->sCurrentUserId:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    .line 1923
    iget-object v1, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1924
    const-string/jumbo v1, "middle"

    iput-object v1, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    .line 1926
    :cond_0
    const-string/jumbo v1, "high"

    iget-object v2, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1927
    .local v0, "isHigh":Z
    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1928
    if-eqz v0, :cond_1

    .line 1929
    const v1, 0x110200be

    .line 1928
    :goto_0
    invoke-virtual {p0, v4, v1}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1921
    return-void

    .line 1930
    :cond_1
    const v1, 0x110200bd

    goto :goto_0
.end method

.method private updateQuietModeToggle()V
    .locals 3

    .prologue
    const/16 v2, 0x19

    const/4 v0, 0x1

    .line 1969
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lmiui/app/ToggleManager;->mZenMode:I

    .line 1970
    sget-boolean v1, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v1, :cond_1

    .line 1971
    iget v1, p0, Lmiui/app/ToggleManager;->mZenMode:I

    if-ne v1, v0, :cond_0

    .line 1970
    :goto_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    .line 1973
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    invoke-virtual {p0, v2, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1974
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    if-eqz v0, :cond_2

    .line 1975
    const v0, 0x110200c0

    .line 1974
    :goto_1
    invoke-virtual {p0, v2, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1968
    return-void

    .line 1971
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1972
    :cond_1
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 1976
    :cond_2
    const v0, 0x110200bf

    goto :goto_1
.end method

.method private updateScreenButtonState()V
    .locals 5

    .prologue
    const/16 v4, 0x14

    const/4 v0, 0x0

    .line 2137
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "screen_buttons_state"

    sget v3, Lmiui/app/ToggleManager;->sCurrentUserId:I

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 2136
    :cond_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    .line 2138
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 2139
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    if-eqz v0, :cond_1

    .line 2140
    const v0, 0x110200c3

    .line 2139
    :goto_0
    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 2135
    return-void

    .line 2141
    :cond_1
    const v0, 0x110200c4

    goto :goto_0
.end method

.method private updateSyncToggle()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1841
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1842
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1840
    return-void
.end method

.method private updateSyncToggle(Z)V
    .locals 2
    .param p1, "isSyncOn"    # Z

    .prologue
    const/16 v1, 0x8

    .line 1846
    invoke-virtual {p0, v1, p1}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1847
    if-eqz p1, :cond_0

    .line 1848
    const v0, 0x110200c8

    .line 1847
    :goto_0
    invoke-virtual {p0, v1, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1845
    return-void

    .line 1849
    :cond_0
    const v0, 0x110200c7

    goto :goto_0
.end method

.method public static updateTextView(ILandroid/widget/TextView;)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 1032
    if-eqz p1, :cond_0

    .line 1033
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, v0}, Lmiui/app/ToggleManager;->getStatusName(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1031
    :cond_0
    return-void
.end method

.method private updateTorchToggle()V
    .locals 5

    .prologue
    const/16 v4, 0xb

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1893
    iget-object v2, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "torch_state"

    .line 1892
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mTorchEnable:Z

    .line 1894
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mTorchEnable:Z

    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1895
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mTorchEnable:Z

    if-eqz v0, :cond_1

    .line 1896
    const v0, 0x110200ca

    .line 1895
    :goto_1
    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1891
    return-void

    :cond_0
    move v0, v1

    .line 1892
    goto :goto_0

    .line 1897
    :cond_1
    const v0, 0x110200c9

    goto :goto_1
.end method

.method public static uriHasUserId(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 2150
    if-nez p0, :cond_0

    .line 2151
    return v0

    .line 2152
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static validateEditPositionInList(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v2, 0x1d

    .line 880
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p0}, Lmiui/app/ToggleManager;->getEditFixedPosition(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 881
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p0}, Lmiui/app/ToggleManager;->getEditFixedPosition(Landroid/content/Context;)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 882
    :cond_0
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 883
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 885
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p0}, Lmiui/app/ToggleManager;->getEditFixedPosition(Landroid/content/Context;)I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 886
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 878
    :cond_2
    :goto_1
    return-void

    .line 888
    :cond_3
    invoke-static {p0}, Lmiui/app/ToggleManager;->getEditFixedPosition(Landroid/content/Context;)I

    move-result v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private static validateEditPositionInPage(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v2, 0x1d

    .line 895
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 896
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_2

    .line 897
    :cond_0
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 898
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 900
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 893
    :cond_2
    return-void
.end method

.method private static validateToggleList(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 730
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 731
    const/16 v0, 0xf

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 732
    const/16 v0, 0xb

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 733
    const/4 v0, 0x5

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 734
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 735
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 736
    const/16 v0, 0x16

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 737
    const/16 v0, 0x9

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 738
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 739
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 740
    const/16 v0, 0x1b

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 741
    const/4 v0, 0x7

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 742
    const/4 v0, 0x6

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 743
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 744
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 745
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 746
    const/16 v0, 0x19

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 747
    const/16 v0, 0x17

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 748
    const/16 v0, 0x14

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 749
    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 750
    const/16 v0, 0x1e

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 752
    invoke-static {p0, p1, p2}, Lmiui/app/ToggleManager;->filterToggle(Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 753
    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->validateEditPositionInList(Landroid/content/Context;Ljava/util/List;)V

    .line 728
    return-void
.end method

.method public static validateToggleOrder(Landroid/content/Context;Ljava/util/ArrayList;ZI)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "isListStyle"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 720
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_0

    .line 721
    invoke-static {p0, p1, p3}, Lmiui/app/ToggleManager;->validateToggleList(Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 719
    :goto_0
    return-void

    .line 724
    :cond_0
    invoke-static {p0, p1, p3}, Lmiui/app/ToggleManager;->validateTogglePage(Landroid/content/Context;Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method private static validateTogglePage(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 758
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x5

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 759
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 760
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 761
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 762
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 763
    const/16 v0, 0xf

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 764
    const/16 v0, 0x1b

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 765
    const/16 v0, 0x16

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 766
    const/16 v0, 0xb

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 768
    const/16 v0, 0x9

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 769
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 770
    const/4 v0, 0x6

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 771
    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 772
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 773
    const/16 v0, 0x19

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 774
    const/4 v0, 0x7

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 775
    const/16 v0, 0x14

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 776
    const/16 v0, 0x17

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 777
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 778
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 779
    const/16 v0, 0x1e

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 781
    invoke-static {p0, p1, p2}, Lmiui/app/ToggleManager;->filterToggle(Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 782
    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->validateEditPositionInPage(Landroid/content/Context;Ljava/util/List;)V

    .line 756
    return-void
.end method

.method private verifyBluetoothState()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 1539
    invoke-direct {p0}, Lmiui/app/ToggleManager;->ensureBluetoothAdapter()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1540
    iget-object v2, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    .line 1541
    .local v1, "state":I
    iget-object v2, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 1542
    .local v0, "enable":Z
    :goto_0
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    if-eq v2, v0, :cond_1

    .line 1543
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    .line 1544
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    invoke-virtual {p0, v3, v2}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1546
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    if-eqz v2, :cond_3

    .line 1547
    const v2, 0x110200a0

    .line 1545
    :goto_1
    invoke-virtual {p0, v3, v2}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1538
    .end local v0    # "enable":Z
    .end local v1    # "state":I
    :cond_1
    return-void

    .line 1541
    .restart local v1    # "state":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "enable":Z
    goto :goto_0

    .line 1548
    :cond_3
    const v2, 0x1102009f

    goto :goto_1
.end method


# virtual methods
.method public applyBrightness(IZ)V
    .locals 3
    .param p1, "brightness"    # I
    .param p2, "write"    # Z

    .prologue
    const/4 v2, 0x3

    .line 1633
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1634
    iget-object v1, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1632
    return-void

    .line 1634
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2178
    const-string/jumbo v3, "  - ToggleManager ------"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2179
    const-string/jumbo v3, "  - wifi ---"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2180
    const-string/jumbo v3, "  mWifiEnable="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2181
    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 2182
    const-string/jumbo v3, "  mWifiConnected="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2183
    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mWifiConnected:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 2184
    const-string/jumbo v3, "  mWifiChanging="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2185
    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mWifiChanging:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 2186
    const-string/jumbo v3, "  mWifiSsid="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2187
    iget-object v3, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2188
    const-string/jumbo v3, "  - data ---"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2189
    const-string/jumbo v3, "  mMobileDataEnable="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2190
    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 2191
    const-string/jumbo v3, "  mMobilePolicyEnable="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2192
    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnable:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 2193
    const-string/jumbo v3, "  mIsSimMissing="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2194
    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mIsSimMissing:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 2195
    const-string/jumbo v3, "  mFlightMode="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2196
    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 2197
    const-string/jumbo v3, "  - toggles ---"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2198
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x20

    if-ge v0, v3, :cond_0

    .line 2199
    const-string/jumbo v3, "  Toggle:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2200
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2201
    const-string/jumbo v3, "  Status:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2202
    sget-object v3, Lmiui/app/ToggleManager;->sToggleStatus:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 2198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2204
    :cond_0
    iget-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 2205
    const-string/jumbo v3, "  - listeners ---"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2206
    iget-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 2207
    iget-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2208
    .local v1, "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/app/ToggleManager$OnToggleChangedListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/ToggleManager$OnToggleChangedListener;

    .line 2209
    .local v2, "l":Lmiui/app/ToggleManager$OnToggleChangedListener;
    const-string/jumbo v3, "  listener:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2210
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2206
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2177
    .end local v1    # "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/app/ToggleManager$OnToggleChangedListener;>;"
    .end local v2    # "l":Lmiui/app/ToggleManager$OnToggleChangedListener;
    :cond_1
    return-void
.end method

.method public getCurBrightness()I
    .locals 6

    .prologue
    .line 1614
    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    if-eqz v3, :cond_3

    sget-boolean v3, Lmiui/app/ToggleManager;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v3, :cond_3

    .line 1615
    const-string/jumbo v3, "pinecone"

    sget-object v4, Lmiui/app/ToggleManager;->AUTO_BRIGHTNESS_OPTIMIZE_STRATEGY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1616
    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v0

    .line 1617
    .local v0, "defaultBrightness":I
    const-string/jumbo v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 1618
    .local v1, "pm":Landroid/os/IPowerManager;
    const/4 v2, 0x0

    .line 1619
    .local v2, "reference":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    .line 1620
    const-string/jumbo v3, "getScreenBrightness"

    const-class v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v3, v4, v5}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    move-result-object v2

    .line 1624
    .end local v2    # "reference":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Integer;>;"
    :goto_0
    if-nez v2, :cond_1

    .end local v0    # "defaultBrightness":I
    :goto_1
    sget v3, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    sub-int v3, v0, v3

    return v3

    .line 1622
    .restart local v0    # "defaultBrightness":I
    .restart local v2    # "reference":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Integer;>;"
    :cond_0
    const-string/jumbo v3, "ToggleManager"

    const-string/jumbo v4, "pm is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1624
    .end local v2    # "reference":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Integer;>;"
    :cond_1
    invoke-virtual {v2}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 1626
    .end local v0    # "defaultBrightness":I
    .end local v1    # "pm":Landroid/os/IPowerManager;
    :cond_2
    iget v3, p0, Lmiui/app/ToggleManager;->mBrightnessAutoLevel:F

    float-to-int v3, v3

    return v3

    .line 1629
    :cond_3
    iget v3, p0, Lmiui/app/ToggleManager;->mBrightnessManualLevel:I

    sget v4, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    sub-int/2addr v3, v4

    return v3
.end method

.method public isBrightnessAutoMode()Z
    .locals 1

    .prologue
    .line 2145
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    return v0
.end method

.method isDisplayMiDropOn()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2005
    iget-object v3, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "key_midrop_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2006
    .local v0, "settings":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lmiui/app/ToggleManager;->useWifiApForMiDrop()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    invoke-virtual {v1}, Lmiui/app/WifiApEnabler;->isWifiApOn()Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 566
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 567
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mTogglOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 568
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 569
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 570
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mTorchEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 571
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mScreenButtonStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 572
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mLocationAllowedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 573
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 574
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 575
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mVibrateEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 576
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mPowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 577
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mBatterySaverObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 578
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mQuietModeObserver:Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    invoke-static {v0, v1}, Lmiui/provider/ExtraTelephony;->unRegisterQuietModeEnableListener(Landroid/content/Context;Lmiui/provider/ExtraTelephony$QuietModeEnableListener;)V

    .line 579
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mPaperModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 580
    iget-object v0, p0, Lmiui/app/ToggleManager;->mStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 581
    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 582
    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 583
    sget-object v0, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    if-eqz v0, :cond_0

    .line 584
    sget-object v0, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    invoke-virtual {v0}, Lmiui/app/WifiApEnabler;->unregisterReceiver()V

    .line 586
    :cond_0
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 564
    return-void
.end method

.method public performToggle(I)Z
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 1303
    const-string/jumbo v2, "ToggleManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performToggle:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " state:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lmiui/app/ToggleManager;->isValid(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStatus:[Z

    aget-boolean v1, v1, p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    const/4 v0, 0x0

    .line 1305
    .local v0, "mustCollapse":Z
    packed-switch p1, :pswitch_data_0

    .line 1381
    .end local v0    # "mustCollapse":Z
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 1303
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_0

    .line 1307
    .restart local v0    # "mustCollapse":Z
    :pswitch_1
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleAutoBrightness()V

    goto :goto_1

    .line 1310
    :pswitch_2
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleBluetooth()V

    goto :goto_1

    .line 1313
    :pswitch_3
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleData()Z

    move-result v0

    .local v0, "mustCollapse":Z
    goto :goto_1

    .line 1316
    .local v0, "mustCollapse":Z
    :pswitch_4
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleFlightMode()V

    goto :goto_1

    .line 1319
    :pswitch_5
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleGps()V

    goto :goto_1

    .line 1322
    :pswitch_6
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1323
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1322
    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_1

    .line 1326
    :pswitch_7
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleRinger()V

    goto :goto_1

    .line 1329
    :pswitch_8
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleAccelerometer()V

    goto :goto_1

    .line 1332
    :pswitch_9
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleScreenButtonState()V

    goto :goto_1

    .line 1335
    :pswitch_a
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleScreenshot()V

    .line 1336
    const/4 v0, 0x1

    .line 1337
    goto :goto_1

    .line 1339
    :pswitch_b
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleSync()V

    goto :goto_1

    .line 1342
    :pswitch_c
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleTorch()V

    goto :goto_1

    .line 1345
    :pswitch_d
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleVibrate()V

    goto :goto_1

    .line 1348
    :pswitch_e
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->toggleWifi()V

    goto :goto_1

    .line 1351
    :pswitch_f
    invoke-direct {p0}, Lmiui/app/ToggleManager;->togglePowerMode()V

    goto :goto_1

    .line 1354
    :pswitch_10
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleBatterySaverToggle()V

    goto :goto_1

    .line 1357
    :pswitch_11
    sget-object v1, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    if-eqz v1, :cond_0

    .line 1358
    sget-object v1, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    invoke-virtual {v1}, Lmiui/app/WifiApEnabler;->toggleWifiAp()V

    goto :goto_1

    .line 1362
    :pswitch_12
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleQuietMode()V

    goto :goto_1

    .line 1365
    :pswitch_13
    invoke-direct {p0}, Lmiui/app/ToggleManager;->togglePaperMode()V

    goto :goto_1

    .line 1368
    :pswitch_14
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleMiDrop()V

    goto :goto_1

    .line 1371
    :pswitch_15
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->toggleCast()V

    .line 1372
    const/4 v0, 0x1

    .line 1373
    goto :goto_1

    .line 1375
    :pswitch_16
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleEdit()V

    .line 1376
    const/4 v0, 0x1

    .line 1377
    goto :goto_1

    .line 1305
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_d
        :pswitch_5
        :pswitch_b
        :pswitch_4
        :pswitch_6
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_f
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_10
    .end packed-switch
.end method

.method public removeToggleChangedListener(Lmiui/app/ToggleManager$OnToggleChangedListener;)V
    .locals 3
    .param p1, "l"    # Lmiui/app/ToggleManager$OnToggleChangedListener;

    .prologue
    .line 919
    iget-object v2, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 920
    iget-object v2, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 921
    .local v1, "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/app/ToggleManager$OnToggleChangedListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 922
    :cond_0
    iget-object v2, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 919
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 918
    .end local v1    # "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/app/ToggleManager$OnToggleChangedListener;>;"
    :cond_2
    return-void
.end method

.method public removeToggleOrderChangeListener(Lmiui/app/ToggleManager$OnToggleOrderChangedListener;)V
    .locals 1
    .param p1, "l"    # Lmiui/app/ToggleManager$OnToggleOrderChangedListener;

    .prologue
    .line 928
    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 927
    return-void
.end method

.method public setOnToggleChangedListener(Lmiui/app/ToggleManager$OnToggleChangedListener;)V
    .locals 2
    .param p1, "l"    # Lmiui/app/ToggleManager$OnToggleChangedListener;

    .prologue
    .line 911
    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 910
    return-void
.end method

.method public setOnToggleOrderChangeListener(Lmiui/app/ToggleManager$OnToggleOrderChangedListener;)V
    .locals 1
    .param p1, "l"    # Lmiui/app/ToggleManager$OnToggleOrderChangedListener;

    .prologue
    .line 915
    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 914
    return-void
.end method

.method public setUserSelectedToggleOrder(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 667
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lmiui/app/ToggleManager;->setUserSelectedToggleOrderStatic(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 666
    return-void
.end method

.method public startLongClickAction(I)Z
    .locals 9
    .param p1, "id"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 1038
    const/16 v5, 0x12

    if-ne v5, p1, :cond_0

    .line 1039
    invoke-direct {p0}, Lmiui/app/ToggleManager;->longClickScreenshot()Z

    move-result v5

    return v5

    .line 1042
    :cond_0
    if-ne v8, p1, :cond_2

    invoke-static {p1}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v5

    if-eqz v5, :cond_2

    .line 1043
    :cond_1
    return v6

    .line 1046
    :cond_2
    sget-object v5, Lmiui/app/ToggleManager;->sLongClickActions:[I

    aget v4, v5, p1

    .line 1047
    .local v4, "resId":I
    if-nez v4, :cond_3

    .line 1048
    return v6

    .line 1051
    :cond_3
    iget-object v5, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1052
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_4

    .line 1053
    return v6

    .line 1056
    :cond_4
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1057
    .local v1, "component":Landroid/content/ComponentName;
    if-nez v1, :cond_5

    .line 1058
    return v6

    .line 1061
    :cond_5
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1062
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1063
    if-ne v8, p1, :cond_6

    .line 1065
    const-string/jumbo v5, ":miui:starting_window_label"

    const-string/jumbo v6, ""

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1068
    :cond_6
    const/high16 v5, 0x14000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1071
    :try_start_0
    iget-object v5, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1075
    :goto_0
    return v8

    .line 1072
    :catch_0
    move-exception v2

    .line 1073
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "ToggleManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "start activity exception, component = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method toggleCast()V
    .locals 4

    .prologue
    .line 1386
    :try_start_0
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lmiui/app/ToggleManager;->getCastIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1384
    :goto_0
    return-void

    .line 1387
    :catch_0
    move-exception v0

    .line 1388
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method toggleWifi()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1401
    const/16 v3, 0xf

    invoke-static {v3}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1402
    sget-object v3, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 1403
    .local v0, "currentWifiState":I
    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v1, 0x1

    .line 1405
    .local v1, "enable":Z
    :goto_0
    sget-object v3, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    .line 1406
    .local v2, "wifiApState":I
    if-eqz v1, :cond_0

    sget-object v3, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v3}, Lmiui/app/ConnectivityManagerReflector;->getWifiStaSapConcurrency(Landroid/net/wifi/WifiManager;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1413
    :cond_0
    :goto_1
    iget-object v3, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1414
    iget-object v6, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    if-eqz v1, :cond_5

    move v3, v4

    :goto_2
    invoke-virtual {v6, v4, v3, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1400
    .end local v0    # "currentWifiState":I
    .end local v1    # "enable":Z
    .end local v2    # "wifiApState":I
    :cond_1
    return-void

    .line 1403
    .restart local v0    # "currentWifiState":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "enable":Z
    goto :goto_0

    .line 1407
    .restart local v2    # "wifiApState":I
    :cond_3
    const/16 v3, 0xc

    if-eq v2, v3, :cond_4

    .line 1408
    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 1409
    :cond_4
    sget-object v3, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    if-eqz v3, :cond_0

    .line 1410
    sget-object v3, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    invoke-virtual {v3, v5}, Lmiui/app/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_1

    :cond_5
    move v3, v5

    .line 1414
    goto :goto_2
.end method

.method public updateAllToggles(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 543
    sput p1, Lmiui/app/ToggleManager;->sCurrentUserId:I

    .line 544
    invoke-direct {p0}, Lmiui/app/ToggleManager;->queryBrightnessStatus()V

    .line 545
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateBluetoothToggle()V

    .line 546
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->updateRingerToggle()V

    .line 547
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/app/ToggleManager;->updateWifiToggle(Landroid/content/Intent;)V

    .line 548
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateSyncToggle()V

    .line 549
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateAccelerometerToggle()V

    .line 550
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateFlightModeToggle()V

    .line 551
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateGpsToggle()V

    .line 552
    iget-object v0, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnableObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 553
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateBrightnessToggle()V

    .line 554
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateScreenButtonState()V

    .line 555
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateTorchToggle()V

    .line 556
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->updateVibrateToggle()V

    .line 557
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updatePowerModeToggle()V

    .line 558
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateBatterySaverToggle()V

    .line 559
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateQuietModeToggle()V

    .line 560
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updatePaperModeToggle()V

    .line 561
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateMiDropToggle()V

    .line 542
    return-void
.end method

.method updateMiDropToggle(Z)V
    .locals 6
    .param p1, "updateWifiAp"    # Z

    .prologue
    const/16 v5, 0x1b

    .line 2032
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmiui/app/ToggleManager;->useWifiApForMiDrop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2033
    sget-object v2, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lmiui/app/WifiApEnabler;->updateWifiApToggle(Z)V

    .line 2035
    :cond_0
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->isDisplayMiDropOn()Z

    move-result v0

    .line 2036
    .local v0, "isMiDropOn":Z
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->useWifiApForMiDrop()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    invoke-virtual {v2}, Lmiui/app/WifiApEnabler;->isWifiApDisabled()Z

    move-result v1

    .line 2037
    :goto_0
    const-string/jumbo v2, "ToggleManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MiDrop: updateMiDropToggle(boolean) isMiDropOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2038
    const-string/jumbo v4, " isWifiApDisabled = "

    .line 2037
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2038
    const-string/jumbo v4, " mMiDropChanging = "

    .line 2037
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2038
    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mMiDropChanging:Z

    .line 2037
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2038
    const-string/jumbo v4, " mWifiChanging = "

    .line 2037
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2038
    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mWifiChanging:Z

    .line 2037
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    if-nez v1, :cond_2

    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mMiDropChanging:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mWifiChanging:Z

    :goto_1
    invoke-virtual {p0, v5, v2}, Lmiui/app/ToggleManager;->updateToggleDisabled(IZ)V

    .line 2040
    invoke-virtual {p0, v5, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 2041
    if-eqz v0, :cond_3

    .line 2042
    const v2, 0x110200b2

    .line 2041
    :goto_2
    invoke-virtual {p0, v5, v2}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 2031
    return-void

    .line 2036
    :cond_1
    const/4 v1, 0x0

    .local v1, "isWifiApDisabled":Z
    goto :goto_0

    .line 2039
    .end local v1    # "isWifiApDisabled":Z
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .line 2043
    :cond_3
    const v2, 0x110200b1

    goto :goto_2
.end method

.method public updateRingerToggle()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 1765
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lmiui/app/ToggleManager;->mZenMode:I

    .line 1766
    sget-boolean v1, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v1, :cond_1

    .line 1767
    iget v1, p0, Lmiui/app/ToggleManager;->mZenMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1769
    .local v0, "silentEnabled":Z
    :goto_0
    invoke-virtual {p0, v3, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1770
    if-eqz v0, :cond_2

    .line 1771
    const v1, 0x110200b4

    .line 1770
    :goto_1
    invoke-virtual {p0, v3, v1}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1764
    return-void

    .line 1767
    .end local v0    # "silentEnabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1768
    :cond_1
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/util/AudioManagerHelper;->isSilentEnabled(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 1772
    .restart local v0    # "silentEnabled":Z
    :cond_2
    const v1, 0x110200b3

    goto :goto_1
.end method

.method protected updateToggleDisabled(IZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "disabled"    # Z

    .prologue
    .line 980
    sget-object v0, Lmiui/app/ToggleManager;->sToggleDisabled:[Z

    aput-boolean p2, v0, p1

    .line 979
    return-void
.end method

.method protected updateToggleImage(II)V
    .locals 6
    .param p1, "toggleId"    # I
    .param p2, "resId"    # I

    .prologue
    .line 1286
    sget-object v3, Lmiui/app/ToggleManager;->sToggleImages:[I

    aput p2, v3, p1

    .line 1288
    iget-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1289
    iget-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1290
    iget-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1291
    .local v1, "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/app/ToggleManager$OnToggleChangedListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/ToggleManager$OnToggleChangedListener;

    .line 1292
    .local v2, "l":Lmiui/app/ToggleManager$OnToggleChangedListener;
    if-nez v2, :cond_0

    .line 1293
    const-string/jumbo v3, "ToggleManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "listener is null:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    iget-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1289
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1296
    :cond_0
    invoke-interface {v2, p1}, Lmiui/app/ToggleManager$OnToggleChangedListener;->OnToggleChanged(I)V

    goto :goto_1

    .line 1285
    .end local v0    # "i":I
    .end local v1    # "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/app/ToggleManager$OnToggleChangedListener;>;"
    .end local v2    # "l":Lmiui/app/ToggleManager$OnToggleChangedListener;
    :cond_1
    return-void
.end method

.method protected updateToggleStatus(IZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "isOpen"    # Z

    .prologue
    .line 976
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStatus:[Z

    aput-boolean p2, v0, p1

    .line 975
    return-void
.end method

.method protected updateToggleStatusName(ILjava/lang/Object;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "statusName"    # Ljava/lang/Object;

    .prologue
    .line 984
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStatusNames:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    return-void
.end method

.method public updateVibrateToggle()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 1796
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 1797
    .local v0, "isVibrateEnabled":Z
    invoke-virtual {p0, v2, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1798
    if-eqz v0, :cond_0

    .line 1799
    const v1, 0x110200cc

    .line 1798
    :goto_0
    invoke-virtual {p0, v2, v1}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1795
    return-void

    .line 1800
    :cond_0
    const v1, 0x110200cb

    goto :goto_0
.end method

.method updateWifiToggle(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x2

    const/16 v10, 0xf

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1423
    const/4 v3, -0x1

    .line 1424
    .local v3, "wifiState":I
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1425
    .local v0, "action":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_0

    .line 1426
    const-string/jumbo v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1427
    const-string/jumbo v4, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1428
    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    .line 1429
    if-ne v3, v11, :cond_3

    move v4, v5

    .line 1428
    :goto_1
    iput-boolean v4, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    .line 1430
    if-eq v3, v11, :cond_4

    .line 1431
    if-nez v3, :cond_5

    move v4, v5

    .line 1430
    :goto_2
    iput-boolean v4, p0, Lmiui/app/ToggleManager;->mWifiChanging:Z

    .line 1432
    invoke-virtual {p0, v6}, Lmiui/app/ToggleManager;->updateMiDropToggle(Z)V

    .line 1456
    :cond_0
    :goto_3
    const-string/jumbo v4, "ToggleManager"

    const-string/jumbo v7, "updateWifiToggle wifiState=%d mWifiConnected=%b action=%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 1457
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    iget-boolean v6, p0, Lmiui/app/ToggleManager;->mWifiConnected:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v8, v5

    aput-object v0, v8, v11

    .line 1456
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    iget-object v4, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    if-nez v4, :cond_b

    iget-object v4, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1109000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_4
    invoke-virtual {p0, v10, v4}, Lmiui/app/ToggleManager;->updateToggleStatusName(ILjava/lang/Object;)V

    .line 1459
    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    invoke-virtual {p0, v10, v4}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1460
    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mWifiChanging:Z

    invoke-virtual {p0, v10, v4}, Lmiui/app/ToggleManager;->updateToggleDisabled(IZ)V

    .line 1462
    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    if-eqz v4, :cond_c

    .line 1463
    const v4, 0x110200d0

    .line 1461
    :goto_5
    invoke-virtual {p0, v10, v4}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1422
    return-void

    .line 1424
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, ""

    .restart local v0    # "action":Ljava/lang/String;
    goto :goto_0

    :cond_2
    move v4, v5

    .line 1428
    goto :goto_1

    :cond_3
    move v4, v6

    .line 1429
    goto :goto_1

    :cond_4
    move v4, v5

    .line 1430
    goto :goto_2

    :cond_5
    move v4, v6

    .line 1431
    goto :goto_2

    .line 1433
    :cond_6
    const-string/jumbo v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1435
    const-string/jumbo v4, "networkInfo"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 1436
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    :goto_6
    iput-boolean v4, p0, Lmiui/app/ToggleManager;->mWifiConnected:Z

    .line 1437
    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mWifiConnected:Z

    if-eqz v4, :cond_a

    .line 1439
    const-string/jumbo v4, "wifiInfo"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiInfo;

    .line 1440
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_7

    .line 1441
    sget-object v4, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1443
    :cond_7
    if-eqz v1, :cond_9

    .line 1444
    invoke-direct {p0, v1}, Lmiui/app/ToggleManager;->huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lmiui/app/ToggleManager;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    .line 1448
    :goto_7
    iput-boolean v5, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    .line 1449
    iput-boolean v6, p0, Lmiui/app/ToggleManager;->mWifiChanging:Z

    goto/16 :goto_3

    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_8
    move v4, v6

    .line 1436
    goto :goto_6

    .line 1446
    .restart local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_9
    iput-object v7, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    goto :goto_7

    .line 1451
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_a
    iput-object v7, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    goto/16 :goto_3

    .line 1458
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_b
    iget-object v4, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    goto :goto_4

    .line 1464
    :cond_c
    const v4, 0x110200cf

    goto :goto_5
.end method

.method useWifiApForMiDrop()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1995
    sget-boolean v2, Lmiui/app/ToggleManager;->sHasMiDrop:Z

    if-nez v2, :cond_0

    .line 1997
    :try_start_0
    iget-object v2, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.xiaomi.midrop"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    sput-boolean v2, Lmiui/app/ToggleManager;->sHasMiDrop:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2001
    :cond_0
    :goto_1
    sget-object v2, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    if-eqz v2, :cond_1

    sget-boolean v1, Lmiui/app/ToggleManager;->sHasMiDrop:Z

    :cond_1
    return v1

    :cond_2
    move v2, v1

    .line 1997
    goto :goto_0

    .line 1998
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1
.end method
