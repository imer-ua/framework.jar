.class public Landroid/graphics/improve/SRReporter;
.super Ljava/lang/Object;
.source "SRReporter.java"


# static fields
.field public static final ACTION_CLOSE:Ljava/lang/String; = "3"

.field public static final ACTION_FAIL:Ljava/lang/String; = "4"

.field public static final ACTION_IMPROVE:Ljava/lang/String; = "1"

.field public static final ACTION_IMPROVE_TIME:Ljava/lang/String; = "5"

.field public static final ACTION_OPEN:Ljava/lang/String; = "2"

.field public static final STR_ACTION:Ljava/lang/String; = "action"

.field public static final STR_DEAL_TIME:Ljava/lang/String; = "deal_time"

.field public static final STR_FAIL_PKG:Ljava/lang/String; = "fail_pkg"

.field public static final STR_FAIL_REASON:Ljava/lang/String; = "fail_reason"

.field public static final STR_FAIL_VERSION:Ljava/lang/String; = "fail_version"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBaseJson()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 100
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 102
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "action"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    const-string/jumbo v2, "deal_time"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string/jumbo v2, "fail_pkg"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string/jumbo v2, "fail_version"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const-string/jumbo v2, "fail_reason"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-object v1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 116
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 117
    .local v2, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 118
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .local v3, "version":Ljava/lang/String;
    return-object v3

    .line 120
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "manager":Landroid/content/pm/PackageManager;
    .end local v3    # "version":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 123
    const-string/jumbo v4, "unknow"

    return-object v4
.end method

.method private static report(Lorg/json/JSONObject;)V
    .locals 2
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 32
    new-instance v0, Landroid/graphics/improve/SRReporter$1;

    invoke-direct {v0, p0}, Landroid/graphics/improve/SRReporter$1;-><init>(Lorg/json/JSONObject;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 31
    return-void
.end method

.method public static reportClose(Ljava/lang/String;)V
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 90
    :try_start_0
    invoke-static {}, Landroid/graphics/improve/SRReporter;->getBaseJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 91
    .local v0, "baseJson":Lorg/json/JSONObject;
    const-string/jumbo v2, "fail_pkg"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string/jumbo v2, "action"

    const-string/jumbo v3, "3"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    invoke-static {v0}, Landroid/graphics/improve/SRReporter;->report(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v0    # "baseJson":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static reportFailure(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {}, Landroid/graphics/improve/SRReporter;->getBaseJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 46
    .local v0, "baseJson":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "fail_pkg"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string/jumbo v2, "fail_version"

    invoke-static {p0}, Landroid/graphics/improve/SRReporter;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string/jumbo v2, "fail_reason"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string/jumbo v2, "action"

    const-string/jumbo v3, "4"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    invoke-static {v0}, Landroid/graphics/improve/SRReporter;->report(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static reportImprove()V
    .locals 4

    .prologue
    .line 69
    :try_start_0
    invoke-static {}, Landroid/graphics/improve/SRReporter;->getBaseJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 70
    .local v0, "baseJson":Lorg/json/JSONObject;
    const-string/jumbo v2, "action"

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    invoke-static {v0}, Landroid/graphics/improve/SRReporter;->report(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static reportImproveTime(J)V
    .locals 4
    .param p0, "time"    # J

    .prologue
    .line 58
    :try_start_0
    invoke-static {}, Landroid/graphics/improve/SRReporter;->getBaseJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 59
    .local v0, "baseJson":Lorg/json/JSONObject;
    const-string/jumbo v2, "deal_time"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string/jumbo v2, "action"

    const-string/jumbo v3, "5"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    invoke-static {v0}, Landroid/graphics/improve/SRReporter;->report(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v0    # "baseJson":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static reportOpen(Ljava/lang/String;)V
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 79
    :try_start_0
    invoke-static {}, Landroid/graphics/improve/SRReporter;->getBaseJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 80
    .local v0, "baseJson":Lorg/json/JSONObject;
    const-string/jumbo v2, "fail_pkg"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string/jumbo v2, "action"

    const-string/jumbo v3, "2"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    invoke-static {v0}, Landroid/graphics/improve/SRReporter;->report(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v0    # "baseJson":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
