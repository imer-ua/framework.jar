.class Lmiui/maml/ActionCommand$DelayCommand$1;
.super Ljava/lang/Object;
.source "ActionCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/ActionCommand$DelayCommand;-><init>(Lmiui/maml/ActionCommand;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/maml/ActionCommand$DelayCommand;


# direct methods
.method constructor <init>(Lmiui/maml/ActionCommand$DelayCommand;)V
    .locals 0
    .param p1, "this$1"    # Lmiui/maml/ActionCommand$DelayCommand;

    .prologue
    .line 1138
    iput-object p1, p0, Lmiui/maml/ActionCommand$DelayCommand$1;->this$1:Lmiui/maml/ActionCommand$DelayCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1140
    iget-object v0, p0, Lmiui/maml/ActionCommand$DelayCommand$1;->this$1:Lmiui/maml/ActionCommand$DelayCommand;

    invoke-static {v0}, Lmiui/maml/ActionCommand$DelayCommand;->-get0(Lmiui/maml/ActionCommand$DelayCommand;)Lmiui/maml/ActionCommand;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->perform()V

    .line 1139
    return-void
.end method
