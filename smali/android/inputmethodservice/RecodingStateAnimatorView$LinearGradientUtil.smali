.class public Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;
.super Ljava/lang/Object;
.source "RecodingStateAnimatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/RecodingStateAnimatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LinearGradientUtil"
.end annotation


# instance fields
.field private mEndColor:I

.field private mStartColor:I

.field final synthetic this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

.field private v:F


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/RecodingStateAnimatorView;II)V
    .locals 0
    .param p1, "this$0"    # Landroid/inputmethodservice/RecodingStateAnimatorView;
    .param p2, "startColor"    # I
    .param p3, "endColor"    # I

    .prologue
    .line 480
    iput-object p1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->this$0:Landroid/inputmethodservice/RecodingStateAnimatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    iput p2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->mStartColor:I

    .line 482
    iput p3, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->mEndColor:I

    .line 480
    return-void
.end method


# virtual methods
.method public getColor(F)I
    .locals 18
    .param p1, "radio"    # F

    .prologue
    .line 502
    move-object/from16 v0, p0

    iget v11, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->mStartColor:I

    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v10

    .line 503
    .local v10, "redStart":I
    move-object/from16 v0, p0

    iget v11, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->mStartColor:I

    invoke-static {v11}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 504
    .local v4, "blueStart":I
    move-object/from16 v0, p0

    iget v11, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->mStartColor:I

    invoke-static {v11}, Landroid/graphics/Color;->green(I)I

    move-result v7

    .line 505
    .local v7, "greenStart":I
    move-object/from16 v0, p0

    iget v11, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->mEndColor:I

    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v9

    .line 506
    .local v9, "redEnd":I
    move-object/from16 v0, p0

    iget v11, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->mEndColor:I

    invoke-static {v11}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 507
    .local v3, "blueEnd":I
    move-object/from16 v0, p0

    iget v11, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->mEndColor:I

    invoke-static {v11}, Landroid/graphics/Color;->green(I)I

    move-result v6

    .line 508
    .local v6, "greenEnd":I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->v:F

    .line 509
    int-to-double v12, v10

    sub-int v11, v9, v10

    int-to-float v11, v11

    mul-float v11, v11, p1

    float-to-double v14, v11

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-int v8, v12

    .line 510
    .local v8, "red":I
    int-to-double v12, v7

    sub-int v11, v6, v7

    int-to-float v11, v11

    mul-float v11, v11, p1

    float-to-double v14, v11

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-int v5, v12

    .line 511
    .local v5, "greed":I
    int-to-double v12, v4

    sub-int v11, v3, v4

    int-to-float v11, v11

    mul-float v11, v11, p1

    float-to-double v14, v11

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-int v2, v12

    .line 512
    .local v2, "blue":I
    const/16 v11, 0xff

    invoke-static {v11, v8, v5, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    return v11
.end method

.method public getEndColor()I
    .locals 1

    .prologue
    .line 494
    iget v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->mEndColor:I

    return v0
.end method

.method public getStartColor()I
    .locals 1

    .prologue
    .line 498
    iget v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->mStartColor:I

    return v0
.end method

.method public getV()F
    .locals 1

    .prologue
    .line 477
    iget v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->v:F

    return v0
.end method

.method public setEndColor(I)V
    .locals 0
    .param p1, "endColor"    # I

    .prologue
    .line 490
    iput p1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->mEndColor:I

    .line 489
    return-void
.end method

.method public setStartColor(I)V
    .locals 0
    .param p1, "startColor"    # I

    .prologue
    .line 486
    iput p1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->mStartColor:I

    .line 485
    return-void
.end method
