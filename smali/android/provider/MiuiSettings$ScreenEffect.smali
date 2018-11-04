.class public final Landroid/provider/MiuiSettings$ScreenEffect;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScreenEffect"
.end annotation


# static fields
.field public static final DEFALUT_SCREEN_COLOR:I = 0x2

.field public static final DEFAULT_PAPER_MODE_LEVEL:I

.field public static final DEFAULT_SCREEN_OPTIMIZE_MODE:I

.field public static final DEFAULT_SCREEN_SATURATION:I

.field public static final FLAG_SUPPORT_ADAPT_MODE:I = 0x1

.field public static final FLAG_SUPPORT_ENHANCE_MODE:I = 0x2

.field public static final FLAG_SUPPORT_MONOCHROME_MODE:I = 0x8

.field public static final FLAG_SUPPORT_STANDARD_MODE:I = 0x4

.field public static final MONOCHROME_MODE_DEFAULT:I = 0x2

.field public static final MONOCHROME_MODE_GLOBAL:I = 0x1

.field public static final MONOCHROME_MODE_LOCAL:I = 0x2

.field public static final NIGHT_LIGHT_LEVEL:Ljava/lang/String; = "night_light_level"

.field public static final PAPER_MODE_AUTO_TWILIGHT:I = 0x1

.field public static final PAPER_MODE_CUSTOMIZE_TIME:I = 0x2

.field public static final PAPER_MODE_DEFAULT:I = 0x1

.field public static final PAPER_MODE_GLOBAL:I = 0x1

.field public static final PAPER_MODE_LOCAL:I = 0x2

.field public static final PAPER_MODE_MAX_LEVEL:I

.field public static final PAPER_MODE_SCHEDULER_TYPE:Ljava/lang/String; = "paper_mode_scheduler_type"

.field public static final PAPER_MODE_TIME_CANCEL:I = 0x0

.field public static final PROPERTY_SCREEN_PAPER_MODE_LEVEL:Ljava/lang/String; = "persist.sys.eyecare_cache"

.field public static final SCREEN_COLOR_COOL:I = 0x3

.field public static final SCREEN_COLOR_LEVEL:Ljava/lang/String; = "screen_color_level"

.field public static final SCREEN_COLOR_NATURE:I = 0x2

.field public static final SCREEN_COLOR_SELECTED:Ljava/lang/String; = "screen_color_selected"

.field public static final SCREEN_COLOR_WARM:I = 0x1

.field public static final SCREEN_EFFECT_SUPPORTED:I

.field public static final SCREEN_MONOCHROME_MODE:Ljava/lang/String; = "screen_monochrome_mode"

.field public static final SCREEN_MONOCHROME_MODE_ENABLED:Ljava/lang/String; = "screen_monochrome_mode_enabled"

.field public static final SCREEN_MONOCHROME_MODE_ENABLED_DEFAULT:Z = false

.field public static final SCREEN_MONOCHROME_MODE_WHITE_LIST:Ljava/lang/String; = "screen_monochrome_mode_white_list"

.field public static final SCREEN_OPTIMIZE_ADAPT:I = 0x1

.field public static final SCREEN_OPTIMIZE_ENHANCE:I = 0x2

.field public static final SCREEN_OPTIMIZE_MODE:Ljava/lang/String; = "screen_optimize_mode"

.field public static final SCREEN_OPTIMIZE_STANDARD:I = 0x3

.field public static final SCREEN_PAPER_MODE:Ljava/lang/String; = "screen_paper_mode"

.field public static final SCREEN_PAPER_MODE_ENABLED:Ljava/lang/String; = "screen_paper_mode_enabled"

.field public static final SCREEN_PAPER_MODE_ENABLED_DEFAULT:Z = false

.field public static final SCREEN_PAPER_MODE_LEVEL:Ljava/lang/String; = "screen_paper_mode_level"

.field public static final SCREEN_PAPER_MODE_TIME_ENABLED:Ljava/lang/String; = "screen_paper_mode_time_enabled"

.field public static final SCREEN_PAPER_MODE_TIME_ENABLED_DEFAULT:Z = false

.field public static final SCREEN_PAPER_MODE_TIME_END:Ljava/lang/String; = "screen_paper_mode_time_end"

.field public static final SCREEN_PAPER_MODE_TIME_START:Ljava/lang/String; = "screen_paper_mode_time_start"

.field public static final SCREEN_PAPER_MODE_TWILIGHT_END:Ljava/lang/String; = "screen_paper_mode_twilight_end"

.field public static final SCREEN_PAPER_MODE_TWILIGHT_END_DEAULT:I = 0x438

.field public static final SCREEN_PAPER_MODE_TWILIGHT_START:Ljava/lang/String; = "screen_paper_mode_twilight_start"

.field public static final SCREEN_PAPER_MODE_TWILIGHT_START_DEAULT:I = 0x168

.field public static final SCREEN_PAPER_MODE_WHITE_LIST:Ljava/lang/String; = "screen_paper_mode_white_list"

.field public static final SCREEN_SATURATION_STANDARD:I = 0xa

.field public static final SCREEN_SATURATION_VIVID:I = 0xb

