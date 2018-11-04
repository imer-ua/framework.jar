.class public Lorg/apache/miui/commons/lang3/ObjectUtils;
.super Ljava/lang/Object;
.source "ObjectUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/miui/commons/lang3/ObjectUtils$Null;
    }
.end annotation


# static fields
.field public static final NULL:Lorg/apache/miui/commons/lang3/ObjectUtils$Null;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lorg/apache/miui/commons/lang3/ObjectUtils$Null;

    invoke-direct {v0}, Lorg/apache/miui/commons/lang3/ObjectUtils$Null;-><init>()V

    sput-object v0, Lorg/apache/miui/commons/lang3/ObjectUtils;->NULL:Lorg/apache/miui/commons/lang3/ObjectUtils$Null;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method public static clone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 511
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    instance-of v9, p0, Ljava/lang/Cloneable;

    if-eqz v9, :cond_3

    .line 513
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->isArray()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 514
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 515
    .local v2, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-nez v9, :cond_1

    .line 516
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "obj":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v8

    .line 541
    .end local v2    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v8, "result":Ljava/lang/Object;
    :cond_0
    :goto_0
    move-object v0, v8

    .line 542
    .local v0, "checked":Ljava/lang/Object;, "TT;"
    return-object v0

    .line 518
    .end local v0    # "checked":Ljava/lang/Object;, "TT;"
    .end local v8    # "result":Ljava/lang/Object;
    .restart local v2    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p0    # "obj":Ljava/lang/Object;, "TT;"
    :cond_1
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    .line 519
    .local v6, "length":I
    invoke-static {v2, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8

    .restart local v8    # "result":Ljava/lang/Object;
    move v7, v6

    .line 520
    .end local v6    # "length":I
    .local v7, "length":I
    :goto_1
    add-int/lit8 v6, v7, -0x1

    .end local v7    # "length":I
    .restart local v6    # "length":I
    if-lez v7, :cond_0

    .line 521
    invoke-static {p0, v6}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v6, v9}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    move v7, v6

    .end local v6    # "length":I
    .restart local v7    # "length":I
    goto :goto_1

    .line 526
    .end local v2    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "length":I
    .end local v8    # "result":Ljava/lang/Object;
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string/jumbo v10, "clone"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 527
    .local v1, "clone":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .restart local v8    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 535
    .end local v1    # "clone":Ljava/lang/reflect/Method;
    .end local v8    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v5

    .line 536
    .local v5, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v9, Lorg/apache/miui/commons/lang3/exception/CloneFailedException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception cloning Cloneable type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 537
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    .line 536
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 537
    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    .line 536
    invoke-direct {v9, v10, v11}, Lorg/apache/miui/commons/lang3/exception/CloneFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 532
    .end local v5    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v3

    .line 533
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v9, Lorg/apache/miui/commons/lang3/exception/CloneFailedException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Cannot clone Cloneable type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 534
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    .line 533
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Lorg/apache/miui/commons/lang3/exception/CloneFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 528
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v4

    .line 529
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    new-instance v9, Lorg/apache/miui/commons/lang3/exception/CloneFailedException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Cloneable type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 530
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    .line 529
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 531
    const-string/jumbo v11, " has no clone method"

    .line 529
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v4}, Lorg/apache/miui/commons/lang3/exception/CloneFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 545
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    :cond_3
    const/4 v9, 0x0

    return-object v9
.end method

