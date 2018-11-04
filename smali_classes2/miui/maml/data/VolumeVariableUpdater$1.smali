.class Lmiui/maml/data/VolumeVariableUpdater$1;
.super Ljava/lang/Object;
.source "VolumeVariableUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/VolumeVariableUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/data/VolumeVariableUpdater;


# direct methods
.method constructor <init>(Lmiui/maml/data/VolumeVariableUpdater;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/maml/data/VolumeVariableUpdater;

    .prologue
    .line 41
    iput-object p1, p0, Lmiui/maml/data/VolumeVariableUpdater$1;->this$0:Lmiui/maml/data/VolumeVariableUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 44
    iget-object v0, p0, Lmiui/maml/data/VolumeVariableUpdater$1;->this$0:Lmiui/maml/data/VolumeVariableUpdater;

    invoke-static {v0}, Lmiui/maml/data/VolumeVariableUpdater;->-get0(Lmiui/maml/data/VolumeVariableUpdater;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 42
    return-void
.end method
