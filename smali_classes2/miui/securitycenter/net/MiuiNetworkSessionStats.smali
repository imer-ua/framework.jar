.class public Lmiui/securitycenter/net/MiuiNetworkSessionStats;
.super Ljava/lang/Object;
.source "MiuiNetworkSessionStats.java"


# instance fields
.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string/jumbo v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsService:Landroid/net/INetworkStatsService;

    .line 25
    return-void
.end method

.method private buildNetworkStatsMap(Landroid/net/NetworkTemplate;JJ)Landroid/util/SparseArray;
    .locals 26
    .param p1, "networkTemplate"    # Landroid/net/NetworkTemplate;
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkTemplate;",
            "JJ)",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 147
    const/4 v12, 0x0

    .line 149
    .local v12, "networkStats":Landroid/net/NetworkStats;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 150
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 152
    :cond_1
    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    invoke-direct/range {v2 .. v8}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 157
    .end local v12    # "networkStats":Landroid/net/NetworkStats;
    :goto_0
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Landroid/net/NetworkStats;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 158
    :cond_2
    const/4 v2, 0x0

    return-object v2

    .line 153
    .restart local v12    # "networkStats":Landroid/net/NetworkStats;
    :catch_0
    move-exception v9

    .line 154
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 161
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v12    # "networkStats":Landroid/net/NetworkStats;
    :cond_3
    new-instance v13, Landroid/util/SparseArray;

    const/16 v2, 0xff

    invoke-direct {v13, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 162
    .local v13, "networkStatsMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;>;"
    new-instance v19, Landroid/net/NetworkStats$Entry;

    invoke-direct/range {v19 .. v19}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 165
    .local v19, "statsEntry":Landroid/net/NetworkStats$Entry;
    invoke-virtual {v12}, Landroid/net/NetworkStats;->size()I

    move-result v18

    .line 166
    .local v18, "size":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    move/from16 v0, v18

    if-ge v11, v0, :cond_7

    .line 167
    move-object/from16 v0, v19

    invoke-virtual {v12, v11, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v10

    .line 168
    .local v10, "entry":Landroid/net/NetworkStats$Entry;
    if-nez v10, :cond_4

    .line 166
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 172
    :cond_4
    iget v0, v10, Landroid/net/NetworkStats$Entry;->uid:I

    move/from16 v21, v0

    .line 173
    .local v21, "uid":I
    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map;

    .line 174
    .local v20, "statsInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v20, :cond_5

    .line 175
    invoke-direct/range {p0 .. p0}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->buildStatsMap()Ljava/util/Map;

    move-result-object v20

    .line 176
    move/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 179
    :cond_5
    iget v2, v10, Landroid/net/NetworkStats$Entry;->set:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 180
    const-string/jumbo v2, "txForegroundBytes"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, v10, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long v24, v2, v4

    .line 181
    .local v24, "txForegroundBytes":J
    const-string/jumbo v2, "txForegroundBytes"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string/jumbo v2, "rxForegroundBytes"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, v10, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long v16, v2, v4

    .line 184
    .local v16, "rxForegroundBytes":J
    const-string/jumbo v2, "rxForegroundBytes"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .end local v16    # "rxForegroundBytes":J
    .end local v24    # "txForegroundBytes":J
    :cond_6
    const-string/jumbo v2, "txBytes"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, v10, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long v22, v2, v4

    .line 188
    .local v22, "txBytes":J
    const-string/jumbo v2, "txBytes"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string/jumbo v2, "rxBytes"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, v10, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long v14, v2, v4

    .line 191
    .local v14, "rxBytes":J
    const-string/jumbo v2, "rxBytes"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 194
    .end local v10    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v14    # "rxBytes":J
    .end local v20    # "statsInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v21    # "uid":I
    .end local v22    # "txBytes":J
    :cond_7
    return-object v13
.end method

.method private buildStatsMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 199
    .local v0, "statsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string/jumbo v1, "rxForegroundBytes"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string/jumbo v1, "txForegroundBytes"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string/jumbo v1, "txBytes"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string/jumbo v1, "rxBytes"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    return-object v0
.end method

.method private buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 1
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    .line 222
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    const/4 v0, 0x0

    return-object v0

    .line 225
    :cond_0
    invoke-static {p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0
.end method

.method private buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;
    .locals 1

    .prologue
    .line 229
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0
.end method

.method private getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "fields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsSession:Landroid/net/INetworkStatsSession;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method private getHistoryStats(Landroid/net/NetworkStatsHistory;JJ)[J
    .locals 8
    .param p1, "networkHistory"    # Landroid/net/NetworkStatsHistory;
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J

    .prologue
    .line 117
    const/4 v1, 0x2

    new-array v7, v1, [J

    .line 118
    .local v7, "total":[J
    new-instance v6, Landroid/net/NetworkStatsHistory$Entry;

    invoke-direct {v6}, Landroid/net/NetworkStatsHistory$Entry;-><init>()V

    .line 119
    .local v6, "statsEntry":Landroid/net/NetworkStatsHistory$Entry;
    if-eqz p1, :cond_0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 120
    invoke-virtual/range {v1 .. v6}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    .line 121
    .local v0, "entry":Landroid/net/NetworkStatsHistory$Entry;
    iget-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 122
    iget-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    const/4 v1, 0x0

    aput-wide v2, v7, v1

    .line 127
    :goto_0
    iget-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    .line 128
    iget-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    const/4 v1, 0x1

    aput-wide v2, v7, v1

    .line 133
    .end local v0    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_0
    :goto_1
    return-object v7

    .line 124
    .restart local v0    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_1
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    aput-wide v2, v7, v1

    goto :goto_0

    .line 130
    :cond_2
    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    aput-wide v2, v7, v1

    goto :goto_1
.end method

.method private getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .locals 6
    .param p1, "networkTemplate"    # Landroid/net/NetworkTemplate;
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsSession:Landroid/net/INetworkStatsSession;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method private getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;
    .locals 8
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "includeTags"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsSession:Landroid/net/INetworkStatsSession;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/net/INetworkStatsSession;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public closeSession()V
    .locals 3

    .prologue
    .line 38
    iget-object v2, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v2, :cond_0

    .line 40
    :try_start_0
    iget-object v2, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-interface {v2}, Landroid/net/INetworkStatsSession;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v1

    .line 42
    .local v1, "rethrown":Ljava/lang/RuntimeException;
    throw v1

    .line 43
    .end local v1    # "rethrown":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .local v0, "ignored":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public forceUpdate()V
    .locals 2

    .prologue
    .line 50
    :try_start_0
    iget-object v1, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMobileHistoryForUid(Ljava/lang/String;IJJ)[J
    .locals 11
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "beginTime"    # J
    .param p5, "endTime"    # J

    .prologue
    .line 74
    const/4 v0, 0x2

    new-array v9, v0, [J

    .line 76
    .local v9, "total":[J
    :try_start_0
    invoke-direct {p0, p1}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 77
    .local v1, "mobileTemplate":Landroid/net/NetworkTemplate;
    if-nez v1, :cond_0

    .line 78
    return-object v9

    .line 81
    :cond_0
    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 82
    const/16 v5, 0xa

    move-object v0, p0

    move v2, p2

    .line 81
    invoke-direct/range {v0 .. v5}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v3

    .local v3, "networkHistory":Landroid/net/NetworkStatsHistory;
    move-object v2, p0

    move-wide v4, p3

    move-wide/from16 v6, p5

    .line 83
    invoke-direct/range {v2 .. v7}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getHistoryStats(Landroid/net/NetworkStatsHistory;JJ)[J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 87
    .end local v1    # "mobileTemplate":Landroid/net/NetworkTemplate;
    .end local v3    # "networkHistory":Landroid/net/NetworkStatsHistory;
    :goto_0
    return-object v9

    .line 84
    :catch_0
    move-exception v8

    .line 85
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getMobileSummaryForAllUid(Ljava/lang/String;JJ)Landroid/util/SparseArray;
    .locals 6
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    .local v1, "mobileTemplate":Landroid/net/NetworkTemplate;
    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    .line 138
    invoke-direct/range {v0 .. v5}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->buildNetworkStatsMap(Landroid/net/NetworkTemplate;JJ)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkMobileTotalBytes(Ljava/lang/String;JJ)J
    .locals 10
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J

    .prologue
    .line 104
    const-wide/16 v8, 0x0

    .line 106
    .local v8, "total":J
    :try_start_0
    invoke-direct {p0, p1}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 107
    .local v1, "mobileTemplate":Landroid/net/NetworkTemplate;
    if-eqz v1, :cond_0

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    .line 108
    invoke-direct/range {v0 .. v5}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 113
    .end local v1    # "mobileTemplate":Landroid/net/NetworkTemplate;
    :cond_0
    :goto_0
    return-wide v8

    .line 110
    :catch_0
    move-exception v6

    .line 111
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getNetworkWifiTotalBytes(JJ)J
    .locals 11
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J

    .prologue
    .line 91
    const-wide/16 v8, 0x0

    .line 93
    .local v8, "total":J
    :try_start_0
    invoke-direct {p0}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 94
    .local v1, "wifiTemplate":Landroid/net/NetworkTemplate;
    if-eqz v1, :cond_0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 95
    invoke-direct/range {v0 .. v5}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 100
    .end local v1    # "wifiTemplate":Landroid/net/NetworkTemplate;
    :cond_0
    :goto_0
    return-wide v8

    .line 97
    :catch_0
    move-exception v6

    .line 98
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getWifiHistoryForUid(IJJ)[J
    .locals 10
    .param p1, "uid"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J

    .prologue
    .line 57
    const/4 v0, 0x2

    new-array v9, v0, [J

    .line 59
    .local v9, "total":[J
    :try_start_0
    invoke-direct {p0}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 60
    .local v1, "wifiTemplate":Landroid/net/NetworkTemplate;
    if-nez v1, :cond_0

    .line 61
    return-object v9

    .line 64
    :cond_0
    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 65
    const/16 v5, 0xa

    move-object v0, p0

    move v2, p1

    .line 64
    invoke-direct/range {v0 .. v5}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v3

    .local v3, "networkHistory":Landroid/net/NetworkStatsHistory;
    move-object v2, p0

    move-wide v4, p2

    move-wide v6, p4

    .line 66
    invoke-direct/range {v2 .. v7}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getHistoryStats(Landroid/net/NetworkStatsHistory;JJ)[J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 70
    .end local v1    # "wifiTemplate":Landroid/net/NetworkTemplate;
    .end local v3    # "networkHistory":Landroid/net/NetworkStatsHistory;
    :goto_0
    return-object v9

    .line 67
    :catch_0
    move-exception v8

    .line 68
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getWifiSummaryForAllUid(JJ)Landroid/util/SparseArray;
    .locals 7
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 142
    invoke-direct {p0}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v1

    .local v1, "wifiTemplate":Landroid/net/NetworkTemplate;
    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 143
    invoke-direct/range {v0 .. v5}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->buildNetworkStatsMap(Landroid/net/NetworkTemplate;JJ)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public openSession()V
    .locals 2

    .prologue
    .line 31
    :try_start_0
    iget-object v1, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v1

    iput-object v1, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
