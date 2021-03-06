.class public final Lmiui/log/AndroidTags;
.super Ljava/lang/Object;
.source "AndroidTags.java"


# static fields
.field static final TAG_AM_DEBUG_BROADCAST:Ljava/lang/String; = "com.android.server.am.ActivityManagerService.DEBUG_BROADCAST"

.field private static final androidTagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/AndroidTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/log/AndroidTags;->androidTagMap:Ljava/util/HashMap;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized add(Ljava/lang/Class;Ljava/lang/String;Z)Lmiui/log/AndroidTag;
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "defaultOn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Z)",
            "Lmiui/log/AndroidTag;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Lmiui/log/AndroidTags;

    monitor-enter v2

    .line 22
    :try_start_0
    sget-object v1, Lmiui/log/AndroidTags;->androidTagMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Lmiui/log/AndroidTag;->buildFieldFullPath(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/AndroidTag;

    .line 23
    .local v0, "tag":Lmiui/log/AndroidTag;
    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lmiui/log/AndroidTag;

    .end local v0    # "tag":Lmiui/log/AndroidTag;
    invoke-direct {v0, p0, p1, p2}, Lmiui/log/AndroidTag;-><init>(Ljava/lang/Class;Ljava/lang/String;Z)V

    .line 25
    .restart local v0    # "tag":Lmiui/log/AndroidTag;
    sget-object v1, Lmiui/log/AndroidTags;->androidTagMap:Ljava/util/HashMap;

    iget-object v3, v0, Lmiui/log/AndroidTag;->fieldFullPath:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 27
    return-object v0

    .end local v0    # "tag":Lmiui/log/AndroidTag;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static create(Ljava/lang/String;)Lmiui/log/AndroidTag;
    .locals 9
    .param p0, "fieldFullPath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 62
    const/16 v6, 0x2e

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 63
    .local v5, "sepIndex":I
    if-gez v5, :cond_0

    .line 64
    return-object v8

    .line 66
    :cond_0
    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "className":Ljava/lang/String;
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "fieldName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 69
    :cond_1
    return-object v8

    .line 71
    :cond_2
    sget-object v6, Lmiui/log/AndroidTag;->BOOTCLASSLOADER:Ljava/lang/ClassLoader;

    invoke-static {v0, v6}, Lmiui/util/ReflectionUtils;->tryFindClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 72
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_3

    .line 73
    return-object v8

    .line 75
    :cond_3
    const-class v6, Ljava/lang/Boolean;

    invoke-static {v1, v4, v6}, Lmiui/util/ReflectionUtils;->tryGetStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lmiui/util/ObjectReference;

    move-result-object v3

    .line 76
    .local v3, "defaultValue":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Boolean;>;"
    if-nez v3, :cond_5

    :cond_4
    const/4 v2, 0x0

    .line 77
    :goto_0
    new-instance v6, Lmiui/log/AndroidTag;

    invoke-direct {v6, v1, v4, v2}, Lmiui/log/AndroidTag;-><init>(Ljava/lang/Class;Ljava/lang/String;Z)V

    return-object v6

    .line 76
    :cond_5
    invoke-virtual {v3}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v3}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .local v2, "defaultOn":Z
    goto :goto_0
.end method

.method public static declared-synchronized get(Ljava/lang/String;)Lmiui/log/AndroidTag;
    .locals 3
    .param p0, "fieldFullPath"    # Ljava/lang/String;

    .prologue
    const-class v2, Lmiui/log/AndroidTags;

    monitor-enter v2

    .line 31
    :try_start_0
    sget-object v1, Lmiui/log/AndroidTags;->androidTagMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    sget-object v1, Lmiui/log/AndroidTags;->androidTagMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/log/AndroidTag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 34
    :cond_0
    :try_start_1
    invoke-static {p0}, Lmiui/log/AndroidTags;->create(Ljava/lang/String;)Lmiui/log/AndroidTag;

    move-result-object v0

    .line 35
    .local v0, "tag":Lmiui/log/AndroidTag;
    sget-object v1, Lmiui/log/AndroidTags;->androidTagMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 36
    return-object v0

    .end local v0    # "tag":Lmiui/log/AndroidTag;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized isOn(Ljava/lang/String;)Z
    .locals 3
    .param p0, "fieldFullPath"    # Ljava/lang/String;

    .prologue
    const-class v2, Lmiui/log/AndroidTags;

    monitor-enter v2

    .line 40
    :try_start_0
    invoke-static {p0}, Lmiui/log/AndroidTags;->get(Ljava/lang/String;)Lmiui/log/AndroidTag;

    move-result-object v0

    .line 41
    .local v0, "tag":Lmiui/log/AndroidTag;
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Lmiui/log/AndroidTag;->isOn()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 44
    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .end local v0    # "tag":Lmiui/log/AndroidTag;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized switchOff(Ljava/lang/String;)V
    .locals 3
    .param p0, "fieldFullPath"    # Ljava/lang/String;

    .prologue
    const-class v2, Lmiui/log/AndroidTags;

    monitor-enter v2

    .line 55
    :try_start_0
    invoke-static {p0}, Lmiui/log/AndroidTags;->get(Ljava/lang/String;)Lmiui/log/AndroidTag;

    move-result-object v0

    .line 56
    .local v0, "tag":Lmiui/log/AndroidTag;
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Lmiui/log/AndroidTag;->switchOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 54
    return-void

    .end local v0    # "tag":Lmiui/log/AndroidTag;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized switchOn(Ljava/lang/String;)V
    .locals 3
    .param p0, "fieldFullPath"    # Ljava/lang/String;

    .prologue
    const-class v2, Lmiui/log/AndroidTags;

    monitor-enter v2

    .line 48
    :try_start_0
    invoke-static {p0}, Lmiui/log/AndroidTags;->get(Ljava/lang/String;)Lmiui/log/AndroidTag;

    move-result-object v0

    .line 49
    .local v0, "tag":Lmiui/log/AndroidTag;
    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Lmiui/log/AndroidTag;->switchOn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 47
    return-void

    .end local v0    # "tag":Lmiui/log/AndroidTag;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
