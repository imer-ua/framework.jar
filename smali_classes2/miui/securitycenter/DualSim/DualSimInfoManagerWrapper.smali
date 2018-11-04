.class public Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;
.super Ljava/lang/Object;
.source "DualSimInfoManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;,
        Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;,
        Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SubscriptionInfoComparable;
    }
.end annotation


# static fields
.field private static mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mSimInfoChangeImpl:Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;


# direct methods
.method static synthetic -wrap0()V
    .locals 0

    invoke-static {}, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->broadcastSubscriptionsChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mListeners:Ljava/util/ArrayList;

    .line 13
    new-instance v0, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;-><init>(Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;)V

    sput-object v0, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mSimInfoChangeImpl:Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;

    .line 10
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static broadcastSubscriptionsChanged()V
    .locals 4

    .prologue
    .line 34
    sget-object v3, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 35
    :try_start_0
    sget-object v2, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;

    .line 36
    .local v0, "listener":Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;
    invoke-interface {v0}, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;->onSubscriptionsChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 34
    .end local v0    # "listener":Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    .line 33
    return-void
.end method

.method public static getSimInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 67
    :try_start_0
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    .line 68
    .local v5, "siminfoList":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 69
    :cond_0
    return-object v8

    .line 72
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 73
    new-instance v6, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SubscriptionInfoComparable;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SubscriptionInfoComparable;-><init>(Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SubscriptionInfoComparable;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 76
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v4, "simInfos":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "info$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/SubscriptionInfo;

    .line 78
    .local v1, "info":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 79
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 80
    .local v3, "simInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "simId"

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string/jumbo v6, "slotNum"

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string/jumbo v6, "simName"

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string/jumbo v6, "iccId"

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    .end local v1    # "info":Lmiui/telephony/SubscriptionInfo;
    .end local v2    # "info$iterator":Ljava/util/Iterator;
    .end local v3    # "simInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "simInfos":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v5    # "siminfoList":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    return-object v8

    .line 87
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "info$iterator":Ljava/util/Iterator;
    .restart local v4    # "simInfos":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v5    # "siminfoList":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    :cond_4
    return-object v4
.end method

.method private static registerChangeListener(Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;)V
    .locals 1
    .param p0, "listener"    # Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;

    .prologue
    .line 58
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 57
    return-void
.end method

.method public static registerSimInfoChangeListener(Landroid/content/Context;Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;

    .prologue
    .line 16
    sget-object v1, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 17
    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    .line 15
    return-void

    .line 18
    :cond_1
    :try_start_1
    sget-object v0, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mSimInfoChangeImpl:Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;

    invoke-static {v0}, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->registerChangeListener(Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static unRegisterChangeListener(Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;)V
    .locals 1
    .param p0, "listener"    # Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;

    .prologue
    .line 62
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 61
    return-void
.end method

.method public static unRegisterSimInfoChangeListener(Landroid/content/Context;Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;

    .prologue
    .line 25
    sget-object v1, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 26
    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->mSimInfoChangeImpl:Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;

    invoke-static {v0}, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->unRegisterChangeListener(Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
