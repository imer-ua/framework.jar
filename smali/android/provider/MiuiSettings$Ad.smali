.class public final Landroid/provider/MiuiSettings$Ad;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ad"
.end annotation


# static fields
.field private static final AAID:Ljava/lang/String; = "ad_aaid"

.field public static final ACTION_AAID_RESET:Ljava/lang/String; = "miui.intent.action.ad.AAID_RESET"

.field private static final BIT_FLAG_PERSONALIZED_AD_DIALOG_PROMOTED:I = 0x2

.field private static final BIT_FLAG_PERSONALIZED_AD_ENABLE:I = 0x1

.field public static final EXTRA_KEY_NEW_AAID:Ljava/lang/String; = "new_aaid"

.field public static final EXTRA_KEY_OLD_AAID:Ljava/lang/String; = "old_aaid"

.field private static final PERSONALIZED_AD_SETTINGS:Ljava/lang/String; = "personalized_ad_enabled"

.field private static final PERSONALIZED_AD_TIME:Ljava/lang/String; = "personalized_ad_time"

.field private static final TAG:Ljava/lang/String; = "Ad"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAaid(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 6092
    const-string/jumbo v0, "ad_aaid"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPersonalizedAdEnableTime(Landroid/content/ContentResolver;)J
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 6148
    const-string/jumbo v2, "personalized_ad_time"

    const-wide/16 v4, 0x0

    invoke-static {p0, v2, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 6149
    .local v0, "time":J
    const-string/jumbo v2, "Ad"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPersonalizedAdEnableTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6150
    return-wide v0
.end method

.method private static getPersonizedAdSettings(Landroid/content/ContentResolver;)I
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 6158
    const-string/jumbo v0, "personalized_ad_enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isPersonalizedAdDialogPromoted(Landroid/content/ContentResolver;)Z
    .locals 5
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v1, 0x0

    .line 6125
    invoke-static {p0}, Landroid/provider/MiuiSettings$Ad;->getPersonizedAdSettings(Landroid/content/ContentResolver;)I

    move-result v0

    .line 6126
    .local v0, "adSettings":I
    const-string/jumbo v2, "Ad"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isPersonalizedAdDialogPromoted getAdSettings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6127
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isPersonalizedAdEnabled(Landroid/content/ContentResolver;)Z
    .locals 5
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v1, 0x0

    .line 6109
    invoke-static {p0}, Landroid/provider/MiuiSettings$Ad;->getPersonizedAdSettings(Landroid/content/ContentResolver;)I

    move-result v0

    .line 6110
    .local v0, "adSettings":I
    const-string/jumbo v2, "Ad"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isPersonalizedAdEnabled getAdSettings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6111
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static resetAaid(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 6096
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/MiuiSettings$Ad;->getAaid(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 6097
    .local v2, "oldAaid":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6098
    const-string/jumbo v2, ""

    .line 6100
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6101
    .local v1, "newAaid":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "ad_aaid"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6102
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "miui.intent.action.ad.AAID_RESET"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6103
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "old_aaid"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6104
    const-string/jumbo v3, "new_aaid"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6105
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6095
    return-void
.end method

.method public static setPersonalizedAdDialogPromoted(Landroid/content/ContentResolver;Z)V
    .locals 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 6132
    invoke-static {p0}, Landroid/provider/MiuiSettings$Ad;->getPersonizedAdSettings(Landroid/content/ContentResolver;)I

    move-result v1

    .line 6133
    .local v1, "oldAdSettings":I
    if-eqz p1, :cond_0

    or-int/lit8 v0, v1, 0x2

    .line 6135
    .local v0, "newAdSettings":I
    :goto_0
    const-string/jumbo v2, "Ad"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPersonalizedAdDialogPromoted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", oldAdSettings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6136
    const-string/jumbo v4, ", newAdSettings: "

    .line 6135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6137
    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$Ad;->setPersonizedAdSettings(Landroid/content/ContentResolver;I)V

    .line 6131
    return-void

    .line 6134
    .end local v0    # "newAdSettings":I
    :cond_0
    and-int/lit8 v0, v1, -0x3

    .restart local v0    # "newAdSettings":I
    goto :goto_0
.end method

.method public static setPersonalizedAdEnable(Landroid/content/ContentResolver;Z)V
    .locals 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 6116
    invoke-static {p0}, Landroid/provider/MiuiSettings$Ad;->getPersonizedAdSettings(Landroid/content/ContentResolver;)I

    move-result v1

    .line 6117
    .local v1, "oldAdSettings":I
    if-eqz p1, :cond_0

    or-int/lit8 v0, v1, 0x1

    .line 6119
    .local v0, "newAdSettigns":I
    :goto_0
    const-string/jumbo v2, "Ad"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPersonalizedAdEnable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", oldAdSettings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6120
    const-string/jumbo v4, ", newAdSettigns: "

    .line 6119
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6121
    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$Ad;->setPersonizedAdSettings(Landroid/content/ContentResolver;I)V

    .line 6115
    return-void

    .line 6118
    .end local v0    # "newAdSettigns":I
    :cond_0
    and-int/lit8 v0, v1, -0x2

    .restart local v0    # "newAdSettigns":I
    goto :goto_0
.end method

.method public static setPersonalizedAdEnableTime(Landroid/content/ContentResolver;J)V
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 6142
    const-string/jumbo v0, "Ad"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPersonalizedAdEnableTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6143
    const-string/jumbo v0, "personalized_ad_time"

    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 6141
    return-void
.end method

.method private static setPersonizedAdSettings(Landroid/content/ContentResolver;I)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "adSettings"    # I

    .prologue
    .line 6154
    const-string/jumbo v0, "personalized_ad_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6153
    return-void
.end method
