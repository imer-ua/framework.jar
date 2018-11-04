.class public Lmiui/util/ExquisiteModeUtils;
.super Ljava/lang/Object;
.source "ExquisiteModeUtils.java"


# static fields
.field public static final DEFAULT_EXQUISITE_SCALE_VALUE:F

.field public static final DEFAULT_MIUI_SCALE_VALUE:F = 1.0f

.field public static final MIUI_SCALE_FIELD_NAME:Ljava/lang/String; = "miuiScale"

.field public static final SUPPORT_EXQUISITE_MODE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    .line 10
    const-string/jumbo v1, "exquisite_mode_target_density"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    .line 9
    mul-float/2addr v1, v3

    .line 11
    const-string/jumbo v2, "exquisite_mode_origin_density"

    invoke-static {v2, v0}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    .line 9
    div-float/2addr v1, v2

    sput v1, Lmiui/util/ExquisiteModeUtils;->DEFAULT_EXQUISITE_SCALE_VALUE:F

    .line 13
    sget v1, Lmiui/util/ExquisiteModeUtils;->DEFAULT_EXQUISITE_SCALE_VALUE:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lmiui/util/ExquisiteModeUtils;->SUPPORT_EXQUISITE_MODE:Z

    .line 6
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
