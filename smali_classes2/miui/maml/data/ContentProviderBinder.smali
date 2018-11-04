.class public Lmiui/maml/data/ContentProviderBinder;
.super Lmiui/maml/data/VariableBinder;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/ContentProviderBinder$Builder;,
        Lmiui/maml/data/ContentProviderBinder$ChangeObserver;,
        Lmiui/maml/data/ContentProviderBinder$List;,
        Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;,
        Lmiui/maml/data/ContentProviderBinder$QueryHandler;,
        Lmiui/maml/data/ContentProviderBinder$Variable;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "ContentProviderBinder"

.field private static final QUERY_TOKEN:I = 0x64

.field public static final TAG_NAME:Ljava/lang/String; = "ContentProviderBinder"


# instance fields
.field protected mArgs:[Ljava/lang/String;

.field private mAwareChangeWhilePause:Z

.field public mChangeObserver:Lmiui/maml/data/ContentProviderBinder$ChangeObserver;

.field protected mColumns:[Ljava/lang/String;

.field protected mCountName:Ljava/lang/String;

.field private mCountVar:Lmiui/maml/data/IndexedVariable;

.field private mHandler:Landroid/os/Handler;

.field private mLastQueryTime:J

.field private mLastUri:Landroid/net/Uri;

.field private mList:Lmiui/maml/data/ContentProviderBinder$List;

.field private mNeedsRequery:Z

.field protected mOrder:Ljava/lang/String;

.field private mQueryHandler:Lmiui/maml/data/ContentProviderBinder$QueryHandler;

.field private mSystemBootCompleted:Z

.field private mUpdateInterval:I

.field private mUpdater:Ljava/lang/Runnable;

.field protected mUriFormatter:Lmiui/maml/util/TextFormatter;

.field protected mWhereFormatter:Lmiui/maml/util/TextFormatter;


# direct methods
.method static synthetic -get0(Lmiui/maml/data/ContentProviderBinder;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lmiui/maml/data/ContentProviderBinder;)V
    .locals 0

    invoke-direct {p0}, Lmiui/maml/data/ContentProviderBinder;->checkUpdate()V

    return-void
.end method

.method static synthetic -wrap1(Lmiui/maml/data/ContentProviderBinder;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/data/ContentProviderBinder;->onQueryComplete(Landroid/database/Cursor;)V

    return-void
.end method

.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lmiui/maml/data/ContentProviderBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 301
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 294
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 67
    new-instance v0, Lmiui/maml/data/ContentProviderBinder$ChangeObserver;

    invoke-direct {v0, p0}, Lmiui/maml/data/ContentProviderBinder$ChangeObserver;-><init>(Lmiui/maml/data/ContentProviderBinder;)V

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mChangeObserver:Lmiui/maml/data/ContentProviderBinder$ChangeObserver;

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mNeedsRequery:Z

    .line 295
    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    .line 296
    new-instance v0, Lmiui/maml/data/ContentProviderBinder$QueryHandler;

    invoke-virtual {p0}, Lmiui/maml/data/VariableBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lmiui/maml/data/ContentProviderBinder$QueryHandler;-><init>(Lmiui/maml/data/ContentProviderBinder;Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mQueryHandler:Lmiui/maml/data/ContentProviderBinder$QueryHandler;

    .line 297
    if-eqz p1, :cond_0

    .line 298
    invoke-direct {p0, p1}, Lmiui/maml/data/ContentProviderBinder;->load(Lorg/w3c/dom/Element;)V

    .line 293
    :cond_0
    return-void
.end method

.method private checkUpdate()V
    .locals 6

    .prologue
    .line 641
    iget v2, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    if-gtz v2, :cond_0

    .line 642
    return-void

    .line 643
    :cond_0
    iget-object v2, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 644
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lmiui/maml/data/ContentProviderBinder;->mLastQueryTime:J

    sub-long v0, v2, v4

    .line 645
    .local v0, "elapsedTime":J
    iget v2, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 646
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->startQuery()V

    .line 647
    const-wide/16 v0, 0x0

    .line 649
    :cond_1
    iget-object v2, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    iget v4, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 640
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 19
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 337
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/data/VariableBinder;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    .line 338
    .local v3, "vars":Lmiui/maml/data/Variables;
    const-string/jumbo v2, "uriExp"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v7

    .line 339
    .local v7, "uriExp":Lmiui/maml/data/Expression;
    const-string/jumbo v2, "uriFormatExp"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v8

    .line 340
    .local v8, "uriFormatExp":Lmiui/maml/data/Expression;
    new-instance v2, Lmiui/maml/util/TextFormatter;

    const-string/jumbo v4, "uri"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 341
    const-string/jumbo v5, "uriFormat"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "uriParas"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 340
    invoke-direct/range {v2 .. v8}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmiui/maml/data/ContentProviderBinder;->mUriFormatter:Lmiui/maml/util/TextFormatter;

    .line 342
    const-string/jumbo v2, "columns"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 343
    .local v18, "tmp":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iput-object v2, v0, Lmiui/maml/data/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    .line 344
    const-string/jumbo v2, "whereExp"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v14

    .line 345
    .local v14, "whereExp":Lmiui/maml/data/Expression;
    const-string/jumbo v2, "whereFormatExp"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v15

    .line 346
    .local v15, "whereFormatExp":Lmiui/maml/data/Expression;
    new-instance v9, Lmiui/maml/util/TextFormatter;

    const-string/jumbo v2, "where"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 347
    const-string/jumbo v2, "whereFormat"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v2, "whereParas"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v10, v3

    .line 346
    invoke-direct/range {v9 .. v15}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lmiui/maml/data/ContentProviderBinder;->mWhereFormatter:Lmiui/maml/util/TextFormatter;

    .line 348
    const-string/jumbo v2, "args"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 349
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iput-object v2, v0, Lmiui/maml/data/ContentProviderBinder;->mArgs:[Ljava/lang/String;

    .line 350
    const-string/jumbo v2, "order"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 351
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v18, 0x0

    .end local v18    # "tmp":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/maml/data/ContentProviderBinder;->mOrder:Ljava/lang/String;

    .line 353
    const-string/jumbo v2, "countName"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 354
    .restart local v18    # "tmp":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v18, 0x0

    .end local v18    # "tmp":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    .line 355
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 356
    new-instance v2, Lmiui/maml/data/IndexedVariable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v2, v4, v3, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmiui/maml/data/ContentProviderBinder;->mCountVar:Lmiui/maml/data/IndexedVariable;

    .line 359
    :cond_2
    const-string/jumbo v2, "updateInterval"

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    .line 360
    move-object/from16 v0, p0

    iget v2, v0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    if-lez v2, :cond_3

    .line 361
    new-instance v2, Lmiui/maml/data/ContentProviderBinder$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lmiui/maml/data/ContentProviderBinder$1;-><init>(Lmiui/maml/data/ContentProviderBinder;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmiui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    .line 368
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lmiui/maml/data/VariableBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    .line 370
    const-string/jumbo v2, "List"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    .line 371
    .local v17, "list":Lorg/w3c/dom/Element;
    if-eqz v17, :cond_4

    .line 373
    :try_start_0
    new-instance v2, Lmiui/maml/data/ContentProviderBinder$List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/VariableBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    move-object/from16 v0, v17

    invoke-direct {v2, v0, v4}, Lmiui/maml/data/ContentProviderBinder$List;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmiui/maml/data/ContentProviderBinder;->mList:Lmiui/maml/data/ContentProviderBinder$List;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :cond_4
    :goto_2
    const-string/jumbo v2, "vigilant"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lmiui/maml/data/ContentProviderBinder;->mAwareChangeWhilePause:Z

    .line 336
    return-void

    .line 343
    .end local v14    # "whereExp":Lmiui/maml/data/Expression;
    .end local v15    # "whereFormatExp":Lmiui/maml/data/Expression;
    .end local v17    # "list":Lorg/w3c/dom/Element;
    .restart local v18    # "tmp":Ljava/lang/String;
    :cond_5
    const-string/jumbo v2, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 349
    .restart local v14    # "whereExp":Lmiui/maml/data/Expression;
    .restart local v15    # "whereFormatExp":Lmiui/maml/data/Expression;
    :cond_6
    const-string/jumbo v2, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 374
    .end local v18    # "tmp":Ljava/lang/String;
    .restart local v17    # "list":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v16

    .line 375
    .local v16, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "ContentProviderBinder"

    const-string/jumbo v4, "invalid List"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private onQueryComplete(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 483
    if-eqz p1, :cond_1

    .line 484
    iget-boolean v0, p0, Lmiui/maml/data/VariableBinder;->mFinished:Z

    if-nez v0, :cond_0

    .line 485
    invoke-direct {p0, p1}, Lmiui/maml/data/ContentProviderBinder;->updateVariables(Landroid/database/Cursor;)V

    .line 487
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 489
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/data/VariableBinder;->onUpdateComplete()V

    .line 482
    return-void
.end method

.method private registerObserver(Landroid/net/Uri;Z)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "reg"    # Z

    .prologue
    .line 493
    invoke-virtual {p0}, Lmiui/maml/data/VariableBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 494
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v3, p0, Lmiui/maml/data/ContentProviderBinder;->mChangeObserver:Lmiui/maml/data/ContentProviderBinder$ChangeObserver;

    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 495
    if-eqz p2, :cond_0

    .line 497
    :try_start_0
    iget-object v3, p0, Lmiui/maml/data/ContentProviderBinder;->mChangeObserver:Lmiui/maml/data/ContentProviderBinder$ChangeObserver;

    const/4 v4, 0x1

    invoke-virtual {v0, p1, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 500
    :catch_0
    move-exception v2

    .line 501
    .local v2, "se":Ljava/lang/SecurityException;
    const-string/jumbo v3, "ContentProviderBinder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 498
    .end local v2    # "se":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 499
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "ContentProviderBinder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateVariables(Landroid/database/Cursor;)V
    .locals 24
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 507
    if-nez p1, :cond_3

    const/4 v7, 0x0

    .line 508
    .local v7, "count":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mCountVar:Lmiui/maml/data/IndexedVariable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mCountVar:Lmiui/maml/data/IndexedVariable;

    move-object/from16 v21, v0

    int-to-double v0, v7

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 512
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mList:Lmiui/maml/data/ContentProviderBinder$List;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mList:Lmiui/maml/data/ContentProviderBinder$List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lmiui/maml/data/ContentProviderBinder$List;->fill(Landroid/database/Cursor;)V

    .line 516
    :cond_1
    if-eqz p1, :cond_2

    if-nez v7, :cond_5

    .line 517
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/VariableBinder;->mVariables:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "v$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lmiui/maml/data/VariableBinder$Variable;

    .line 518
    .local v14, "v":Lmiui/maml/data/VariableBinder$Variable;
    check-cast v14, Lmiui/maml/data/ContentProviderBinder$Variable;

    .end local v14    # "v":Lmiui/maml/data/VariableBinder$Variable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/VariableBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lmiui/maml/data/ContentProviderBinder$Variable;->setNull(Lmiui/maml/ScreenElementRoot;)V

    goto :goto_1

    .line 507
    .end local v7    # "count":I
    .end local v15    # "v$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .restart local v7    # "count":I
    goto :goto_0

    .line 520
    .restart local v15    # "v$iterator":Ljava/util/Iterator;
    :cond_4
    return-void

    .line 522
    .end local v15    # "v$iterator":Ljava/util/Iterator;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/VariableBinder;->mVariables:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "v$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lmiui/maml/data/VariableBinder$Variable;

    .restart local v14    # "v":Lmiui/maml/data/VariableBinder$Variable;
    move-object/from16 v20, v14

    .line 523
    check-cast v20, Lmiui/maml/data/ContentProviderBinder$Variable;

    .line 524
    .local v20, "var":Lmiui/maml/data/ContentProviderBinder$Variable;
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lmiui/maml/data/ContentProviderBinder$Variable;->mBlocked:Z

    move/from16 v21, v0

    if-nez v21, :cond_6

    .line 527
    const/16 v19, 0x0

    .line 528
    .local v19, "valueStr":Ljava/lang/String;
    const-wide/16 v16, 0x0

    .line 529
    .local v16, "value":D
    const/16 v18, 0x0

    .line 530
    .local v18, "valueBytes":[B
    move-object/from16 v0, v20

    iget v0, v0, Lmiui/maml/data/ContentProviderBinder$Variable;->mRow:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 532
    :try_start_0
    move-object/from16 v0, v20

    iget-object v6, v0, Lmiui/maml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    .line 533
    .local v6, "column":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 534
    .local v5, "col":I
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-nez v21, :cond_b

    .line 535
    iget v0, v14, Lmiui/maml/data/VariableBinder$TypedValue;->mType:I

    move/from16 v21, v0

    sparse-switch v21, :sswitch_data_0

    .line 570
    iget v0, v14, Lmiui/maml/data/VariableBinder$TypedValue;->mType:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    .line 584
    const-string/jumbo v21, "ContentProviderBinder"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "invalide type"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v14, Lmiui/maml/data/VariableBinder$TypedValue;->mTypeStr:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :goto_3
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lmiui/maml/data/VariableBinder$Variable;->set(D)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    .line 595
    .end local v5    # "col":I
    .end local v6    # "column":Ljava/lang/String;
    .end local v18    # "valueBytes":[B
    .end local v19    # "valueStr":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 596
    .local v10, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v21, "ContentProviderBinder"

    const-string/jumbo v22, "failed to get value from cursor"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 537
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    .restart local v5    # "col":I
    .restart local v6    # "column":Ljava/lang/String;
    .restart local v18    # "valueBytes":[B
    .restart local v19    # "valueStr":Ljava/lang/String;
    :sswitch_0
    :try_start_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .local v13, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v21

    if-nez v21, :cond_7

    .line 541
    invoke-interface {v13}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lmiui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_2

    .line 597
    .end local v5    # "col":I
    .end local v6    # "column":Ljava/lang/String;
    .end local v13    # "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "valueBytes":[B
    .end local v19    # "valueStr":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 598
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v21, "ContentProviderBinder"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "column does not exist: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v20

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 544
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v5    # "col":I
    .restart local v6    # "column":Ljava/lang/String;
    .restart local v18    # "valueBytes":[B
    .restart local v19    # "valueStr":Ljava/lang/String;
    :sswitch_1
    :try_start_2
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 546
    .local v12, "nums":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    :cond_8
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v21

    if-nez v21, :cond_8

    .line 548
    invoke-interface {v12}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lmiui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 599
    .end local v5    # "col":I
    .end local v6    # "column":Ljava/lang/String;
    .end local v12    # "nums":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v18    # "valueBytes":[B
    .end local v19    # "valueStr":Ljava/lang/String;
    :catch_2
    move-exception v8

    .line 600
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v21, "ContentProviderBinder"

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 551
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v5    # "col":I
    .restart local v6    # "column":Ljava/lang/String;
    .restart local v18    # "valueBytes":[B
    .restart local v19    # "valueStr":Ljava/lang/String;
    :sswitch_2
    :try_start_3
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 552
    .local v19, "valueStr":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lmiui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 556
    .local v19, "valueStr":Ljava/lang/String;
    :sswitch_3
    const/4 v4, 0x0

    .line 557
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v18

    .line 558
    .local v18, "valueBytes":[B
    if-eqz v18, :cond_9

    .line 559
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 560
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    :cond_9
    iget v0, v14, Lmiui/maml/data/VariableBinder$TypedValue;->mType:I

    move/from16 v21, v0

    const/16 v22, 0x7

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 561
    invoke-virtual {v14, v4}, Lmiui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 563
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/VariableBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lmiui/maml/data/ContentProviderBinder$Variable;->getImageElement(Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/ImageScreenElement;

    move-result-object v11

    .line 564
    .local v11, "image":Lmiui/maml/elements/ImageScreenElement;
    if-eqz v11, :cond_6

    .line 565
    invoke-virtual {v11, v4}, Lmiui/maml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 572
    .end local v11    # "image":Lmiui/maml/elements/ImageScreenElement;
    .local v18, "valueBytes":[B
    :pswitch_0
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v16

    goto/16 :goto_3

    .line 575
    :pswitch_1
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v16, v0

    .line 576
    goto/16 :goto_3

    .line 578
    :pswitch_2
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v16, v0

    .line 579
    goto/16 :goto_3

    .line 581
    :pswitch_3
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v16, v0

    .line 582
    goto/16 :goto_3

    .line 593
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/VariableBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lmiui/maml/data/ContentProviderBinder$Variable;->setNull(Lmiui/maml/ScreenElementRoot;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    .line 506
    .end local v5    # "col":I
    .end local v6    # "column":Ljava/lang/String;
    .end local v14    # "v":Lmiui/maml/data/VariableBinder$Variable;
    .end local v16    # "value":D
    .end local v18    # "valueBytes":[B
    .end local v19    # "valueStr":Ljava/lang/String;
    .end local v20    # "var":Lmiui/maml/data/ContentProviderBinder$Variable;
    :cond_c
    return-void

    .line 535
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x7 -> :sswitch_3
        0x8 -> :sswitch_1
        0x9 -> :sswitch_0
        0x3e9 -> :sswitch_3
    .end sparse-switch

    .line 570
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public createCountVar()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 286
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 287
    iput-object v1, p0, Lmiui/maml/data/ContentProviderBinder;->mCountVar:Lmiui/maml/data/IndexedVariable;

    .line 285
    :goto_0
    return-void

    .line 289
    :cond_0
    new-instance v0, Lmiui/maml/data/IndexedVariable;

    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/maml/data/VariableBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCountVar:Lmiui/maml/data/IndexedVariable;

    goto :goto_0
.end method

.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 307
    iput-object v2, p0, Lmiui/maml/data/ContentProviderBinder;->mLastUri:Landroid/net/Uri;

    .line 308
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lmiui/maml/data/ContentProviderBinder;->registerObserver(Landroid/net/Uri;Z)V

    .line 309
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 310
    invoke-virtual {p0, v2}, Lmiui/maml/data/ContentProviderBinder;->setBlockedColumns([Ljava/lang/String;)V

    .line 311
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->finish()V

    .line 306
    return-void
.end method

.method public final getUriText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mUriFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {v0}, Lmiui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 630
    const-string/jumbo v0, "ContentProviderBinder"

    const-string/jumbo v1, "ChangeObserver: content changed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-boolean v0, p0, Lmiui/maml/data/VariableBinder;->mFinished:Z

    if-eqz v0, :cond_0

    .line 632
    return-void

    .line 633
    :cond_0
    iget-boolean v0, p0, Lmiui/maml/data/VariableBinder;->mPaused:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mAwareChangeWhilePause:Z

    if-eqz v0, :cond_2

    .line 636
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->startQuery()V

    .line 629
    :goto_0
    return-void

    .line 634
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mNeedsRequery:Z

    goto :goto_0
.end method

.method protected onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/ContentProviderBinder$Variable;
    .locals 2
    .param p1, "child"    # Lorg/w3c/dom/Element;

    .prologue
    .line 383
    new-instance v0, Lmiui/maml/data/ContentProviderBinder$Variable;

    invoke-virtual {p0}, Lmiui/maml/data/VariableBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, p1, v1}, Lmiui/maml/data/ContentProviderBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    return-object v0
.end method

.method protected bridge synthetic onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/VariableBinder$Variable;
    .locals 1
    .param p1, "child"    # Lorg/w3c/dom/Element;

    .prologue
    .line 382
    invoke-virtual {p0, p1}, Lmiui/maml/data/ContentProviderBinder;->onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/ContentProviderBinder$Variable;

    move-result-object v0

    return-object v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 316
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->pause()V

    .line 317
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 315
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 332
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->refresh()V

    .line 333
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->startQuery()V

    .line 331
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 322
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->resume()V

    .line 323
    iget-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mNeedsRequery:Z

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->startQuery()V

    .line 321
    :goto_0
    return-void

    .line 326
    :cond_0
    invoke-direct {p0}, Lmiui/maml/data/ContentProviderBinder;->checkUpdate()V

    goto :goto_0
.end method

.method public final setBlockedColumns([Ljava/lang/String;)V
    .locals 8
    .param p1, "cols"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 429
    const/4 v0, 0x0

    .line 430
    .local v0, "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 431
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 432
    .local v0, "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    array-length v7, p1

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v1, p1, v5

    .line 433
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 432
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 436
    .end local v0    # "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lmiui/maml/data/VariableBinder;->mVariables:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "v$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/VariableBinder$Variable;

    .local v2, "v":Lmiui/maml/data/VariableBinder$Variable;
    move-object v4, v2

    .line 437
    check-cast v4, Lmiui/maml/data/ContentProviderBinder$Variable;

    .line 438
    .local v4, "var":Lmiui/maml/data/ContentProviderBinder$Variable;
    if-eqz v0, :cond_1

    iget-object v5, v4, Lmiui/maml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    :goto_2
    iput-boolean v5, v4, Lmiui/maml/data/ContentProviderBinder$Variable;->mBlocked:Z

    goto :goto_1

    :cond_1
    move v5, v6

    goto :goto_2

    .line 428
    .end local v2    # "v":Lmiui/maml/data/VariableBinder$Variable;
    .end local v4    # "var":Lmiui/maml/data/ContentProviderBinder$Variable;
    :cond_2
    return-void
.end method

.method public startQuery()V
    .locals 9

    .prologue
    const/16 v1, 0x64

    const/4 v2, 0x0

    .line 388
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getUriText()Ljava/lang/String;

    move-result-object v8

    .line 389
    .local v8, "uriText":Ljava/lang/String;
    if-nez v8, :cond_0

    .line 390
    const-string/jumbo v0, "ContentProviderBinder"

    const-string/jumbo v1, "start query: uri null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return-void

    .line 395
    :cond_0
    iget-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mSystemBootCompleted:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "content://sms/"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    const-string/jumbo v0, "1"

    const-string/jumbo v4, "sys.boot_completed"

    invoke-static {v4}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mSystemBootCompleted:Z

    .line 397
    iget-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mSystemBootCompleted:Z

    if-nez v0, :cond_1

    .line 398
    return-void

    .line 401
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mNeedsRequery:Z

    .line 402
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mQueryHandler:Lmiui/maml/data/ContentProviderBinder$QueryHandler;

    invoke-virtual {v0, v1}, Lmiui/maml/data/AsyncQueryHandler;->cancelOperation(I)V

    .line 403
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 404
    .local v3, "uri":Landroid/net/Uri;
    if-nez v3, :cond_2

    .line 405
    return-void

    .line 407
    :cond_2
    iget v0, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mLastUri:Landroid/net/Uri;

    invoke-virtual {v3, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 412
    :cond_3
    :goto_0
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mWhereFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {v0}, Lmiui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    move-result-object v5

    .line 417
    .local v5, "where":Ljava/lang/String;
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mQueryHandler:Lmiui/maml/data/ContentProviderBinder$QueryHandler;

    iget-object v4, p0, Lmiui/maml/data/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    iget-object v6, p0, Lmiui/maml/data/ContentProviderBinder;->mArgs:[Ljava/lang/String;

    iget-object v7, p0, Lmiui/maml/data/ContentProviderBinder;->mOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lmiui/maml/data/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/maml/data/ContentProviderBinder;->mLastQueryTime:J

    .line 419
    invoke-direct {p0}, Lmiui/maml/data/ContentProviderBinder;->checkUpdate()V

    .line 387
    return-void

    .line 408
    .end local v5    # "where":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, v3, v0}, Lmiui/maml/data/ContentProviderBinder;->registerObserver(Landroid/net/Uri;Z)V

    .line 409
    iput-object v3, p0, Lmiui/maml/data/ContentProviderBinder;->mLastUri:Landroid/net/Uri;

    goto :goto_0
.end method
