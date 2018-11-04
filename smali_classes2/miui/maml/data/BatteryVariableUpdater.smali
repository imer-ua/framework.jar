.class public Lmiui/maml/data/BatteryVariableUpdater;
.super Lmiui/maml/data/NotifierVariableUpdater;
.source "BatteryVariableUpdater.java"


# static fields
.field public static final USE_TAG:Ljava/lang/String; = "Battery"


# instance fields
.field private mBatteryLevel:Lmiui/maml/data/IndexedVariable;

.field private mLevel:I


# direct methods
.method public constructor <init>(Lmiui/maml/data/VariableUpdaterManager;)V
    .locals 4
    .param p1, "m"    # Lmiui/maml/data/VariableUpdaterManager;

    .prologue
    .line 15
    const-string/jumbo v0, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {p0, p1, v0}, Lmiui/maml/data/NotifierVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v1, "battery_level"

    invoke-virtual {p0}, Lmiui/maml/data/VariableUpdater;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/data/BatteryVariableUpdater;->mBatteryLevel:Lmiui/maml/data/IndexedVariable;

    .line 14
    return-void
.end method


# virtual methods
.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "o"    # Ljava/lang/Object;

    .prologue
    const/16 v1, 0x64

    const/4 v4, -0x1

    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 22
    const-string/jumbo v2, "level"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 23
    .local v0, "level":I
    if-eq v0, v4, :cond_0

    iget v2, p0, Lmiui/maml/data/BatteryVariableUpdater;->mLevel:I

    if-eq v2, v0, :cond_0

    .line 24
    iget-object v2, p0, Lmiui/maml/data/BatteryVariableUpdater;->mBatteryLevel:Lmiui/maml/data/IndexedVariable;

    if-lt v0, v1, :cond_1

    :goto_0
    int-to-double v4, v1

    invoke-virtual {v2, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 25
    iput v0, p0, Lmiui/maml/data/BatteryVariableUpdater;->mLevel:I

    .line 26
    invoke-virtual {p0}, Lmiui/maml/data/VariableUpdater;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    .line 20
    .end local v0    # "level":I
    :cond_0
    return-void

    .restart local v0    # "level":I
    :cond_1
    move v1, v0

    .line 24
    goto :goto_0
.end method
