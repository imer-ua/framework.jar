.class public Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;
.super Lmiui/maml/elements/BitmapProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapVariableProvider"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "BitmapVar"


# instance fields
.field private mCurSrc:Ljava/lang/String;

.field private mIndexExpression:Lmiui/maml/data/Expression;

.field private mVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .locals 0
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 413
    invoke-direct {p0, p1}, Lmiui/maml/elements/BitmapProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    .line 412
    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;ZII)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 11
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 432
    iget-object v7, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mCurSrc:Ljava/lang/String;

    invoke-static {v7, p1}, Lmiui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 433
    iput-object v8, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVar:Lmiui/maml/data/IndexedVariable;

    .line 434
    iput-object v8, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mIndexExpression:Lmiui/maml/data/Expression;

    .line 435
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 436
    const/16 v7, 0x5b

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 437
    .local v4, "leftBracket":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 438
    .local v5, "len":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_0

    add-int/lit8 v7, v5, -0x1

    if-ge v4, v7, :cond_0

    .line 439
    add-int/lit8 v7, v5, -0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5d

    if-ne v7, v8, :cond_0

    .line 440
    iget-object v7, p0, Lmiui/maml/elements/BitmapProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v7}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v7

    .line 441
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v9, v5, -0x1

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 440
    invoke-static {v7, v8}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v7

    iput-object v7, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mIndexExpression:Lmiui/maml/data/Expression;

    .line 444
    :cond_0
    iget-object v7, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mIndexExpression:Lmiui/maml/data/Expression;

    if-nez v7, :cond_4

    move-object v6, p1

    .line 445
    .local v6, "varName":Ljava/lang/String;
    :goto_0
    new-instance v7, Lmiui/maml/data/IndexedVariable;

    iget-object v8, p0, Lmiui/maml/elements/BitmapProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v8}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v8

    invoke-direct {v7, v6, v8, v10}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v7, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVar:Lmiui/maml/data/IndexedVariable;

    .line 447
    .end local v4    # "leftBracket":I
    .end local v5    # "len":I
    .end local v6    # "varName":Ljava/lang/String;
    :cond_1
    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mCurSrc:Ljava/lang/String;

    .line 450
    :cond_2
    const/4 v2, 0x0

    .line 452
    .local v2, "bmp":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v7, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v7, :cond_3

    .line 453
    iget-object v7, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mIndexExpression:Lmiui/maml/data/Expression;

    if-eqz v7, :cond_5

    .line 454
    iget-object v7, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVar:Lmiui/maml/data/IndexedVariable;

    iget-object v8, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mIndexExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v8}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    double-to-int v8, v8

    invoke-virtual {v7, v8}, Lmiui/maml/data/IndexedVariable;->getArr(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    :cond_3
    :goto_1
    iget-object v7, p0, Lmiui/maml/elements/BitmapProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v7, v2}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 463
    iget-object v7, p0, Lmiui/maml/elements/BitmapProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object v7

    .line 444
    .restart local v4    # "leftBracket":I
    .restart local v5    # "len":I
    :cond_4
    invoke-virtual {p1, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "varName":Ljava/lang/String;
    goto :goto_0

    .line 456
    .end local v4    # "leftBracket":I
    .end local v5    # "len":I
    .end local v6    # "varName":Ljava/lang/String;
    .restart local v2    # "bmp":Landroid/graphics/Bitmap;
    :cond_5
    :try_start_1
    iget-object v7, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v7}, Lmiui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v2, v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    .local v2, "bmp":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 459
    .local v2, "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 460
    .local v3, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v7, "BitmapProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "fail to cast as Bitmap from object: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public init(Ljava/lang/String;)V
    .locals 3
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 422
    invoke-super {p0, p1}, Lmiui/maml/elements/BitmapProvider;->init(Ljava/lang/String;)V

    .line 423
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    return-void

    .line 426
    :cond_0
    new-instance v0, Lmiui/maml/data/IndexedVariable;

    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVar:Lmiui/maml/data/IndexedVariable;

    .line 427
    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mCurSrc:Ljava/lang/String;

    .line 421
    return-void
.end method
