.class public Landroid/app/AppOpsManagerInjector;
.super Ljava/lang/Object;
.source "AppOpsManagerInjector.java"


# static fields
.field private static sAutoStartRestrictions:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    .line 16
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.android.fileexplorer"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.android.thememanager"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.android.browser"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.android.soundrecorder"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.android.calculator2"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.android.camera"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.android.quicksearchbox"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.android.providers.downloads.ui"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.android.email"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.android.midrive"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.miui.mipub"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.miui.video"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.miui.cleanmaster"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.miui.varcodescanner"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.miui.compass"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.miui.voiceassist"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.miui.yellowpage"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.miui.personalassistant"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.miui.backup"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.miui.notes"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.miui.translation.kingsoft"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.miui.home.launcher.assistant"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.miui.fm"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.mi.misupport"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.xiaomi.scanner"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.xiaomi.vip"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.xiaomi.pass"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.xiaomi.account"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.xiaomi.pricecheck"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.xiaomi.gamecenter"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.xiaomi.gamecenter.sdk.service"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.xiaomi.midrop"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.xiaomi.miplay"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.cleanmaster.sdk"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.sohu.inputmethod.sogou.xiaomi"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.miui.securityadd"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.miui.guardprovider"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.miui.gallery"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.miui.player"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    const-string/jumbo v1, "com.miui.virtualsim"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 56
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 11
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAutoStartRestriction(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 68
    sget-object v0, Landroid/app/AppOpsManagerInjector;->sAutoStartRestrictions:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static opToDefaultMode(I)I
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 72
    sparse-switch p0, :sswitch_data_0

    .line 79
    const/4 v0, 0x0

    return v0

    .line 75
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 72
    nop

    :sswitch_data_0
    .sparse-switch
        0x2718 -> :sswitch_0
        0x2723 -> :sswitch_0
    .end sparse-switch
.end method
