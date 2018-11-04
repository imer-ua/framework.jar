.class public Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
.super Ljava/lang/Object;
.source "EqualsBuilder.java"

# interfaces
.implements Lorg/apache/miui/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/miui/commons/lang3/builder/Builder",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final REGISTRY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/miui/commons/lang3/tuple/Pair",
            "<",
            "Lorg/apache/miui/commons/lang3/builder/IDKey;",
            "Lorg/apache/miui/commons/lang3/builder/IDKey;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private isEquals:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    .line 84
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    .line 223
    return-void
.end method

.method static getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/tuple/Pair;
    .locals 3
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/miui/commons/lang3/tuple/Pair",
            "<",
            "Lorg/apache/miui/commons/lang3/builder/IDKey;",
            "Lorg/apache/miui/commons/lang3/builder/IDKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Lorg/apache/miui/commons/lang3/builder/IDKey;

    invoke-direct {v0, p0}, Lorg/apache/miui/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    .line 137
    .local v0, "left":Lorg/apache/miui/commons/lang3/builder/IDKey;
    new-instance v1, Lorg/apache/miui/commons/lang3/builder/IDKey;

    invoke-direct {v1, p1}, Lorg/apache/miui/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    .line 138
    .local v1, "right":Lorg/apache/miui/commons/lang3/builder/IDKey;
    invoke-static {v0, v1}, Lorg/apache/miui/commons/lang3/tuple/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/tuple/Pair;

    move-result-object v2

    return-object v2
.end method

