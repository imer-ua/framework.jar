.class public Lmiui/os/DeviceFeature;
.super Ljava/lang/Object;
.source "DeviceFeature.java"


# static fields
.field public static final BACKLIGHT_BIT:I

.field public static final PERSIST_SCREEN_EFFECT:Z

.field public static final SCREEN_EFFECT_CONFLICT:Z

.field public static final SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

.field public static final SUPPORT_DISPLAYFEATURE_HIDL:Z

.field public static final SUPPORT_NIGHT_LIGHT:Z

.field public static final SUPPORT_NIGHT_LIGHT_ADJ:Z

.field public static final SUPPORT_PAPERMODE_ANIMATION:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 19
    const-string/jumbo v0, "support_autobrightness_optimize"

    .line 18
    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-le v0, v3, :cond_1

    move v0, v1

    .line 18
    :goto_0
    sput-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    .line 26
    const-string/jumbo v0, "sys.displayfeature_hidl"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 25
    sput-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_DISPLAYFEATURE_HIDL:Z

    .line 31
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 32
    const v3, 0x110a0020

    .line 31
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_NIGHT_LIGHT:Z

    .line 37
    const-string/jumbo v0, "support_papermode_animation"

    .line 36
    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_PAPERMODE_ANIMATION:Z

    .line 42
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 43
    const v3, 0x110a0021

    .line 42
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_NIGHT_LIGHT_ADJ:Z

    .line 46
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 47
    const v3, 0x1108001a

    .line 46
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lmiui/os/DeviceFeature;->BACKLIGHT_BIT:I

    .line 53
    const-string/jumbo v0, "sys.persist_screen_effect"

    .line 52
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/os/DeviceFeature;->PERSIST_SCREEN_EFFECT:Z

    .line 58
    const-string/jumbo v0, "ro.df.effect.conflict"

    .line 57
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 59
    const-string/jumbo v0, "ro.vendor.df.effect.conflict"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 57
    :cond_0
    :goto_1
    sput-boolean v1, Lmiui/os/DeviceFeature;->SCREEN_EFFECT_CONFLICT:Z

    .line 12
    return-void

    .line 20
    :cond_1
    const-string/jumbo v0, "sys.autobrightness_optimize"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v1, v2

    .line 59
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final hasMirihiSupport()Z
    .locals 2

    .prologue
    .line 62
    const-string/jumbo v0, "perseus"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
