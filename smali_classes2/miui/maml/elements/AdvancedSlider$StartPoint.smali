.class Lmiui/maml/elements/AdvancedSlider$StartPoint;
.super Lmiui/maml/elements/AdvancedSlider$SliderPoint;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartPoint"
.end annotation


# static fields
.field private static final synthetic -miui-maml-elements-AdvancedSlider$StateSwitchesValues:[I = null

.field public static final TAG_NAME:Ljava/lang/String; = "StartPoint"


# instance fields
.field final synthetic $SWITCH_TABLE$miui$maml$elements$AdvancedSlider$State:[I

.field private mAnchorX:F

.field private mAnchorY:F

.field protected mOffsetX:F

.field protected mOffsetY:F

.field public mReboundController:Lmiui/maml/elements/AdvancedSlider$InterpolatorController;

.field final synthetic this$0:Lmiui/maml/elements/AdvancedSlider;


# direct methods
.method private static synthetic -getmiui-maml-elements-AdvancedSlider$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->-miui-maml-elements-AdvancedSlider$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->-miui-maml-elements-AdvancedSlider$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lmiui/maml/elements/AdvancedSlider$State;->values()[Lmiui/maml/elements/AdvancedSlider$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lmiui/maml/elements/AdvancedSlider$State;->Invalid:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lmiui/maml/elements/AdvancedSlider$State;->Normal:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lmiui/maml/elements/AdvancedSlider$State;->Pressed:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lmiui/maml/elements/AdvancedSlider$State;->Reached:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->-miui-maml-elements-AdvancedSlider$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Lmiui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 4
    .param p1, "this$0"    # Lmiui/maml/elements/AdvancedSlider;
    .param p2, "node"    # Lorg/w3c/dom/Element;
    .param p3, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    const/4 v3, 0x0

    .line 607
    iput-object p1, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    .line 608
    const-string/jumbo v2, "StartPoint"

    invoke-direct {p0, p1, p2, p3, v2}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;-><init>(Lmiui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)V

    .line 609
    const-string/jumbo v2, "anchorX"

    invoke-static {p2, v2, v3}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mAnchorX:F

    .line 610
    const-string/jumbo v2, "anchorY"

    invoke-static {p2, v2, v3}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mAnchorY:F

    .line 612
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    invoke-static {v2, p2}, Lmiui/maml/animation/interpolater/InterpolatorHelper;->create(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;)Lmiui/maml/animation/interpolater/InterpolatorHelper;

    move-result-object v0

    .line 613
    .local v0, "interpolator":Lmiui/maml/animation/interpolater/InterpolatorHelper;
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    const-string/jumbo v3, "easeTime"

    invoke-interface {p2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    .line 614
    .local v1, "reboundTimeExp":Lmiui/maml/data/Expression;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 615
    new-instance v2, Lmiui/maml/elements/AdvancedSlider$InterpolatorController;

    invoke-direct {v2, p1, v0, v1}, Lmiui/maml/elements/AdvancedSlider$InterpolatorController;-><init>(Lmiui/maml/elements/AdvancedSlider;Lmiui/maml/animation/interpolater/InterpolatorHelper;Lmiui/maml/data/Expression;)V

    iput-object v2, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mReboundController:Lmiui/maml/elements/AdvancedSlider$InterpolatorController;

    .line 607
    :cond_0
    return-void
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 655
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 656
    .local v0, "rs":I
    iget v1, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mOffsetX:F

    iget v2, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mOffsetY:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 657
    invoke-super {p0, p1}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->doRender(Landroid/graphics/Canvas;)V

    .line 658
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 654
    return-void
.end method

.method protected doTick(J)V
    .locals 1
    .param p1, "currentTime"    # J

    .prologue
    .line 648
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->doTick(J)V

    .line 649
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mReboundController:Lmiui/maml/elements/AdvancedSlider$InterpolatorController;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mReboundController:Lmiui/maml/elements/AdvancedSlider$InterpolatorController;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->tick(J)V

    .line 647
    :cond_0
    return-void
.end method

.method public getAnchorX()F
    .locals 2

    .prologue
    .line 675
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getLeft()F

    move-result v0

    iget v1, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mAnchorX:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getAnchorY()F
    .locals 2

    .prologue
    .line 679
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getTop()F

    move-result v0

    iget v1, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mAnchorY:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getOffsetX()F
    .locals 1

    .prologue
    .line 667
    iget v0, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mOffsetX:F

    return v0
.end method

.method public getOffsetY()F
    .locals 1

    .prologue
    .line 671
    iget v0, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mOffsetY:F

    return v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 641
    invoke-super {p0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->init()V

    .line 642
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mReboundController:Lmiui/maml/elements/AdvancedSlider$InterpolatorController;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mReboundController:Lmiui/maml/elements/AdvancedSlider$InterpolatorController;

    invoke-virtual {v0}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->init()V

    .line 640
    :cond_0
    return-void
.end method

.method public moveTo(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 662
    iput p1, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mOffsetX:F

    .line 663
    iput p2, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mOffsetY:F

    .line 661
    return-void
.end method

.method protected onStateChange(Lmiui/maml/elements/AdvancedSlider$State;Lmiui/maml/elements/AdvancedSlider$State;)V
    .locals 2
    .param p1, "pre"    # Lmiui/maml/elements/AdvancedSlider$State;
    .param p2, "s"    # Lmiui/maml/elements/AdvancedSlider$State;

    .prologue
    .line 620
    sget-object v0, Lmiui/maml/elements/AdvancedSlider$State;->Invalid:Lmiui/maml/elements/AdvancedSlider$State;

    if-ne p1, v0, :cond_0

    .line 621
    return-void

    .line 624
    :cond_0
    invoke-static {}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->-getmiui-maml-elements-AdvancedSlider$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 636
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->onStateChange(Lmiui/maml/elements/AdvancedSlider$State;Lmiui/maml/elements/AdvancedSlider$State;)V

    .line 619
    return-void

    .line 626
    :pswitch_0
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mNormalSound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->playSound(Ljava/lang/String;)I

    goto :goto_0

    .line 629
    :pswitch_1
    iget-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPressed:Z

    if-nez v0, :cond_1

    .line 630
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedSound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->playSound(Ljava/lang/String;)I

    goto :goto_0

    .line 624
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
