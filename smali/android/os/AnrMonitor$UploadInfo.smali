.class public Landroid/os/AnrMonitor$UploadInfo;
.super Ljava/lang/Object;
.source "AnrMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/AnrMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UploadInfo"
.end annotation


# static fields
.field private static final JSON_BASE_INFO_TAG:Ljava/lang/String; = "baseInfo"

.field private static final JSON_INFO_ARRAY_TAG:Ljava/lang/String; = "msgs"

.field private static final JSON_INFO_TAG:Ljava/lang/String; = "msg"

.field private static final JSON_PACKAGE_NAME_TAG:Ljava/lang/String; = "packageName"

.field private static final JSON_PROCESS_NAME_TAG:Ljava/lang/String; = "processName"

.field private static final JSON_THREAD_NAME_TAG:Ljava/lang/String; = "threadName"

.field private static final JSON_TOOKTIME_TAG:Ljava/lang/String; = "tookTime"

.field private static final JSON_VERSION_CODE_TAG:Ljava/lang/String; = "versionCode"

.field private static final JSON_VERSION_NAME_TAG:Ljava/lang/String; = "versionName"


# instance fields
.field info:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field processName:Ljava/lang/String;

.field threadName:Ljava/lang/String;

.field tookTime:J

.field versionCode:Ljava/lang/String;

