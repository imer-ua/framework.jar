.class public Lmiui/maml/ActionCommand$ObjVar;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ObjVar"
.end annotation


# instance fields
.field private mIndex:I

.field private mIndexArr:Lmiui/maml/data/Expression;

.field private mVars:Lmiui/maml/data/Variables;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vars"    # Lmiui/maml/data/Variables;

    .prologue
    .line 1536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1537
    iput-object p2, p0, Lmiui/maml/ActionCommand$ObjVar;->mVars:Lmiui/maml/data/Variables;

    .line 1538
    move-object v3, p1

    .line 1539
    .local v3, "rname":Ljava/lang/String;
    const/16 v4, 0x5b

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1540
    .local v2, "pos":I
    if-lez v2, :cond_0

    .line 1542
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1543
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1544
    .local v1, "ide":Ljava/lang/String;
    invoke-static {p2, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/ActionCommand$ObjVar;->mIndexArr:Lmiui/maml/data/Expression;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1548
    .end local v1    # "ide":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p2, v3}, Lmiui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lmiui/maml/ActionCommand$ObjVar;->mIndex:I

    .line 1536
    return-void

    .line 1545
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1552
    iget-object v2, p0, Lmiui/maml/ActionCommand$ObjVar;->mVars:Lmiui/maml/data/Variables;

    iget v3, p0, Lmiui/maml/ActionCommand$ObjVar;->mIndex:I

    invoke-virtual {v2, v3}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1553
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lmiui/maml/ActionCommand$ObjVar;->mIndexArr:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_0

    .line 1554
    instance-of v2, v1, [Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 1556
    :try_start_0
    nop

    nop

    .end local v1    # "obj":Ljava/lang/Object;
    iget-object v2, p0, Lmiui/maml/ActionCommand$ObjVar;->mIndexArr:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int v2, v2

    aget-object v2, v1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1557
    :catch_0
    move-exception v0

    .line 1558
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    return-object v4

    .line 1562
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_0
    return-object v1
.end method
