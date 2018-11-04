.class public Lmiui/maml/util/JSONPath;
.super Ljava/lang/Object;
.source "JSONPath.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "JSONPath"


# instance fields
.field private mRoot:Lorg/json/JSONObject;

.field private mRootArray:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "o"    # Lorg/json/JSONArray;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lmiui/maml/util/JSONPath;->mRootArray:Lorg/json/JSONArray;

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lmiui/maml/util/JSONPath;->mRoot:Lorg/json/JSONObject;

    .line 35
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 14
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 45
    const/4 v12, 0x0

    return-object v12

    .line 47
    :cond_0
    const-string/jumbo v12, "/"

    invoke-virtual {p1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 49
    .local v10, "segs":[Ljava/lang/String;
    iget-object v12, p0, Lmiui/maml/util/JSONPath;->mRoot:Lorg/json/JSONObject;

    if-eqz v12, :cond_1

    iget-object v7, p0, Lmiui/maml/util/JSONPath;->mRoot:Lorg/json/JSONObject;

    .line 50
    .local v7, "obj":Ljava/lang/Object;
    :goto_0
    if-nez v7, :cond_2

    .line 51
    const/4 v12, 0x0

    return-object v12

    .line 49
    .end local v7    # "obj":Ljava/lang/Object;
    :cond_1
    iget-object v7, p0, Lmiui/maml/util/JSONPath;->mRootArray:Lorg/json/JSONArray;

    goto :goto_0

    .line 54
    .restart local v7    # "obj":Ljava/lang/Object;
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    :try_start_0
    array-length v12, v10

    if-ge v4, v12, :cond_7

    .line 55
    aget-object v9, v10, v4

    .line 56
    .local v9, "seg":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 54
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 59
    :cond_4
    const/4 v6, -0x1

    .line 60
    .local v6, "index":I
    const-string/jumbo v12, "["

    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 61
    .local v5, "ind":I
    const/4 v12, -0x1

    if-eq v5, v12, :cond_5

    .line 62
    add-int/lit8 v12, v5, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 63
    .local v8, "s":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 64
    const/4 v12, 0x0

    invoke-virtual {v9, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 67
    .end local v8    # "s":Ljava/lang/String;
    :cond_5
    instance-of v12, v7, Lorg/json/JSONObject;

    if-eqz v12, :cond_6

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 72
    :cond_6
    :goto_2
    instance-of v12, v7, Lorg/json/JSONArray;

    if-eqz v12, :cond_a

    .line 73
    move-object v0, v7

    nop

    nop

    move-object v1, v0

    .line 75
    .local v1, "arr":Lorg/json/JSONArray;
    const/4 v12, -0x1

    if-ne v6, v12, :cond_9

    .line 84
    .end local v1    # "arr":Lorg/json/JSONArray;
    .end local v5    # "ind":I
    .end local v6    # "index":I
    .end local v9    # "seg":Ljava/lang/String;
    :cond_7
    return-object v7

    .line 68
    .restart local v5    # "ind":I
    .restart local v6    # "index":I
    .restart local v9    # "seg":Ljava/lang/String;
    :cond_8
    move-object v0, v7

    nop

    nop

    move-object v11, v0

    .line 69
    .local v11, "tmp":Lorg/json/JSONObject;
    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_2

    .line 77
    .end local v11    # "tmp":Lorg/json/JSONObject;
    .restart local v1    # "arr":Lorg/json/JSONArray;
    :cond_9
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 80
    .end local v1    # "arr":Lorg/json/JSONArray;
    :cond_a
    if-eqz v7, :cond_b

    sget-object v12, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v7, v12, :cond_3

    .line 81
    :cond_b
    const/4 v12, 0x0

    return-object v12

    .line 87
    .end local v5    # "ind":I
    .end local v6    # "index":I
    .end local v9    # "seg":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 88
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "JSONPath"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    const/4 v12, 0x0

    return-object v12

    .line 85
    :catch_1
    move-exception v3

    .line 86
    .local v3, "e":Lorg/json/JSONException;
    const-string/jumbo v12, "JSONPath"

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
