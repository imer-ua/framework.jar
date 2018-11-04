.class Lmiui/app/ToggleManagerCompatibility$3;
.super Landroid/database/ContentObserver;
.source "ToggleManagerCompatibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ToggleManagerCompatibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/ToggleManagerCompatibility;


# direct methods
.method constructor <init>(Lmiui/app/ToggleManagerCompatibility;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/app/ToggleManagerCompatibility;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 681
    iput-object p1, p0, Lmiui/app/ToggleManagerCompatibility$3;->this$0:Lmiui/app/ToggleManagerCompatibility;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 9
    .param p1, "selfChange"    # Z

    .prologue
    .line 684
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get8()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 685
    :try_start_0
    iget-object v6, p0, Lmiui/app/ToggleManagerCompatibility$3;->this$0:Lmiui/app/ToggleManagerCompatibility;

    invoke-static {v6}, Lmiui/app/ToggleManagerCompatibility;->-get0(Lmiui/app/ToggleManagerCompatibility;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lmiui/app/ToggleManagerCompatibility;->getCustomToggleIds(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 686
    .local v0, "customIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get1()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 687
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get1()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 688
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get3()Ljava/util/HashMap;

    move-result-object v6

    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get1()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get5()Ljava/util/HashMap;

    move-result-object v6

    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get1()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get6()Ljava/util/HashMap;

    move-result-object v6

    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get1()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get4()Ljava/util/HashMap;

    move-result-object v6

    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get1()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get1()Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get1()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v7

    .line 697
    iget-object v6, p0, Lmiui/app/ToggleManagerCompatibility$3;->this$0:Lmiui/app/ToggleManagerCompatibility;

    invoke-static {v6}, Lmiui/app/ToggleManagerCompatibility;->-get9(Lmiui/app/ToggleManagerCompatibility;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "toggleOrderChangedListener$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/app/ToggleManager$OnToggleOrderChangedListener;

    .line 698
    .local v4, "toggleOrderChangedListener":Lmiui/app/ToggleManager$OnToggleOrderChangedListener;
    invoke-interface {v4}, Lmiui/app/ToggleManager$OnToggleOrderChangedListener;->OnToggleOrderChanged()V

    goto :goto_1

    .line 684
    .end local v0    # "customIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1    # "i":I
    .end local v4    # "toggleOrderChangedListener":Lmiui/app/ToggleManager$OnToggleOrderChangedListener;
    .end local v5    # "toggleOrderChangedListener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 701
    .restart local v0    # "customIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v1    # "i":I
    .restart local v5    # "toggleOrderChangedListener$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->-get7()Z

    move-result v6

    if-nez v6, :cond_3

    .line 702
    iget-object v6, p0, Lmiui/app/ToggleManagerCompatibility$3;->this$0:Lmiui/app/ToggleManagerCompatibility;

    invoke-static {v6}, Lmiui/app/ToggleManagerCompatibility;->-get2(Lmiui/app/ToggleManagerCompatibility;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "onCustomToggleChangedListener$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/ToggleManagerCompatibility$OnCustomToggleChangedListener;

    .line 703
    .local v2, "onCustomToggleChangedListener":Lmiui/app/ToggleManagerCompatibility$OnCustomToggleChangedListener;
    invoke-interface {v2}, Lmiui/app/ToggleManagerCompatibility$OnCustomToggleChangedListener;->onCustomToggleChanged()V

    goto :goto_2

    .line 683
    .end local v2    # "onCustomToggleChangedListener":Lmiui/app/ToggleManagerCompatibility$OnCustomToggleChangedListener;
    .end local v3    # "onCustomToggleChangedListener$iterator":Ljava/util/Iterator;
    :cond_3
    return-void
.end method