.method public static cloneIfPossible(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 565
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ObjectUtils;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 566
    .local v0, "clone":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .end local p0    # "obj":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object p0

    .restart local p0    # "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    move-object p0, v0

    goto :goto_0
.end method

.method public static compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 393
    .local p0, "c1":Ljava/lang/Comparable;, "TT;"
    .local p1, "c2":Ljava/lang/Comparable;, "TT;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ObjectUtils;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I

    move-result v0

    return v0
.end method

.method public static compare(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I
    .locals 2
    .param p2, "nullGreater"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>(TT;TT;Z)I"
        }
    .end annotation

    .prologue
    .local p0, "c1":Ljava/lang/Comparable;, "TT;"
    .local p1, "c2":Ljava/lang/Comparable;, "TT;"
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 410
    if-ne p0, p1, :cond_0

    .line 411
    const/4 v0, 0x0

    return v0

    .line 412
    :cond_0
    if-nez p0, :cond_2

    .line 413
    if-eqz p2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 414
    :cond_2
    if-nez p1, :cond_4

    .line 415
    if-eqz p2, :cond_3

    :goto_1
    return v1

    :cond_3
    move v1, v0

    goto :goto_1

    .line 417
    :cond_4
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "object":Ljava/lang/Object;, "TT;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .end local p0    # "object":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object p0

    .restart local p0    # "object":Ljava/lang/Object;, "TT;"
    :cond_0
    move-object p0, p1

    goto :goto_0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "object1"    # Ljava/lang/Object;
    .param p1, "object2"    # Ljava/lang/Object;

    .prologue
    .line 153
    if-ne p0, p1, :cond_0

    .line 154
    const/4 v0, 0x1

    return v0

    .line 156
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 157
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 159
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static varargs firstNonNull([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "values":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    .line 121
    if-eqz p0, :cond_1

    .line 122
    const/4 v1, 0x0

    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p0, v1

    .line 123
    .local v0, "val":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 124
    return-object v0

    .line 122
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v0    # "val":Ljava/lang/Object;, "TT;"
    :cond_1
    return-object v3
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 200
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public static varargs hashCodeMulti([Ljava/lang/Object;)I
    .locals 6
    .param p0, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 224
    const/4 v0, 0x1

    .line 225
    .local v0, "hash":I
    if-eqz p0, :cond_0

    .line 226
    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p0, v2

    .line 227
    .local v1, "object":Ljava/lang/Object;
    mul-int/lit8 v4, v0, 0x1f

    invoke-static {v1}, Lorg/apache/miui/commons/lang3/ObjectUtils;->hashCode(Ljava/lang/Object;)I

    move-result v5

    add-int v0, v4, v5

    .line 226
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 230
    .end local v1    # "object":Ljava/lang/Object;
    :cond_0
    return v0
.end method

.method public static identityToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 252
    if-nez p0, :cond_0

    .line 253
    return-object v1

    .line 255
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 256
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-static {v0, p0}, Lorg/apache/miui/commons/lang3/ObjectUtils;->identityToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 257
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static identityToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 2
    .param p0, "buffer"    # Ljava/lang/StringBuffer;
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 276
    if-nez p1, :cond_0

    .line 277
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Cannot get the toString of a null identity"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 280
    const/16 v1, 0x40

    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 281
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    return-void
.end method

.method public static varargs max([Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>([TT;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "values":[Ljava/lang/Comparable;, "[TT;"
    const/4 v3, 0x0

    .line 371
    const/4 v0, 0x0

    .line 372
    .local v0, "result":Ljava/lang/Comparable;, "TT;"
    if-eqz p0, :cond_1

    .line 373
    array-length v4, p0

    move v2, v3

    .end local v0    # "result":Ljava/lang/Comparable;, "TT;"
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, p0, v2

    .line 374
    .local v1, "value":Ljava/lang/Comparable;, "TT;"
    invoke-static {v1, v0, v3}, Lorg/apache/miui/commons/lang3/ObjectUtils;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I

    move-result v5

    if-lez v5, :cond_0

    .line 375
    move-object v0, v1

    .line 373
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 379
    .end local v1    # "value":Ljava/lang/Comparable;, "TT;"
    :cond_1
    return-object v0
.end method

.method public static varargs median([Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>([TT;)TT;"
        }
    .end annotation

    .prologue
    .line 431
    .local p0, "items":[Ljava/lang/Comparable;, "[TT;"
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/Validate;->notEmpty([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 432
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/Validate;->noNullElements([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 433
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 434
    .local v1, "sort":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TT;>;"
    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 436
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v3, v3, 0x2

    aget-object v0, v2, v3

    check-cast v0, Ljava/lang/Comparable;

    .line 437
    .local v0, "result":Ljava/lang/Comparable;, "TT;"
    return-object v0
.end method

.method public static varargs median(Ljava/util/Comparator;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TT;>;[TT;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    .line 452
    const-string/jumbo v2, "null/empty items"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lorg/apache/miui/commons/lang3/Validate;->notEmpty([Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 453
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/Validate;->noNullElements([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 454
    const-string/jumbo v2, "null comparator"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lorg/apache/miui/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 456
    .local v1, "sort":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TT;>;"
    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 458
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v3, v3, 0x2

    aget-object v0, v2, v3

    .line 459
    .local v0, "result":Ljava/lang/Object;, "TT;"
    return-object v0
.end method

.method public static varargs min([Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>([TT;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "values":[Ljava/lang/Comparable;, "[TT;"
    const/4 v2, 0x0

    .line 346
    const/4 v0, 0x0

    .line 347
    .local v0, "result":Ljava/lang/Comparable;, "TT;"
    if-eqz p0, :cond_1

    .line 348
    array-length v3, p0

    .end local v0    # "result":Ljava/lang/Comparable;, "TT;"
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, p0, v2

    .line 349
    .local v1, "value":Ljava/lang/Comparable;, "TT;"
    const/4 v4, 0x1

    invoke-static {v1, v0, v4}, Lorg/apache/miui/commons/lang3/ObjectUtils;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I

    move-result v4

    if-gez v4, :cond_0

    .line 350
    move-object v0, v1

    .line 348
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 354
    .end local v1    # "value":Ljava/lang/Comparable;, "TT;"
    :cond_1
    return-object v0
.end method

.method public static varargs mode([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    const/4 v9, 0x0

    .line 473
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 474
    new-instance v5, Ljava/util/HashMap;

    array-length v8, p0

    invoke-direct {v5, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 475
    .local v5, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<TT;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    const/4 v8, 0x0

    array-length v9, p0

    :goto_0
    if-ge v8, v9, :cond_1

    aget-object v7, p0, v8

    .line 476
    .local v7, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    .line 477
    .local v1, "count":Lorg/apache/miui/commons/lang3/mutable/MutableInt;
    if-nez v1, :cond_0

    .line 478
    new-instance v10, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v5, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 480
    :cond_0
    invoke-virtual {v1}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_1

    .line 483
    .end local v1    # "count":Lorg/apache/miui/commons/lang3/mutable/MutableInt;
    .end local v7    # "t":Ljava/lang/Object;, "TT;"
    :cond_1
    const/4 v6, 0x0

    .line 484
    .local v6, "result":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x0

    .line 485
    .local v4, "max":I
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v6    # "result":Ljava/lang/Object;, "TT;"
    .local v3, "e$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 486
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    invoke-virtual {v8}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v0

    .line 487
    .local v0, "cmp":I
    if-ne v0, v4, :cond_3

    .line 488
    const/4 v6, 0x0

    .restart local v6    # "result":Ljava/lang/Object;, "TT;"
    goto :goto_2

    .line 489
    .end local v6    # "result":Ljava/lang/Object;, "TT;"
    :cond_3
    if-le v0, v4, :cond_2

    .line 490
    move v4, v0

    .line 491
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .restart local v6    # "result":Ljava/lang/Object;, "TT;"
    goto :goto_2

    .line 494
    .end local v0    # "cmp":I
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    .end local v6    # "result":Ljava/lang/Object;, "TT;"
    :cond_4
    return-object v6

    .line 496
    .end local v3    # "e$iterator":Ljava/util/Iterator;
    .end local v4    # "max":I
    .end local v5    # "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<TT;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    :cond_5
    return-object v9
.end method

.method public static notEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "object1"    # Ljava/lang/Object;
    .param p1, "object2"    # Ljava/lang/Object;

    .prologue
    .line 182
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ObjectUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 304
    if-nez p0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "nullStr"    # Ljava/lang/String;

    .prologue
    .line 327
    if-nez p0, :cond_0

    .end local p1    # "nullStr":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "nullStr":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
