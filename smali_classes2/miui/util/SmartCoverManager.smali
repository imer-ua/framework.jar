.class public Lmiui/util/SmartCoverManager;
.super Ljava/lang/Object;
.source "SmartCoverManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/SmartCoverManager$PowerManagerWrapper;
    }
.end annotation


# static fields
.field private static final ACTION_SMART_COVER_GUIDE:Ljava/lang/String; = "miui.intent.action.SMART_COVER_GUIDE"

.field private static final EXCEPTION:Ljava/lang/String; = "exception"

.field private static final IS_D4:Z

.field private static final LID_CLOSE_SCREEN_OFF_TIMEOUT_VALUE:I = 0x3a98

.field private static final LID_SWITCH_OPEN:Ljava/lang/String; = "lid switch open"

.field private static final MULTI:Z

.field private static final POWER:Ljava/lang/String; = "power"

.field private static final SETTINGS_PKG:Ljava/lang/String; = "com.android.settings"

.field private static final SMART_COVER_GUIDE_ACTIVITY:Ljava/lang/String; = "com.android.settings.MiuiSmartCoverGuideActivity"

.field private static final SMART_COVER_LID_OPEN:Ljava/lang/String; = "mSmartCoverLidOpen="

.field private static final SMART_COVER_MODE:Ljava/lang/String; = "mSmartCoverMode="

.field private static final SUPPORT_MULTIPLE_SMALL_WIN_COVER:Ljava/lang/String; = "support_multiple_small_win_cover"

.field private static final TAG:Ljava/lang/String; = "SmartCoverManager"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mNeedResetTimeout:Z

.field private mPowerManagerWrapper:Lmiui/util/SmartCoverManager$PowerManagerWrapper;

.field private mSmartCoverLidOpen:Z

.field private mSmartCoverMode:I


# direct methods
.method static synthetic -get0(Lmiui/util/SmartCoverManager;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/util/SmartCoverManager;)I
    .locals 1

    iget v0, p0, Lmiui/util/SmartCoverManager;->mCurrentUserId:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-string/jumbo v0, "support_multiple_small_win_cover"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/util/SmartCoverManager;->MULTI:Z

    .line 43
    const-string/jumbo v0, "oxygen"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "oxygen"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    sput-boolean v0, Lmiui/util/SmartCoverManager;->IS_D4:Z

    .line 28
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/util/SmartCoverManager;->mSmartCoverLidOpen:Z

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/util/SmartCoverManager;->mNeedResetTimeout:Z

    .line 28
    return-void
.end method

.method private checkSmartCoverEnable()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 181
    const-string/jumbo v0, "persist.sys.smartcover_mode"

    .line 182
    const/4 v1, -0x1

    .line 181
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/util/SmartCoverManager;->mSmartCoverMode:I

    .line 183
    iget v0, p0, Lmiui/util/SmartCoverManager;->mSmartCoverMode:I

    if-nez v0, :cond_0

    .line 184
    iput-boolean v3, p0, Lmiui/util/SmartCoverManager;->mSmartCoverLidOpen:Z

    .line 185
    return v2

    .line 187
    :cond_0
    return v3
.end method

.method public static deviceDisableKeysWhenLidClose()Z
    .locals 4

    .prologue
    .line 243
    const/4 v0, 0x1

    .line 244
    .local v0, "disable":Z
    sget-boolean v1, Lmiui/util/SmartCoverManager;->IS_D4:Z

    if-eqz v1, :cond_0

    .line 245
    const/4 v0, 0x0

    .line 246
    const-string/jumbo v1, "SmartCoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not disable keys when LidClose."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    return v0
.end method

