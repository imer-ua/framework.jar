.class Lmiui/maml/data/RootExpression$VarVersionVisitor;
.super Lmiui/maml/data/ExpressionVisitor;
.source "RootExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/RootExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VarVersionVisitor"
.end annotation


# instance fields
.field private mRoot:Lmiui/maml/data/RootExpression;


# direct methods
.method public constructor <init>(Lmiui/maml/data/RootExpression;)V
    .locals 0
    .param p1, "root"    # Lmiui/maml/data/RootExpression;

    .prologue
    .line 41
    invoke-direct {p0}, Lmiui/maml/data/ExpressionVisitor;-><init>()V

    .line 42
    iput-object p1, p0, Lmiui/maml/data/RootExpression$VarVersionVisitor;->mRoot:Lmiui/maml/data/RootExpression;

    .line 40
    return-void
.end method


# virtual methods
.method public visit(Lmiui/maml/data/Expression;)V
    .locals 8
    .param p1, "exp"    # Lmiui/maml/data/Expression;

    .prologue
    .line 47
    instance-of v3, p1, Lmiui/maml/data/Expression$VariableExpression;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 48
    nop

    nop

    .line 50
    .local v1, "ep":Lmiui/maml/data/Expression$VariableExpression;
    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    .line 51
    iget-object v3, p0, Lmiui/maml/data/RootExpression$VarVersionVisitor;->mRoot:Lmiui/maml/data/RootExpression;

    new-instance v4, Lmiui/maml/data/RootExpression$VarVersion;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$VariableExpression;->getIndex()I

    move-result v5

    invoke-virtual {v1}, Lmiui/maml/data/Expression$VariableExpression;->getVersion()I

    move-result v6

    .line 52
    instance-of v7, p1, Lmiui/maml/data/Expression$NumberVariableExpression;

    .line 51
    invoke-direct {v4, v5, v6, v7}, Lmiui/maml/data/RootExpression$VarVersion;-><init>(IIZ)V

    invoke-virtual {v3, v4}, Lmiui/maml/data/RootExpression;->addVarVersion(Lmiui/maml/data/RootExpression$VarVersion;)V

    .line 46
    .end local v1    # "ep":Lmiui/maml/data/Expression$VariableExpression;
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    instance-of v3, p1, Lmiui/maml/data/Expression$FunctionExpression;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 54
    nop

    nop

    .line 55
    .local v0, "ep":Lmiui/maml/data/Expression$FunctionExpression;
    invoke-virtual {v0}, Lmiui/maml/data/Expression$FunctionExpression;->getFunName()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "func":Ljava/lang/String;
    const-string/jumbo v3, "rand"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "eval"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "preciseeval"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    :cond_2
    iget-object v3, p0, Lmiui/maml/data/RootExpression$VarVersionVisitor;->mRoot:Lmiui/maml/data/RootExpression;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lmiui/maml/data/RootExpression;->-set0(Lmiui/maml/data/RootExpression;Z)Z

    goto :goto_0
.end method
