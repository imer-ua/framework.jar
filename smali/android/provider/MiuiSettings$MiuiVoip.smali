.class public final Landroid/provider/MiuiSettings$MiuiVoip;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MiuiVoip"
.end annotation


# static fields
.field private static final MIUI_VOIP_ACTIVATED:Ljava/lang/String; = "miui_voip_activated"

.field private static final MIUI_VOIP_CALLLOG_AUTO:Ljava/lang/String; = "miui_voip_calllog_auto"

.field private static final MIUI_VOIP_CONTACT_COUNT:Ljava/lang/String; = "miui_voip_contact_count"

.field private static final MIUI_VOIP_ENABLED:Ljava/lang/String; = "miui_voip_enabled"

.field private static final MIUI_VOIP_NEW_CONTACT_COUNT:Ljava/lang/String; = "miui_voip_new_contact_count"

.field private static final MIUI_VOIP_WIFI_AUTO:Ljava/lang/String; = "miui_voip_wifi_auto"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVoipContactCount(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 5750
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "miui_voip_contact_count"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getVoipNewContactCount(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 5758
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "miui_voip_new_contact_count"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isVoipActivated(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 5714
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "miui_voip_activated"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isVoipCallLogAuto(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 5738
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "miui_voip_calllog_auto"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isVoipEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 5722
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "miui_voip_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isVoipWifiAuto(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 5730
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "miui_voip_wifi_auto"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setVoipActivated(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isActivated"    # Z

    .prologue
    .line 5718
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "miui_voip_activated"

    invoke-static {v0, v1, p1}, Lmiui/provider/ExtraSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5717
    return-void
.end method

.method public static setVoipCallLogAuto(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    .line 5742
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "miui_voip_calllog_auto"

    invoke-static {v0, v1, p1}, Lmiui/provider/ExtraSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5741
    return-void
.end method

.method public static setVoipContactCount(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "count"    # I

    .prologue
    .line 5746
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "miui_voip_contact_count"

    invoke-static {v0, v1, p1}, Lmiui/provider/ExtraSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5745
    return-void
.end method

.method public static setVoipEnabled(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    .line 5726
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "miui_voip_enabled"

    invoke-static {v0, v1, p1}, Lmiui/provider/ExtraSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5725
    return-void
.end method

.method public static setVoipNewContactCount(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "count"    # I

    .prologue
    .line 5754
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "miui_voip_new_contact_count"

    invoke-static {v0, v1, p1}, Lmiui/provider/ExtraSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5753
    return-void
.end method

.method public static setVoipWifiAuto(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    .line 5734
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "miui_voip_wifi_auto"

    invoke-static {v0, v1, p1}, Lmiui/provider/ExtraSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 5733
    return-void
.end method