.method private enableInSmallWinMode(Z)Z
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 171
    iget v1, p0, Lmiui/util/SmartCoverManager;->mSmartCoverMode:I

    const/4 v2, 0x2

    if-gt v2, v1, :cond_0

    const/4 v0, 0x1

    .line 172
    .local v0, "supportSmallWinMode":Z
    :goto_0
    iget-object v1, p0, Lmiui/util/SmartCoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 173
    const-string/jumbo v3, "is_small_window"

    if-eqz p1, :cond_1

    move v1, v0

    :goto_1
    iget v4, p0, Lmiui/util/SmartCoverManager;->mCurrentUserId:I

    .line 172
    invoke-static {v2, v3, v1, v4}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 174
    return v0

    .line 171
    .end local v0    # "supportSmallWinMode":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "supportSmallWinMode":Z
    goto :goto_0

    .line 173
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private guideSmartCoverSettingIfNeeded(Z)V
    .locals 6
    .param p1, "smartCoverEnable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 112
    if-nez p1, :cond_1

    sget-boolean v1, Lmiui/util/SmartCoverManager;->MULTI:Z

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 116
    const-string/jumbo v2, "smart_cover_key"

    const/4 v3, 0x1

    .line 115
    invoke-static {v1, v2, v3, v4}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v0

    .line 117
    .local v0, "first":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiui/util/SmartCoverManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/util/SmartCoverManager;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 119
    const-string/jumbo v2, "smart_cover_key"

    .line 118
    invoke-static {v1, v2, v4, v4}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 121
    iget-object v1, p0, Lmiui/util/SmartCoverManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "miui.intent.action.SMART_COVER_GUIDE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    new-instance v3, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "com.android.settings.MiuiSmartCoverGuideActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 123
    const/high16 v3, 0x10000000

    .line 121
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 111
    :cond_0
    return-void

    .line 113
    .end local v0    # "first":Z
    :cond_1
    return-void
.end method

