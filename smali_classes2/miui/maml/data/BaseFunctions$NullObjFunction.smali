.class Lmiui/maml/data/BaseFunctions$NullObjFunction;
.super Lmiui/maml/data/Expression$FunctionImpl;
.source "BaseFunctions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/BaseFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullObjFunction"
.end annotation


# instance fields
.field private mObjName:Ljava/lang/String;

.field private mVarIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/maml/data/Expression$FunctionImpl;-><init>(I)V

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mVarIndex:I

    .line 123
    return-void
.end method


# virtual methods
.method public evaluate([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)D
    .locals 4
    .param p1, "mParaExps"    # [Lmiui/maml/data/Expression;
    .param p2, "vars"    # Lmiui/maml/data/Variables;

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 129
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "str":Ljava/lang/String;
    iget-object v2, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mObjName:Ljava/lang/String;

    if-eq v0, v2, :cond_0

    .line 132
    iput-object v0, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mObjName:Ljava/lang/String;

    .line 133
    iget-object v2, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mObjName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mObjName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lmiui/maml/data/Variables;->existsObj(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    iget-object v2, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mObjName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lmiui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mVarIndex:I

    .line 139
    :cond_0
    :goto_0
    iget v2, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mVarIndex:I

    if-ne v2, v3, :cond_2

    .line 140
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    return-wide v2

    .line 134
    :cond_1
    iput v3, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mVarIndex:I

    goto :goto_0

    .line 142
    :cond_2
    iget v2, p0, Lmiui/maml/data/BaseFunctions$NullObjFunction;->mVarIndex:I

    invoke-virtual {p2, v2}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    int-to-double v2, v1

    return-wide v2
.end method

.method public evaluateStr([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)Ljava/lang/String;
    .locals 1
    .param p1, "mParaExps"    # [Lmiui/maml/data/Expression;
    .param p2, "vars"    # Lmiui/maml/data/Variables;

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method
