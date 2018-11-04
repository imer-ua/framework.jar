.class public Landroid/app/ExtraNotificationManager;
.super Ljava/lang/Object;
.source "ExtraNotificationManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyRestriction(ZILandroid/app/AppOpsManager;[Ljava/lang/String;)V
    .locals 4
    .param p0, "allow"    # Z
    .param p1, "usage"    # I
    .param p2, "appOps"    # Landroid/app/AppOpsManager;
    .param p3, "exception"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 358
    if-eqz p0, :cond_0

    move v0, v1

    .line 357
    :goto_0
    const/16 v3, 0x1c

    invoke-virtual {p2, v3, p1, v0, p3}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 361
    if-eqz p0, :cond_1

    .line 360
    :goto_1
    const/4 v0, 0x3

    invoke-virtual {p2, v0, p1, v1, p3}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 356
    return-void

    :cond_0
    move v0, v2

    .line 358
    goto :goto_0

    :cond_1
    move v1, v2

    .line 361
    goto :goto_1
.end method

.method public static enableVIPMode(Landroid/content/Context;ZI)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x0

    .line 232
    const-string/jumbo v2, "SilenceMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enableVIPMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 234
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenMode(Landroid/content/Context;)I

    move-result v1

    .line 236
    .local v1, "mode":I
    iput-boolean p1, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 237
    iput-boolean p1, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 238
    iput-boolean v5, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 240
    if-nez p1, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 241
    const/4 v2, 0x2

    invoke-static {v6, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 246
    :goto_0
    invoke-static {p0, v0}, Landroid/app/ExtraNotificationManager;->setZenModeConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)Z

    .line 231
    return-void

    .line 243
    :cond_0
    invoke-static {v6, v5}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto :goto_0
.end method