.method private handleLidSwitchChanged(ZZ)V
    .locals 4
    .param p1, "lidOpen"    # Z
    .param p2, "systemBooted"    # Z

    .prologue
    const/4 v0, 0x1

    .line 191
    iput-boolean p1, p0, Lmiui/util/SmartCoverManager;->mSmartCoverLidOpen:Z

    .line 192
    if-nez p1, :cond_0

    .line 193
    invoke-direct {p0, v0}, Lmiui/util/SmartCoverManager;->setScreenOffByLid(Z)V

    .line 196
    :cond_0
    if-eqz p2, :cond_1

    .line 197
    iget-object v1, p0, Lmiui/util/SmartCoverManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "miui.intent.action.SMART_COVER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    const-string/jumbo v3, "is_smart_cover_open"

    .line 197
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 198
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 197
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 201
    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :cond_2
    invoke-direct {p0, v0}, Lmiui/util/SmartCoverManager;->enableInSmallWinMode(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    if-nez p1, :cond_4

    .line 203
    iget-object v0, p0, Lmiui/util/SmartCoverManager;->mPowerManagerWrapper:Lmiui/util/SmartCoverManager$PowerManagerWrapper;

    invoke-virtual {v0}, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->goToSleep()V

    .line 209
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lmiui/util/SmartCoverManager;->updateScreenOffTimeoutIfNeeded(Z)V

    .line 190
    return-void

    .line 205
    :cond_4
    iget-object v0, p0, Lmiui/util/SmartCoverManager;->mPowerManagerWrapper:Lmiui/util/SmartCoverManager$PowerManagerWrapper;

    invoke-virtual {v0}, Lmiui/util/SmartCoverManager$PowerManagerWrapper;->wakeUp()V

    goto :goto_0
.end method

.method private static isDeviceProvisioned(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_provisioned"

    .line 128
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setScreenOffByLid(Z)V
    .locals 5
    .param p1, "byLid"    # Z

    .prologue
    .line 234
    if-eqz p1, :cond_0

    const-string/jumbo v1, "true"

    .line 236
    .local v1, "value":Ljava/lang/String;
    :goto_0
    :try_start_0
    const-string/jumbo v2, "sys.keyguard.screen_off_by_lid"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_1
    return-void

    .line 234
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "false"

    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "SmartCoverManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Set screen off by lid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private triggerScreenOffTimeout(Z)V
    .locals 4
    .param p1, "change"    # Z

    .prologue
    .line 226
    iget-object v1, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "screen_off_timeout"

    .line 227
    if-eqz p1, :cond_0

    const/16 v0, 0x3a98

    .line 226
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 228
    iput-boolean p1, p0, Lmiui/util/SmartCoverManager;->mNeedResetTimeout:Z

    .line 229
    iget-object v0, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 230
    const-string/jumbo v1, "need_reset_screen_off_timeout"

    iget-boolean v2, p0, Lmiui/util/SmartCoverManager;->mNeedResetTimeout:Z

    const/4 v3, -0x2

    .line 229
    invoke-static {v0, v1, v2, v3}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 225
    return-void

    .line 227
    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method private updateScreenOffTimeoutIfNeeded(Z)V
    .locals 8
    .param p1, "lidOpen"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 216
    iget-object v3, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 217
    const-string/jumbo v4, "screen_off_timeout"

    const-wide/16 v6, 0x3a98

    .line 216
    invoke-static {v3, v4, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v3, v6, v4

    if-nez v3, :cond_2

    move v0, v1

    .line 218
    .local v0, "isNeverTurnOff":Z
    :goto_0
    if-eqz v0, :cond_0

    if-eqz p1, :cond_3

    .line 220
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lmiui/util/SmartCoverManager;->mNeedResetTimeout:Z

    if-eqz v1, :cond_1

    .line 221
    invoke-direct {p0, v2}, Lmiui/util/SmartCoverManager;->triggerScreenOffTimeout(Z)V

    .line 215
    :cond_1
    :goto_1
    return-void

    .end local v0    # "isNeverTurnOff":Z
    :cond_2
    move v0, v2

    .line 216
    goto :goto_0

    .line 219
    .restart local v0    # "isNeverTurnOff":Z
    :cond_3
    invoke-direct {p0, v1}, Lmiui/util/SmartCoverManager;->triggerScreenOffTimeout(Z)V

    goto :goto_1
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 162
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSmartCoverLidOpen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lmiui/util/SmartCoverManager;->mSmartCoverLidOpen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 163
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSmartCoverMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lmiui/util/SmartCoverManager;->mSmartCoverMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 161
    return-void
.end method

.method public enableLidAfterBoot(I)Z
    .locals 7
    .param p1, "lidState"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v6, -0x2

    const/4 v3, 0x0

    .line 65
    invoke-direct {p0}, Lmiui/util/SmartCoverManager;->checkSmartCoverEnable()Z

    .line 67
    iget v2, p0, Lmiui/util/SmartCoverManager;->mSmartCoverMode:I

    const/4 v5, -0x1

    if-ne v5, v2, :cond_0

    .line 68
    sget-boolean v2, Lmiui/util/SmartCoverManager;->MULTI:Z

    if-eqz v2, :cond_3

    move v2, v3

    :goto_0
    invoke-static {v2}, Landroid/provider/MiuiSettings$System;->setSmartCoverMode(Z)V

    .line 71
    :cond_0
    const/4 v0, 0x0

    .line 72
    .local v0, "inSmallWinMode":Z
    iget v2, p0, Lmiui/util/SmartCoverManager;->mSmartCoverMode:I

    const/4 v5, 0x2

    if-gt v5, v2, :cond_4

    move v1, v4

    .line 73
    .local v1, "setSmallWinMode":Z
    :goto_1
    if-eqz v1, :cond_1

    .line 74
    if-nez p1, :cond_5

    const/4 v0, 0x1

    .line 76
    :cond_1
    :goto_2
    invoke-direct {p0, v0}, Lmiui/util/SmartCoverManager;->enableInSmallWinMode(Z)Z

    .line 79
    iget-object v2, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 80
    const-string/jumbo v4, "need_reset_screen_off_timeout"

    .line 79
    invoke-static {v2, v4, v3, v6}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    iget-object v2, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "screen_off_timeout"

    const v5, 0x7fffffff

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 82
    iget-object v2, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 83
    const-string/jumbo v4, "need_reset_screen_off_timeout"

    .line 82
    invoke-static {v2, v4, v3, v6}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 86
    :cond_2
    return v1

    .end local v0    # "inSmallWinMode":Z
    .end local v1    # "setSmallWinMode":Z
    :cond_3
    move v2, v4

    .line 68
    goto :goto_0

    .restart local v0    # "inSmallWinMode":Z
    :cond_4
    move v1, v3

    .line 72
    goto :goto_1

    .line 74
    .restart local v1    # "setSmallWinMode":Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public getSmartCoverLidOpen()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lmiui/util/SmartCoverManager;->mSmartCoverLidOpen:Z

    return v0
.end method

.method public getSmartCoverMode()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lmiui/util/SmartCoverManager;->mSmartCoverMode:I

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/os/PowerManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "powerManager"    # Landroid/os/PowerManager;

    .prologue
    .line 54
    iput-object p1, p0, Lmiui/util/SmartCoverManager;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/SmartCoverManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 56
    new-instance v0, Lmiui/util/SmartCoverManager$PowerManagerWrapper;

    invoke-direct {v0, p0, p2}, Lmiui/util/SmartCoverManager$PowerManagerWrapper;-><init>(Lmiui/util/SmartCoverManager;Landroid/os/PowerManager;)V

    iput-object v0, p0, Lmiui/util/SmartCoverManager;->mPowerManagerWrapper:Lmiui/util/SmartCoverManager$PowerManagerWrapper;

    .line 57
    invoke-direct {p0}, Lmiui/util/SmartCoverManager;->checkSmartCoverEnable()Z

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/SmartCoverManager;->mCurrentUserId:I

    .line 53
    return-void
.end method

.method public notifyLidSwitchChanged(ZZ)Z
    .locals 2
    .param p1, "lidOpen"    # Z
    .param p2, "systemBooted"    # Z

    .prologue
    .line 93
    invoke-direct {p0}, Lmiui/util/SmartCoverManager;->checkSmartCoverEnable()Z

    move-result v0

    .line 94
    .local v0, "smartCoverEnable":Z
    invoke-direct {p0, v0}, Lmiui/util/SmartCoverManager;->guideSmartCoverSettingIfNeeded(Z)V

    .line 96
    if-nez v0, :cond_0

    .line 97
    const/4 v1, 0x0

    return v1

    .line 100
    :cond_0
    invoke-direct {p0, p1, p2}, Lmiui/util/SmartCoverManager;->handleLidSwitchChanged(ZZ)V

    .line 101
    const/4 v1, 0x1

    return v1
.end method

.method public notifyScreenTurningOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 136
    iget-boolean v1, p0, Lmiui/util/SmartCoverManager;->mSmartCoverLidOpen:Z

    if-eqz v1, :cond_0

    .line 137
    invoke-direct {p0, v0}, Lmiui/util/SmartCoverManager;->setScreenOffByLid(Z)V

    .line 139
    :cond_0
    iget-boolean v1, p0, Lmiui/util/SmartCoverManager;->mSmartCoverLidOpen:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lmiui/util/SmartCoverManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lmiui/util/SmartCoverManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$System;->isInSmallWindowMode(Landroid/content/Context;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public onUserSwitch(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 154
    iget v0, p0, Lmiui/util/SmartCoverManager;->mCurrentUserId:I

    if-ne v0, p1, :cond_0

    .line 155
    return-void

    .line 157
    :cond_0
    iput p1, p0, Lmiui/util/SmartCoverManager;->mCurrentUserId:I

    .line 158
    iget-boolean v0, p0, Lmiui/util/SmartCoverManager;->mSmartCoverLidOpen:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lmiui/util/SmartCoverManager;->enableInSmallWinMode(Z)Z

    .line 153
    return-void

    .line 158
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
