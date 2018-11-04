.class public Lcom/miui/whetstone/ReflectionUtils;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/ReflectionUtils$ClassNotFoundError;,
        Lcom/miui/whetstone/ReflectionUtils$InvocationTargetError;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final BOOTCLASSLOADER:Ljava/lang/ClassLoader;

.field private static final additionalFields:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final constructorCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final fieldCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static final methodCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/miui/whetstone/ReflectionUtils;->BOOTCLASSLOADER:Ljava/lang/ClassLoader;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/whetstone/ReflectionUtils;->fieldCache:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/whetstone/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/whetstone/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    .line 31
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/miui/whetstone/ReflectionUtils;->additionalFields:Ljava/util/WeakHashMap;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 423
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/miui/whetstone/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 429
    :catch_0
    move-exception v2

    .line 430
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Lcom/miui/whetstone/ReflectionUtils$InvocationTargetError;

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/miui/whetstone/ReflectionUtils$InvocationTargetError;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 427
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .line 428
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    throw v1

    .line 424
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 426
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static varargs callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 441
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/miui/whetstone/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 447
    :catch_0
    move-exception v2

    .line 448
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Lcom/miui/whetstone/ReflectionUtils$InvocationTargetError;

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/miui/whetstone/ReflectionUtils$InvocationTargetError;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 445
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .line 446
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    throw v1

    .line 442
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 444
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 53
    if-nez p1, :cond_0

    .line 54
    sget-object p1, Lcom/miui/whetstone/ReflectionUtils;->BOOTCLASSLOADER:Ljava/lang/ClassLoader;

    .line 56
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, p0, v1}, Lorg/apache/miui/commons/lang3/ClassUtils;->getClass(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Lcom/miui/whetstone/ReflectionUtils$ClassNotFoundError;

    invoke-direct {v1, v0}, Lcom/miui/whetstone/ReflectionUtils$ClassNotFoundError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static varargs findConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v12, 0x1

    const/4 v7, 0x0

    const/4 v11, 0x0

    .line 310
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Lcom/miui/whetstone/ReflectionUtils;->getParametersString([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const-string/jumbo v8, "#bestmatch"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 315
    .local v4, "fullConstructorName":Ljava/lang/String;
    sget-object v8, Lcom/miui/whetstone/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 316
    sget-object v7, Lcom/miui/whetstone/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 317
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-nez v1, :cond_0

    .line 318
    new-instance v7, Ljava/lang/NoSuchMethodError;

    invoke-direct {v7, v4}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 319
    :cond_0
    return-object v1

    .line 323
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Lcom/miui/whetstone/ReflectionUtils;->findConstructorExact(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 324
    .restart local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    sget-object v8, Lcom/miui/whetstone/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    invoke-virtual {v8, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    return-object v1

    .line 326
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v5

    .line 329
    .local v5, "ignored":Ljava/lang/NoSuchMethodError;
    const/4 v0, 0x0

    .line 330
    .local v0, "bestMatch":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 331
    .local v2, "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    array-length v8, v2

    .end local v0    # "bestMatch":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    if-ge v7, v8, :cond_4

    aget-object v1, v2, v7

    .line 333
    .restart local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    invoke-static {p1, v9, v12}, Lorg/apache/miui/commons/lang3/ClassUtils;->isAssignable([Ljava/lang/Class;[Ljava/lang/Class;Z)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 335
    if-eqz v0, :cond_2

    .line 336
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    .line 337
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    .line 335
    invoke-static {v9, v10, p1}, Lorg/apache/miui/commons/lang3/reflect/MemberUtils;->compareParameterTypes([Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;)I

    move-result v9

    if-gez v9, :cond_3

    .line 339
    :cond_2
    move-object v0, v1

    .line 331
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 344
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_4
    if-eqz v0, :cond_5

    .line 345
    invoke-virtual {v0, v12}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 346
    sget-object v7, Lcom/miui/whetstone/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    invoke-virtual {v7, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    return-object v0

    .line 349
    :cond_5
    new-instance v3, Ljava/lang/NoSuchMethodError;

    invoke-direct {v3, v4}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    .line 350
    .local v3, "e":Ljava/lang/NoSuchMethodError;
    sget-object v7, Lcom/miui/whetstone/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    invoke-virtual {v7, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    throw v3
.end method

.method public static varargs findConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 356
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lcom/miui/whetstone/ReflectionUtils;->getParameterTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/whetstone/ReflectionUtils;->findConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public static varargs findConstructorExact(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Lcom/miui/whetstone/ReflectionUtils;->getParametersString([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    const-string/jumbo v4, "#exact"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, "fullConstructorName":Ljava/lang/String;
    sget-object v4, Lcom/miui/whetstone/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 291
    sget-object v4, Lcom/miui/whetstone/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 292
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-nez v0, :cond_0

    .line 293
    new-instance v4, Ljava/lang/NoSuchMethodError;

    invoke-direct {v4, v2}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 294
    :cond_0
    return-object v0

    .line 298
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 299
    .restart local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 300
    sget-object v4, Lcom/miui/whetstone/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    return-object v0

    .line 302
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v1

    .line 303
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    sget-object v4, Lcom/miui/whetstone/ReflectionUtils;->constructorCache:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    new-instance v4, Ljava/lang/NoSuchMethodError;

    invoke-direct {v4, v2}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/16 v4, 0x23

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "fullFieldName":Ljava/lang/String;
    sget-object v4, Lcom/miui/whetstone/ReflectionUtils;->fieldCache:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 74
    sget-object v4, Lcom/miui/whetstone/ReflectionUtils;->fieldCache:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 75
    .local v1, "field":Ljava/lang/reflect/Field;
    if-nez v1, :cond_0

    .line 76
    new-instance v4, Ljava/lang/NoSuchFieldError;

    invoke-direct {v4, v2}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 77
    :cond_0
    return-object v1

    .line 81
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Lcom/miui/whetstone/ReflectionUtils;->findFieldRecursiveImpl(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 82
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 83
    sget-object v4, Lcom/miui/whetstone/ReflectionUtils;->fieldCache:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    return-object v1

    .line 85
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    sget-object v4, Lcom/miui/whetstone/ReflectionUtils;->fieldCache:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v4, Ljava/lang/NoSuchFieldError;

    invoke-direct {v4, v2}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static findFieldRecursiveImpl(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 95
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 98
    if-eqz p0, :cond_0

    const-class v2, Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    :cond_0
    throw v0

    .line 102
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    return-object v2

    .line 103
    :catch_1
    move-exception v1

    .local v1, "ignored":Ljava/lang/NoSuchFieldException;
    goto :goto_0
.end method

.method public static varargs findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 13
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v12, 0x1

    const/4 v7, 0x0

    const/4 v11, 0x0

    .line 189
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/16 v8, 0x23

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-static {p2}, Lcom/miui/whetstone/ReflectionUtils;->getParametersString([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string/jumbo v8, "#bestmatch"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "fullMethodName":Ljava/lang/String;
    sget-object v8, Lcom/miui/whetstone/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 197
    sget-object v7, Lcom/miui/whetstone/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    .line 198
    .local v4, "method":Ljava/lang/reflect/Method;
    if-nez v4, :cond_0

    .line 199
    new-instance v7, Ljava/lang/NoSuchMethodError;

    invoke-direct {v7, v2}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 200
    :cond_0
    return-object v4

    .line 204
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_1
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/miui/whetstone/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 205
    .restart local v4    # "method":Ljava/lang/reflect/Method;
    sget-object v8, Lcom/miui/whetstone/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    invoke-virtual {v8, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    return-object v4

    .line 207
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    .line 210
    .local v3, "ignored":Ljava/lang/NoSuchMethodError;
    const/4 v0, 0x0

    .line 211
    .local v0, "bestMatch":Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 212
    .local v5, "methods":[Ljava/lang/reflect/Method;
    array-length v8, v5

    .end local v0    # "bestMatch":Ljava/lang/reflect/Method;
    :goto_0
    if-ge v7, v8, :cond_4

    aget-object v4, v5, v7

    .line 214
    .restart local v4    # "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 215
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    invoke-static {p2, v9, v12}, Lorg/apache/miui/commons/lang3/ClassUtils;->isAssignable([Ljava/lang/Class;[Ljava/lang/Class;Z)Z

    move-result v9

    .line 214
    if-eqz v9, :cond_3

    .line 217
    if-eqz v0, :cond_2

    .line 218
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    .line 219
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    .line 217
    invoke-static {v9, v10, p2}, Lorg/apache/miui/commons/lang3/reflect/MemberUtils;->compareParameterTypes([Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;)I

    move-result v9

    if-gez v9, :cond_3

    .line 221
    :cond_2
    move-object v0, v4

    .line 212
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 226
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_4
    if-eqz v0, :cond_5

    .line 227
    invoke-virtual {v0, v12}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 228
    sget-object v7, Lcom/miui/whetstone/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    invoke-virtual {v7, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    return-object v0

    .line 231
    :cond_5
    new-instance v1, Ljava/lang/NoSuchMethodError;

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    .line 232
    .local v1, "e":Ljava/lang/NoSuchMethodError;
    sget-object v7, Lcom/miui/whetstone/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    invoke-virtual {v7, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    throw v1
.end method

.method public static varargs findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Lcom/miui/whetstone/ReflectionUtils;->getParameterTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/miui/whetstone/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public static varargs findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/16 v4, 0x23

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-static {p2}, Lcom/miui/whetstone/ReflectionUtils;->getParametersString([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string/jumbo v4, "#exact"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "fullMethodName":Ljava/lang/String;
    sget-object v4, Lcom/miui/whetstone/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 162
    sget-object v4, Lcom/miui/whetstone/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 163
    .local v2, "method":Ljava/lang/reflect/Method;
    if-nez v2, :cond_0

    .line 164
    new-instance v4, Ljava/lang/NoSuchMethodError;

    invoke-direct {v4, v1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 165
    :cond_0
    return-object v2

    .line 169
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 170
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 171
    sget-object v4, Lcom/miui/whetstone/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    return-object v2

    .line 173
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    sget-object v4, Lcom/miui/whetstone/ReflectionUtils;->methodCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    new-instance v4, Ljava/lang/NoSuchMethodError;

    invoke-direct {v4, v1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static varargs findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 6
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameterTypes"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 122
    const/4 v1, 0x0

    .line 123
    .local v1, "parameterClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v3, p2

    add-int/lit8 v0, v3, -0x1

    .end local v1    # "parameterClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 124
    aget-object v2, p2, v0

    .line 125
    .local v2, "type":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 126
    new-instance v3, Lcom/miui/whetstone/ReflectionUtils$ClassNotFoundError;

    const-string/jumbo v4, "parameter type must not be null"

    invoke-direct {v3, v4, v5}, Lcom/miui/whetstone/ReflectionUtils$ClassNotFoundError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 128
    :cond_0
    if-nez v1, :cond_1

    .line 129
    add-int/lit8 v3, v0, 0x1

    new-array v1, v3, [Ljava/lang/Class;

    .line 131
    :cond_1
    instance-of v3, v2, Ljava/lang/Class;

    if-eqz v3, :cond_2

    .line 132
    nop

    nop

    .end local v2    # "type":Ljava/lang/Object;
    aput-object v2, v1, v0

    .line 123
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 133
    .restart local v2    # "type":Ljava/lang/Object;
    :cond_2
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 134
    nop

    nop

    .end local v2    # "type":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/whetstone/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v0

    goto :goto_1

    .line 136
    .restart local v2    # "type":Ljava/lang/Object;
    :cond_3
    new-instance v3, Lcom/miui/whetstone/ReflectionUtils$ClassNotFoundError;

    .line 137
    const-string/jumbo v4, "parameter type must either be specified as Class or String"

    .line 136
    invoke-direct {v3, v4, v5}, Lcom/miui/whetstone/ReflectionUtils$ClassNotFoundError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 141
    .end local v2    # "type":Ljava/lang/Object;
    :cond_4
    if-nez v1, :cond_5

    .line 142
    new-array v1, v4, [Ljava/lang/Class;

    .line 144
    :cond_5
    invoke-static {p0, p1, v1}, Lcom/miui/whetstone/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    return-object v3
.end method

.method public static getAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 500
    if-nez p0, :cond_0

    .line 501
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "object must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 502
    :cond_0
    if-nez p1, :cond_1

    .line 503
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "key must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 506
    :cond_1
    sget-object v2, Lcom/miui/whetstone/ReflectionUtils;->additionalFields:Ljava/util/WeakHashMap;

    monitor-enter v2

    .line 507
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/ReflectionUtils;->additionalFields:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    .local v0, "objectFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_2

    monitor-exit v2

    .line 509
    return-object v3

    :cond_2
    monitor-exit v2

    .line 512
    monitor-enter v0

    .line 513
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 506
    .end local v0    # "objectFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 512
    .restart local v0    # "objectFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getAdditionalStaticField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 552
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Lcom/miui/whetstone/ReflectionUtils;->getAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getAdditionalStaticField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 540
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/whetstone/ReflectionUtils;->getAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getClassesAsArray([Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 263
    .local p0, "clazzes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    return-object p0
.end method

.method public static getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 383
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/miui/whetstone/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 386
    :catch_0
    move-exception v1

    .line 387
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    throw v1

    .line 384
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static varargs getParameterTypes([Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 4
    .param p0, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 252
    array-length v2, p0

    new-array v0, v2, [Ljava/lang/Class;

    .line 253
    .local v0, "clazzes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 254
    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_1
    aput-object v2, v0, v1

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 254
    goto :goto_1

    .line 256
    :cond_1
    return-object v0
.end method

.method private static varargs getParametersString([Ljava/lang/Class;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "clazzes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 269
    .local v1, "first":Z
    const/4 v3, 0x0

    array-length v4, p0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, p0, v3

    .line 270
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 271
    const/4 v1, 0x0

    .line 275
    :goto_1
    if-eqz v0, :cond_1

    .line 276
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 273
    :cond_0
    const-string/jumbo v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 278
    :cond_1
    const-string/jumbo v5, "null"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 280
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 408
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1}, Lcom/miui/whetstone/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 411
    :catch_0
    move-exception v1

    .line 412
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    throw v1

    .line 409
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getSurroundingThis(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 393
    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lcom/miui/whetstone/ReflectionUtils;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 466
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1}, Lcom/miui/whetstone/ReflectionUtils;->findConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 474
    :catch_0
    move-exception v2

    .line 475
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v4, Ljava/lang/InstantiationError;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 472
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v3

    .line 473
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v4, Lcom/miui/whetstone/ReflectionUtils$InvocationTargetError;

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/miui/whetstone/ReflectionUtils$InvocationTargetError;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 470
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    .line 471
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    throw v1

    .line 467
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 469
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static removeAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 518
    if-nez p0, :cond_0

    .line 519
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "object must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 520
    :cond_0
    if-nez p1, :cond_1

    .line 521
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "key must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 524
    :cond_1
    sget-object v2, Lcom/miui/whetstone/ReflectionUtils;->additionalFields:Ljava/util/WeakHashMap;

    monitor-enter v2

    .line 525
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/ReflectionUtils;->additionalFields:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    .local v0, "objectFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_2

    monitor-exit v2

    .line 527
    return-object v3

    :cond_2
    monitor-exit v2

    .line 530
    monitor-enter v0

    .line 531
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 524
    .end local v0    # "objectFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 530
    .restart local v0    # "objectFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static removeAdditionalStaticField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 556
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Lcom/miui/whetstone/ReflectionUtils;->removeAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static removeAdditionalStaticField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 544
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/whetstone/ReflectionUtils;->removeAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static setAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 480
    if-nez p0, :cond_0

    .line 481
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "object must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 482
    :cond_0
    if-nez p1, :cond_1

    .line 483
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "key must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 486
    :cond_1
    sget-object v2, Lcom/miui/whetstone/ReflectionUtils;->additionalFields:Ljava/util/WeakHashMap;

    monitor-enter v2

    .line 487
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/ReflectionUtils;->additionalFields:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 488
    .local v0, "objectFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_2

    .line 489
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "objectFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 490
    .restart local v0    # "objectFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v1, Lcom/miui/whetstone/ReflectionUtils;->additionalFields:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v2

    .line 494
    monitor-enter v0

    .line 495
    :try_start_1
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 486
    .end local v0    # "objectFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 494
    .restart local v0    # "objectFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setAdditionalStaticField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 548
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2}, Lcom/miui/whetstone/ReflectionUtils;->setAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static setAdditionalStaticField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 536
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/miui/whetstone/ReflectionUtils;->setAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 373
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/miui/whetstone/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    return-void

    .line 376
    :catch_0
    move-exception v1

    .line 377
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    throw v1

    .line 374
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 398
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1}, Lcom/miui/whetstone/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    return-void

    .line 401
    :catch_0
    move-exception v1

    .line 402
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    throw v1

    .line 399
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 400
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v2
.end method
