.class Lmiui/maml/ActionCommand$VariableBinderCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VariableBinderCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$VariableBinderCommand$Command;
    }
.end annotation


# static fields
.field private static final synthetic -miui-maml-ActionCommand$VariableBinderCommand$CommandSwitchesValues:[I = null

.field public static final TAG_NAME:Ljava/lang/String; = "BinderCommand"


# instance fields
.field private mBinder:Lmiui/maml/data/VariableBinder;

.field private mCommand:Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

.field private mName:Ljava/lang/String;


# direct methods
.method private static synthetic -getmiui-maml-ActionCommand$VariableBinderCommand$CommandSwitchesValues()[I
    .locals 3

    sget-object v0, Lmiui/maml/ActionCommand$VariableBinderCommand;->-miui-maml-ActionCommand$VariableBinderCommand$CommandSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/maml/ActionCommand$VariableBinderCommand;->-miui-maml-ActionCommand$VariableBinderCommand$CommandSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;->values()[Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;->Invalid:Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;->Refresh:Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lmiui/maml/ActionCommand$VariableBinderCommand;->-miui-maml-ActionCommand$VariableBinderCommand$CommandSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 858
    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;)V

    .line 851
    sget-object v1, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;->Invalid:Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    iput-object v1, p0, Lmiui/maml/ActionCommand$VariableBinderCommand;->mCommand:Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    .line 859
    const-string/jumbo v1, "name"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$VariableBinderCommand;->mName:Ljava/lang/String;

    .line 860
    const-string/jumbo v1, "command"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 861
    .local v0, "command":Ljava/lang/String;
    const-string/jumbo v1, "refresh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 862
    sget-object v1, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;->Refresh:Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    iput-object v1, p0, Lmiui/maml/ActionCommand$VariableBinderCommand;->mCommand:Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    .line 857
    :cond_0
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 2

    .prologue
    .line 873
    iget-object v0, p0, Lmiui/maml/ActionCommand$VariableBinderCommand;->mBinder:Lmiui/maml/data/VariableBinder;

    if-eqz v0, :cond_0

    .line 874
    invoke-static {}, Lmiui/maml/ActionCommand$VariableBinderCommand;->-getmiui-maml-ActionCommand$VariableBinderCommand$CommandSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$VariableBinderCommand;->mCommand:Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 876
    :pswitch_0
    iget-object v0, p0, Lmiui/maml/ActionCommand$VariableBinderCommand;->mBinder:Lmiui/maml/data/VariableBinder;

    invoke-virtual {v0}, Lmiui/maml/data/VariableBinder;->refresh()V

    goto :goto_0

    .line 874
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 2

    .prologue
    .line 868
    invoke-virtual {p0}, Lmiui/maml/ActionCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$VariableBinderCommand;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->findBinder(Ljava/lang/String;)Lmiui/maml/data/VariableBinder;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$VariableBinderCommand;->mBinder:Lmiui/maml/data/VariableBinder;

    .line 867
    return-void
.end method
