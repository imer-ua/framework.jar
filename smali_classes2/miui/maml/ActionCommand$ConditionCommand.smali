.class Lmiui/maml/ActionCommand$ConditionCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConditionCommand"
.end annotation


# instance fields
.field private mCommand:Lmiui/maml/ActionCommand;

.field private mCondition:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lmiui/maml/ActionCommand;Lmiui/maml/data/Expression;)V
    .locals 1
    .param p1, "command"    # Lmiui/maml/ActionCommand;
    .param p2, "condition"    # Lmiui/maml/data/Expression;

    .prologue
    .line 1111
    invoke-virtual {p1}, Lmiui/maml/ActionCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;)V

    .line 1112
    iput-object p1, p0, Lmiui/maml/ActionCommand$ConditionCommand;->mCommand:Lmiui/maml/ActionCommand;

    .line 1113
    iput-object p2, p0, Lmiui/maml/ActionCommand$ConditionCommand;->mCondition:Lmiui/maml/data/Expression;

    .line 1110
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 4

    .prologue
    .line 1123
    iget-object v0, p0, Lmiui/maml/ActionCommand$ConditionCommand;->mCondition:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 1124
    iget-object v0, p0, Lmiui/maml/ActionCommand$ConditionCommand;->mCommand:Lmiui/maml/ActionCommand;

    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->perform()V

    .line 1122
    :cond_0
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 1118
    iget-object v0, p0, Lmiui/maml/ActionCommand$ConditionCommand;->mCommand:Lmiui/maml/ActionCommand;

    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->init()V

    .line 1117
    return-void
.end method
