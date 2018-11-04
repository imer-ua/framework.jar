.class public Lmiui/app/ConnectivityManagerReflector;
.super Ljava/lang/Object;
.source "ConnectivityManagerReflector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiManagerReflector"

.field public static final TETHERING_WIFI:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWifiStaSapConcurrency(Landroid/net/wifi/WifiManager;)Z
    .locals 5
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;

    .prologue
    const/4 v1, 0x0

    .line 66
    const-string/jumbo v2, "getWifiStaSapConcurrency"

    .line 67
    const-class v3, Ljava/lang/Boolean;

    .line 66
    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3, v4}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    move-result-object v0

    .line 68
    .local v0, "reference":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Boolean;>;"
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public static startTethering(Landroid/net/ConnectivityManager;IZ)Z
    .locals 12
    .param p0, "cm"    # Landroid/net/ConnectivityManager;
    .param p1, "type"    # I
    .param p2, "showProvisioningUi"    # Z

    .prologue
    .line 40
    const/4 v8, 0x0

    .line 41
    .local v8, "result":Z
    const-class v0, Landroid/net/ConnectivityManager;

    .line 43
    .local v0, "clazz":Ljava/lang/Class;
    const/4 v9, 0x3

    :try_start_0
    new-array v7, v9, [Ljava/lang/Class;

    .line 44
    .local v7, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v9, v7, v10

    .line 45
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x1

    aput-object v9, v7, v10

    .line 46
    const-string/jumbo v9, "android.net.ConnectivityManager$OnStartTetheringCallback"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v7, v10

    .line 47
    const-string/jumbo v9, "startTethering"

    invoke-virtual {v0, v9, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 48
    .local v6, "method":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 49
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const/4 v10, 0x0

    const/4 v11, 0x2

    aput-object v10, v9, v11

    invoke-virtual {v6, p0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    const/4 v8, 0x1

    .line 62
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_0
    return v8

    .line 59
    :catch_0
    move-exception v2

    .line 60
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "WifiManagerReflector"

    const-string/jumbo v10, "Exception"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 57
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 58
    .local v5, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v9, "WifiManagerReflector"

    const-string/jumbo v10, "InvocationTargetException"

    invoke-static {v9, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 55
    .end local v5    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v3

    .line 56
    .local v3, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v9, "WifiManagerReflector"

    const-string/jumbo v10, "IllegalAccessException"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 53
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v4

    .line 54
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v9, "WifiManagerReflector"

    const-string/jumbo v10, "NoSuchMethodException"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 51
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v9, "WifiManagerReflector"

    const-string/jumbo v10, "ClassNotFoundException"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static stopTethering(Landroid/net/ConnectivityManager;I)Z
    .locals 11
    .param p0, "cm"    # Landroid/net/ConnectivityManager;
    .param p1, "type"    # I

    .prologue
    .line 20
    const/4 v6, 0x0

    .line 21
    .local v6, "result":Z
    const-class v0, Landroid/net/ConnectivityManager;

    .line 23
    .local v0, "clazz":Ljava/lang/Class;
    :try_start_0
    const-string/jumbo v7, "stopTethering"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 24
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 25
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v5, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    const/4 v6, 0x1

    .line 36
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v6

    .line 33
    :catch_0
    move-exception v1

    .line 34
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "WifiManagerReflector"

    const-string/jumbo v8, "Exception"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 31
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 32
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v7, "WifiManagerReflector"

    const-string/jumbo v8, "InvocationTargetException"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 29
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v2

    .line 30
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v7, "WifiManagerReflector"

    const-string/jumbo v8, "IllegalAccessException"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 27
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v3

    .line 28
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v7, "WifiManagerReflector"

    const-string/jumbo v8, "NoSuchMethodException"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
