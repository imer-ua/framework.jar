.class public Lmiui/maml/animation/interpolater/BounceEaseOutInterpolater;
.super Ljava/lang/Object;
.source "BounceEaseOutInterpolater.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInterpolationImp(F)F
    .locals 6
    .param p0, "t"    # F

    .prologue
    const-wide v4, 0x401e400000000000L    # 7.5625

    .line 12
    float-to-double v0, p0

    const-wide v2, 0x3fd745d1745d1746L    # 0.36363636363636365

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 13
    const/high16 v0, 0x40f20000    # 7.5625f

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    return v0

    .line 14
    :cond_0
    float-to-double v0, p0

    const-wide v2, 0x3fe745d1745d1746L    # 0.7272727272727273

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 15
    float-to-double v0, p0

    const-wide v2, 0x3fe1745d1745d174L    # 0.5454545454545454

    sub-double/2addr v0, v2

    double-to-float p0, v0

    mul-double/2addr v0, v4

    float-to-double v2, p0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0

    .line 16
    :cond_1
    float-to-double v0, p0

    const-wide v2, 0x3fed1745d1745d17L    # 0.9090909090909091

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    .line 17
    float-to-double v0, p0

    const-wide v2, 0x3fea2e8ba2e8ba2fL    # 0.8181818181818182

    sub-double/2addr v0, v2

    double-to-float p0, v0

    mul-double/2addr v0, v4

    float-to-double v2, p0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fee000000000000L    # 0.9375

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0

    .line 19
    :cond_2
    float-to-double v0, p0

    const-wide v2, 0x3fee8ba2e8ba2e8cL    # 0.9545454545454546

    sub-double/2addr v0, v2

    double-to-float p0, v0

    mul-double/2addr v0, v4

    float-to-double v2, p0

    mul-double/2addr v0, v2

    const-wide v2, 0x3fef800000000000L    # 0.984375

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1
    .param p1, "t"    # F

    .prologue
    .line 8
    invoke-static {p1}, Lmiui/maml/animation/interpolater/BounceEaseOutInterpolater;->getInterpolationImp(F)F

    move-result v0

    return v0
.end method
