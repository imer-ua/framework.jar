.class Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$ParamsBinder;
.super Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;
.source "AttrDataBinders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParamsBinder"
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;


# direct methods
.method private constructor <init>(Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;)V
    .locals 1
    .param p1, "this$1"    # Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;

    .prologue
    .line 75
    iput-object p1, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$ParamsBinder;->this$1:Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;-><init>(Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$ParamsBinder;)V
    .locals 0
    .param p1, "this$1"    # Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$ParamsBinder;-><init>(Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;)V

    return-void
.end method


# virtual methods
.method public bind(Lmiui/maml/elements/ScreenElement;)V
    .locals 3
    .param p1, "e"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    .line 78
    check-cast p1, Lmiui/maml/elements/TextScreenElement;

    .end local p1    # "e":Lmiui/maml/elements/ScreenElement;
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$ParamsBinder;->this$1:Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;

    iget-object v1, v1, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;->mVars:Lmiui/maml/data/ContextVariables;

    iget-object v2, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$ParamsBinder;->this$1:Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;

    iget-object v2, v2, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;->mData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/maml/data/ContextVariables;->getVar(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lmiui/maml/elements/TextScreenElement;->setParams([Ljava/lang/Object;)V

    .line 77
    return-void
.end method
