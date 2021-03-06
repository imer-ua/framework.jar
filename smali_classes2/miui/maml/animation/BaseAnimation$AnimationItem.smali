.class public Lmiui/maml/animation/BaseAnimation$AnimationItem;
.super Ljava/lang/Object;
.source "BaseAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/animation/BaseAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationItem"
.end annotation


# instance fields
.field private mAni:Lmiui/maml/animation/BaseAnimation;

.field private mAttrsValue:[D

.field public mDeltaTimeExp:Lmiui/maml/data/Expression;

.field public mExps:[Lmiui/maml/data/Expression;

.field public mInitTime:J

.field public mInterpolator:Lmiui/maml/animation/interpolater/InterpolatorHelper;

.field private mNeedEvaluate:Z

.field public mTime:J


# direct methods
.method public constructor <init>(Lmiui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)V
    .locals 1
    .param p1, "ani"    # Lmiui/maml/animation/BaseAnimation;
    .param p2, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mNeedEvaluate:Z

    .line 39
    iput-object p1, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAni:Lmiui/maml/animation/BaseAnimation;

    .line 40
    invoke-direct {p0, p2}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->load(Lorg/w3c/dom/Element;)V

    .line 38
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 10
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v7, 0x0

    .line 63
    iget-object v8, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAni:Lmiui/maml/animation/BaseAnimation;

    invoke-virtual {v8}, Lmiui/maml/animation/BaseAnimation;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v6

    .line 64
    .local v6, "vars":Lmiui/maml/data/Variables;
    invoke-static {v6, p1}, Lmiui/maml/animation/interpolater/InterpolatorHelper;->create(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;)Lmiui/maml/animation/interpolater/InterpolatorHelper;

    move-result-object v8

    iput-object v8, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mInterpolator:Lmiui/maml/animation/interpolater/InterpolatorHelper;

    .line 66
    :try_start_0
    const-string/jumbo v8, "time"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    const-string/jumbo v8, "dtime"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v8

    iput-object v8, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mDeltaTimeExp:Lmiui/maml/data/Expression;

    .line 71
    iget-object v8, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAni:Lmiui/maml/animation/BaseAnimation;

    invoke-virtual {v8}, Lmiui/maml/animation/BaseAnimation;->getAttrs()[Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "attrs":[Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 73
    array-length v8, v0

    new-array v8, v8, [D

    iput-object v8, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrsValue:[D

    .line 74
    array-length v8, v0

    new-array v8, v8, [Lmiui/maml/data/Expression;

    iput-object v8, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mExps:[Lmiui/maml/data/Expression;

    .line 75
    const/4 v3, 0x0

    .line 76
    .local v3, "i":I
    array-length v8, v0

    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_1
    if-ge v7, v8, :cond_2

    aget-object v5, v0, v7

    .line 77
    .local v5, "s":Ljava/lang/String;
    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    .line 79
    .local v2, "exp":Lmiui/maml/data/Expression;
    if-nez v2, :cond_0

    if-nez v4, :cond_0

    const-string/jumbo v9, "value"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 82
    :cond_0
    :goto_2
    iget-object v9, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mExps:[Lmiui/maml/data/Expression;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aput-object v2, v9, v4

    .line 76
    add-int/lit8 v7, v7, 0x1

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    .line 80
    :cond_1
    const-string/jumbo v9, "value"

    invoke-interface {p1, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    goto :goto_2

    .line 86
    .end local v2    # "exp":Lmiui/maml/data/Expression;
    .end local v4    # "i":I
    .end local v5    # "s":Ljava/lang/String;
    :cond_2
    iget-wide v8, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    iput-wide v8, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mInitTime:J

    .line 62
    return-void

    .line 67
    .end local v0    # "attrs":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private reevaluate()V
    .locals 9

    .prologue
    .line 90
    iget-object v3, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mExps:[Lmiui/maml/data/Expression;

    if-nez v3, :cond_0

    .line 91
    return-void

    .line 93
    :cond_0
    const/4 v1, 0x0

    .line 94
    .local v1, "i":I
    iget-object v6, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mExps:[Lmiui/maml/data/Expression;

    const/4 v3, 0x0

    array-length v7, v6

    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-ge v3, v7, :cond_2

    aget-object v0, v6, v3

    .line 95
    .local v0, "e":Lmiui/maml/data/Expression;
    iget-object v8, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrsValue:[D

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-nez v0, :cond_1

    const-wide/16 v4, 0x0

    :goto_1
    aput-wide v4, v8, v2

    .line 94
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 95
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    goto :goto_1

    .line 89
    .end local v0    # "e":Lmiui/maml/data/Expression;
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public attrExists(I)Z
    .locals 2
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x0

    .line 56
    iget-object v1, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mExps:[Lmiui/maml/data/Expression;

    if-eqz v1, :cond_0

    if-gez p1, :cond_1

    .line 57
    :cond_0
    return v0

    .line 56
    :cond_1
    iget-object v1, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mExps:[Lmiui/maml/data/Expression;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 59
    iget-object v1, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mExps:[Lmiui/maml/data/Expression;

    aget-object v1, v1, p1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public get(I)D
    .locals 3
    .param p1, "i"    # I

    .prologue
    const/4 v1, 0x0

    .line 44
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrsValue:[D

    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    .line 45
    :cond_0
    const-string/jumbo v0, "BaseAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fail to get number in AnimationItem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-wide/16 v0, 0x0

    return-wide v0

    .line 44
    :cond_1
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrsValue:[D

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 48
    iget-boolean v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mNeedEvaluate:Z

    if-eqz v0, :cond_2

    .line 49
    invoke-direct {p0}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->reevaluate()V

    .line 50
    iput-boolean v1, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mNeedEvaluate:Z

    .line 52
    :cond_2
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrsValue:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mNeedEvaluate:Z

    .line 101
    iget-wide v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mInitTime:J

    iput-wide v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    .line 99
    return-void
.end method