.field versionName:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0([Landroid/os/AnrMonitor$UploadInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "infos"    # [Landroid/os/AnrMonitor$UploadInfo;

    .prologue
    invoke-static {p0}, Landroid/os/AnrMonitor$UploadInfo;->createJsonString([Landroid/os/AnrMonitor$UploadInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createJsonString([Landroid/os/AnrMonitor$UploadInfo;)Ljava/lang/String;
    .locals 12
    .param p0, "infos"    # [Landroid/os/AnrMonitor$UploadInfo;

    .prologue
    const/4 v6, 0x0

    .line 849
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 850
    .local v5, "object":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 851
    .local v0, "baseInfo":Lorg/json/JSONObject;
    const-string/jumbo v7, "processName"

    invoke-static {}, Landroid/os/AnrMonitor;->currentProcessName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 852
    const-string/jumbo v7, "packageName"

    invoke-static {}, Landroid/os/AnrMonitor;->currentPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 853
    const-string/jumbo v7, "versionName"

    invoke-static {}, Landroid/os/AnrMonitor;->currentVersionName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 854
    const-string/jumbo v7, "versionCode"

    invoke-static {}, Landroid/os/AnrMonitor;->currentVersionCode()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 855
    const-string/jumbo v7, "baseInfo"

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 856
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 857
    .local v3, "jsonArray":Lorg/json/JSONArray;
    if-eqz p0, :cond_0

    array-length v7, p0

    if-lez v7, :cond_0

    .line 858
    array-length v7, p0

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v2, p0, v6

    .line 859
    .local v2, "info":Landroid/os/AnrMonitor$UploadInfo;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 860
    .local v4, "obj":Lorg/json/JSONObject;
    const-string/jumbo v8, "msg"

    iget-object v9, v2, Landroid/os/AnrMonitor$UploadInfo;->info:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 861
    const-string/jumbo v8, "threadName"

    iget-object v9, v2, Landroid/os/AnrMonitor$UploadInfo;->threadName:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 862
    const-string/jumbo v8, "tookTime"

    iget-wide v10, v2, Landroid/os/AnrMonitor$UploadInfo;->tookTime:J

    invoke-virtual {v4, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 863
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 858
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 866
    .end local v2    # "info":Landroid/os/AnrMonitor$UploadInfo;
    .end local v4    # "obj":Lorg/json/JSONObject;
    :cond_0
    const-string/jumbo v6, "msgs"

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 867
    sget-boolean v6, Landroid/os/AnrMonitor;->DBG:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "AnrMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "createJsonString "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_1
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    .line 869
    .end local v0    # "baseInfo":Lorg/json/JSONObject;
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 870
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 872
    const-string/jumbo v6, ""

    return-object v6
.end method

.method public static getBaseInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 930
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 931
    .local v2, "object":Lorg/json/JSONObject;
    const-string/jumbo v3, "baseInfo"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 932
    .local v0, "baseInfo":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 933
    .end local v0    # "baseInfo":Lorg/json/JSONObject;
    .end local v2    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 934
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 936
    const/4 v3, 0x0

    return-object v3
.end method

.method public static getInfoArray(Ljava/lang/String;)[Landroid/os/AnrMonitor$UploadInfo;
    .locals 18
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 941
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 942
    .local v8, "object":Lorg/json/JSONObject;
    const-string/jumbo v15, "msgs"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 943
    .local v6, "msgs":Lorg/json/JSONArray;
    if-nez v6, :cond_0

    const/4 v15, 0x0

    return-object v15

    .line 944
    :cond_0
    const-string/jumbo v15, "baseInfo"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 945
    .local v3, "baseInfoObject":Lorg/json/JSONObject;
    const-string/jumbo v15, "processName"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 946
    .local v10, "processName":Ljava/lang/String;
    const-string/jumbo v15, "packageName"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 947
    .local v9, "packageName":Ljava/lang/String;
    const-string/jumbo v15, "versionName"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 948
    .local v14, "versionName":Ljava/lang/String;
    const-string/jumbo v15, "versionCode"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 949
    .local v13, "versionCode":Ljava/lang/String;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v11

    .line 950
    .local v11, "size":I
    new-array v2, v11, [Landroid/os/AnrMonitor$UploadInfo;

    .line 951
    .local v2, "arrays":[Landroid/os/AnrMonitor$UploadInfo;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v11, :cond_2

    .line 952
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 953
    .local v7, "obj":Lorg/json/JSONObject;
    new-instance v12, Landroid/os/AnrMonitor$UploadInfo;

    invoke-direct {v12}, Landroid/os/AnrMonitor$UploadInfo;-><init>()V

    .line 954
    .local v12, "uploadInfo":Landroid/os/AnrMonitor$UploadInfo;
    const-string/jumbo v15, "msg"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v12, Landroid/os/AnrMonitor$UploadInfo;->info:Ljava/lang/String;

    .line 955
    iput-object v10, v12, Landroid/os/AnrMonitor$UploadInfo;->processName:Ljava/lang/String;

    .line 956
    iput-object v9, v12, Landroid/os/AnrMonitor$UploadInfo;->packageName:Ljava/lang/String;

    .line 957
    iput-object v14, v12, Landroid/os/AnrMonitor$UploadInfo;->versionName:Ljava/lang/String;

    .line 958
    iput-object v13, v12, Landroid/os/AnrMonitor$UploadInfo;->versionCode:Ljava/lang/String;

    .line 959
    const-string/jumbo v15, "threadName"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v12, Landroid/os/AnrMonitor$UploadInfo;->threadName:Ljava/lang/String;

    .line 960
    const-string/jumbo v15, "tookTime"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v12, Landroid/os/AnrMonitor$UploadInfo;->tookTime:J

    .line 961
    aput-object v12, v2, v5

    .line 962
    sget-boolean v15, Landroid/os/AnrMonitor;->DBG:Z

    if-eqz v15, :cond_1

    const-string/jumbo v15, "AnrMonitor"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "getInfoArray i "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " info : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 951
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 964
    .end local v7    # "obj":Lorg/json/JSONObject;
    .end local v12    # "uploadInfo":Landroid/os/AnrMonitor$UploadInfo;
    :cond_2
    return-object v2

    .line 965
    .end local v2    # "arrays":[Landroid/os/AnrMonitor$UploadInfo;
    .end local v3    # "baseInfoObject":Lorg/json/JSONObject;
    .end local v5    # "i":I
    .end local v6    # "msgs":Lorg/json/JSONArray;
    .end local v8    # "object":Lorg/json/JSONObject;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "processName":Ljava/lang/String;
    .end local v11    # "size":I
    .end local v13    # "versionCode":Ljava/lang/String;
    .end local v14    # "versionName":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 966
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 968
    const/4 v15, 0x0

    return-object v15
.end method

.method public static getInfoByJsonString(Ljava/lang/String;)Landroid/os/AnrMonitor$UploadInfo;
    .locals 11
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 906
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 907
    .local v2, "object":Lorg/json/JSONObject;
    const-string/jumbo v8, "baseInfo"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 908
    .local v0, "baseInfoObject":Lorg/json/JSONObject;
    const-string/jumbo v8, "processName"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 909
    .local v4, "processName":Ljava/lang/String;
    const-string/jumbo v8, "packageName"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 910
    .local v3, "packageName":Ljava/lang/String;
    const-string/jumbo v8, "versionName"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 911
    .local v7, "versionName":Ljava/lang/String;
    const-string/jumbo v8, "versionCode"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 912
    .local v6, "versionCode":Ljava/lang/String;
    new-instance v5, Landroid/os/AnrMonitor$UploadInfo;

    invoke-direct {v5}, Landroid/os/AnrMonitor$UploadInfo;-><init>()V

    .line 913
    .local v5, "uploadInfo":Landroid/os/AnrMonitor$UploadInfo;
    const-string/jumbo v8, "msg"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Landroid/os/AnrMonitor$UploadInfo;->info:Ljava/lang/String;

    .line 914
    iput-object v4, v5, Landroid/os/AnrMonitor$UploadInfo;->processName:Ljava/lang/String;

    .line 915
    iput-object v3, v5, Landroid/os/AnrMonitor$UploadInfo;->packageName:Ljava/lang/String;

    .line 916
    iput-object v7, v5, Landroid/os/AnrMonitor$UploadInfo;->versionName:Ljava/lang/String;

    .line 917
    iput-object v6, v5, Landroid/os/AnrMonitor$UploadInfo;->versionCode:Ljava/lang/String;

    .line 918
    const-string/jumbo v8, "threadName"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Landroid/os/AnrMonitor$UploadInfo;->threadName:Ljava/lang/String;

    .line 919
    const-string/jumbo v8, "tookTime"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v5, Landroid/os/AnrMonitor$UploadInfo;->tookTime:J

    .line 920
    sget-boolean v8, Landroid/os/AnrMonitor;->DBG:Z

    if-eqz v8, :cond_0

    const-string/jumbo v8, "AnrMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getInfo info : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    :cond_0
    return-object v5

    .line 922
    .end local v0    # "baseInfoObject":Lorg/json/JSONObject;
    .end local v2    # "object":Lorg/json/JSONObject;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "processName":Ljava/lang/String;
    .end local v5    # "uploadInfo":Landroid/os/AnrMonitor$UploadInfo;
    .end local v6    # "versionCode":Ljava/lang/String;
    .end local v7    # "versionName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 923
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 925
    const/4 v8, 0x0

    return-object v8
.end method

.method public static getMatchTag(Landroid/os/AnrMonitor$UploadInfo;)Ljava/lang/String;
    .locals 4
    .param p0, "msg"    # Landroid/os/AnrMonitor$UploadInfo;

    .prologue
    .line 877
    :try_start_0
    invoke-static {p0}, Landroid/os/AnrMonitor$UploadInfo;->getSaveContent(Landroid/os/AnrMonitor$UploadInfo;)Ljava/lang/String;

    move-result-object v1

    .line 878
    .local v1, "matchString":Ljava/lang/String;
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 879
    .end local v1    # "matchString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 880
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 882
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getSaveContent(Landroid/os/AnrMonitor$UploadInfo;)Ljava/lang/String;
    .locals 6
    .param p0, "msg"    # Landroid/os/AnrMonitor$UploadInfo;

    .prologue
    .line 887
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 888
    .local v2, "object":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 889
    .local v0, "baseInfo":Lorg/json/JSONObject;
    const-string/jumbo v3, "processName"

    iget-object v4, p0, Landroid/os/AnrMonitor$UploadInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 890
    const-string/jumbo v3, "packageName"

    iget-object v4, p0, Landroid/os/AnrMonitor$UploadInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 891
    const-string/jumbo v3, "versionName"

    iget-object v4, p0, Landroid/os/AnrMonitor$UploadInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 892
    const-string/jumbo v3, "versionCode"

    iget-object v4, p0, Landroid/os/AnrMonitor$UploadInfo;->versionCode:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 893
    const-string/jumbo v3, "baseInfo"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 894
    const-string/jumbo v3, "msg"

    iget-object v4, p0, Landroid/os/AnrMonitor$UploadInfo;->info:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 895
    const-string/jumbo v3, "threadName"

    iget-object v4, p0, Landroid/os/AnrMonitor$UploadInfo;->threadName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 896
    const-string/jumbo v3, "tookTime"

    iget-wide v4, p0, Landroid/os/AnrMonitor$UploadInfo;->tookTime:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 897
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 898
    .end local v0    # "baseInfo":Lorg/json/JSONObject;
    .end local v2    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 899
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 901
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Landroid/os/AnrMonitor$UploadInfo;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyWord()Ljava/lang/String;
    .locals 6

    .prologue
    .line 838
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 839
    .local v1, "object":Lorg/json/JSONObject;
    const-string/jumbo v2, "tookTime"

    invoke-virtual {p0}, Landroid/os/AnrMonitor$UploadInfo;->getTookTime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 840
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 841
    .end local v1    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 842
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 844
    const-string/jumbo v2, ""

    return-object v2
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Landroid/os/AnrMonitor$UploadInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Landroid/os/AnrMonitor$UploadInfo;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Landroid/os/AnrMonitor$UploadInfo;->threadName:Ljava/lang/String;

    return-object v0
.end method

.method public getTookTime()J
    .locals 2

    .prologue
    .line 833
    iget-wide v0, p0, Landroid/os/AnrMonitor$UploadInfo;->tookTime:J

    return-wide v0
.end method

.method public getVersionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Landroid/os/AnrMonitor$UploadInfo;->versionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Landroid/os/AnrMonitor$UploadInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "info : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/AnrMonitor$UploadInfo;->info:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " processName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/AnrMonitor$UploadInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " versionName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 974
    iget-object v1, p0, Landroid/os/AnrMonitor$UploadInfo;->versionName:Ljava/lang/String;

    .line 973
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 974
    const-string/jumbo v1, " versionCode "

    .line 973
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 974
    iget-object v1, p0, Landroid/os/AnrMonitor$UploadInfo;->versionCode:Ljava/lang/String;

    .line 973
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 974
    const-string/jumbo v1, " tookTime : "

    .line 973
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 974
    iget-wide v2, p0, Landroid/os/AnrMonitor$UploadInfo;->tookTime:J

    .line 973
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
