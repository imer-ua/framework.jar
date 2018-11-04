.class public Lmiui/util/AudioManagerHelper;
.super Ljava/lang/Object;
.source "AudioManagerHelper.java"


# static fields
.field public static final FLAG_ONLY_SET_VOLUME:I = 0x100000

.field public static final FLAG_SHOW_UI_WARNINGS:I = 0x400


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHiFiVolume(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 228
    :try_start_0
    const-string/jumbo v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 229
    .local v0, "am":Landroid/media/AudioManager;
    const-string/jumbo v3, "hifi_volume"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "volumeStr":Ljava/lang/String;
    const-string/jumbo v3, "hifi_volume="

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 231
    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v2    # "volumeStr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    return v3
.end method

.method public static getNewValidatedRingerModeForUser(Landroid/content/Context;II)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 177
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 178
    const/4 p1, 0x0

    .line 180
    :cond_0
    return p1
.end method

.method public static getValidatedRingerMode(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    .line 155
    const/4 v0, -0x3

    invoke-static {p0, p1, v0}, Lmiui/util/AudioManagerHelper;->getValidatedRingerModeForUser(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public static getValidatedRingerModeForUser(Landroid/content/Context;II)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "userHandle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 159
    sget-boolean v1, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v1, :cond_0

    .line 160
    invoke-static {p0, p1, p2}, Lmiui/util/AudioManagerHelper;->getNewValidatedRingerModeForUser(Landroid/content/Context;II)I

    move-result v1

    return v1

    .line 162
    :cond_0
    invoke-static {p0, p1, p2}, Lmiui/util/AudioManagerHelper;->isVibrateEnabledForUser(Landroid/content/Context;II)Z

    move-result v0

    .line 163
    .local v0, "vibrate":Z
    if-nez p1, :cond_1

    .line 164
    if-eqz v0, :cond_2

    .line 165
    return v3

    .line 168
    :cond_1
    if-ne v3, p1, :cond_2

    .line 169
    if-nez v0, :cond_2

    .line 170
    return v2

    .line 173
    :cond_2
    return p1
.end method

.method public static isHiFiMode(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 220
    const-string/jumbo v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 221
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    .line 222
    .local v1, "isHeadsetOn":Z
    const-string/jumbo v3, "hifi_mode"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 223
    .local v2, "isHifiModeEnabled":Z
    if-eqz v1, :cond_0

    .end local v2    # "isHifiModeEnabled":Z
    :goto_0
    return v2

    .restart local v2    # "isHifiModeEnabled":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isNewSilentEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v0

    .line 73
    .local v0, "mode":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isNewVibrateEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v0

    .line 89
    .local v0, "mode":I
    invoke-static {p0, v0}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;I)Z

    move-result v1

    return v1
.end method

.method public static isNewVibrateEnabledForUser(Landroid/content/Context;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # I

    .prologue
    .line 105
    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v0

    .line 106
    .local v0, "mode":I
    invoke-static {p0, v0, p1}, Lmiui/util/AudioManagerHelper;->isVibrateEnabledForUser(Landroid/content/Context;II)Z

    move-result v1

    return v1
.end method

.method public static isSilentEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    sget-boolean v1, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v1, :cond_0

    .line 65
    invoke-static {p0}, Lmiui/util/AudioManagerHelper;->isNewSilentEnabled(Landroid/content/Context;)Z

    move-result v1

    return v1

    .line 67
    :cond_0
    const-string/jumbo v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 68
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isVibrateEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    sget-boolean v1, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v1, :cond_0

    .line 81
    invoke-static {p0}, Lmiui/util/AudioManagerHelper;->isNewVibrateEnabled(Landroid/content/Context;)Z

    move-result v1

    return v1

    .line 83
    :cond_0
    const-string/jumbo v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 84
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    invoke-static {p0, v1}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;I)Z

    move-result v1

    return v1
.end method

.method public static isVibrateEnabled(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    .line 93
    const/4 v0, -0x3

    invoke-static {p0, p1, v0}, Lmiui/util/AudioManagerHelper;->isVibrateEnabledForUser(Landroid/content/Context;II)Z

    move-result v0

    return v0
.end method

.method public static isVibrateEnabledForUser(Landroid/content/Context;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # I

    .prologue
    .line 97
    sget-boolean v1, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v1, :cond_0

    .line 98
    invoke-static {p0, p1}, Lmiui/util/AudioManagerHelper;->isNewVibrateEnabledForUser(Landroid/content/Context;I)Z

    move-result v1

    return v1

    .line 100
    :cond_0
    const-string/jumbo v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 101
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    invoke-static {p0, v1, p1}, Lmiui/util/AudioManagerHelper;->isVibrateEnabledForUser(Landroid/content/Context;II)Z

    move-result v1

    return v1
.end method

.method public static isVibrateEnabledForUser(Landroid/content/Context;II)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "userHandle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 110
    const-string/jumbo v5, "vibrator"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 111
    .local v2, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    .line 113
    .local v1, "hasVibrator":Z
    sget-boolean v5, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v5, :cond_0

    move v0, v4

    .line 116
    .local v0, "currentMode":I
    :goto_0
    if-eq v0, p1, :cond_2

    .line 117
    if-eqz v1, :cond_1

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 119
    const-string/jumbo v6, "vibrate_in_silent"

    .line 117
    invoke-static {v5, v6, v3, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v3, :cond_1

    :goto_1
    return v3

    .line 114
    .end local v0    # "currentMode":I
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .restart local v0    # "currentMode":I
    :cond_1
    move v3, v4

    .line 117
    goto :goto_1

    .line 123
    :cond_2
    if-eqz v1, :cond_3

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 125
    const-string/jumbo v7, "vibrate_in_normal"

    .line 126
    sget-boolean v5, Landroid/provider/MiuiSettings$System;->VIBRATE_IN_NORMAL_DEFAULT:Z

    if-eqz v5, :cond_4

    move v5, v3

    .line 123
    :goto_2
    invoke-static {v6, v7, v5, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v3, :cond_3

    move v4, v3

    :cond_3
    return v4

    :cond_4
    move v5, v4

    .line 126
    goto :goto_2
.end method

.method public static newToggleSilentForUser(Landroid/content/Context;II)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 214
    invoke-static {p0}, Lmiui/util/AudioManagerHelper;->isSilentEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "newMode":I
    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$SilenceMode;->setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 213
    return-void

    .line 215
    .end local v0    # "newMode":I
    :cond_0
    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getLastestQuietMode(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public static setHiFiVolume(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hifiVolume"    # I

    .prologue
    .line 237
    const-string/jumbo v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 238
    .local v0, "am":Landroid/media/AudioManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hifi_volume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public static setVibrateSetting(Landroid/content/Context;ZZ)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z
    .param p2, "forSilient"    # Z

    .prologue
    .line 42
    const/4 v0, -0x3

    invoke-static {p0, p1, p2, v0}, Lmiui/util/AudioManagerHelper;->setVibrateSettingForUser(Landroid/content/Context;ZZI)V

    .line 41
    return-void
.end method

.method public static setVibrateSettingForUser(Landroid/content/Context;ZZI)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z
    .param p2, "forSilient"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 49
    if-eqz p2, :cond_0

    .line 50
    const-string/jumbo v0, "vibrate_in_silent"

    move-object v1, v0

    .line 52
    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 47
    :goto_1
    invoke-static {v2, v1, v0, p3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 53
    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v0, :cond_2

    .line 54
    invoke-static {p0, p1, p2}, Lmiui/util/AudioManagerHelper;->validateRingerMode(Landroid/content/Context;ZZ)V

    .line 46
    :goto_2
    return-void

    .line 51
    :cond_0
    const-string/jumbo v0, "vibrate_in_normal"

    move-object v1, v0

    goto :goto_0

    .line 52
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 56
    :cond_2
    invoke-static {p0, p3}, Lmiui/util/AudioManagerHelper;->validateRingerMode(Landroid/content/Context;I)V

    goto :goto_2
.end method

.method public static toggleSilent(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # I

    .prologue
    .line 187
    const/4 v0, -0x3

    invoke-static {p0, p1, v0}, Lmiui/util/AudioManagerHelper;->toggleSilentForUser(Landroid/content/Context;II)V

    .line 186
    return-void
.end method

.method public static toggleSilentForUser(Landroid/content/Context;II)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # I
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 191
    sget-boolean v2, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v2, :cond_0

    .line 192
    invoke-static {p0, p1, p2}, Lmiui/util/AudioManagerHelper;->newToggleSilentForUser(Landroid/content/Context;II)V

    .line 193
    return-void

    .line 195
    :cond_0
    const-string/jumbo v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 197
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-ne v4, v2, :cond_3

    .line 198
    invoke-static {p0, v3, p2}, Lmiui/util/AudioManagerHelper;->isVibrateEnabledForUser(Landroid/content/Context;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 199
    const/4 v1, 0x1

    .line 206
    .local v1, "newMode":I
    :goto_0
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 208
    if-eqz p1, :cond_1

    .line 209
    invoke-virtual {v0, v4, v3, p1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 190
    :cond_1
    return-void

    .line 201
    .end local v1    # "newMode":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "newMode":I
    goto :goto_0

    .line 204
    .end local v1    # "newMode":I
    :cond_3
    const/4 v1, 0x2

    .restart local v1    # "newMode":I
    goto :goto_0
.end method

.method public static toggleVibrateSetting(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const/4 v0, -0x3

    invoke-static {p0, v0}, Lmiui/util/AudioManagerHelper;->toggleVibrateSettingForUser(Landroid/content/Context;I)V

    .line 30
    return-void
.end method

.method public static toggleVibrateSettingForUser(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # I

    .prologue
    .line 35
    invoke-static {p0, p1}, Lmiui/util/AudioManagerHelper;->isVibrateEnabledForUser(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 36
    :goto_0
    invoke-static {p0}, Lmiui/util/AudioManagerHelper;->isSilentEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 35
    invoke-static {p0, v0, v1, p1}, Lmiui/util/AudioManagerHelper;->setVibrateSettingForUser(Landroid/content/Context;ZZI)V

    .line 34
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static validateRingerMode(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # I

    .prologue
    .line 133
    const-string/jumbo v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 134
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 135
    .local v1, "mode":I
    invoke-static {p0, v1, p1}, Lmiui/util/AudioManagerHelper;->getValidatedRingerModeForUser(Landroid/content/Context;II)I

    move-result v2

    .line 137
    .local v2, "newMode":I
    if-eq v1, v2, :cond_0

    .line 138
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 132
    :cond_0
    return-void
.end method

.method private static validateRingerMode(Landroid/content/Context;ZZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shouldVibrate"    # Z
    .param p2, "forSilent"    # Z

    .prologue
    .line 143
    if-nez p2, :cond_0

    return-void

    .line 144
    :cond_0
    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v1

    .line 145
    .local v1, "mode":I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 146
    const-string/jumbo v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 147
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 142
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_1
    return-void

    .line 147
    .restart local v0    # "am":Landroid/media/AudioManager;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
