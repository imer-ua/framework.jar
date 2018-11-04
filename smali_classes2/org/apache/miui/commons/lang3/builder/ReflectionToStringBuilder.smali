.class public Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;
.super Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
.source "ReflectionToStringBuilder.java"


# instance fields
.field private appendStatics:Z

.field private appendTransients:Z

.field protected excludeFieldNames:[Ljava/lang/String;

.field private upToClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 386
    invoke-direct {p0, p1}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;)V

    .line 352
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->appendStatics:Z

    .line 357
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->appendTransients:Z

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    .line 385
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "style"    # Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    .prologue
    const/4 v0, 0x0

    .line 406
    invoke-direct {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;)V

    .line 352
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->appendStatics:Z

    .line 357
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->appendTransients:Z

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    .line 405
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "style"    # Lorg/apache/miui/commons/lang3/builder/ToStringStyle;
    .param p3, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v0, 0x0

    .line 432
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    .line 352
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->appendStatics:Z

    .line 357
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->appendTransients:Z

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    .line 431
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;Ljava/lang/Class;ZZ)V
    .locals 1
    .param p2, "style"    # Lorg/apache/miui/commons/lang3/builder/ToStringStyle;
    .param p3, "buffer"    # Ljava/lang/StringBuffer;
    .param p5, "outputTransients"    # Z
    .param p6, "outputStatics"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/apache/miui/commons/lang3/builder/ToStringStyle;",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/Class",
            "<-TT;>;ZZ)V"
        }
    .end annotation

    .prologue
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p4, "reflectUpToClass":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const/4 v0, 0x0

    .line 457
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    .line 352
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->appendStatics:Z

    .line 357
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->appendTransients:Z

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    .line 458
    invoke-virtual {p0, p4}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->setUpToClass(Ljava/lang/Class;)V

    .line 459
    invoke-virtual {p0, p5}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->setAppendTransients(Z)V

    .line 460
    invoke-virtual {p0, p6}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->setAppendStatics(Z)V

    .line 456
    return-void
.end method

.method static toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 310
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 311
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 313
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static toNoNullStringArray([Ljava/lang/Object;)[Ljava/lang/String;
    .locals 5
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 326
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 327
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p0, v2

    .line 328
    .local v0, "e":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 332
    .end local v0    # "e":Ljava/lang/Object;
    :cond_1
    sget-object v2, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 114
    invoke-static {p0, v1, v0, v0, v1}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "style"    # Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    .prologue
    const/4 v1, 0x0

    .line 146
    const/4 v0, 0x0

    invoke-static {p0, p1, v1, v1, v0}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;Z)Ljava/lang/String;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "style"    # Lorg/apache/miui/commons/lang3/builder/ToStringStyle;
    .param p2, "outputTransients"    # Z

    .prologue
    .line 184
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;ZZ)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "style"    # Lorg/apache/miui/commons/lang3/builder/ToStringStyle;
    .param p2, "outputTransients"    # Z
    .param p3, "outputStatics"    # Z

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;
    .locals 7
    .param p1, "style"    # Lorg/apache/miui/commons/lang3/builder/ToStringStyle;
    .param p2, "outputTransients"    # Z
    .param p3, "outputStatics"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/apache/miui/commons/lang3/builder/ToStringStyle;",
            "ZZ",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, "object":Ljava/lang/Object;, "TT;"
    .local p4, "reflectUpToClass":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    new-instance v0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p4

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;Ljava/lang/Class;ZZ)V

    invoke-virtual {v0}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringExclude(Ljava/lang/Object;Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 297
    .local p1, "excludeFieldNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toStringExclude(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs toStringExclude(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "excludeFieldNames"    # [Ljava/lang/String;

    .prologue
    .line 346
    new-instance v0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;

    invoke-direct {v0, p0}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->setExcludeFieldNames([Ljava/lang/String;)Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected accept(Ljava/lang/reflect/Field;)Z
    .locals 3
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    const/4 v2, 0x0

    .line 476
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 478
    return v2

    .line 480
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->isAppendTransients()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 484
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->isAppendStatics()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 488
    :cond_2
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 489
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_5

    .line 491
    return v2

    .line 482
    :cond_3
    return v2

    .line 486
    :cond_4
    return v2

    .line 493
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method protected appendFieldsIn(Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 510
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 511
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->reflectionAppendArray(Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;

    .line 512
    return-void

    .line 514
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 515
    .local v4, "fields":[Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 516
    const/4 v5, 0x0

    array-length v6, v4

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v1, v4, v5

    .line 517
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    .line 518
    .local v2, "fieldName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->accept(Ljava/lang/reflect/Field;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 522
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->getValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v3

    .line 523
    .local v3, "fieldValue":Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    .end local v3    # "fieldValue":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 524
    :catch_0
    move-exception v0

    .line 529
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/InternalError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unexpected IllegalAccessException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v5

    .line 509
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "fieldName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public getExcludeFieldNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getUpToClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 550
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    return-object v0
.end method

.method protected getValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 570
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isAppendStatics()Z
    .locals 1

    .prologue
    .line 582
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->appendStatics:Z

    return v0
.end method

.method public isAppendTransients()Z
    .locals 1

    .prologue
    .line 593
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->appendTransients:Z

    return v0
.end method

.method public reflectionAppendArray(Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;
    .locals 3
    .param p1, "array"    # Ljava/lang/Object;

    .prologue
    .line 606
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->getStyle()Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->reflectionAppendArrayDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 607
    return-object p0
.end method

.method public setAppendStatics(Z)V
    .locals 0
    .param p1, "appendStatics"    # Z

    .prologue
    .line 620
    iput-boolean p1, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->appendStatics:Z

    .line 619
    return-void
.end method

.method public setAppendTransients(Z)V
    .locals 0
    .param p1, "appendTransients"    # Z

    .prologue
    .line 632
    iput-boolean p1, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->appendTransients:Z

    .line 631
    return-void
.end method

.method public varargs setExcludeFieldNames([Ljava/lang/String;)Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;
    .locals 1
    .param p1, "excludeFieldNamesParam"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 643
    if-nez p1, :cond_0

    .line 644
    iput-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    .line 650
    :goto_0
    return-object p0

    .line 647
    :cond_0
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    .line 648
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setUpToClass(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 662
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    .line 663
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    .line 664
    .local v0, "object":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 665
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Specified class is not a superclass of the object"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 668
    .end local v0    # "object":Ljava/lang/Object;
    :cond_0
    iput-object p1, p0, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    .line 661
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 680
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 681
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->getStyle()Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->getNullText()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 683
    :cond_0
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 684
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->appendFieldsIn(Ljava/lang/Class;)V

    .line 685
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->getUpToClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 686
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 687
    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->appendFieldsIn(Ljava/lang/Class;)V

    goto :goto_0

    .line 689
    :cond_1
    invoke-super {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
