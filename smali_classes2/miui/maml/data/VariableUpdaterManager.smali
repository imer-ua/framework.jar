.class public Lmiui/maml/data/VariableUpdaterManager;
.super Ljava/lang/Object;
.source "VariableUpdaterManager.java"


# static fields
.field public static final USE_TAG_NONE:Ljava/lang/String; = "none"


# instance fields
.field private mRoot:Lmiui/maml/ScreenElementRoot;

.field private mUpdaters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/data/VariableUpdater;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .param p1, "c"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    .line 16
    iput-object p1, p0, Lmiui/maml/data/VariableUpdaterManager;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 15
    return-void
.end method


# virtual methods
.method public add(Lmiui/maml/data/VariableUpdater;)V
    .locals 1
    .param p1, "updater"    # Lmiui/maml/data/VariableUpdater;

    .prologue
    .line 24
    iget-object v0, p0, Lmiui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method

.method public addFromTag(Ljava/lang/String;)V
    .locals 9
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "none"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 60
    :cond_0
    return-void

    .line 63
    :cond_1
    const-string/jumbo v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "updaters":[Ljava/lang/String;
    array-length v7, v4

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_5

    aget-object v3, v4, v5

    .line 65
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 66
    move-object v1, v3

    .line 67
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 68
    .local v2, "property":Ljava/lang/String;
    const/16 v8, 0x2e

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 69
    .local v0, "dotPos":I
    const/4 v8, -0x1

    if-eq v0, v8, :cond_2

    .line 70
    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 71
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 73
    .end local v2    # "property":Ljava/lang/String;
    :cond_2
    const-string/jumbo v8, "DateTime"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 74
    new-instance v8, Lmiui/maml/data/DateTimeVariableUpdater;

    invoke-direct {v8, p0, v2}, Lmiui/maml/data/DateTimeVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lmiui/maml/data/VariableUpdaterManager;->add(Lmiui/maml/data/VariableUpdater;)V

    .line 64
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 75
    :cond_4
    const-string/jumbo v8, "Battery"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 76
    new-instance v8, Lmiui/maml/data/BatteryVariableUpdater;

    invoke-direct {v8, p0}, Lmiui/maml/data/BatteryVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;)V

    invoke-virtual {p0, v8}, Lmiui/maml/data/VariableUpdaterManager;->add(Lmiui/maml/data/VariableUpdater;)V

    goto :goto_1

    .line 58
    .end local v0    # "dotPos":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "s":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 52
    iget-object v2, p0, Lmiui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "updater$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/VariableUpdater;

    .line 53
    .local v0, "updater":Lmiui/maml/data/VariableUpdater;
    invoke-virtual {v0}, Lmiui/maml/data/VariableUpdater;->finish()V

    goto :goto_0

    .line 51
    .end local v0    # "updater":Lmiui/maml/data/VariableUpdater;
    :cond_0
    return-void
.end method

.method public getRoot()Lmiui/maml/ScreenElementRoot;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lmiui/maml/data/VariableUpdaterManager;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 32
    iget-object v2, p0, Lmiui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "updater$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/VariableUpdater;

    .line 33
    .local v0, "updater":Lmiui/maml/data/VariableUpdater;
    invoke-virtual {v0}, Lmiui/maml/data/VariableUpdater;->init()V

    goto :goto_0

    .line 31
    .end local v0    # "updater":Lmiui/maml/data/VariableUpdater;
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 47
    iget-object v2, p0, Lmiui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "updater$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/VariableUpdater;

    .line 48
    .local v0, "updater":Lmiui/maml/data/VariableUpdater;
    invoke-virtual {v0}, Lmiui/maml/data/VariableUpdater;->pause()V

    goto :goto_0

    .line 46
    .end local v0    # "updater":Lmiui/maml/data/VariableUpdater;
    :cond_0
    return-void
.end method

.method public remove(Lmiui/maml/data/VariableUpdater;)V
    .locals 1
    .param p1, "updater"    # Lmiui/maml/data/VariableUpdater;

    .prologue
    .line 28
    iget-object v0, p0, Lmiui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 42
    iget-object v2, p0, Lmiui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "updater$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/VariableUpdater;

    .line 43
    .local v0, "updater":Lmiui/maml/data/VariableUpdater;
    invoke-virtual {v0}, Lmiui/maml/data/VariableUpdater;->resume()V

    goto :goto_0

    .line 41
    .end local v0    # "updater":Lmiui/maml/data/VariableUpdater;
    :cond_0
    return-void
.end method

.method public tick(J)V
    .locals 3
    .param p1, "currentTime"    # J

    .prologue
    .line 37
    iget-object v2, p0, Lmiui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "updater$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/VariableUpdater;

    .line 38
    .local v0, "updater":Lmiui/maml/data/VariableUpdater;
    invoke-virtual {v0, p1, p2}, Lmiui/maml/data/VariableUpdater;->tick(J)V

    goto :goto_0

    .line 36
    .end local v0    # "updater":Lmiui/maml/data/VariableUpdater;
    :cond_0
    return-void
.end method