.method public static getConditionId(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 284
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 285
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-nez v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static getRemainTime(Landroid/content/Context;)J
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    .line 295
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getConditionId(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v4

    .line 294
    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 296
    .local v0, "countDownTime":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    :goto_0
    return-wide v2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    goto :goto_0
.end method

.method public static getZenMode(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    return v0
.end method

.method public static getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    return-object v0
.end method

.method public static isQuietModeEnable(Landroid/content/Context;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 190
    sget-boolean v3, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v3, :cond_0

    return v2

    .line 192
    :cond_0
    invoke-static {}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserCalling()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 193
    const/16 v0, 0x3e7

    .line 195
    .local v0, "userHandle":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 196
    const-string/jumbo v4, "quiet_mode_enable"

    .line 195
    invoke-static {v3, v4, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_2

    :goto_1
    return v1

    .line 193
    .end local v0    # "userHandle":I
    :cond_1
    move v0, p1

    .restart local v0    # "userHandle":I
    goto :goto_0

    :cond_2
    move v1, v2

    .line 195
    goto :goto_1
.end method

.method public static isRepeatedCallEnable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 207
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    return v0
.end method

.method public static isSilenceModeEnable(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 274
    invoke-static {}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserCalling()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 275
    const/16 v0, 0x3e7

    .line 277
    .local v0, "userHandle":I
    :goto_0
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenMode(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 275
    .end local v0    # "userHandle":I
    :cond_1
    move v0, p1

    .restart local v0    # "userHandle":I
    goto :goto_0
.end method

.method public static isVIPModeEnable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 267
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    return v0
.end method

.method public static setQuietMode(Landroid/content/Context;ZI)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0x3e7

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 155
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenMode(Landroid/content/Context;)I

    move-result v0

    .line 156
    .local v0, "preMode":I
    if-eqz p1, :cond_1

    .line 157
    if-nez v0, :cond_0

    .line 158
    invoke-static {p0, v4, v1}, Landroid/app/ExtraNotificationManager;->setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 160
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 161
    const-string/jumbo v2, "quiet_mode_enable"

    .line 160
    invoke-static {v1, v2, v4, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 165
    const-string/jumbo v2, "quiet_mode_enable"

    .line 164
    invoke-static {v1, v2, v4, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 154
    :goto_0
    return-void

    .line 168
    :cond_1
    if-ne v0, v4, :cond_2

    .line 169
    invoke-static {p0, v3, v1}, Landroid/app/ExtraNotificationManager;->setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 171
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 172
    const-string/jumbo v2, "quiet_mode_enable"

    .line 171
    invoke-static {v1, v2, v3, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 176
    const-string/jumbo v2, "quiet_mode_enable"

    .line 175
    invoke-static {v1, v2, v3, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method public static setRepeatedCallEnable(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 218
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 219
    .local v0, "newConfig":Landroid/service/notification/ZenModeConfig;
    iput-boolean p1, v0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 220
    invoke-static {p0, v0}, Landroid/app/ExtraNotificationManager;->setZenModeConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)Z

    .line 217
    return-void
.end method

.method public static setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 259
    const-string/jumbo v0, "SilenceMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSilenceMode mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-static {p0, p1, p2}, Landroid/app/ExtraNotificationManager;->setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 257
    return-void
.end method

.method public static setZenMode(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 58
    sget-boolean v2, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-nez v2, :cond_0

    .line 59
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2, p1, v3, v3}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 60
    return-void

    .line 65
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 66
    const-string/jumbo v3, "vibrate_in_silent"

    .line 67
    const/4 v4, -0x2

    .line 64
    invoke-static {v2, v3, v6, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_4

    const/4 v8, 0x1

    .line 68
    .local v8, "isVibrateInSilent":Z
    :goto_0
    const-string/jumbo v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioManager;

    .line 69
    .local v9, "manager":Landroid/media/AudioManager;
    const/4 v2, 0x2

    invoke-virtual {v9, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 70
    const/4 v2, 0x4

    invoke-virtual {v9, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 71
    const/4 v2, 0x3

    invoke-virtual {v9, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 72
    if-ne p1, v6, :cond_1

    .line 69
    if-eqz v8, :cond_1

    .line 74
    const/4 p1, 0x2

    .line 77
    :cond_1
    if-nez p2, :cond_2

    .line 78
    invoke-static {p0}, Landroid/service/notification/Condition;->newId(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "forever"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 80
    .local v1, "foreverId":Landroid/net/Uri;
    new-instance v0, Landroid/service/notification/Condition;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    move v7, v5

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 81
    .local v0, "condition":Landroid/service/notification/Condition;
    iget-object p2, v0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    .line 85
    .end local v0    # "condition":Landroid/service/notification/Condition;
    .end local v1    # "foreverId":Landroid/net/Uri;
    :cond_2
    if-eqz p0, :cond_3

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 87
    .local v10, "pckName":Ljava/lang/String;
    const-string/jumbo v2, "settings"

    invoke-virtual {v10, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 88
    const-string/jumbo v2, "silence_DND"

    .line 89
    sget-object v3, Landroid/provider/MiuiSettings$SilenceMode;->MISTAT_RINGERMODE_LIST:[Ljava/lang/String;

    aget-object v3, v3, p1

    .line 90
    const-string/jumbo v4, "0"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 88
    invoke-static {v2, v3, v4, v6, v7}, Landroid/provider/MiuiSettings$SilenceMode;->reportRingerModeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 95
    .end local v10    # "pckName":Ljava/lang/String;
    :cond_3
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    const-string/jumbo v3, "miui_manual"

    invoke-virtual {v2, p1, p2, v3}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 57
    return-void

    .line 64
    .end local v8    # "isVibrateInSilent":Z
    .end local v9    # "manager":Landroid/media/AudioManager;
    :cond_4
    const/4 v8, 0x0

    .restart local v8    # "isVibrateInSilent":Z
    goto :goto_0
.end method

.method public static setZenModeConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 116
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    .line 118
    .local v0, "policy":Landroid/app/NotificationManager$Policy;
    iget v2, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    .line 119
    .local v2, "priorityCategories":I
    iget-boolean v3, p1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eqz v3, :cond_0

    .line 120
    or-int/lit8 v2, v2, 0x2

    .line 124
    :goto_0
    iget-boolean v3, p1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v3, :cond_1

    .line 125
    or-int/lit8 v2, v2, 0x8

    .line 129
    :goto_1
    iget-boolean v3, p1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v3, :cond_2

    .line 130
    or-int/lit8 v2, v2, 0x4

    .line 134
    :goto_2
    iget-boolean v3, p1, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-eqz v3, :cond_3

    .line 135
    or-int/lit8 v2, v2, 0x10

    .line 140
    :goto_3
    new-instance v1, Landroid/app/NotificationManager$Policy;

    .line 141
    iget v3, p1, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    iget v4, p1, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    iget v5, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 140
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    .line 142
    .end local v0    # "policy":Landroid/app/NotificationManager$Policy;
    .local v1, "policy":Landroid/app/NotificationManager$Policy;
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 143
    const/4 v3, 0x1

    return v3

    .line 122
    .end local v1    # "policy":Landroid/app/NotificationManager$Policy;
    .restart local v0    # "policy":Landroid/app/NotificationManager$Policy;
    :cond_0
    and-int/lit8 v2, v2, -0x3

    goto :goto_0

    .line 127
    :cond_1
    and-int/lit8 v2, v2, -0x9

    goto :goto_1

    .line 132
    :cond_2
    and-int/lit8 v2, v2, -0x5

    goto :goto_2

    .line 137
    :cond_3
    and-int/lit8 v2, v2, -0x11

    goto :goto_3
.end method

.method public static startCountDownSilenceMode(Landroid/content/Context;II)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "time"    # I

    .prologue
    .line 306
    if-nez p2, :cond_0

    .line 307
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/app/ExtraNotificationManager;->setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 308
    return-void

    .line 311
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {p0, p2, v1}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v0

    .line 312
    .local v0, "condition":Landroid/service/notification/Condition;
    iget-object v1, v0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {p0, p1, v1}, Landroid/app/ExtraNotificationManager;->setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 305
    return-void
.end method

.method public static updateRestriction(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 317
    sget-boolean v8, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-nez v8, :cond_0

    return-void

    .line 318
    :cond_0
    const-string/jumbo v8, "appops"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 320
    .local v2, "appOps":Landroid/app/AppOpsManager;
    new-array v4, v10, [Ljava/lang/String;

    const-string/jumbo v8, "com.android.cellbroadcastreceiver"

    aput-object v8, v4, v9

    .line 321
    .local v4, "defaultException":[Ljava/lang/String;
    const/4 v8, 0x4

    new-array v5, v8, [Ljava/lang/String;

    .line 322
    const-string/jumbo v8, "com.android.systemui"

    aput-object v8, v5, v9

    .line 323
    const-string/jumbo v8, "android"

    aput-object v8, v5, v10

    .line 324
    const-string/jumbo v8, "com.android.cellbroadcastreceiver"

    const/4 v9, 0x2

    aput-object v8, v5, v9

    .line 325
    const-string/jumbo v8, "com.android.server.telecom"

    const/4 v9, 0x3

    aput-object v8, v5, v9

    .line 326
    .local v5, "exceptionPackages":[Ljava/lang/String;
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenMode(Landroid/content/Context;)I

    move-result v7

    .line 327
    .local v7, "mode":I
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 328
    .local v3, "config":Landroid/service/notification/ZenModeConfig;
    const/4 v1, 0x1

    .line 329
    .local v1, "allowRingtone":Z
    const/4 v0, 0x1

    .line 330
    .local v0, "allowNotification":Z
    const/4 v6, 0x0

    .line 331
    .local v6, "hasException":Z
    packed-switch v7, :pswitch_data_0

    .line 340
    const/4 v0, 0x1

    .line 341
    const/4 v1, 0x1

    .line 348
    .end local v6    # "hasException":Z
    :goto_0
    if-eqz v6, :cond_2

    move-object v8, v5

    .line 346
    :goto_1
    const/4 v9, 0x6

    .line 344
    invoke-static {v1, v9, v2, v8}, Landroid/app/ExtraNotificationManager;->applyRestriction(ZILandroid/app/AppOpsManager;[Ljava/lang/String;)V

    .line 353
    if-eqz v6, :cond_3

    .line 351
    .end local v5    # "exceptionPackages":[Ljava/lang/String;
    :goto_2
    const/4 v8, 0x5

    .line 349
    invoke-static {v0, v8, v2, v5}, Landroid/app/ExtraNotificationManager;->applyRestriction(ZILandroid/app/AppOpsManager;[Ljava/lang/String;)V

    .line 316
    return-void

    .line 333
    .restart local v5    # "exceptionPackages":[Ljava/lang/String;
    .restart local v6    # "hasException":Z
    :pswitch_0
    const/4 v1, 0x0

    .line 334
    const/4 v0, 0x0

    .line 335
    iget-boolean v8, v3, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v8, :cond_1

    iget-boolean v6, v3, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .local v6, "hasException":Z
    goto :goto_0

    .local v6, "hasException":Z
    :cond_1
    const/4 v6, 0x1

    goto :goto_0

    .end local v6    # "hasException":Z
    :cond_2
    move-object v8, v4

    .line 348
    goto :goto_1

    :cond_3
    move-object v5, v4

    .line 353
    goto :goto_2

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
