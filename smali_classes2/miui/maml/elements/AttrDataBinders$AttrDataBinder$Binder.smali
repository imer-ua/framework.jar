.class abstract Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;
.super Ljava/lang/Object;
.source "AttrDataBinders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Binder"
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;


# direct methods
.method private constructor <init>(Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;)V
    .locals 0
    .param p1, "this$1"    # Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;

    .prologue
    .line 64
    iput-object p1, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;->this$1:Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;)V
    .locals 0
    .param p1, "this$1"    # Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;-><init>(Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;)V

    return-void
.end method


# virtual methods
.method public abstract bind(Lmiui/maml/elements/ScreenElement;)V
.end method
