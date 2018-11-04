.class public Lmiui/maml/animation/AlphaAnimation;
.super Lmiui/maml/animation/BaseAnimation;
.source "AlphaAnimation.java"


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "Alpha"

.field public static final TAG_NAME:Ljava/lang/String; = "AlphaAnimation"


# instance fields
.field private mDelayValue:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V
    .locals 6
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "screenElement"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    const/4 v5, 0x0

    .line 18
    const-string/jumbo v3, "Alpha"

    const-string/jumbo v4, "a"

    invoke-direct {p0, p1, v3, v4, p2}, Lmiui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V

    .line 20
    const-string/jumbo v3, "delayValue"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 21
    .local v1, "delayValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 23
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lmiui/maml/animation/AlphaAnimation;->mDelayValue:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    invoke-virtual {p0, v5}, Lmiui/maml/animation/BaseAnimation;->getItem(I)Lmiui/maml/animation/BaseAnimation$AnimationItem;

    move-result-object v0

    .line 29
    .local v0, "ai":Lmiui/maml/animation/BaseAnimation$AnimationItem;
    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0, v5}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v4

    double-to-int v3, v4

    iput v3, p0, Lmiui/maml/animation/AlphaAnimation;->mDelayValue:I

    goto :goto_0

    .line 24
    .end local v0    # "ai":Lmiui/maml/animation/BaseAnimation$AnimationItem;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method


# virtual methods
.method public final getAlpha()I
    .locals 2

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/animation/BaseAnimation;->getCurValue(I)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method protected getDefaultValue()D
    .locals 2

    .prologue
    .line 45
    const-wide v0, 0x406fe00000000000L    # 255.0

    return-wide v0
.end method

.method protected getDelayValue(I)D
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 41
    iget v0, p0, Lmiui/maml/animation/AlphaAnimation;->mDelayValue:I

    int-to-double v0, v0

    return-wide v0
.end method
