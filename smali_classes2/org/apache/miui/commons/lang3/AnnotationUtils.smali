.class public Lorg/apache/miui/commons/lang3/AnnotationUtils;
.super Ljava/lang/Object;
.source "AnnotationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/miui/commons/lang3/AnnotationUtils$1;
    }
.end annotation


# static fields
.field private static final TO_STRING_STYLE:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lorg/apache/miui/commons/lang3/AnnotationUtils$1;

    invoke-direct {v0}, Lorg/apache/miui/commons/lang3/AnnotationUtils$1;-><init>()V

    sput-object v0, Lorg/apache/miui/commons/lang3/AnnotationUtils;->TO_STRING_STYLE:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static annotationArrayMemberEquals([Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Z
    .locals 4
    .param p0, "a1"    # [Ljava/lang/annotation/Annotation;
    .param p1, "a2"    # [Ljava/lang/annotation/Annotation;

    .prologue
    const/4 v3, 0x0

    .line 327
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_0

    .line 328
    return v3

    .line 330
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 331
    aget-object v1, p0, v0

    aget-object v2, p1, v0

    invoke-static {v1, v2}, Lorg/apache/miui/commons/lang3/AnnotationUtils;->equals(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 332
    return v3

    .line 330
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private static arrayMemberEquals(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 289
    .local p0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    check-cast p1, [Ljava/lang/annotation/Annotation;

    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/annotation/Annotation;

    .end local p2    # "o2":Ljava/lang/Object;
    invoke-static {p1, p2}, Lorg/apache/miui/commons/lang3/AnnotationUtils;->annotationArrayMemberEquals([Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Z

    move-result v0

    return v0

    .line 292
    .restart local p1    # "o1":Ljava/lang/Object;
    .restart local p2    # "o2":Ljava/lang/Object;
    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    check-cast p1, [B

    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p2, [B

    .end local p2    # "o2":Ljava/lang/Object;
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    .line 295
    .restart local p1    # "o1":Ljava/lang/Object;
    .restart local p2    # "o2":Ljava/lang/Object;
    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    check-cast p1, [S

    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p2, [S

    .end local p2    # "o2":Ljava/lang/Object;
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v0

    return v0

    .line 298
    .restart local p1    # "o1":Ljava/lang/Object;
    .restart local p2    # "o2":Ljava/lang/Object;
    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 299
    check-cast p1, [I

    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p2, [I

    .end local p2    # "o2":Ljava/lang/Object;
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    return v0

    .line 301
    .restart local p1    # "o1":Ljava/lang/Object;
    .restart local p2    # "o2":Ljava/lang/Object;
    :cond_3
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 302
    check-cast p1, [C

    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p2, [C

    .end local p2    # "o2":Ljava/lang/Object;
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    return v0

    .line 304
    .restart local p1    # "o1":Ljava/lang/Object;
    .restart local p2    # "o2":Ljava/lang/Object;
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 305
    check-cast p1, [J

    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p2, [J

    .end local p2    # "o2":Ljava/lang/Object;
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    return v0

    .line 307
    .restart local p1    # "o1":Ljava/lang/Object;
    .restart local p2    # "o2":Ljava/lang/Object;
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 308
    check-cast p1, [F

    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p2, [F

    .end local p2    # "o2":Ljava/lang/Object;
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    return v0

    .line 310
    .restart local p1    # "o1":Ljava/lang/Object;
    .restart local p2    # "o2":Ljava/lang/Object;
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 311
    check-cast p1, [D

    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p2, [D

    .end local p2    # "o2":Ljava/lang/Object;
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    return v0

    .line 313
    .restart local p1    # "o1":Ljava/lang/Object;
    .restart local p2    # "o2":Ljava/lang/Object;
    :cond_7
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 314
    check-cast p1, [Z

    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p2, [Z

    .end local p2    # "o2":Ljava/lang/Object;
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    return v0

    .line 316
    .restart local p1    # "o1":Ljava/lang/Object;
    .restart local p2    # "o2":Ljava/lang/Object;
    :cond_8
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "o2":Ljava/lang/Object;
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static arrayMemberHash(Ljava/lang/Class;Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .line 346
    .local p0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    check-cast p1, [B

    .end local p1    # "o":Ljava/lang/Object;
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0

    .line 349
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    check-cast p1, [S

    .end local p1    # "o":Ljava/lang/Object;
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([S)I

    move-result v0

    return v0

    .line 352
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 353
    check-cast p1, [I

    .end local p1    # "o":Ljava/lang/Object;
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0

    .line 355
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 356
    check-cast p1, [C

    .end local p1    # "o":Ljava/lang/Object;
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([C)I

    move-result v0

    return v0

    .line 358
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 359
    check-cast p1, [J

    .end local p1    # "o":Ljava/lang/Object;
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    return v0

    .line 361
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 362
    check-cast p1, [F

    .end local p1    # "o":Ljava/lang/Object;
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    return v0

    .line 364
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 365
    check-cast p1, [D

    .end local p1    # "o":Ljava/lang/Object;
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([D)I

    move-result v0

    return v0

    .line 367
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 368
    check-cast p1, [Z

    .end local p1    # "o":Ljava/lang/Object;
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v0

    return v0

    .line 370
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_7
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static equals(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Z
    .locals 13
    .param p0, "a1"    # Ljava/lang/annotation/Annotation;
    .param p1, "a2"    # Ljava/lang/annotation/Annotation;

    .prologue
    const/4 v12, 0x1

    const/4 v8, 0x0

    .line 124
    if-ne p0, p1, :cond_0

    .line 125
    return v12

    .line 127
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 128
    :cond_1
    return v8

    .line 130
    :cond_2
    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    .line 131
    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    .line 132
    .local v4, "type2":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-string/jumbo v7, "Annotation %s with null annotationType()"

    new-array v9, v12, [Ljava/lang/Object;

    aput-object p0, v9, v8

    invoke-static {v3, v7, v9}, Lorg/apache/miui/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string/jumbo v7, "Annotation %s with null annotationType()"

    new-array v9, v12, [Ljava/lang/Object;

    aput-object p1, v9, v8

    invoke-static {v4, v7, v9}, Lorg/apache/miui/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 135
    return v8

    .line 138
    :cond_3
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    array-length v10, v9

    move v7, v8

    :goto_0
    if-ge v7, v10, :cond_5

    aget-object v2, v9, v7

    .line 139
    .local v2, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    array-length v11, v11

    if-nez v11, :cond_4

    .line 140
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/miui/commons/lang3/AnnotationUtils;->isValidAnnotationMemberType(Ljava/lang/Class;)Z

    move-result v11

    .line 139
    if-eqz v11, :cond_4

    .line 141
    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 142
    .local v5, "v1":Ljava/lang/Object;
    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 143
    .local v6, "v2":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    invoke-static {v11, v5, v6}, Lorg/apache/miui/commons/lang3/AnnotationUtils;->memberEquals(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-nez v11, :cond_4

    .line 144
    return v8

    .line 138
    .end local v5    # "v1":Ljava/lang/Object;
    .end local v6    # "v2":Ljava/lang/Object;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 150
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 151
    .local v1, "ex":Ljava/lang/reflect/InvocationTargetException;
    return v8

    .line 148
    .end local v1    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 149
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    return v8

    .line 153
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :cond_5
    return v12
.end method

.method public static hashCode(Ljava/lang/annotation/Annotation;)I
    .locals 10
    .param p0, "a"    # Ljava/lang/annotation/Annotation;

    .prologue
    const/4 v6, 0x0

    .line 169
    const/4 v3, 0x0

    .line 170
    .local v3, "result":I
    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    .line 171
    .local v4, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    array-length v8, v7

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v2, v7, v6

    .line 173
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    :try_start_0
    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 174
    .local v5, "value":Ljava/lang/Object;
    if-nez v5, :cond_0

    .line 175
    new-instance v6, Ljava/lang/IllegalStateException;

    .line 176
    const-string/jumbo v7, "Annotation method %s returned null"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 175
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 179
    .end local v5    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 180
    .local v1, "ex":Ljava/lang/RuntimeException;
    throw v1

    .line 178
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Lorg/apache/miui/commons/lang3/AnnotationUtils;->hashMember(Ljava/lang/String;Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    add-int/2addr v3, v9

    .line 171
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 181
    .end local v5    # "value":Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 182
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 185
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :cond_1
    return v3
.end method

.method private static hashMember(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 244
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v0, v1, 0x7f

    .line 245
    .local v0, "part1":I
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/miui/commons/lang3/AnnotationUtils;->arrayMemberHash(Ljava/lang/Class;Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v1, v0

    return v1

    .line 248
    :cond_0
    instance-of v1, p1, Ljava/lang/annotation/Annotation;

    if-eqz v1, :cond_1

    .line 249
    check-cast p1, Ljava/lang/annotation/Annotation;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/AnnotationUtils;->hashCode(Ljava/lang/annotation/Annotation;)I

    move-result v1

    xor-int/2addr v1, v0

    return v1

    .line 251
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v1, v0

    return v1
.end method

.method public static isValidAnnotationMemberType(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 226
    const/4 v0, 0x0

    return v0

    .line 228
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    .line 231
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    if-nez v0, :cond_2

    .line 232
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 231
    if-nez v0, :cond_2

    .line 232
    const-class v0, Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 231
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static memberEquals(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne p1, p2, :cond_0

    .line 266
    const/4 v0, 0x1

    return v0

    .line 268
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 269
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 271
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/miui/commons/lang3/AnnotationUtils;->arrayMemberEquals(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 274
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 275
    check-cast p1, Ljava/lang/annotation/Annotation;

    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p2, Ljava/lang/annotation/Annotation;

    .end local p2    # "o2":Ljava/lang/Object;
    invoke-static {p1, p2}, Lorg/apache/miui/commons/lang3/AnnotationUtils;->equals(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Z

    move-result v0

    return v0

    .line 277
    .restart local p1    # "o1":Ljava/lang/Object;
    .restart local p2    # "o2":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static toString(Ljava/lang/annotation/Annotation;)Ljava/lang/String;
    .locals 9
    .param p0, "a"    # Ljava/lang/annotation/Annotation;

    .prologue
    const/4 v4, 0x0

    .line 197
    new-instance v0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;

    sget-object v5, Lorg/apache/miui/commons/lang3/AnnotationUtils;->TO_STRING_STYLE:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    invoke-direct {v0, p0, v5}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;)V

    .line 198
    .local v0, "builder":Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v3, v5, v4

    .line 199
    .local v3, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_0

    .line 198
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 203
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 204
    :catch_0
    move-exception v2

    .line 205
    .local v2, "ex":Ljava/lang/RuntimeException;
    throw v2

    .line 206
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 207
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 210
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :cond_1
    invoke-virtual {v0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->build()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
