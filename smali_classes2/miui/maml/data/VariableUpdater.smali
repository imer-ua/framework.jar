.class public Lmiui/maml/data/VariableUpdater;
.super Ljava/lang/Object;
.source "VariableUpdater.java"


# instance fields
.field private mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;


# direct methods
.method public constructor <init>(Lmiui/maml/data/VariableUpdaterManager;)V
    .locals 0
    .param p1, "m"    # Lmiui/maml/data/VariableUpdaterManager;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lmiui/maml/data/VariableUpdater;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    .line 11
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method protected final getContext()Lmiui/maml/ScreenContext;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lmiui/maml/data/VariableUpdater;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    return-object v0
.end method

.method protected final getRoot()Lmiui/maml/ScreenElementRoot;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lmiui/maml/data/VariableUpdater;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableUpdaterManager;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public tick(J)V
    .locals 0
    .param p1, "currentTime"    # J

    .prologue
    .line 26
    return-void
.end method
