.class public Lmiui/maml/elements/FramerateController;
.super Lmiui/maml/elements/ScreenElement;
.source "FramerateController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/FramerateController$ControlPoint;
    }
.end annotation


# static fields
.field public static final INNER_TAG:Ljava/lang/String; = "ControlPoint"

.field public static final TAG_NAME:Ljava/lang/String; = "FramerateController"


# instance fields
.field private mControlPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/FramerateController$ControlPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mDelay:J

.field private mLastUpdateTime:J

.field private mLock:Ljava/lang/Object;

.field private mLoop:Z

.field private mNextUpdateInterval:J

.field private mStartTime:J

.field private mStopped:Z

.field private mTag:Ljava/lang/String;

.field private mTimeRange:J


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 12
    .param p1, "ele"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    const/4 v6, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 20
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    .line 24
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lmiui/maml/elements/FramerateController;->mLock:Ljava/lang/Object;

    .line 42
    const-string/jumbo v5, "loop"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lmiui/maml/elements/FramerateController;->mLoop:Z

    .line 43
    const-string/jumbo v5, "tag"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lmiui/maml/elements/FramerateController;->mTag:Ljava/lang/String;

    .line 44
    const-string/jumbo v5, "delay"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 45
    .local v4, "strDelay":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 47
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lmiui/maml/elements/FramerateController;->mDelay:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_0
    :goto_0
    const-string/jumbo v5, "ControlPoint"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 54
    .local v3, "nodeList":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 55
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 56
    .local v1, "e":Lorg/w3c/dom/Element;
    iget-object v5, p0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    new-instance v7, Lmiui/maml/elements/FramerateController$ControlPoint;

    invoke-direct {v7, v1}, Lmiui/maml/elements/FramerateController$ControlPoint;-><init>(Lorg/w3c/dom/Element;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 48
    .end local v1    # "e":Lorg/w3c/dom/Element;
    .end local v2    # "i":I
    .end local v3    # "nodeList":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "FramerateController"

    const-string/jumbo v7, "invalid delay attribute"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "i":I
    .restart local v3    # "nodeList":Lorg/w3c/dom/NodeList;
    :cond_1
    iget-object v5, p0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    iget-object v7, p0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/maml/elements/FramerateController$ControlPoint;

    iget-wide v8, v5, Lmiui/maml/elements/FramerateController$ControlPoint;->mTime:J

    iput-wide v8, p0, Lmiui/maml/elements/FramerateController;->mTimeRange:J

    .line 60
    iget-boolean v5, p0, Lmiui/maml/elements/FramerateController;->mLoop:Z

    if-eqz v5, :cond_2

    iget-wide v8, p0, Lmiui/maml/elements/FramerateController;->mTimeRange:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_2
    iput-boolean v5, p0, Lmiui/maml/elements/FramerateController;->mLoop:Z

    .line 40
    return-void

    :cond_2
    move v5, v6

    .line 60
    goto :goto_2
.end method

.method private restart(J)V
    .locals 5
    .param p1, "startTime"    # J

    .prologue
    .line 68
    iget-object v1, p0, Lmiui/maml/elements/FramerateController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 69
    :try_start_0
    iget-wide v2, p0, Lmiui/maml/elements/FramerateController;->mDelay:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lmiui/maml/elements/FramerateController;->mStartTime:J

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/elements/FramerateController;->mStopped:Z

    .line 71
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lmiui/maml/elements/FramerateController;->mLastUpdateTime:J

    .line 72
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    .line 73
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->requestUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 67
    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 64
    return-void
.end method

.method protected playAnim(JJJZZ)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .param p7, "isLoop"    # Z
    .param p8, "isDelay"    # Z

    .prologue
    .line 86
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    return-void

    .line 88
    :cond_0
    invoke-super/range {p0 .. p8}, Lmiui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    .line 89
    sub-long v0, p1, p3

    invoke-direct {p0, v0, v1}, Lmiui/maml/elements/FramerateController;->restart(J)V

    .line 85
    return-void
.end method

.method public reset(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->reset(J)V

    .line 81
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/FramerateController;->restart(J)V

    .line 79
    return-void
.end method

.method public setAnim([Ljava/lang/String;)V
    .locals 1
    .param p1, "tags"    # [Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lmiui/maml/elements/FramerateController;->mTag:Ljava/lang/String;

    invoke-static {p1, v0}, Lmiui/maml/elements/FramerateController;->isTagEnable([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/maml/elements/ScreenElement;->show(Z)V

    .line 93
    return-void
.end method

.method public updateFramerate(J)J
    .locals 19
    .param p1, "currentTime"    # J

    .prologue
    .line 99
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ScreenElement;->updateVisibility()V

    .line 100
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ScreenElement;->isVisible()Z

    move-result v12

    if-nez v12, :cond_0

    .line 101
    const-wide v12, 0x7fffffffffffffffL

    return-wide v12

    .line 104
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/elements/FramerateController;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 105
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lmiui/maml/elements/FramerateController;->mStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v12, :cond_1

    .line 106
    const-wide v12, 0x7fffffffffffffffL

    monitor-exit v14

    return-wide v12

    .line 109
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v12, v0, Lmiui/maml/elements/FramerateController;->mLastUpdateTime:J

    const-wide/16 v16, 0x0

    cmp-long v12, v12, v16

    if-lez v12, :cond_2

    .line 110
    move-object/from16 v0, p0

    iget-wide v12, v0, Lmiui/maml/elements/FramerateController;->mLastUpdateTime:J

    sub-long v6, p1, v12

    .line 111
    .local v6, "elapsedTime":J
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-ltz v12, :cond_2

    move-object/from16 v0, p0

    iget-wide v12, v0, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    cmp-long v12, v6, v12

    if-gez v12, :cond_2

    .line 112
    move-object/from16 v0, p0

    iget-wide v12, v0, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    sub-long/2addr v12, v6

    move-object/from16 v0, p0

    iput-wide v12, v0, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    .line 113
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmiui/maml/elements/FramerateController;->mLastUpdateTime:J

    .line 114
    move-object/from16 v0, p0

    iget-wide v12, v0, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v14

    return-wide v12

    .line 118
    .end local v6    # "elapsedTime":J
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-wide v12, v0, Lmiui/maml/elements/FramerateController;->mStartTime:J

    sub-long v6, p1, v12

    .line 119
    .restart local v6    # "elapsedTime":J
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-gez v12, :cond_3

    .line 120
    const-wide/16 v6, 0x0

    .line 121
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lmiui/maml/elements/FramerateController;->mLoop:Z

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-wide v12, v0, Lmiui/maml/elements/FramerateController;->mTimeRange:J

    const-wide/16 v16, 0x1

    add-long v12, v12, v16

    rem-long v10, v6, v12

    .line 122
    .local v10, "time":J
    :goto_0
    const-wide/16 v8, 0x0

    .line 123
    .local v8, "nextUpdateTime":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_8

    .line 124
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/FramerateController$ControlPoint;

    .line 125
    .local v4, "cp":Lmiui/maml/elements/FramerateController$ControlPoint;
    iget-wide v12, v4, Lmiui/maml/elements/FramerateController$ControlPoint;->mTime:J

    cmp-long v12, v10, v12

    if-ltz v12, :cond_7

    .line 126
    iget v12, v4, Lmiui/maml/elements/FramerateController$ControlPoint;->mFramerate:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lmiui/maml/elements/ScreenElement;->requestFramerate(F)V

    .line 127
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lmiui/maml/elements/FramerateController;->mLoop:Z

    if-nez v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ne v5, v12, :cond_4

    .line 128
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lmiui/maml/elements/FramerateController;->mStopped:Z

    .line 130
    :cond_4
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmiui/maml/elements/FramerateController;->mLastUpdateTime:J

    .line 131
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lmiui/maml/elements/FramerateController;->mStopped:Z

    if-eqz v12, :cond_6

    const-wide v12, 0x7fffffffffffffffL

    :goto_2
    move-object/from16 v0, p0

    iput-wide v12, v0, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    .line 132
    move-object/from16 v0, p0

    iget-wide v12, v0, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v14

    return-wide v12

    .line 121
    .end local v4    # "cp":Lmiui/maml/elements/FramerateController$ControlPoint;
    .end local v5    # "i":I
    .end local v8    # "nextUpdateTime":J
    .end local v10    # "time":J
    :cond_5
    move-wide v10, v6

    .restart local v10    # "time":J
    goto :goto_0

    .line 131
    .restart local v4    # "cp":Lmiui/maml/elements/FramerateController$ControlPoint;
    .restart local v5    # "i":I
    .restart local v8    # "nextUpdateTime":J
    :cond_6
    sub-long v12, v8, v10

    goto :goto_2

    .line 134
    :cond_7
    :try_start_3
    iget-wide v8, v4, Lmiui/maml/elements/FramerateController$ControlPoint;->mTime:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 123
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .end local v4    # "cp":Lmiui/maml/elements/FramerateController$ControlPoint;
    :cond_8
    monitor-exit v14

    .line 137
    const-wide v12, 0x7fffffffffffffffL

    return-wide v12

    .line 104
    .end local v5    # "i":I
    .end local v6    # "elapsedTime":J
    .end local v8    # "nextUpdateTime":J
    .end local v10    # "time":J
    :catchall_0
    move-exception v12

    monitor-exit v14

    throw v12
.end method