.method static getRegistry()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/miui/commons/lang3/tuple/Pair",
            "<",
            "Lorg/apache/miui/commons/lang3/builder/IDKey;",
            "Lorg/apache/miui/commons/lang3/builder/IDKey;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 122
    sget-object v0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method static isRegistered(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 155
    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v1

    .line 156
    .local v1, "registry":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/miui/commons/lang3/tuple/Pair<Lorg/apache/miui/commons/lang3/builder/IDKey;Lorg/apache/miui/commons/lang3/builder/IDKey;>;>;"
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/tuple/Pair;

    move-result-object v0

    .line 157
    .local v0, "pair":Lorg/apache/miui/commons/lang3/tuple/Pair;, "Lorg/apache/miui/commons/lang3/tuple/Pair<Lorg/apache/miui/commons/lang3/builder/IDKey;Lorg/apache/miui/commons/lang3/builder/IDKey;>;"
    invoke-virtual {v0}, Lorg/apache/miui/commons/lang3/tuple/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/miui/commons/lang3/builder/IDKey;

    invoke-virtual {v0}, Lorg/apache/miui/commons/lang3/tuple/Pair;->getRight()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/miui/commons/lang3/builder/IDKey;

    invoke-static {v3, v4}, Lorg/apache/miui/commons/lang3/tuple/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/tuple/Pair;

    move-result-object v2

    .line 159
    .local v2, "swappedPair":Lorg/apache/miui/commons/lang3/tuple/Pair;, "Lorg/apache/miui/commons/lang3/tuple/Pair<Lorg/apache/miui/commons/lang3/builder/IDKey;Lorg/apache/miui/commons/lang3/builder/IDKey;>;"
    if-eqz v1, :cond_1

    .line 160
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 159
    :goto_0
    return v3

    .line 160
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 159
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;Z[Ljava/lang/String;)V
    .locals 6
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p3, "builder"    # Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .param p4, "useTransients"    # Z
    .param p5, "excludeFields"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 393
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isRegistered(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 394
    return-void

    .line 398
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->register(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 399
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 400
    .local v2, "fields":[Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-static {v2, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 401
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_3

    iget-boolean v4, p3, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v4, :cond_3

    .line 402
    aget-object v1, v2, v3

    .line 403
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p5, v4}, Lorg/apache/miui/commons/lang3/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 404
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x24

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 405
    if-nez p4, :cond_2

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 401
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 406
    :cond_2
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 408
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 409
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :try_start_2
    new-instance v4, Ljava/lang/InternalError;

    const-string/jumbo v5, "Unexpected IllegalAccessException"

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 416
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    .line 417
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->unregister(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 416
    throw v4

    .line 417
    .restart local v2    # "fields":[Ljava/lang/reflect/Field;
    .restart local v3    # "i":I
    :cond_3
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->unregister(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 391
    return-void
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)Z
    .locals 1
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 249
    .local p2, "excludeFields":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p2}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;Z)Z
    .locals 2
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "testTransients"    # Z

    .prologue
    .line 296
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static varargs reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z
    .locals 10
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "testTransients"    # Z
    .param p4, "excludeFields"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p3, "reflectUpToClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v9, 0x0

    .line 327
    if-ne p0, p1, :cond_0

    .line 328
    const/4 v0, 0x1

    return v0

    .line 330
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 331
    :cond_1
    return v9

    .line 337
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 338
    .local v7, "lhsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 340
    .local v8, "rhsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 341
    move-object v2, v7

    .line 342
    .local v2, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v8, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 344
    move-object v2, v8

    .line 356
    :cond_3
    :goto_0
    new-instance v3, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;-><init>()V

    .local v3, "equalsBuilder":Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    .line 358
    :try_start_0
    invoke-static/range {v0 .. v5}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;Z[Ljava/lang/String;)V

    .line 359
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_6

    if-eq v2, p3, :cond_6

    .line 360
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    .line 361
    invoke-static/range {v0 .. v5}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;Z[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 363
    :catch_0
    move-exception v6

    .line 369
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    return v9

    .line 346
    .end local v2    # "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "equalsBuilder":Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4
    invoke-virtual {v8, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 347
    move-object v2, v8

    .line 348
    .restart local v2    # "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 350
    move-object v2, v7

    goto :goto_0

    .line 354
    .end local v2    # "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    return v9

    .line 371
    .restart local v2    # "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "equalsBuilder":Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    :cond_6
    invoke-virtual {v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    return v0
.end method

.method public static varargs reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z
    .locals 2
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "excludeFields"    # [Ljava/lang/String;

    .prologue
    .line 272
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static register(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 173
    const-class v3, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    monitor-enter v3

    .line 174
    :try_start_0
    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_0

    .line 175
    sget-object v2, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    .line 179
    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v1

    .line 180
    .local v1, "registry":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/miui/commons/lang3/tuple/Pair<Lorg/apache/miui/commons/lang3/builder/IDKey;Lorg/apache/miui/commons/lang3/builder/IDKey;>;>;"
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/tuple/Pair;

    move-result-object v0

    .line 181
    .local v0, "pair":Lorg/apache/miui/commons/lang3/tuple/Pair;, "Lorg/apache/miui/commons/lang3/tuple/Pair<Lorg/apache/miui/commons/lang3/builder/IDKey;Lorg/apache/miui/commons/lang3/builder/IDKey;>;"
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    return-void

    .line 173
    .end local v0    # "pair":Lorg/apache/miui/commons/lang3/tuple/Pair;, "Lorg/apache/miui/commons/lang3/tuple/Pair<Lorg/apache/miui/commons/lang3/builder/IDKey;Lorg/apache/miui/commons/lang3/builder/IDKey;>;"
    .end local v1    # "registry":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/miui/commons/lang3/tuple/Pair<Lorg/apache/miui/commons/lang3/builder/IDKey;Lorg/apache/miui/commons/lang3/builder/IDKey;>;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method static unregister(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 197
    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v1

    .line 198
    .local v1, "registry":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/miui/commons/lang3/tuple/Pair<Lorg/apache/miui/commons/lang3/builder/IDKey;Lorg/apache/miui/commons/lang3/builder/IDKey;>;>;"
    if-eqz v1, :cond_1

    .line 199
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/tuple/Pair;

    move-result-object v0

    .line 200
    .local v0, "pair":Lorg/apache/miui/commons/lang3/tuple/Pair;, "Lorg/apache/miui/commons/lang3/tuple/Pair<Lorg/apache/miui/commons/lang3/builder/IDKey;Lorg/apache/miui/commons/lang3/builder/IDKey;>;"
    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 201
    const-class v3, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    monitor-enter v3

    .line 203
    :try_start_0
    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v1

    .line 204
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    sget-object v2, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    .line 196
    .end local v0    # "pair":Lorg/apache/miui/commons/lang3/tuple/Pair;, "Lorg/apache/miui/commons/lang3/tuple/Pair<Lorg/apache/miui/commons/lang3/builder/IDKey;Lorg/apache/miui/commons/lang3/builder/IDKey;>;"
    :cond_1
    return-void

    .line 201
    .restart local v0    # "pair":Lorg/apache/miui/commons/lang3/tuple/Pair;, "Lorg/apache/miui/commons/lang3/tuple/Pair<Lorg/apache/miui/commons/lang3/builder/IDKey;Lorg/apache/miui/commons/lang3/builder/IDKey;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public append(BB)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .locals 1
    .param p1, "lhs"    # B
    .param p2, "rhs"    # B

    .prologue
    .line 564
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 565
    return-object p0

    .line 567
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    .line 568
    return-object p0

    .line 567
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public append(CC)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .locals 1
    .param p1, "lhs"    # C
    .param p2, "rhs"    # C

    .prologue
    .line 549
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 550
    return-object p0

    .line 552
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    .line 553
    return-object p0

    .line 552
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public append(DD)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .locals 5
    .param p1, "lhs"    # D
    .param p3, "rhs"    # D

    .prologue
    .line 585
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 586
    return-object p0

    .line 588
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(JJ)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(FF)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .locals 2
    .param p1, "lhs"    # F
    .param p2, "rhs"    # F

    .prologue
    .line 605
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 606
    return-object p0

    .line 608
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(II)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(II)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .locals 1
    .param p1, "lhs"    # I
    .param p2, "rhs"    # I

    .prologue
    .line 519
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 520
    return-object p0

    .line 522
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    .line 523
    return-object p0

    .line 522
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public append(JJ)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .locals 1
    .param p1, "lhs"    # J
    .param p3, "rhs"    # J

    .prologue
    .line 504
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 505
    return-object p0

    .line 507
    :cond_0
    cmp-long v0, p1, p3

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    .line 508
    return-object p0

    .line 507
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .locals 4
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 449
    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_0

    .line 450
    return-object p0

    .line 452
    :cond_0
    if-ne p1, p2, :cond_1

    .line 453
    return-object p0

    .line 455
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 456
    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 457
    return-object p0

    .line 459
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 460
    .local v0, "lhsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_4

    .line 462
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    .line 489
    .end local p1    # "lhs":Ljava/lang/Object;
    .end local p2    # "rhs":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 463
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_5

    .line 465
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 469
    :cond_5
    instance-of v1, p1, [J

    if-eqz v1, :cond_6

    .line 470
    nop

    nop

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, [J

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([J[J)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto :goto_0

    .line 471
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_6
    instance-of v1, p1, [I

    if-eqz v1, :cond_7

    .line 472
    nop

    nop

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, [I

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([I[I)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto :goto_0

    .line 473
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_7
    instance-of v1, p1, [S

    if-eqz v1, :cond_8

    .line 474
    nop

    nop

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, [S

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([S[S)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto :goto_0

    .line 475
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_8
    instance-of v1, p1, [C

    if-eqz v1, :cond_9

    .line 476
    nop

    nop

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, [C

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([C[C)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto :goto_0

    .line 477
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_9
    instance-of v1, p1, [B

    if-eqz v1, :cond_a

    .line 478
    nop

    nop

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, [B

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([B[B)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto :goto_0

    .line 479
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_a
    instance-of v1, p1, [D

    if-eqz v1, :cond_b

    .line 480
    nop

    nop

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, [D

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([D[D)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto :goto_0

    .line 481
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_b
    instance-of v1, p1, [F

    if-eqz v1, :cond_c

    .line 482
    nop

    nop

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, [F

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([F[F)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto :goto_0

    .line 483
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_c
    instance-of v1, p1, [Z

    if-eqz v1, :cond_d

    .line 484
    nop

    nop

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, [Z

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([Z[Z)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto :goto_0

    .line 487
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_d
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto :goto_0
.end method

.method public append(SS)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .locals 1
    .param p1, "lhs"    # S
    .param p2, "rhs"    # S

    .prologue
    .line 534
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 535
    return-object p0

    .line 537
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    .line 538
    return-object p0

    .line 537
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public append(ZZ)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .locals 1
    .param p1, "lhs"    # Z
    .param p2, "rhs"    # Z

    .prologue
    .line 619
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 620
    return-object p0

    .line 622
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    .line 623
    return-object p0

    .line 622
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public append([B[B)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .locals 4
    .param p1, "lhs"    # [B
    .param p2, "rhs"    # [B

    .prologue
    const/4 v3, 0x0

    .line 792
    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_0

    .line 793
    return-object p0

    .line 795
    :cond_0
    if-ne p1, p2, :cond_1

    .line 796
    return-object p0

    .line 798
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 799
    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 800
    return-object p0

    .line 802
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 803
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 804
    return-object p0

    .line 806
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_5

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_5

    .line 807
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(BB)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    .line 806
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 809
    :cond_5
    return-object p0
.end method

.method public append([C[C)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .locals 4
    .param p1, "lhs"    # [C
    .param p2, "rhs"    # [C

    .prologue
    const/4 v3, 0x0

    .line 761
    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_0

    .line 762
    return-object p0

    .line 764
    :cond_0
    if-ne p1, p2, :cond_1

    .line 765
    return-object p0

    .line 767
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 768
    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 769
    return-object p0

    .line 771
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 772
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 773
    return-object p0

    .line 775
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_5

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_5

    .line 776
    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(CC)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    .line 775
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 778
    :cond_5
    return-object p0
.end method

.method public append([D[D)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .locals 6
    .param p1, "lhs"    # [D
    .param p2, "rhs"    # [D

    .prologue
    const/4 v3, 0x0

    .line 823
    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_0

    .line 824
    return-object p0

    .line 826
    :cond_0
    if-ne p1, p2, :cond_1

    .line 827
    return-object p0

    .line 829
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 830
    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 831
    return-object p0

    .line 833
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 834
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 835
    return-object p0

    .line 837
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_5

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_5

    .line 838
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(DD)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    .line 837
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 840
    :cond_5
    return-object p0
.end method

.method public append([F[F)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .locals 4
    .param p1, "lhs"    # [F
    .param p2, "rhs"    # [F

    .prologue
    const/4 v3, 0x0

    .line 854
    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_0

    .line 855
    return-object p0

    .line 857
    :cond_0
    if-ne p1, p2, :cond_1

    .line 858
    return-object p0

    .line 860
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 861
    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 862
    return-object p0

    .line 864
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 865
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 866
    return-object p0

    .line 868
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_5

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_5

    .line 869
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(FF)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    .line 868
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 871
    :cond_5
    return-object p0
.end method

.method public append([I[I)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .locals 4
    .param p1, "lhs"    # [I
    .param p2, "rhs"    # [I

    .prologue
    const/4 v3, 0x0

    .line 699
    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_0

    .line 700
    return-object p0

    .line 702
    :cond_0
    if-ne p1, p2, :cond_1

    .line 703
    return-object p0

    .line 705
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 706
    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 707
    return-object p0

    .line 709
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 710
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 711
    return-object p0

    .line 713
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_5

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_5

    .line 714
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(II)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    .line 713
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 716
    :cond_5
    return-object p0
.end method

.method public append([J[J)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .locals 6
    .param p1, "lhs"    # [J
    .param p2, "rhs"    # [J

    .prologue
    const/4 v3, 0x0

    .line 668
    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_0

    .line 669
    return-object p0

    .line 671
    :cond_0
    if-ne p1, p2, :cond_1

    .line 672
    return-object p0

    .line 674
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 675
    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 676
    return-object p0

    .line 678
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 679
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 680
    return-object p0

    .line 682
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_5

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_5

    .line 683
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(JJ)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    .line 682
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 685
    :cond_5
    return-object p0
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .locals 4
    .param p1, "lhs"    # [Ljava/lang/Object;
    .param p2, "rhs"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 637
    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_0

    .line 638
    return-object p0

    .line 640
    :cond_0
    if-ne p1, p2, :cond_1

    .line 641
    return-object p0

    .line 643
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 644
    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 645
    return-object p0

    .line 647
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 648
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 649
    return-object p0

    .line 651
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_5

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_5

    .line 652
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    .line 651
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 654
    :cond_5
    return-object p0
.end method

.method public append([S[S)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .locals 4
    .param p1, "lhs"    # [S
    .param p2, "rhs"    # [S

    .prologue
    const/4 v3, 0x0

    .line 730
    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_0

    .line 731
    return-object p0

    .line 733
    :cond_0
    if-ne p1, p2, :cond_1

    .line 734
    return-object p0

    .line 736
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 737
    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 738
    return-object p0

    .line 740
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 741
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 742
    return-object p0

    .line 744
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_5

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_5

    .line 745
    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(SS)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    .line 744
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 747
    :cond_5
    return-object p0
.end method

.method public append([Z[Z)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .locals 4
    .param p1, "lhs"    # [Z
    .param p2, "rhs"    # [Z

    .prologue
    const/4 v3, 0x0

    .line 885
    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_0

    .line 886
    return-object p0

    .line 888
    :cond_0
    if-ne p1, p2, :cond_1

    .line 889
    return-object p0

    .line 891
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 892
    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 893
    return-object p0

    .line 895
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 896
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    .line 897
    return-object p0

    .line 899
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_5

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_5

    .line 900
    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(ZZ)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    .line 899
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 902
    :cond_5
    return-object p0
.end method

.method public appendSuper(Z)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .locals 1
    .param p1, "superEquals"    # Z

    .prologue
    .line 431
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 432
    return-object p0

    .line 434
    :cond_0
    iput-boolean p1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    .line 435
    return-object p0
.end method

.method public build()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 925
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 924
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->build()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isEquals()Z
    .locals 1

    .prologue
    .line 912
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 943
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    .line 942
    return-void
.end method

.method protected setEquals(Z)V
    .locals 0
    .param p1, "isEquals"    # Z

    .prologue
    .line 935
    iput-boolean p1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    .line 934
    return-void
.end method
