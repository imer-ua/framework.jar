.class public final Landroid/provider/MiuiSettings$SilenceMode;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SilenceMode"
.end annotation


# static fields
.field protected static final DEBUG_MODE:Z

.field public static final LASTEST_MODE:Ljava/lang/String; = "default_mode"

.field public static final MISTAT_RINGERMODE_LIST:[Ljava/lang/String;

.field public static final MISTAT_SILENCE_DND:Ljava/lang/String; = "silence_DND"

.field public static final MIUI_ALARMS:I = 0x3

.field public static final MIUI_IMPORTANT_INTERRUPTIONS:I = 0x1

.field public static final MIUI_NO_INTERRUPTIONS:I = 0x2

.field public static final MUTE_MUSIC:Ljava/lang/String; = "mute_music"

.field public static final MUTE_MUSIC_AT_SILENT:Ljava/lang/String; = "mute_music_at_silent"

.field public static final NORMAL:I = 0x0

.field public static final REMAIN_TIME:Ljava/lang/String; = "remain_time"

.field public static final SHOW_NOTIFICATION:Ljava/lang/String; = "show_notification"

.field public static final SILENCE_MODE:Ljava/lang/String; = "zen_mode"

.field private static final TAG:Ljava/lang/String; = "SilenceMode"

.field public static final VIP_ENABLE:Ljava/lang/String; = "vip_enable"

.field public static final VOLUME_MUSIC_BEFORE_MUTE:Ljava/lang/String; = "volume_music_before_mute"

.field public static final ZEN_MODE_MIUI_SILENT:I = 0x4

.field public static final isSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 3222
    const-string/jumbo v0, "SilenceMode.MOD"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->DEBUG_MODE:Z

    .line 3275
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    .line 3276
    const-string/jumbo v0, "support_new_silentmode"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3275
    :goto_0
    sput-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    .line 3285
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 3286
    const-string/jumbo v2, "normal"

    aput-object v2, v0, v1

    .line 3287
    const-string/jumbo v1, "DND"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3288
    const-string/jumbo v1, "null"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 3289
    const-string/jumbo v1, "silence"

    aput-object v1, v0, v3

    .line 3290
    const-string/jumbo v1, "new"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 3285
    sput-object v0, Landroid/provider/MiuiSettings$SilenceMode;->MISTAT_RINGERMODE_LIST:[Ljava/lang/String;

    .line 3212
    return-void

    :cond_0
    move v0, v1

    .line 3275
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableVIPMode(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 3379
    const/4 v0, -0x3

    .line 3378
    invoke-static {p0, p1, v0}, Landroid/app/ExtraNotificationManager;->enableVIPMode(Landroid/content/Context;ZI)V

    .line 3377
    return-void
.end method

.method public static enableVIPMode(Landroid/content/Context;ZI)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 3386
    invoke-static {p0, p1, p2}, Landroid/app/ExtraNotificationManager;->enableVIPMode(Landroid/content/Context;ZI)V

    .line 3385
    return-void
.end method

.method public static getLastestQuietMode(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3325
    const/4 v0, 0x4

    return v0
.end method

.method public static getRemainTime(Landroid/content/Context;)J
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3305
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getRemainTime(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getZenMode(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3346
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenMode(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static isDNDEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 3429
    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSilenceModeEnable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3356
    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-nez v0, :cond_0

    .line 3357
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 3360
    :cond_0
    const/4 v0, -0x3

    .line 3359
    invoke-static {p0, v0}, Landroid/app/ExtraNotificationManager;->isSilenceModeEnable(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static isSilenceModeEnable(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 3367
    invoke-static {p0, p1}, Landroid/app/ExtraNotificationManager;->isSilenceModeEnable(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static isVIPModeEnable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3336
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->isVIPModeEnable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static muteMusicStream(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 3420
    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 3422
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "mute_music"

    const/4 v4, -0x3

    .line 3421
    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 3420
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 3421
    goto :goto_0

    :cond_1
    move v0, v1

    .line 3420
    goto :goto_0
.end method

.method public static reportRingerModeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "time"    # J

    .prologue
    .line 3436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3437
    .local v0, "result":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3438
    const-string/jumbo v1, "mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3439
    const-string/jumbo v1, "params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3440
    const-string/jumbo v1, "time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3442
    sget-boolean v1, Landroid/provider/MiuiSettings$SilenceMode;->DEBUG_MODE:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SilenceMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportRingerModeInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3444
    :cond_0
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v1

    .line 3445
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x4d

    .line 3444
    invoke-virtual {v1, v3, v2}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportSimpleEvent(ILjava/lang/String;)V

    .line 3435
    return-void
.end method

.method public static setRemainTime(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J

    .prologue
    .line 3316
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "remain_time"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 3315
    return-void
.end method

.method public static setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "id"    # Landroid/net/Uri;

    .prologue
    .line 3397
    invoke-static {p0, p1, p2}, Landroid/app/ExtraNotificationManager;->setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 3396
    return-void
.end method

.method public static setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "id"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .prologue
    .line 3404
    invoke-static {p0, p1, p2}, Landroid/app/ExtraNotificationManager;->setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 3403
    return-void
.end method

.method public static showNotification(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 3411
    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 3413
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "show_notification"

    const/4 v4, -0x3

    .line 3412
    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 3411
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 3412
    goto :goto_0

    :cond_1
    move v0, v1

    .line 3411
    goto :goto_0
.end method