.field public static final isScreenPaperModeSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 6560
    const-string/jumbo v0, "screen_effect_supported"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/provider/MiuiSettings$ScreenEffect;->SCREEN_EFFECT_SUPPORTED:I

    .line 6590
    invoke-static {}, Landroid/provider/MiuiSettings$ScreenEffect;->getDefaultScreenOptimizeMode()I

    move-result v0

    sput v0, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_SCREEN_OPTIMIZE_MODE:I

    .line 6593
    const-string/jumbo v0, "support_screen_paper_mode"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 6592
    sput-boolean v0, Landroid/provider/MiuiSettings$ScreenEffect;->isScreenPaperModeSupported:Z

    .line 6604
    invoke-static {}, Landroid/provider/MiuiSettings$ScreenEffect;->getDefaultSaturation()I

    move-result v0

    sput v0, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_SCREEN_SATURATION:I

    .line 6628
    const-string/jumbo v0, "sys.paper_mode_max_level"

    .line 6629
    const-string/jumbo v1, "paper_mode_max_level"

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 6628
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/provider/MiuiSettings$ScreenEffect;->PAPER_MODE_MAX_LEVEL:I

    .line 6631
    const-string/jumbo v0, "sys.paper_mode_default_level"

    .line 6632
    sget v1, Landroid/provider/MiuiSettings$ScreenEffect;->PAPER_MODE_MAX_LEVEL:I

    div-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x5

    .line 6631
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_PAPER_MODE_LEVEL:I

    .line 6540
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDefaultSaturation()I
    .locals 3

    .prologue
    .line 6607
    const/16 v0, 0xa

    .line 6608
    .local v0, "defaultSaturation":I
    const-string/jumbo v1, "is_hongmi"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6609
    const/16 v0, 0xb

    .line 6611
    :cond_0
    const-string/jumbo v1, "display_ce"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private static getDefaultScreenOptimizeMode()I
    .locals 1

    .prologue
    .line 6596
    sget v0, Landroid/provider/MiuiSettings$ScreenEffect;->SCREEN_EFFECT_SUPPORTED:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 6597
    const/4 v0, 0x2

    .line 6596
    :goto_0
    return v0

    .line 6597
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getScreenModePkgList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "screenModePkgList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6646
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 6647
    const/4 v9, -0x2

    .line 6645
    invoke-static {v8, p1, v9}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 6648
    .local v3, "packageList":Ljava/lang/String;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 6649
    .local v7, "pkg2PaperMode":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 6650
    const-string/jumbo v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 6651
    .local v2, "packageArr":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 6652
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, v2

    if-ge v1, v8, :cond_0

    .line 6653
    aget-object v4, v2, v1

    .line 6654
    .local v4, "pair":Ljava/lang/String;
    const/16 v8, 0x3d

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 6655
    .local v0, "equalIndex":I
    const/4 v8, 0x0

    invoke-virtual {v4, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 6656
    .local v5, "pairKey":Ljava/lang/String;
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 6657
    .local v6, "pairValue":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6652
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6661
    .end local v0    # "equalIndex":I
    .end local v1    # "i":I
    .end local v2    # "packageArr":[Ljava/lang/String;
    .end local v4    # "pair":Ljava/lang/String;
    .end local v5    # "pairKey":Ljava/lang/String;
    .end local v6    # "pairValue":Ljava/lang/String;
    :cond_0
    return-object v7
.end method

.method public static isInPaperModeTimeSchedule(Landroid/content/Context;II)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startTime"    # I
    .param p2, "endTime"    # I

    .prologue
    .line 6705
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 6706
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 6707
    .local v1, "hour":I
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 6708
    .local v3, "minute":I
    mul-int/lit8 v5, v1, 0x3c

    add-int v4, v5, v3

    .line 6709
    .local v4, "now":I
    const/4 v2, 0x0

    .line 6711
    .local v2, "isIn":Z
    if-le p1, p2, :cond_2

    .line 6713
    if-lt v4, p2, :cond_1

    if-ge v4, p1, :cond_1

    .line 6715
    const/4 v2, 0x0

    .line 6731
    :cond_0
    :goto_0
    return v2

    .line 6718
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 6720
    :cond_2
    if-ge p1, p2, :cond_0

    .line 6721
    if-lt v4, p1, :cond_3

    if-ge v4, p2, :cond_3

    .line 6723
    const/4 v2, 0x1

    .line 6721
    goto :goto_0

    .line 6726
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isScreenPaperMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 6546
    invoke-static {}, Lmiui/hareware/display/DisplayFeatureManager;->getInstance()Lmiui/hareware/display/DisplayFeatureManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/hareware/display/DisplayFeatureManager;->getEyeCare()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static setScreenModePkgList(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "screenModePkgList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 6665
    .local p1, "pkg2PaperMode":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 6666
    :cond_0
    return-void

    .line 6669
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6670
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 6671
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 6672
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6673
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6674
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6676
    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6677
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 6678
    .local v4, "value":Ljava/lang/Boolean;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6680
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6681
    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6684
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Boolean;
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 6685
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 6684
    invoke-static {v5, p2, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6664
    return-void
.end method

.method public static setScreenPaperMode(Z)V
    .locals 3
    .param p0, "isScreenPaperMode"    # Z

    .prologue
    .line 6551
    if-eqz p0, :cond_0

    .line 6552
    const-string/jumbo v1, "persist.sys.eyecare_cache"

    .line 6553
    sget v2, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_PAPER_MODE_LEVEL:I

    .line 6552
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 6554
    .local v0, "level":I
    invoke-static {}, Lmiui/hareware/display/DisplayFeatureManager;->getInstance()Lmiui/hareware/display/DisplayFeatureManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/hareware/display/DisplayFeatureManager;->setEyeCare(I)V

    .line 6550
    .end local v0    # "level":I
    :goto_0
    return-void

    .line 6556
    :cond_0
    invoke-static {}, Lmiui/hareware/display/DisplayFeatureManager;->getInstance()Lmiui/hareware/display/DisplayFeatureManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/hareware/display/DisplayFeatureManager;->setEyeCare(I)V

    goto :goto_0
.end method
