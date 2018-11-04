.class public Lorg/apache/miui/commons/lang3/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field public static final EMPTY_BOOLEAN_ARRAY:[Z

.field public static final EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

.field public static final EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

.field public static final EMPTY_CHAR_ARRAY:[C

.field public static final EMPTY_CLASS_ARRAY:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final EMPTY_DOUBLE_ARRAY:[D

.field public static final EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

.field public static final EMPTY_FLOAT_ARRAY:[F

.field public static final EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

.field public static final EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

.field public static final EMPTY_INT_ARRAY:[I

.field public static final EMPTY_LONG_ARRAY:[J

.field public static final EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

.field public static final EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

.field public static final EMPTY_SHORT_ARRAY:[S

.field public static final EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final INDEX_NOT_FOUND:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 54
    new-array v0, v1, [Ljava/lang/Class;

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    .line 58
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 62
    new-array v0, v1, [J

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    .line 66
    new-array v0, v1, [Ljava/lang/Long;

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    .line 70
    new-array v0, v1, [I

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    .line 74
    new-array v0, v1, [Ljava/lang/Integer;

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    .line 78
    new-array v0, v1, [S

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    .line 82
    new-array v0, v1, [Ljava/lang/Short;

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    .line 86
    new-array v0, v1, [B

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    .line 90
    new-array v0, v1, [Ljava/lang/Byte;

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    .line 94
    new-array v0, v1, [D

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    .line 98
    new-array v0, v1, [Ljava/lang/Double;

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    .line 102
    new-array v0, v1, [F

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    .line 106
    new-array v0, v1, [Ljava/lang/Float;

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    .line 110
    new-array v0, v1, [Z

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    .line 114
    new-array v0, v1, [Ljava/lang/Boolean;

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    .line 118
    new-array v0, v1, [C

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    .line 122
    new-array v0, v1, [Ljava/lang/Character;

    sput-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    return-void
.end method

.method private static add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p3, "clss":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 4294
    if-nez p0, :cond_1

    .line 4295
    if-eqz p1, :cond_0

    .line 4296
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", Length: 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4298
    :cond_0
    const/4 v3, 0x1

    invoke-static {p3, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 4299
    .local v0, "joinedArray":Ljava/lang/Object;
    invoke-static {v0, v4, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 4300
    return-object v0

    .line 4302
    .end local v0    # "joinedArray":Ljava/lang/Object;
    :cond_1
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 4303
    .local v1, "length":I
    if-gt p1, v1, :cond_2

    if-gez p1, :cond_3

    .line 4304
    :cond_2
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", Length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4306
    :cond_3
    add-int/lit8 v3, v1, 0x1

    invoke-static {p3, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    .line 4307
    .local v2, "result":Ljava/lang/Object;
    invoke-static {p0, v4, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4308
    invoke-static {v2, p1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 4309
    if-ge p1, v1, :cond_4

    .line 4310
    add-int/lit8 v3, p1, 0x1

    sub-int v4, v1, p1

    invoke-static {p0, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4312
    :cond_4
    return-object v2
.end method

.method public static add([BB)[B
    .locals 2
    .param p0, "array"    # [B
    .param p1, "element"    # B

    .prologue
    .line 3803
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 3804
    .local v0, "newArray":[B
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-byte p1, v0, v1

    .line 3805
    return-object v0
.end method

.method public static add([BIB)[B
    .locals 2
    .param p0, "array"    # [B
    .param p1, "index"    # I
    .param p2, "element"    # B

    .prologue
    .line 4124
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static add([CC)[C
    .locals 2
    .param p0, "array"    # [C
    .param p1, "element"    # C

    .prologue
    .line 3830
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 3831
    .local v0, "newArray":[C
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-char p1, v0, v1

    .line 3832
    return-object v0
.end method

.method public static add([CIC)[C
    .locals 2
    .param p0, "array"    # [C
    .param p1, "index"    # I
    .param p2, "element"    # C

    .prologue
    .line 4093
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static add([DD)[D
    .locals 3
    .param p0, "array"    # [D
    .param p1, "element"    # D

    .prologue
    .line 3857
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 3858
    .local v0, "newArray":[D
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-wide p1, v0, v1

    .line 3859
    return-object v0
.end method

.method public static add([DID)[D
    .locals 2
    .param p0, "array"    # [D
    .param p1, "index"    # I
    .param p2, "element"    # D

    .prologue
    .line 4279
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public static add([FF)[F
    .locals 2
    .param p0, "array"    # [F
    .param p1, "element"    # F

    .prologue
    .line 3884
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 3885
    .local v0, "newArray":[F
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    .line 3886
    return-object v0
.end method

.method public static add([FIF)[F
    .locals 2
    .param p0, "array"    # [F
    .param p1, "index"    # I
    .param p2, "element"    # F

    .prologue
    .line 4248
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static add([II)[I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "element"    # I

    .prologue
    .line 3911
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 3912
    .local v0, "newArray":[I
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    .line 3913
    return-object v0
.end method

.method public static add([III)[I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "index"    # I
    .param p2, "element"    # I

    .prologue
    .line 4186
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static add([JIJ)[J
    .locals 2
    .param p0, "array"    # [J
    .param p1, "index"    # I
    .param p2, "element"    # J

    .prologue
    .line 4217
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static add([JJ)[J
    .locals 3
    .param p0, "array"    # [J
    .param p1, "element"    # J

    .prologue
    .line 3938
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 3939
    .local v0, "newArray":[J
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-wide p1, v0, v1

    .line 3940
    return-object v0
.end method

.method public static add([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    .prologue
    .line 4020
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 4021
    .local v0, "clss":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    .line 4022
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 4029
    .local v0, "clss":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 4030
    .local v1, "newArray":[Ljava/lang/Object;, "[TT;"
    return-object v1

    .line 4023
    .end local v1    # "newArray":[Ljava/lang/Object;, "[TT;"
    .local v0, "clss":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    if-eqz p2, :cond_1

    .line 4024
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "clss":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 4026
    .local v0, "clss":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Array and element cannot both be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static add([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 3741
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 3742
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 3749
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-static {p0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 3750
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aput-object p1, v0, v2

    .line 3751
    return-object v0

    .line 3743
    .end local v0    # "newArray":[Ljava/lang/Object;, "[TT;"
    .end local v1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    if-eqz p1, :cond_1

    .line 3744
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .restart local v1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 3746
    .end local v1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Arguments cannot both be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static add([SIS)[S
    .locals 2
    .param p0, "array"    # [S
    .param p1, "index"    # I
    .param p2, "element"    # S

    .prologue
    .line 4155
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method public static add([SS)[S
    .locals 2
    .param p0, "array"    # [S
    .param p1, "element"    # S

    .prologue
    .line 3965
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    .line 3966
    .local v0, "newArray":[S
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-short p1, v0, v1

    .line 3967
    return-object v0
.end method

.method public static add([ZIZ)[Z
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "index"    # I
    .param p2, "element"    # Z

    .prologue
    .line 4061
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public static add([ZZ)[Z
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "element"    # Z

    .prologue
    .line 3776
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    .line 3777
    .local v0, "newArray":[Z
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-boolean p1, v0, v1

    .line 3778
    return-object v0
.end method

.method public static varargs addAll([B[B)[B
    .locals 4
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B

    .prologue
    const/4 v3, 0x0

    .line 3554
    if-nez p0, :cond_0

    .line 3555
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v1

    return-object v1

    .line 3556
    :cond_0
    if-nez p1, :cond_1

    .line 3557
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v1

    return-object v1

    .line 3559
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 3560
    .local v0, "joinedArray":[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 3561
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 3562
    return-object v0
.end method

.method public static varargs addAll([C[C)[C
    .locals 4
    .param p0, "array1"    # [C
    .param p1, "array2"    # [C

    .prologue
    const/4 v3, 0x0

    .line 3525
    if-nez p0, :cond_0

    .line 3526
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v1

    return-object v1

    .line 3527
    :cond_0
    if-nez p1, :cond_1

    .line 3528
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v1

    return-object v1

    .line 3530
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [C

    .line 3531
    .local v0, "joinedArray":[C
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 3532
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 3533
    return-object v0
.end method

.method public static varargs addAll([D[D)[D
    .locals 4
    .param p0, "array1"    # [D
    .param p1, "array2"    # [D

    .prologue
    const/4 v3, 0x0

    .line 3699
    if-nez p0, :cond_0

    .line 3700
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v1

    return-object v1

    .line 3701
    :cond_0
    if-nez p1, :cond_1

    .line 3702
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v1

    return-object v1

    .line 3704
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [D

    .line 3705
    .local v0, "joinedArray":[D
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([DI[DII)V

    .line 3706
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([DI[DII)V

    .line 3707
    return-object v0
.end method

.method public static varargs addAll([F[F)[F
    .locals 4
    .param p0, "array1"    # [F
    .param p1, "array2"    # [F

    .prologue
    const/4 v3, 0x0

    .line 3670
    if-nez p0, :cond_0

    .line 3671
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v1

    return-object v1

    .line 3672
    :cond_0
    if-nez p1, :cond_1

    .line 3673
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v1

    return-object v1

    .line 3675
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [F

    .line 3676
    .local v0, "joinedArray":[F
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 3677
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 3678
    return-object v0
.end method

.method public static varargs addAll([I[I)[I
    .locals 4
    .param p0, "array1"    # [I
    .param p1, "array2"    # [I

    .prologue
    const/4 v3, 0x0

    .line 3612
    if-nez p0, :cond_0

    .line 3613
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v1

    return-object v1

    .line 3614
    :cond_0
    if-nez p1, :cond_1

    .line 3615
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v1

    return-object v1

    .line 3617
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [I

    .line 3618
    .local v0, "joinedArray":[I
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 3619
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 3620
    return-object v0
.end method

.method public static varargs addAll([J[J)[J
    .locals 4
    .param p0, "array1"    # [J
    .param p1, "array2"    # [J

    .prologue
    const/4 v3, 0x0

    .line 3641
    if-nez p0, :cond_0

    .line 3642
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v1

    return-object v1

    .line 3643
    :cond_0
    if-nez p1, :cond_1

    .line 3644
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v1

    return-object v1

    .line 3646
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [J

    .line 3647
    .local v0, "joinedArray":[J
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 3648
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 3649
    return-object v0
.end method

.method public static varargs addAll([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "array1":[Ljava/lang/Object;, "[TT;"
    .local p1, "array2":[Ljava/lang/Object;, "[TT;"
    const/4 v6, 0x0

    .line 3450
    if-nez p0, :cond_0

    .line 3451
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 3452
    :cond_0
    if-nez p1, :cond_1

    .line 3453
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 3455
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 3457
    .local v2, "type1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v4, p0

    array-length v5, p1

    add-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 3458
    .local v1, "joinedArray":[Ljava/lang/Object;, "[TT;"
    array-length v4, p0

    invoke-static {p0, v6, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3460
    :try_start_0
    array-length v4, p0

    array-length v5, p1

    const/4 v6, 0x0

    invoke-static {p1, v6, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3475
    return-object v1

    .line 3461
    :catch_0
    move-exception v0

    .line 3468
    .local v0, "ase":Ljava/lang/ArrayStoreException;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 3469
    .local v3, "type2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3470
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cannot store "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " in an array of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3471
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 3470
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 3473
    :cond_2
    throw v0
.end method

.method public static varargs addAll([S[S)[S
    .locals 4
    .param p0, "array1"    # [S
    .param p1, "array2"    # [S

    .prologue
    const/4 v3, 0x0

    .line 3583
    if-nez p0, :cond_0

    .line 3584
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v1

    return-object v1

    .line 3585
    :cond_0
    if-nez p1, :cond_1

    .line 3586
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v1

    return-object v1

    .line 3588
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [S

    .line 3589
    .local v0, "joinedArray":[S
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([SI[SII)V

    .line 3590
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([SI[SII)V

    .line 3591
    return-object v0
.end method

.method public static varargs addAll([Z[Z)[Z
    .locals 4
    .param p0, "array1"    # [Z
    .param p1, "array2"    # [Z

    .prologue
    const/4 v3, 0x0

    .line 3496
    if-nez p0, :cond_0

    .line 3497
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v1

    return-object v1

    .line 3498
    :cond_0
    if-nez p1, :cond_1

    .line 3499
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v1

    return-object v1

    .line 3501
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [Z

    .line 3502
    .local v0, "joinedArray":[Z
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    .line 3503
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    .line 3504
    return-object v0
.end method

.method public static clone([B)[B
    .locals 1
    .param p0, "array"    # [B

    .prologue
    const/4 v0, 0x0

    .line 401
    if-nez p0, :cond_0

    .line 402
    return-object v0

    .line 404
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static clone([C)[C
    .locals 1
    .param p0, "array"    # [C

    .prologue
    const/4 v0, 0x0

    .line 385
    if-nez p0, :cond_0

    .line 386
    return-object v0

    .line 388
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static clone([D)[D
    .locals 1
    .param p0, "array"    # [D

    .prologue
    const/4 v0, 0x0

    .line 417
    if-nez p0, :cond_0

    .line 418
    return-object v0

    .line 420
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public static clone([F)[F
    .locals 1
    .param p0, "array"    # [F

    .prologue
    const/4 v0, 0x0

    .line 433
    if-nez p0, :cond_0

    .line 434
    return-object v0

    .line 436
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static clone([I)[I
    .locals 1
    .param p0, "array"    # [I

    .prologue
    const/4 v0, 0x0

    .line 353
    if-nez p0, :cond_0

    .line 354
    return-object v0

    .line 356
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static clone([J)[J
    .locals 1
    .param p0, "array"    # [J

    .prologue
    const/4 v0, 0x0

    .line 337
    if-nez p0, :cond_0

    .line 338
    return-object v0

    .line 340
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static clone([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    .line 321
    if-nez p0, :cond_0

    .line 322
    return-object v0

    .line 324
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static clone([S)[S
    .locals 1
    .param p0, "array"    # [S

    .prologue
    const/4 v0, 0x0

    .line 369
    if-nez p0, :cond_0

    .line 370
    return-object v0

    .line 372
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method public static clone([Z)[Z
    .locals 1
    .param p0, "array"    # [Z

    .prologue
    const/4 v0, 0x0

    .line 449
    if-nez p0, :cond_0

    .line 450
    return-object v0

    .line 452
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public static contains([BB)Z
    .locals 2
    .param p0, "array"    # [B
    .param p1, "valueToFind"    # B

    .prologue
    .line 2242
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([BB)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([CC)Z
    .locals 2
    .param p0, "array"    # [C
    .param p1, "valueToFind"    # C

    .prologue
    .line 2139
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([CC)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([DD)Z
    .locals 3
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D

    .prologue
    .line 2449
    invoke-static {p0, p1, p2}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([DD)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([DDD)Z
    .locals 7
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "tolerance"    # D

    .prologue
    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    .line 2466
    invoke-static/range {v0 .. v5}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([DDID)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public static contains([FF)Z
    .locals 2
    .param p0, "array"    # [F
    .param p1, "valueToFind"    # F

    .prologue
    .line 2569
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([FF)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([II)Z
    .locals 2
    .param p0, "array"    # [I
    .param p1, "valueToFind"    # I

    .prologue
    .line 1928
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([JJ)Z
    .locals 3
    .param p0, "array"    # [J
    .param p1, "valueToFind"    # J

    .prologue
    .line 1825
    invoke-static {p0, p1, p2}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([JJ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;

    .prologue
    .line 1722
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([SS)Z
    .locals 2
    .param p0, "array"    # [S
    .param p1, "valueToFind"    # S

    .prologue
    .line 2031
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([SS)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([ZZ)Z
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "valueToFind"    # Z

    .prologue
    .line 2674
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([ZZ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p0, "array"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p1, "newArrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 3980
    if-eqz p0, :cond_0

    .line 3981
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 3982
    .local v0, "arrayLength":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 3983
    .local v1, "newArray":Ljava/lang/Object;
    invoke-static {p0, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3984
    return-object v1

    .line 3986
    .end local v0    # "arrayLength":I
    .end local v1    # "newArray":Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x1

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method private static extractIndices(Ljava/util/HashSet;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 5790
    .local p0, "coll":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v4, v5, [I

    .line 5791
    .local v4, "result":[I
    const/4 v0, 0x0

    .line 5792
    .local v0, "i":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "index$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 5793
    .local v2, "index":Ljava/lang/Integer;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 5795
    .end local v2    # "index":Ljava/lang/Integer;
    :cond_0
    return-object v4
.end method

.method public static getLength(Ljava/lang/Object;)I
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;

    .prologue
    .line 1370
    if-nez p0, :cond_0

    .line 1371
    const/4 v0, 0x0

    return v0

    .line 1373
    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;

    .prologue
    .line 191
    new-instance v0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public static indexOf([BB)I
    .locals 1
    .param p0, "array"    # [B
    .param p1, "valueToFind"    # B

    .prologue
    .line 2155
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([BBI)I

    move-result v0

    return v0
.end method

.method public static indexOf([BBI)I
    .locals 3
    .param p0, "array"    # [B
    .param p1, "valueToFind"    # B
    .param p2, "startIndex"    # I

    .prologue
    const/4 v2, -0x1

    .line 2173
    if-nez p0, :cond_0

    .line 2174
    return v2

    .line 2176
    :cond_0
    if-gez p2, :cond_1

    .line 2177
    const/4 p2, 0x0

    .line 2179
    :cond_1
    move v0, p2

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 2180
    aget-byte v1, p0, v0

    if-ne p1, v1, :cond_2

    .line 2181
    return v0

    .line 2179
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2184
    :cond_3
    return v2
.end method

.method public static indexOf([CC)I
    .locals 1
    .param p0, "array"    # [C
    .param p1, "valueToFind"    # C

    .prologue
    .line 2048
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([CCI)I

    move-result v0

    return v0
.end method

.method public static indexOf([CCI)I
    .locals 3
    .param p0, "array"    # [C
    .param p1, "valueToFind"    # C
    .param p2, "startIndex"    # I

    .prologue
    const/4 v2, -0x1

    .line 2067
    if-nez p0, :cond_0

    .line 2068
    return v2

    .line 2070
    :cond_0
    if-gez p2, :cond_1

    .line 2071
    const/4 p2, 0x0

    .line 2073
    :cond_1
    move v0, p2

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 2074
    aget-char v1, p0, v0

    if-ne p1, v1, :cond_2

    .line 2075
    return v0

    .line 2073
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2078
    :cond_3
    return v2
.end method

.method public static indexOf([DD)I
    .locals 1
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D

    .prologue
    .line 2258
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([DDI)I

    move-result v0

    return v0
.end method

.method public static indexOf([DDD)I
    .locals 7
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "tolerance"    # D

    .prologue
    .line 2275
    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([DDID)I

    move-result v0

    return v0
.end method

.method public static indexOf([DDI)I
    .locals 5
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "startIndex"    # I

    .prologue
    const/4 v4, -0x1

    .line 2293
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2294
    return v4

    .line 2296
    :cond_0
    if-gez p3, :cond_1

    .line 2297
    const/4 p3, 0x0

    .line 2299
    :cond_1
    move v0, p3

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 2300
    aget-wide v2, p0, v0

    cmpl-double v1, p1, v2

    if-nez v1, :cond_2

    .line 2301
    return v0

    .line 2299
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2304
    :cond_3
    return v4
.end method

.method public static indexOf([DDID)I
    .locals 9
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "startIndex"    # I
    .param p4, "tolerance"    # D

    .prologue
    const/4 v8, -0x1

    .line 2325
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2326
    return v8

    .line 2328
    :cond_0
    if-gez p3, :cond_1

    .line 2329
    const/4 p3, 0x0

    .line 2331
    :cond_1
    sub-double v4, p1, p4

    .line 2332
    .local v4, "min":D
    add-double v2, p1, p4

    .line 2333
    .local v2, "max":D
    move v0, p3

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 2334
    aget-wide v6, p0, v0

    cmpl-double v1, v6, v4

    if-ltz v1, :cond_2

    aget-wide v6, p0, v0

    cmpg-double v1, v6, v2

    if-gtz v1, :cond_2

    .line 2335
    return v0

    .line 2333
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2338
    :cond_3
    return v8
.end method

.method public static indexOf([FF)I
    .locals 1
    .param p0, "array"    # [F
    .param p1, "valueToFind"    # F

    .prologue
    .line 2482
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([FFI)I

    move-result v0

    return v0
.end method

.method public static indexOf([FFI)I
    .locals 3
    .param p0, "array"    # [F
    .param p1, "valueToFind"    # F
    .param p2, "startIndex"    # I

    .prologue
    const/4 v2, -0x1

    .line 2500
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2501
    return v2

    .line 2503
    :cond_0
    if-gez p2, :cond_1

    .line 2504
    const/4 p2, 0x0

    .line 2506
    :cond_1
    move v0, p2

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 2507
    aget v1, p0, v0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_2

    .line 2508
    return v0

    .line 2506
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2511
    :cond_3
    return v2
.end method

.method public static indexOf([II)I
    .locals 1
    .param p0, "array"    # [I
    .param p1, "valueToFind"    # I

    .prologue
    .line 1841
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([III)I

    move-result v0

    return v0
.end method

.method public static indexOf([III)I
    .locals 3
    .param p0, "array"    # [I
    .param p1, "valueToFind"    # I
    .param p2, "startIndex"    # I

    .prologue
    const/4 v2, -0x1

    .line 1859
    if-nez p0, :cond_0

    .line 1860
    return v2

    .line 1862
    :cond_0
    if-gez p2, :cond_1

    .line 1863
    const/4 p2, 0x0

    .line 1865
    :cond_1
    move v0, p2

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 1866
    aget v1, p0, v0

    if-ne p1, v1, :cond_2

    .line 1867
    return v0

    .line 1865
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1870
    :cond_3
    return v2
.end method

.method public static indexOf([JJ)I
    .locals 1
    .param p0, "array"    # [J
    .param p1, "valueToFind"    # J

    .prologue
    .line 1738
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([JJI)I

    move-result v0

    return v0
.end method

.method public static indexOf([JJI)I
    .locals 5
    .param p0, "array"    # [J
    .param p1, "valueToFind"    # J
    .param p3, "startIndex"    # I

    .prologue
    const/4 v4, -0x1

    .line 1756
    if-nez p0, :cond_0

    .line 1757
    return v4

    .line 1759
    :cond_0
    if-gez p3, :cond_1

    .line 1760
    const/4 p3, 0x0

    .line 1762
    :cond_1
    move v0, p3

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 1763
    aget-wide v2, p0, v0

    cmp-long v1, p1, v2

    if-nez v1, :cond_2

    .line 1764
    return v0

    .line 1762
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1767
    :cond_3
    return v4
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;

    .prologue
    .line 1619
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;
    .param p2, "startIndex"    # I

    .prologue
    const/4 v2, -0x1

    .line 1637
    if-nez p0, :cond_0

    .line 1638
    return v2

    .line 1640
    :cond_0
    if-gez p2, :cond_1

    .line 1641
    const/4 p2, 0x0

    .line 1643
    :cond_1
    if-nez p1, :cond_3

    .line 1644
    move v0, p2

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_5

    .line 1645
    aget-object v1, p0, v0

    if-nez v1, :cond_2

    .line 1646
    return v0

    .line 1644
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1649
    .end local v0    # "i":I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1650
    move v0, p2

    .restart local v0    # "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_5

    .line 1651
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1652
    return v0

    .line 1650
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1656
    .end local v0    # "i":I
    :cond_5
    return v2
.end method

.method public static indexOf([SS)I
    .locals 1
    .param p0, "array"    # [S
    .param p1, "valueToFind"    # S

    .prologue
    .line 1944
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([SSI)I

    move-result v0

    return v0
.end method

.method public static indexOf([SSI)I
    .locals 3
    .param p0, "array"    # [S
    .param p1, "valueToFind"    # S
    .param p2, "startIndex"    # I

    .prologue
    const/4 v2, -0x1

    .line 1962
    if-nez p0, :cond_0

    .line 1963
    return v2

    .line 1965
    :cond_0
    if-gez p2, :cond_1

    .line 1966
    const/4 p2, 0x0

    .line 1968
    :cond_1
    move v0, p2

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 1969
    aget-short v1, p0, v0

    if-ne p1, v1, :cond_2

    .line 1970
    return v0

    .line 1968
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1973
    :cond_3
    return v2
.end method

.method public static indexOf([ZZ)I
    .locals 1
    .param p0, "array"    # [Z
    .param p1, "valueToFind"    # Z

    .prologue
    .line 2585
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([ZZI)I

    move-result v0

    return v0
.end method

.method public static indexOf([ZZI)I
    .locals 3
    .param p0, "array"    # [Z
    .param p1, "valueToFind"    # Z
    .param p2, "startIndex"    # I

    .prologue
    const/4 v2, -0x1

    .line 2604
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2605
    return v2

    .line 2607
    :cond_0
    if-gez p2, :cond_1

    .line 2608
    const/4 p2, 0x0

    .line 2610
    :cond_1
    move v0, p2

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 2611
    aget-boolean v1, p0, v0

    if-ne p1, v1, :cond_2

    .line 2612
    return v0

    .line 2610
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2615
    :cond_3
    return v2
.end method

.method public static isEmpty([B)Z
    .locals 3
    .param p0, "array"    # [B

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3288
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isEmpty([C)Z
    .locals 3
    .param p0, "array"    # [C

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3277
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isEmpty([D)Z
    .locals 3
    .param p0, "array"    # [D

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3299
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isEmpty([F)Z
    .locals 3
    .param p0, "array"    # [F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3310
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isEmpty([I)Z
    .locals 3
    .param p0, "array"    # [I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3255
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isEmpty([J)Z
    .locals 3
    .param p0, "array"    # [J

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3244
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3233
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isEmpty([S)Z
    .locals 3
    .param p0, "array"    # [S

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3266
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isEmpty([Z)Z
    .locals 3
    .param p0, "array"    # [Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3321
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "array1"    # Ljava/lang/Object;
    .param p1, "array2"    # Ljava/lang/Object;

    .prologue
    .line 205
    new-instance v0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    return v0
.end method

.method public static isNotEmpty([B)Z
    .locals 2
    .param p0, "array"    # [B

    .prologue
    const/4 v0, 0x0

    .line 3389
    if-eqz p0, :cond_0

    array-length v1, p0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isNotEmpty([C)Z
    .locals 2
    .param p0, "array"    # [C

    .prologue
    const/4 v0, 0x0

    .line 3378
    if-eqz p0, :cond_0

    array-length v1, p0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isNotEmpty([D)Z
    .locals 2
    .param p0, "array"    # [D

    .prologue
    const/4 v0, 0x0

    .line 3400
    if-eqz p0, :cond_0

    array-length v1, p0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isNotEmpty([F)Z
    .locals 2
    .param p0, "array"    # [F

    .prologue
    const/4 v0, 0x0

    .line 3411
    if-eqz p0, :cond_0

    array-length v1, p0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isNotEmpty([I)Z
    .locals 2
    .param p0, "array"    # [I

    .prologue
    const/4 v0, 0x0

    .line 3356
    if-eqz p0, :cond_0

    array-length v1, p0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isNotEmpty([J)Z
    .locals 2
    .param p0, "array"    # [J

    .prologue
    const/4 v0, 0x0

    .line 3345
    if-eqz p0, :cond_0

    array-length v1, p0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isNotEmpty([Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    .line 3334
    if-eqz p0, :cond_0

    array-length v1, p0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isNotEmpty([S)Z
    .locals 2
    .param p0, "array"    # [S

    .prologue
    const/4 v0, 0x0

    .line 3367
    if-eqz p0, :cond_0

    array-length v1, p0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isNotEmpty([Z)Z
    .locals 2
    .param p0, "array"    # [Z

    .prologue
    const/4 v0, 0x0

    .line 3422
    if-eqz p0, :cond_0

    array-length v1, p0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSameLength([B[B)Z
    .locals 3
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B

    .prologue
    const/4 v2, 0x0

    .line 1286
    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 1289
    :cond_0
    return v2

    .line 1287
    :cond_1
    if-nez p1, :cond_2

    if-eqz p0, :cond_2

    array-length v0, p0

    if-gtz v0, :cond_0

    .line 1288
    :cond_2
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_0

    .line 1291
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static isSameLength([C[C)Z
    .locals 3
    .param p0, "array1"    # [C
    .param p1, "array2"    # [C

    .prologue
    const/4 v2, 0x0

    .line 1268
    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 1271
    :cond_0
    return v2

    .line 1269
    :cond_1
    if-nez p1, :cond_2

    if-eqz p0, :cond_2

    array-length v0, p0

    if-gtz v0, :cond_0

    .line 1270
    :cond_2
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_0

    .line 1273
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static isSameLength([D[D)Z
    .locals 3
    .param p0, "array1"    # [D
    .param p1, "array2"    # [D

    .prologue
    const/4 v2, 0x0

    .line 1304
    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 1307
    :cond_0
    return v2

    .line 1305
    :cond_1
    if-nez p1, :cond_2

    if-eqz p0, :cond_2

    array-length v0, p0

    if-gtz v0, :cond_0

    .line 1306
    :cond_2
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_0

    .line 1309
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static isSameLength([F[F)Z
    .locals 3
    .param p0, "array1"    # [F
    .param p1, "array2"    # [F

    .prologue
    const/4 v2, 0x0

    .line 1322
    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 1325
    :cond_0
    return v2

    .line 1323
    :cond_1
    if-nez p1, :cond_2

    if-eqz p0, :cond_2

    array-length v0, p0

    if-gtz v0, :cond_0

    .line 1324
    :cond_2
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_0

    .line 1327
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static isSameLength([I[I)Z
    .locals 3
    .param p0, "array1"    # [I
    .param p1, "array2"    # [I

    .prologue
    const/4 v2, 0x0

    .line 1232
    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 1235
    :cond_0
    return v2

    .line 1233
    :cond_1
    if-nez p1, :cond_2

    if-eqz p0, :cond_2

    array-length v0, p0

    if-gtz v0, :cond_0

    .line 1234
    :cond_2
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_0

    .line 1237
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static isSameLength([J[J)Z
    .locals 3
    .param p0, "array1"    # [J
    .param p1, "array2"    # [J

    .prologue
    const/4 v2, 0x0

    .line 1214
    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 1217
    :cond_0
    return v2

    .line 1215
    :cond_1
    if-nez p1, :cond_2

    if-eqz p0, :cond_2

    array-length v0, p0

    if-gtz v0, :cond_0

    .line 1216
    :cond_2
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_0

    .line 1219
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static isSameLength([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 3
    .param p0, "array1"    # [Ljava/lang/Object;
    .param p1, "array2"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 1196
    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 1199
    :cond_0
    return v2

    .line 1197
    :cond_1
    if-nez p1, :cond_2

    if-eqz p0, :cond_2

    array-length v0, p0

    if-gtz v0, :cond_0

    .line 1198
    :cond_2
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_0

    .line 1201
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static isSameLength([S[S)Z
    .locals 3
    .param p0, "array1"    # [S
    .param p1, "array2"    # [S

    .prologue
    const/4 v2, 0x0

    .line 1250
    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 1253
    :cond_0
    return v2

    .line 1251
    :cond_1
    if-nez p1, :cond_2

    if-eqz p0, :cond_2

    array-length v0, p0

    if-gtz v0, :cond_0

    .line 1252
    :cond_2
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_0

    .line 1255
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static isSameLength([Z[Z)Z
    .locals 3
    .param p0, "array1"    # [Z
    .param p1, "array2"    # [Z

    .prologue
    const/4 v2, 0x0

    .line 1340
    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 1343
    :cond_0
    return v2

    .line 1341
    :cond_1
    if-nez p1, :cond_2

    if-eqz p0, :cond_2

    array-length v0, p0

    if-gtz v0, :cond_0

    .line 1342
    :cond_2
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_0

    .line 1345
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static isSameType(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "array1"    # Ljava/lang/Object;
    .param p1, "array2"    # Ljava/lang/Object;

    .prologue
    .line 1386
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1387
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1389
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static lastIndexOf([BB)I
    .locals 1
    .param p0, "array"    # [B
    .param p1, "valueToFind"    # B

    .prologue
    .line 2198
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->lastIndexOf([BBI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([BBI)I
    .locals 3
    .param p0, "array"    # [B
    .param p1, "valueToFind"    # B
    .param p2, "startIndex"    # I

    .prologue
    const/4 v2, -0x1

    .line 2216
    if-nez p0, :cond_0

    .line 2217
    return v2

    .line 2219
    :cond_0
    if-gez p2, :cond_1

    .line 2220
    return v2

    .line 2221
    :cond_1
    array-length v1, p0

    if-lt p2, v1, :cond_2

    .line 2222
    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    .line 2224
    :cond_2
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 2225
    aget-byte v1, p0, v0

    if-ne p1, v1, :cond_3

    .line 2226
    return v0

    .line 2224
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2229
    :cond_4
    return v2
.end method

.method public static lastIndexOf([CC)I
    .locals 1
    .param p0, "array"    # [C
    .param p1, "valueToFind"    # C

    .prologue
    .line 2093
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->lastIndexOf([CCI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([CCI)I
    .locals 3
    .param p0, "array"    # [C
    .param p1, "valueToFind"    # C
    .param p2, "startIndex"    # I

    .prologue
    const/4 v2, -0x1

    .line 2112
    if-nez p0, :cond_0

    .line 2113
    return v2

    .line 2115
    :cond_0
    if-gez p2, :cond_1

    .line 2116
    return v2

    .line 2117
    :cond_1
    array-length v1, p0

    if-lt p2, v1, :cond_2

    .line 2118
    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    .line 2120
    :cond_2
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 2121
    aget-char v1, p0, v0

    if-ne p1, v1, :cond_3

    .line 2122
    return v0

    .line 2120
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2125
    :cond_4
    return v2
.end method

.method public static lastIndexOf([DD)I
    .locals 1
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D

    .prologue
    .line 2352
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->lastIndexOf([DDI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([DDD)I
    .locals 7
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "tolerance"    # D

    .prologue
    .line 2369
    const v3, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/miui/commons/lang3/ArrayUtils;->lastIndexOf([DDID)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([DDI)I
    .locals 5
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "startIndex"    # I

    .prologue
    const/4 v4, -0x1

    .line 2387
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2388
    return v4

    .line 2390
    :cond_0
    if-gez p3, :cond_1

    .line 2391
    return v4

    .line 2392
    :cond_1
    array-length v1, p0

    if-lt p3, v1, :cond_2

    .line 2393
    array-length v1, p0

    add-int/lit8 p3, v1, -0x1

    .line 2395
    :cond_2
    move v0, p3

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 2396
    aget-wide v2, p0, v0

    cmpl-double v1, p1, v2

    if-nez v1, :cond_3

    .line 2397
    return v0

    .line 2395
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2400
    :cond_4
    return v4
.end method

.method public static lastIndexOf([DDID)I
    .locals 9
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "startIndex"    # I
    .param p4, "tolerance"    # D

    .prologue
    const/4 v8, -0x1

    .line 2421
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2422
    return v8

    .line 2424
    :cond_0
    if-gez p3, :cond_1

    .line 2425
    return v8

    .line 2426
    :cond_1
    array-length v1, p0

    if-lt p3, v1, :cond_2

    .line 2427
    array-length v1, p0

    add-int/lit8 p3, v1, -0x1

    .line 2429
    :cond_2
    sub-double v4, p1, p4

    .line 2430
    .local v4, "min":D
    add-double v2, p1, p4

    .line 2431
    .local v2, "max":D
    move v0, p3

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 2432
    aget-wide v6, p0, v0

    cmpl-double v1, v6, v4

    if-ltz v1, :cond_3

    aget-wide v6, p0, v0

    cmpg-double v1, v6, v2

    if-gtz v1, :cond_3

    .line 2433
    return v0

    .line 2431
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2436
    :cond_4
    return v8
.end method

.method public static lastIndexOf([FF)I
    .locals 1
    .param p0, "array"    # [F
    .param p1, "valueToFind"    # F

    .prologue
    .line 2525
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->lastIndexOf([FFI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([FFI)I
    .locals 3
    .param p0, "array"    # [F
    .param p1, "valueToFind"    # F
    .param p2, "startIndex"    # I

    .prologue
    const/4 v2, -0x1

    .line 2543
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2544
    return v2

    .line 2546
    :cond_0
    if-gez p2, :cond_1

    .line 2547
    return v2

    .line 2548
    :cond_1
    array-length v1, p0

    if-lt p2, v1, :cond_2

    .line 2549
    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    .line 2551
    :cond_2
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 2552
    aget v1, p0, v0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_3

    .line 2553
    return v0

    .line 2551
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2556
    :cond_4
    return v2
.end method

.method public static lastIndexOf([II)I
    .locals 1
    .param p0, "array"    # [I
    .param p1, "valueToFind"    # I

    .prologue
    .line 1884
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->lastIndexOf([III)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([III)I
    .locals 3
    .param p0, "array"    # [I
    .param p1, "valueToFind"    # I
    .param p2, "startIndex"    # I

    .prologue
    const/4 v2, -0x1

    .line 1902
    if-nez p0, :cond_0

    .line 1903
    return v2

    .line 1905
    :cond_0
    if-gez p2, :cond_1

    .line 1906
    return v2

    .line 1907
    :cond_1
    array-length v1, p0

    if-lt p2, v1, :cond_2

    .line 1908
    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    .line 1910
    :cond_2
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 1911
    aget v1, p0, v0

    if-ne p1, v1, :cond_3

    .line 1912
    return v0

    .line 1910
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1915
    :cond_4
    return v2
.end method

.method public static lastIndexOf([JJ)I
    .locals 1
    .param p0, "array"    # [J
    .param p1, "valueToFind"    # J

    .prologue
    .line 1781
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->lastIndexOf([JJI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([JJI)I
    .locals 5
    .param p0, "array"    # [J
    .param p1, "valueToFind"    # J
    .param p3, "startIndex"    # I

    .prologue
    const/4 v4, -0x1

    .line 1799
    if-nez p0, :cond_0

    .line 1800
    return v4

    .line 1802
    :cond_0
    if-gez p3, :cond_1

    .line 1803
    return v4

    .line 1804
    :cond_1
    array-length v1, p0

    if-lt p3, v1, :cond_2

    .line 1805
    array-length v1, p0

    add-int/lit8 p3, v1, -0x1

    .line 1807
    :cond_2
    move v0, p3

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 1808
    aget-wide v2, p0, v0

    cmp-long v1, p1, v2

    if-nez v1, :cond_3

    .line 1809
    return v0

    .line 1807
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1812
    :cond_4
    return v4
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;

    .prologue
    .line 1670
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;
    .param p2, "startIndex"    # I

    .prologue
    const/4 v2, -0x1

    .line 1688
    if-nez p0, :cond_0

    .line 1689
    return v2

    .line 1691
    :cond_0
    if-gez p2, :cond_1

    .line 1692
    return v2

    .line 1693
    :cond_1
    array-length v1, p0

    if-lt p2, v1, :cond_2

    .line 1694
    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    .line 1696
    :cond_2
    if-nez p1, :cond_4

    .line 1697
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    .line 1698
    aget-object v1, p0, v0

    if-nez v1, :cond_3

    .line 1699
    return v0

    .line 1697
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1702
    .end local v0    # "i":I
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1703
    move v0, p2

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_6

    .line 1704
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1705
    return v0

    .line 1703
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1709
    .end local v0    # "i":I
    :cond_6
    return v2
.end method

.method public static lastIndexOf([SS)I
    .locals 1
    .param p0, "array"    # [S
    .param p1, "valueToFind"    # S

    .prologue
    .line 1987
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->lastIndexOf([SSI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([SSI)I
    .locals 3
    .param p0, "array"    # [S
    .param p1, "valueToFind"    # S
    .param p2, "startIndex"    # I

    .prologue
    const/4 v2, -0x1

    .line 2005
    if-nez p0, :cond_0

    .line 2006
    return v2

    .line 2008
    :cond_0
    if-gez p2, :cond_1

    .line 2009
    return v2

    .line 2010
    :cond_1
    array-length v1, p0

    if-lt p2, v1, :cond_2

    .line 2011
    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    .line 2013
    :cond_2
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 2014
    aget-short v1, p0, v0

    if-ne p1, v1, :cond_3

    .line 2015
    return v0

    .line 2013
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2018
    :cond_4
    return v2
.end method

.method public static lastIndexOf([ZZ)I
    .locals 1
    .param p0, "array"    # [Z
    .param p1, "valueToFind"    # Z

    .prologue
    .line 2630
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->lastIndexOf([ZZI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([ZZI)I
    .locals 3
    .param p0, "array"    # [Z
    .param p1, "valueToFind"    # Z
    .param p2, "startIndex"    # I

    .prologue
    const/4 v2, -0x1

    .line 2648
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2649
    return v2

    .line 2651
    :cond_0
    if-gez p2, :cond_1

    .line 2652
    return v2

    .line 2653
    :cond_1
    array-length v1, p0

    if-lt p2, v1, :cond_2

    .line 2654
    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    .line 2656
    :cond_2
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 2657
    aget-boolean v1, p0, v0

    if-ne p1, v1, :cond_3

    .line 2658
    return v0

    .line 2656
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2661
    :cond_4
    return v2
.end method

.method public static nullToEmpty([B)[B
    .locals 1
    .param p0, "array"    # [B

    .prologue
    .line 591
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 592
    :cond_0
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 594
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([C)[C
    .locals 1
    .param p0, "array"    # [C

    .prologue
    .line 571
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 572
    :cond_0
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    return-object v0

    .line 574
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([D)[D
    .locals 1
    .param p0, "array"    # [D

    .prologue
    .line 611
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 612
    :cond_0
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    return-object v0

    .line 614
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([F)[F
    .locals 1
    .param p0, "array"    # [F

    .prologue
    .line 631
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 632
    :cond_0
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    return-object v0

    .line 634
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([I)[I
    .locals 1
    .param p0, "array"    # [I

    .prologue
    .line 531
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 532
    :cond_0
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    return-object v0

    .line 534
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([J)[J
    .locals 1
    .param p0, "array"    # [J

    .prologue
    .line 511
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 512
    :cond_0
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    return-object v0

    .line 514
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Boolean;)[Ljava/lang/Boolean;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Boolean;

    .prologue
    .line 811
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 812
    :cond_0
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    return-object v0

    .line 814
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Byte;)[Ljava/lang/Byte;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Byte;

    .prologue
    .line 751
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 752
    :cond_0
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    return-object v0

    .line 754
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Character;)[Ljava/lang/Character;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Character;

    .prologue
    .line 731
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 732
    :cond_0
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    return-object v0

    .line 734
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Double;)[Ljava/lang/Double;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Double;

    .prologue
    .line 771
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 772
    :cond_0
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    return-object v0

    .line 774
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Float;)[Ljava/lang/Float;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Float;

    .prologue
    .line 791
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 792
    :cond_0
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    return-object v0

    .line 794
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Integer;)[Ljava/lang/Integer;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Integer;

    .prologue
    .line 691
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 692
    :cond_0
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    return-object v0

    .line 694
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Long;)[Ljava/lang/Long;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Long;

    .prologue
    .line 671
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 672
    :cond_0
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    return-object v0

    .line 674
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 471
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 472
    :cond_0
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    return-object v0

    .line 474
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Short;)[Ljava/lang/Short;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Short;

    .prologue
    .line 711
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 712
    :cond_0
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    return-object v0

    .line 714
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "array"    # [Ljava/lang/String;

    .prologue
    .line 491
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 492
    :cond_0
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 494
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([S)[S
    .locals 1
    .param p0, "array"    # [S

    .prologue
    .line 551
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 552
    :cond_0
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    return-object v0

    .line 554
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Z)[Z
    .locals 1
    .param p0, "array"    # [Z

    .prologue
    .line 651
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 652
    :cond_0
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    return-object v0

    .line 654
    :cond_1
    return-object p0
.end method

.method private static remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 5
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 4925
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 4926
    .local v0, "length":I
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 4927
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", Length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4930
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 4931
    .local v1, "result":Ljava/lang/Object;
    invoke-static {p0, v4, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4932
    add-int/lit8 v2, v0, -0x1

    if-ge p1, v2, :cond_2

    .line 4933
    add-int/lit8 v2, p1, 0x1

    sub-int v3, v0, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {p0, v2, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4936
    :cond_2
    return-object v1
.end method

.method public static remove([BI)[B
    .locals 1
    .param p0, "array"    # [B
    .param p1, "index"    # I

    .prologue
    .line 4477
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static remove([CI)[C
    .locals 1
    .param p0, "array"    # [C
    .param p1, "index"    # I

    .prologue
    .line 4542
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static remove([DI)[D
    .locals 1
    .param p0, "array"    # [D
    .param p1, "index"    # I

    .prologue
    .line 4607
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public static remove([FI)[F
    .locals 1
    .param p0, "array"    # [F
    .param p1, "index"    # I

    .prologue
    .line 4672
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static remove([II)[I
    .locals 1
    .param p0, "array"    # [I
    .param p1, "index"    # I

    .prologue
    .line 4737
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static remove([JI)[J
    .locals 1
    .param p0, "array"    # [J
    .param p1, "index"    # I

    .prologue
    .line 4802
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static remove([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    .line 4346
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static remove([SI)[S
    .locals 1
    .param p0, "array"    # [S
    .param p1, "index"    # I

    .prologue
    .line 4867
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method public static remove([ZI)[Z
    .locals 1
    .param p0, "array"    # [Z
    .param p1, "index"    # I

    .prologue
    .line 4412
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method private static varargs removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;
    .locals 12
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "indices"    # [I

    .prologue
    const/4 v11, 0x0

    .line 5743
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v6

    .line 5744
    .local v6, "length":I
    const/4 v2, 0x0

    .line 5746
    .local v2, "diff":I
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isNotEmpty([I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 5747
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 5749
    array-length v4, p1

    .line 5750
    .local v4, "i":I
    move v7, v6

    .line 5751
    .local v7, "prevIndex":I
    :cond_0
    :goto_0
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_3

    .line 5752
    aget v5, p1, v4

    .line 5753
    .local v5, "index":I
    if-ltz v5, :cond_1

    if-lt v5, v6, :cond_2

    .line 5754
    :cond_1
    new-instance v9, Ljava/lang/IndexOutOfBoundsException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", Length: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 5756
    :cond_2
    if-ge v5, v7, :cond_0

    .line 5759
    add-int/lit8 v2, v2, 0x1

    .line 5760
    move v7, v5

    goto :goto_0

    .line 5763
    .end local v4    # "i":I
    .end local v5    # "index":I
    .end local v7    # "prevIndex":I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v9

    sub-int v10, v6, v2

    invoke-static {v9, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8

    .line 5764
    .local v8, "result":Ljava/lang/Object;
    if-ge v2, v6, :cond_6

    .line 5765
    move v3, v6

    .line 5766
    .local v3, "end":I
    sub-int v1, v6, v2

    .line 5767
    .local v1, "dest":I
    array-length v9, p1

    add-int/lit8 v4, v9, -0x1

    .restart local v4    # "i":I
    :goto_1
    if-ltz v4, :cond_5

    .line 5768
    aget v5, p1, v4

    .line 5769
    .restart local v5    # "index":I
    sub-int v9, v3, v5

    const/4 v10, 0x1

    if-le v9, v10, :cond_4

    .line 5770
    sub-int v9, v3, v5

    add-int/lit8 v0, v9, -0x1

    .line 5771
    .local v0, "cp":I
    sub-int/2addr v1, v0

    .line 5772
    add-int/lit8 v9, v5, 0x1

    invoke-static {p0, v9, v8, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5774
    .end local v0    # "cp":I
    :cond_4
    move v3, v5

    .line 5767
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 5776
    .end local v5    # "index":I
    :cond_5
    if-lez v3, :cond_6

    .line 5777
    invoke-static {p0, v11, v8, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5780
    .end local v1    # "dest":I
    .end local v3    # "end":I
    .end local v4    # "i":I
    :cond_6
    return-object v8
.end method

.method public static varargs removeAll([B[I)[B
    .locals 1
    .param p0, "array"    # [B
    .param p1, "indices"    # [I

    .prologue
    .line 5057
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static varargs removeAll([C[I)[C
    .locals 1
    .param p0, "array"    # [C
    .param p1, "indices"    # [I

    .prologue
    .line 5324
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static varargs removeAll([D[I)[D
    .locals 1
    .param p0, "array"    # [D
    .param p1, "indices"    # [I

    .prologue
    .line 5591
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public static varargs removeAll([F[I)[F
    .locals 1
    .param p0, "array"    # [F
    .param p1, "indices"    # [I

    .prologue
    .line 5502
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static varargs removeAll([I[I)[I
    .locals 1
    .param p0, "array"    # [I
    .param p1, "indices"    # [I

    .prologue
    .line 5235
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static varargs removeAll([J[I)[J
    .locals 1
    .param p0, "array"    # [J
    .param p1, "indices"    # [I

    .prologue
    .line 5413
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static varargs removeAll([Ljava/lang/Object;[I)[Ljava/lang/Object;
    .locals 1
    .param p1, "indices"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[I)[TT;"
        }
    .end annotation

    .prologue
    .line 4968
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static varargs removeAll([S[I)[S
    .locals 1
    .param p0, "array"    # [S
    .param p1, "indices"    # [I

    .prologue
    .line 5146
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method public static varargs removeAll([Z[I)[Z
    .locals 1
    .param p0, "array"    # [Z
    .param p1, "indices"    # [I

    .prologue
    .line 5676
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public static removeElement([BB)[B
    .locals 2
    .param p0, "array"    # [B
    .param p1, "element"    # B

    .prologue
    .line 4506
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([BB)I

    move-result v0

    .line 4507
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4508
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v1

    return-object v1

    .line 4510
    :cond_0
    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove([BI)[B

    move-result-object v1

    return-object v1
.end method

.method public static removeElement([CC)[C
    .locals 2
    .param p0, "array"    # [C
    .param p1, "element"    # C

    .prologue
    .line 4571
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([CC)I

    move-result v0

    .line 4572
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4573
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v1

    return-object v1

    .line 4575
    :cond_0
    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove([CI)[C

    move-result-object v1

    return-object v1
.end method

.method public static removeElement([DD)[D
    .locals 3
    .param p0, "array"    # [D
    .param p1, "element"    # D

    .prologue
    .line 4636
    invoke-static {p0, p1, p2}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([DD)I

    move-result v0

    .line 4637
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4638
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v1

    return-object v1

    .line 4640
    :cond_0
    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove([DI)[D

    move-result-object v1

    return-object v1
.end method

.method public static removeElement([FF)[F
    .locals 2
    .param p0, "array"    # [F
    .param p1, "element"    # F

    .prologue
    .line 4701
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([FF)I

    move-result v0

    .line 4702
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4703
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v1

    return-object v1

    .line 4705
    :cond_0
    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove([FI)[F

    move-result-object v1

    return-object v1
.end method

.method public static removeElement([II)[I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "element"    # I

    .prologue
    .line 4766
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([II)I

    move-result v0

    .line 4767
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4768
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v1

    return-object v1

    .line 4770
    :cond_0
    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove([II)[I

    move-result-object v1

    return-object v1
.end method

.method public static removeElement([JJ)[J
    .locals 3
    .param p0, "array"    # [J
    .param p1, "element"    # J

    .prologue
    .line 4831
    invoke-static {p0, p1, p2}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([JJ)I

    move-result v0

    .line 4832
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4833
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v1

    return-object v1

    .line 4835
    :cond_0
    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove([JI)[J

    move-result-object v1

    return-object v1
.end method

.method public static removeElement([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Object;",
            ")[TT;"
        }
    .end annotation

    .prologue
    .line 4376
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 4377
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4378
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 4380
    :cond_0
    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static removeElement([SS)[S
    .locals 2
    .param p0, "array"    # [S
    .param p1, "element"    # S

    .prologue
    .line 4896
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([SS)I

    move-result v0

    .line 4897
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4898
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v1

    return-object v1

    .line 4900
    :cond_0
    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove([SI)[S

    move-result-object v1

    return-object v1
.end method

.method public static removeElement([ZZ)[Z
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "element"    # Z

    .prologue
    .line 4441
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([ZZ)I

    move-result v0

    .line 4442
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4443
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v1

    return-object v1

    .line 4445
    :cond_0
    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->remove([ZI)[Z

    move-result-object v1

    return-object v1
.end method

.method public static varargs removeElements([B[B)[B
    .locals 17
    .param p0, "array"    # [B
    .param p1, "values"    # [B

    .prologue
    .line 5088
    invoke-static/range {p0 .. p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([B)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static/range {p1 .. p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([B)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 5089
    :cond_0
    invoke-static/range {p0 .. p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v13

    return-object v13

    .line 5091
    :cond_1
    new-instance v9, Ljava/util/HashMap;

    move-object/from16 v0, p1

    array-length v13, v0

    invoke-direct {v9, v13}, Ljava/util/HashMap;-><init>(I)V

    .line 5092
    .local v9, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Byte;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    const/4 v13, 0x0

    move-object/from16 v0, p1

    array-length v14, v0

    :goto_0
    if-ge v13, v14, :cond_3

    aget-byte v11, p1, v13

    .line 5093
    .local v11, "v":B
    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    .line 5094
    .local v1, "boxed":Ljava/lang/Byte;
    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    .line 5095
    .local v2, "count":Lorg/apache/miui/commons/lang3/mutable/MutableInt;
    if-nez v2, :cond_2

    .line 5096
    new-instance v15, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    const/16 v16, 0x1

    invoke-direct/range {v15 .. v16}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v9, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5092
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 5098
    :cond_2
    invoke-virtual {v2}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_1

    .line 5101
    .end local v1    # "boxed":Ljava/lang/Byte;
    .end local v2    # "count":Lorg/apache/miui/commons/lang3/mutable/MutableInt;
    .end local v11    # "v":B
    :cond_3
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 5102
    .local v10, "toRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "e$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 5103
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Byte;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Byte;

    .line 5104
    .local v12, "v":Ljava/lang/Byte;
    const/4 v6, 0x0

    .line 5105
    .local v6, "found":I
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    invoke-virtual {v13}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v3

    .local v3, "ct":I
    :goto_2
    if-ge v8, v3, :cond_4

    .line 5106
    invoke-virtual {v12}, Ljava/lang/Byte;->byteValue()B

    move-result v13

    move-object/from16 v0, p0

    invoke-static {v0, v13, v6}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([BBI)I

    move-result v6

    .line 5107
    if-ltz v6, :cond_4

    .line 5110
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "found":I
    .local v7, "found":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5105
    add-int/lit8 v8, v8, 0x1

    move v6, v7

    .end local v7    # "found":I
    .restart local v6    # "found":I
    goto :goto_2

    .line 5113
    .end local v3    # "ct":I
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Byte;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    .end local v6    # "found":I
    .end local v8    # "i":I
    .end local v12    # "v":Ljava/lang/Byte;
    :cond_5
    invoke-static {v10}, Lorg/apache/miui/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll([B[I)[B

    move-result-object v13

    return-object v13
.end method

.method public static varargs removeElements([C[C)[C
    .locals 17
    .param p0, "array"    # [C
    .param p1, "values"    # [C

    .prologue
    .line 5355
    invoke-static/range {p0 .. p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static/range {p1 .. p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 5356
    :cond_0
    invoke-static/range {p0 .. p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v13

    return-object v13

    .line 5358
    :cond_1
    new-instance v9, Ljava/util/HashMap;

    move-object/from16 v0, p1

    array-length v13, v0

    invoke-direct {v9, v13}, Ljava/util/HashMap;-><init>(I)V

    .line 5359
    .local v9, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    const/4 v13, 0x0

    move-object/from16 v0, p1

    array-length v14, v0

    :goto_0
    if-ge v13, v14, :cond_3

    aget-char v11, p1, v13

    .line 5360
    .local v11, "v":C
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    .line 5361
    .local v1, "boxed":Ljava/lang/Character;
    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    .line 5362
    .local v2, "count":Lorg/apache/miui/commons/lang3/mutable/MutableInt;
    if-nez v2, :cond_2

    .line 5363
    new-instance v15, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    const/16 v16, 0x1

    invoke-direct/range {v15 .. v16}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v9, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5359
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 5365
    :cond_2
    invoke-virtual {v2}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_1

    .line 5368
    .end local v1    # "boxed":Ljava/lang/Character;
    .end local v2    # "count":Lorg/apache/miui/commons/lang3/mutable/MutableInt;
    .end local v11    # "v":C
    :cond_3
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 5369
    .local v10, "toRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "e$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 5370
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Character;

    .line 5371
    .local v12, "v":Ljava/lang/Character;
    const/4 v6, 0x0

    .line 5372
    .local v6, "found":I
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    invoke-virtual {v13}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v3

    .local v3, "ct":I
    :goto_2
    if-ge v8, v3, :cond_4

    .line 5373
    invoke-virtual {v12}, Ljava/lang/Character;->charValue()C

    move-result v13

    move-object/from16 v0, p0

    invoke-static {v0, v13, v6}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([CCI)I

    move-result v6

    .line 5374
    if-ltz v6, :cond_4

    .line 5377
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "found":I
    .local v7, "found":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5372
    add-int/lit8 v8, v8, 0x1

    move v6, v7

    .end local v7    # "found":I
    .restart local v6    # "found":I
    goto :goto_2

    .line 5380
    .end local v3    # "ct":I
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    .end local v6    # "found":I
    .end local v8    # "i":I
    .end local v12    # "v":Ljava/lang/Character;
    :cond_5
    invoke-static {v10}, Lorg/apache/miui/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll([C[I)[C

    move-result-object v13

    return-object v13
.end method

.method public static varargs removeElements([D[D)[D
    .locals 21
    .param p0, "array"    # [D
    .param p1, "values"    # [D

    .prologue
    .line 5622
    invoke-static/range {p0 .. p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v17

    if-nez v17, :cond_0

    invoke-static/range {p1 .. p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 5623
    :cond_0
    invoke-static/range {p0 .. p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v17

    return-object v17

    .line 5625
    :cond_1
    new-instance v12, Ljava/util/HashMap;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 5626
    .local v12, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Double;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    const/16 v17, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    aget-wide v14, p1, v17

    .line 5627
    .local v14, "v":D
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 5628
    .local v4, "boxed":Ljava/lang/Double;
    invoke-virtual {v12, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    .line 5629
    .local v5, "count":Lorg/apache/miui/commons/lang3/mutable/MutableInt;
    if-nez v5, :cond_2

    .line 5630
    new-instance v19, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    const/16 v20, 0x1

    invoke-direct/range {v19 .. v20}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;-><init>(I)V

    move-object/from16 v0, v19

    invoke-virtual {v12, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5626
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 5632
    :cond_2
    invoke-virtual {v5}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_1

    .line 5635
    .end local v4    # "boxed":Ljava/lang/Double;
    .end local v5    # "count":Lorg/apache/miui/commons/lang3/mutable/MutableInt;
    .end local v14    # "v":D
    :cond_3
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 5636
    .local v13, "toRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "e$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 5637
    .local v7, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Double;

    .line 5638
    .local v16, "v":Ljava/lang/Double;
    const/4 v9, 0x0

    .line 5639
    .local v9, "found":I
    const/4 v11, 0x0

    .local v11, "i":I
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v6

    .local v6, "ct":I
    :goto_2
    if-ge v11, v6, :cond_4

    .line 5640
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2, v9}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([DDI)I

    move-result v9

    .line 5641
    if-ltz v9, :cond_4

    .line 5644
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "found":I
    .local v10, "found":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5639
    add-int/lit8 v11, v11, 0x1

    move v9, v10

    .end local v10    # "found":I
    .restart local v9    # "found":I
    goto :goto_2

    .line 5647
    .end local v6    # "ct":I
    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    .end local v9    # "found":I
    .end local v11    # "i":I
    .end local v16    # "v":Ljava/lang/Double;
    :cond_5
    invoke-static {v13}, Lorg/apache/miui/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll([D[I)[D

    move-result-object v17

    return-object v17
.end method

.method public static varargs removeElements([F[F)[F
    .locals 17
    .param p0, "array"    # [F
    .param p1, "values"    # [F

    .prologue
    .line 5533
    invoke-static/range {p0 .. p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static/range {p1 .. p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 5534
    :cond_0
    invoke-static/range {p0 .. p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v13

    return-object v13

    .line 5536
    :cond_1
    new-instance v9, Ljava/util/HashMap;

    move-object/from16 v0, p1

    array-length v13, v0

    invoke-direct {v9, v13}, Ljava/util/HashMap;-><init>(I)V

    .line 5537
    .local v9, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Float;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    const/4 v13, 0x0

    move-object/from16 v0, p1

    array-length v14, v0

    :goto_0
    if-ge v13, v14, :cond_3

    aget v11, p1, v13

    .line 5538
    .local v11, "v":F
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 5539
    .local v1, "boxed":Ljava/lang/Float;
    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    .line 5540
    .local v2, "count":Lorg/apache/miui/commons/lang3/mutable/MutableInt;
    if-nez v2, :cond_2

    .line 5541
    new-instance v15, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    const/16 v16, 0x1

    invoke-direct/range {v15 .. v16}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v9, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5537
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 5543
    :cond_2
    invoke-virtual {v2}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_1

    .line 5546
    .end local v1    # "boxed":Ljava/lang/Float;
    .end local v2    # "count":Lorg/apache/miui/commons/lang3/mutable/MutableInt;
    .end local v11    # "v":F
    :cond_3
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 5547
    .local v10, "toRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "e$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 5548
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Float;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    .line 5549
    .local v12, "v":Ljava/lang/Float;
    const/4 v6, 0x0

    .line 5550
    .local v6, "found":I
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    invoke-virtual {v13}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v3

    .local v3, "ct":I
    :goto_2
    if-ge v8, v3, :cond_4

    .line 5551
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v13

    move-object/from16 v0, p0

    invoke-static {v0, v13, v6}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([FFI)I

    move-result v6

    .line 5552
    if-ltz v6, :cond_4

    .line 5555
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "found":I
    .local v7, "found":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5550
    add-int/lit8 v8, v8, 0x1

    move v6, v7

    .end local v7    # "found":I
    .restart local v6    # "found":I
    goto :goto_2

    .line 5558
    .end local v3    # "ct":I
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Float;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    .end local v6    # "found":I
    .end local v8    # "i":I
    .end local v12    # "v":Ljava/lang/Float;
    :cond_5
    invoke-static {v10}, Lorg/apache/miui/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll([F[I)[F

    move-result-object v13

    return-object v13
.end method

.method public static varargs removeElements([I[I)[I
    .locals 17
    .param p0, "array"    # [I
    .param p1, "values"    # [I

    .prologue
    .line 5266
    invoke-static/range {p0 .. p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([I)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static/range {p1 .. p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([I)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 5267
    :cond_0
    invoke-static/range {p0 .. p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v13

    return-object v13

    .line 5269
    :cond_1
    new-instance v9, Ljava/util/HashMap;

    move-object/from16 v0, p1

    array-length v13, v0

    invoke-direct {v9, v13}, Ljava/util/HashMap;-><init>(I)V

    .line 5270
    .local v9, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    const/4 v13, 0x0

    move-object/from16 v0, p1

    array-length v14, v0

    :goto_0
    if-ge v13, v14, :cond_3

    aget v11, p1, v13

    .line 5271
    .local v11, "v":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 5272
    .local v1, "boxed":Ljava/lang/Integer;
    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    .line 5273
    .local v2, "count":Lorg/apache/miui/commons/lang3/mutable/MutableInt;
    if-nez v2, :cond_2

    .line 5274
    new-instance v15, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    const/16 v16, 0x1

    invoke-direct/range {v15 .. v16}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v9, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5270
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 5276
    :cond_2
    invoke-virtual {v2}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_1

    .line 5279
    .end local v1    # "boxed":Ljava/lang/Integer;
    .end local v2    # "count":Lorg/apache/miui/commons/lang3/mutable/MutableInt;
    .end local v11    # "v":I
    :cond_3
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 5280
    .local v10, "toRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "e$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 5281
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 5282
    .local v12, "v":Ljava/lang/Integer;
    const/4 v6, 0x0

    .line 5283
    .local v6, "found":I
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    invoke-virtual {v13}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v3

    .local v3, "ct":I
    :goto_2
    if-ge v8, v3, :cond_4

    .line 5284
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    invoke-static {v0, v13, v6}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([III)I

    move-result v6

    .line 5285
    if-ltz v6, :cond_4

    .line 5288
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "found":I
    .local v7, "found":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5283
    add-int/lit8 v8, v8, 0x1

    move v6, v7

    .end local v7    # "found":I
    .restart local v6    # "found":I
    goto :goto_2

    .line 5291
    .end local v3    # "ct":I
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    .end local v6    # "found":I
    .end local v8    # "i":I
    .end local v12    # "v":Ljava/lang/Integer;
    :cond_5
    invoke-static {v10}, Lorg/apache/miui/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll([I[I)[I

    move-result-object v13

    return-object v13
.end method

.method public static varargs removeElements([J[J)[J
    .locals 21
    .param p0, "array"    # [J
    .param p1, "values"    # [J

    .prologue
    .line 5444
    invoke-static/range {p0 .. p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([J)Z

    move-result v17

    if-nez v17, :cond_0

    invoke-static/range {p1 .. p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([J)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 5445
    :cond_0
    invoke-static/range {p0 .. p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v17

    return-object v17

    .line 5447
    :cond_1
    new-instance v12, Ljava/util/HashMap;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 5448
    .local v12, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    const/16 v17, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    aget-wide v14, p1, v17

    .line 5449
    .local v14, "v":J
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 5450
    .local v4, "boxed":Ljava/lang/Long;
    invoke-virtual {v12, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    .line 5451
    .local v5, "count":Lorg/apache/miui/commons/lang3/mutable/MutableInt;
    if-nez v5, :cond_2

    .line 5452
    new-instance v19, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    const/16 v20, 0x1

    invoke-direct/range {v19 .. v20}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;-><init>(I)V

    move-object/from16 v0, v19

    invoke-virtual {v12, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5448
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 5454
    :cond_2
    invoke-virtual {v5}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_1

    .line 5457
    .end local v4    # "boxed":Ljava/lang/Long;
    .end local v5    # "count":Lorg/apache/miui/commons/lang3/mutable/MutableInt;
    .end local v14    # "v":J
    :cond_3
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 5458
    .local v13, "toRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "e$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 5459
    .local v7, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    .line 5460
    .local v16, "v":Ljava/lang/Long;
    const/4 v9, 0x0

    .line 5461
    .local v9, "found":I
    const/4 v11, 0x0

    .local v11, "i":I
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v6

    .local v6, "ct":I
    :goto_2
    if-ge v11, v6, :cond_4

    .line 5462
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2, v9}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([JJI)I

    move-result v9

    .line 5463
    if-ltz v9, :cond_4

    .line 5466
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "found":I
    .local v10, "found":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5461
    add-int/lit8 v11, v11, 0x1

    move v9, v10

    .end local v10    # "found":I
    .restart local v9    # "found":I
    goto :goto_2

    .line 5469
    .end local v6    # "ct":I
    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    .end local v9    # "found":I
    .end local v11    # "i":I
    .end local v16    # "v":Ljava/lang/Long;
    :cond_5
    invoke-static {v13}, Lorg/apache/miui/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll([J[I)[J

    move-result-object v17

    return-object v17
.end method

.method public static varargs removeElements([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "values":[Ljava/lang/Object;, "[TT;"
    const/4 v10, 0x0

    .line 5000
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 5001
    :cond_0
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    return-object v10

    .line 5003
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    array-length v11, p1

    invoke-direct {v7, v11}, Ljava/util/HashMap;-><init>(I)V

    .line 5004
    .local v7, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<TT;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    array-length v11, p1

    :goto_0
    if-ge v10, v11, :cond_3

    aget-object v9, p1, v10

    .line 5005
    .local v9, "v":Ljava/lang/Object;, "TT;"
    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    .line 5006
    .local v0, "count":Lorg/apache/miui/commons/lang3/mutable/MutableInt;
    if-nez v0, :cond_2

    .line 5007
    new-instance v12, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v7, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5004
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 5009
    :cond_2
    invoke-virtual {v0}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_1

    .line 5012
    .end local v0    # "count":Lorg/apache/miui/commons/lang3/mutable/MutableInt;
    .end local v9    # "v":Ljava/lang/Object;, "TT;"
    :cond_3
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 5013
    .local v8, "toRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "e$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5014
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    .line 5015
    .restart local v9    # "v":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x0

    .line 5016
    .local v4, "found":I
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    invoke-virtual {v10}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v1

    .local v1, "ct":I
    :goto_2
    if-ge v6, v1, :cond_4

    .line 5017
    invoke-static {p0, v9, v4}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v4

    .line 5018
    if-ltz v4, :cond_4

    .line 5021
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "found":I
    .local v5, "found":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5016
    add-int/lit8 v6, v6, 0x1

    move v4, v5

    .end local v5    # "found":I
    .restart local v4    # "found":I
    goto :goto_2

    .line 5024
    .end local v1    # "ct":I
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    .end local v4    # "found":I
    .end local v6    # "i":I
    .end local v9    # "v":Ljava/lang/Object;, "TT;"
    :cond_5
    invoke-static {v8}, Lorg/apache/miui/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v10

    invoke-static {p0, v10}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll([Ljava/lang/Object;[I)[Ljava/lang/Object;

    move-result-object v10

    return-object v10
.end method

.method public static varargs removeElements([S[S)[S
    .locals 17
    .param p0, "array"    # [S
    .param p1, "values"    # [S

    .prologue
    .line 5177
    invoke-static/range {p0 .. p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([S)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static/range {p1 .. p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([S)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 5178
    :cond_0
    invoke-static/range {p0 .. p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v13

    return-object v13

    .line 5180
    :cond_1
    new-instance v9, Ljava/util/HashMap;

    move-object/from16 v0, p1

    array-length v13, v0

    invoke-direct {v9, v13}, Ljava/util/HashMap;-><init>(I)V

    .line 5181
    .local v9, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Short;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    const/4 v13, 0x0

    move-object/from16 v0, p1

    array-length v14, v0

    :goto_0
    if-ge v13, v14, :cond_3

    aget-short v12, p1, v13

    .line 5182
    .local v12, "v":S
    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    .line 5183
    .local v1, "boxed":Ljava/lang/Short;
    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    .line 5184
    .local v2, "count":Lorg/apache/miui/commons/lang3/mutable/MutableInt;
    if-nez v2, :cond_2

    .line 5185
    new-instance v15, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    const/16 v16, 0x1

    invoke-direct/range {v15 .. v16}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v9, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5181
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 5187
    :cond_2
    invoke-virtual {v2}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_1

    .line 5190
    .end local v1    # "boxed":Ljava/lang/Short;
    .end local v2    # "count":Lorg/apache/miui/commons/lang3/mutable/MutableInt;
    .end local v12    # "v":S
    :cond_3
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 5191
    .local v10, "toRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "e$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 5192
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Short;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Short;

    .line 5193
    .local v11, "v":Ljava/lang/Short;
    const/4 v6, 0x0

    .line 5194
    .local v6, "found":I
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    invoke-virtual {v13}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v3

    .local v3, "ct":I
    :goto_2
    if-ge v8, v3, :cond_4

    .line 5195
    invoke-virtual {v11}, Ljava/lang/Short;->shortValue()S

    move-result v13

    move-object/from16 v0, p0

    invoke-static {v0, v13, v6}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([SSI)I

    move-result v6

    .line 5196
    if-ltz v6, :cond_4

    .line 5199
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "found":I
    .local v7, "found":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5194
    add-int/lit8 v8, v8, 0x1

    move v6, v7

    .end local v7    # "found":I
    .restart local v6    # "found":I
    goto :goto_2

    .line 5202
    .end local v3    # "ct":I
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Short;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    .end local v6    # "found":I
    .end local v8    # "i":I
    .end local v11    # "v":Ljava/lang/Short;
    :cond_5
    invoke-static {v10}, Lorg/apache/miui/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll([S[I)[S

    move-result-object v13

    return-object v13
.end method

.method public static varargs removeElements([Z[Z)[Z
    .locals 17
    .param p0, "array"    # [Z
    .param p1, "values"    # [Z

    .prologue
    .line 5707
    invoke-static/range {p0 .. p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static/range {p1 .. p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 5708
    :cond_0
    invoke-static/range {p0 .. p0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v13

    return-object v13

    .line 5710
    :cond_1
    new-instance v9, Ljava/util/HashMap;

    move-object/from16 v0, p1

    array-length v13, v0

    invoke-direct {v9, v13}, Ljava/util/HashMap;-><init>(I)V

    .line 5711
    .local v9, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Boolean;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    const/4 v13, 0x0

    move-object/from16 v0, p1

    array-length v14, v0

    :goto_0
    if-ge v13, v14, :cond_3

    aget-boolean v12, p1, v13

    .line 5712
    .local v12, "v":Z
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 5713
    .local v1, "boxed":Ljava/lang/Boolean;
    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    .line 5714
    .local v2, "count":Lorg/apache/miui/commons/lang3/mutable/MutableInt;
    if-nez v2, :cond_2

    .line 5715
    new-instance v15, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    const/16 v16, 0x1

    invoke-direct/range {v15 .. v16}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v9, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5711
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 5717
    :cond_2
    invoke-virtual {v2}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_1

    .line 5720
    .end local v1    # "boxed":Ljava/lang/Boolean;
    .end local v2    # "count":Lorg/apache/miui/commons/lang3/mutable/MutableInt;
    .end local v12    # "v":Z
    :cond_3
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 5721
    .local v10, "toRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "e$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 5722
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Boolean;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    .line 5723
    .local v11, "v":Ljava/lang/Boolean;
    const/4 v6, 0x0

    .line 5724
    .local v6, "found":I
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/miui/commons/lang3/mutable/MutableInt;

    invoke-virtual {v13}, Lorg/apache/miui/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v3

    .local v3, "ct":I
    :goto_2
    if-ge v8, v3, :cond_4

    .line 5725
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    move-object/from16 v0, p0

    invoke-static {v0, v13, v6}, Lorg/apache/miui/commons/lang3/ArrayUtils;->indexOf([ZZI)I

    move-result v6

    .line 5726
    if-ltz v6, :cond_4

    .line 5729
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "found":I
    .local v7, "found":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5724
    add-int/lit8 v8, v8, 0x1

    move v6, v7

    .end local v7    # "found":I
    .restart local v6    # "found":I
    goto :goto_2

    .line 5732
    .end local v3    # "ct":I
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Boolean;Lorg/apache/miui/commons/lang3/mutable/MutableInt;>;"
    .end local v6    # "found":I
    .end local v8    # "i":I
    .end local v11    # "v":Ljava/lang/Boolean;
    :cond_5
    invoke-static {v10}, Lorg/apache/miui/commons/lang3/ArrayUtils;->extractIndices(Ljava/util/HashSet;)[I

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lorg/apache/miui/commons/lang3/ArrayUtils;->removeAll([Z[I)[Z

    move-result-object v13

    return-object v13
.end method

.method public static reverse([B)V
    .locals 4
    .param p0, "array"    # [B

    .prologue
    .line 1519
    if-nez p0, :cond_0

    .line 1520
    return-void

    .line 1522
    :cond_0
    const/4 v0, 0x0

    .line 1523
    .local v0, "i":I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 1525
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 1526
    aget-byte v2, p0, v1

    .line 1527
    .local v2, "tmp":B
    aget-byte v3, p0, v0

    aput-byte v3, p0, v1

    .line 1528
    aput-byte v2, p0, v0

    .line 1529
    add-int/lit8 v1, v1, -0x1

    .line 1530
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1518
    .end local v2    # "tmp":B
    :cond_1
    return-void
.end method

.method public static reverse([C)V
    .locals 4
    .param p0, "array"    # [C

    .prologue
    .line 1496
    if-nez p0, :cond_0

    .line 1497
    return-void

    .line 1499
    :cond_0
    const/4 v0, 0x0

    .line 1500
    .local v0, "i":I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 1502
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 1503
    aget-char v2, p0, v1

    .line 1504
    .local v2, "tmp":C
    aget-char v3, p0, v0

    aput-char v3, p0, v1

    .line 1505
    aput-char v2, p0, v0

    .line 1506
    add-int/lit8 v1, v1, -0x1

    .line 1507
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1495
    .end local v2    # "tmp":C
    :cond_1
    return-void
.end method

.method public static reverse([D)V
    .locals 6
    .param p0, "array"    # [D

    .prologue
    .line 1542
    if-nez p0, :cond_0

    .line 1543
    return-void

    .line 1545
    :cond_0
    const/4 v0, 0x0

    .line 1546
    .local v0, "i":I
    array-length v4, p0

    add-int/lit8 v1, v4, -0x1

    .line 1548
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 1549
    aget-wide v2, p0, v1

    .line 1550
    .local v2, "tmp":D
    aget-wide v4, p0, v0

    aput-wide v4, p0, v1

    .line 1551
    aput-wide v2, p0, v0

    .line 1552
    add-int/lit8 v1, v1, -0x1

    .line 1553
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1541
    .end local v2    # "tmp":D
    :cond_1
    return-void
.end method

.method public static reverse([F)V
    .locals 4
    .param p0, "array"    # [F

    .prologue
    .line 1565
    if-nez p0, :cond_0

    .line 1566
    return-void

    .line 1568
    :cond_0
    const/4 v0, 0x0

    .line 1569
    .local v0, "i":I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 1571
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 1572
    aget v2, p0, v1

    .line 1573
    .local v2, "tmp":F
    aget v3, p0, v0

    aput v3, p0, v1

    .line 1574
    aput v2, p0, v0

    .line 1575
    add-int/lit8 v1, v1, -0x1

    .line 1576
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1564
    .end local v2    # "tmp":F
    :cond_1
    return-void
.end method

.method public static reverse([I)V
    .locals 4
    .param p0, "array"    # [I

    .prologue
    .line 1450
    if-nez p0, :cond_0

    .line 1451
    return-void

    .line 1453
    :cond_0
    const/4 v0, 0x0

    .line 1454
    .local v0, "i":I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 1456
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 1457
    aget v2, p0, v1

    .line 1458
    .local v2, "tmp":I
    aget v3, p0, v0

    aput v3, p0, v1

    .line 1459
    aput v2, p0, v0

    .line 1460
    add-int/lit8 v1, v1, -0x1

    .line 1461
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1449
    .end local v2    # "tmp":I
    :cond_1
    return-void
.end method

.method public static reverse([J)V
    .locals 6
    .param p0, "array"    # [J

    .prologue
    .line 1427
    if-nez p0, :cond_0

    .line 1428
    return-void

    .line 1430
    :cond_0
    const/4 v0, 0x0

    .line 1431
    .local v0, "i":I
    array-length v4, p0

    add-int/lit8 v1, v4, -0x1

    .line 1433
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 1434
    aget-wide v2, p0, v1

    .line 1435
    .local v2, "tmp":J
    aget-wide v4, p0, v0

    aput-wide v4, p0, v1

    .line 1436
    aput-wide v2, p0, v0

    .line 1437
    add-int/lit8 v1, v1, -0x1

    .line 1438
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1426
    .end local v2    # "tmp":J
    :cond_1
    return-void
.end method

.method public static reverse([Ljava/lang/Object;)V
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 1404
    if-nez p0, :cond_0

    .line 1405
    return-void

    .line 1407
    :cond_0
    const/4 v0, 0x0

    .line 1408
    .local v0, "i":I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 1410
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 1411
    aget-object v2, p0, v1

    .line 1412
    .local v2, "tmp":Ljava/lang/Object;
    aget-object v3, p0, v0

    aput-object v3, p0, v1

    .line 1413
    aput-object v2, p0, v0

    .line 1414
    add-int/lit8 v1, v1, -0x1

    .line 1415
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1403
    .end local v2    # "tmp":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public static reverse([S)V
    .locals 4
    .param p0, "array"    # [S

    .prologue
    .line 1473
    if-nez p0, :cond_0

    .line 1474
    return-void

    .line 1476
    :cond_0
    const/4 v0, 0x0

    .line 1477
    .local v0, "i":I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 1479
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 1480
    aget-short v2, p0, v1

    .line 1481
    .local v2, "tmp":S
    aget-short v3, p0, v0

    aput-short v3, p0, v1

    .line 1482
    aput-short v2, p0, v0

    .line 1483
    add-int/lit8 v1, v1, -0x1

    .line 1484
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1472
    .end local v2    # "tmp":S
    :cond_1
    return-void
.end method

.method public static reverse([Z)V
    .locals 4
    .param p0, "array"    # [Z

    .prologue
    .line 1588
    if-nez p0, :cond_0

    .line 1589
    return-void

    .line 1591
    :cond_0
    const/4 v0, 0x0

    .line 1592
    .local v0, "i":I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 1594
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 1595
    aget-boolean v2, p0, v1

    .line 1596
    .local v2, "tmp":Z
    aget-boolean v3, p0, v0

    aput-boolean v3, p0, v1

    .line 1597
    aput-boolean v2, p0, v0

    .line 1598
    add-int/lit8 v1, v1, -0x1

    .line 1599
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1587
    .end local v2    # "tmp":Z
    :cond_1
    return-void
.end method

.method public static subarray([BII)[B
    .locals 4
    .param p0, "array"    # [B
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1046
    if-nez p0, :cond_0

    .line 1047
    return-object v2

    .line 1049
    :cond_0
    if-gez p1, :cond_1

    .line 1050
    const/4 p1, 0x0

    .line 1052
    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    .line 1053
    array-length p2, p0

    .line 1055
    :cond_2
    sub-int v0, p2, p1

    .line 1056
    .local v0, "newSize":I
    if-gtz v0, :cond_3

    .line 1057
    sget-object v2, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    return-object v2

    .line 1060
    :cond_3
    new-array v1, v0, [B

    .line 1061
    .local v1, "subarray":[B
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1062
    return-object v1
.end method

.method public static subarray([CII)[C
    .locals 4
    .param p0, "array"    # [C
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1007
    if-nez p0, :cond_0

    .line 1008
    return-object v2

    .line 1010
    :cond_0
    if-gez p1, :cond_1

    .line 1011
    const/4 p1, 0x0

    .line 1013
    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    .line 1014
    array-length p2, p0

    .line 1016
    :cond_2
    sub-int v0, p2, p1

    .line 1017
    .local v0, "newSize":I
    if-gtz v0, :cond_3

    .line 1018
    sget-object v2, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    return-object v2

    .line 1021
    :cond_3
    new-array v1, v0, [C

    .line 1022
    .local v1, "subarray":[C
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 1023
    return-object v1
.end method

.method public static subarray([DII)[D
    .locals 4
    .param p0, "array"    # [D
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1085
    if-nez p0, :cond_0

    .line 1086
    return-object v2

    .line 1088
    :cond_0
    if-gez p1, :cond_1

    .line 1089
    const/4 p1, 0x0

    .line 1091
    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    .line 1092
    array-length p2, p0

    .line 1094
    :cond_2
    sub-int v0, p2, p1

    .line 1095
    .local v0, "newSize":I
    if-gtz v0, :cond_3

    .line 1096
    sget-object v2, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    return-object v2

    .line 1099
    :cond_3
    new-array v1, v0, [D

    .line 1100
    .local v1, "subarray":[D
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy([DI[DII)V

    .line 1101
    return-object v1
.end method

.method public static subarray([FII)[F
    .locals 4
    .param p0, "array"    # [F
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1124
    if-nez p0, :cond_0

    .line 1125
    return-object v2

    .line 1127
    :cond_0
    if-gez p1, :cond_1

    .line 1128
    const/4 p1, 0x0

    .line 1130
    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    .line 1131
    array-length p2, p0

    .line 1133
    :cond_2
    sub-int v0, p2, p1

    .line 1134
    .local v0, "newSize":I
    if-gtz v0, :cond_3

    .line 1135
    sget-object v2, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    return-object v2

    .line 1138
    :cond_3
    new-array v1, v0, [F

    .line 1139
    .local v1, "subarray":[F
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 1140
    return-object v1
.end method

.method public static subarray([III)[I
    .locals 4
    .param p0, "array"    # [I
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 929
    if-nez p0, :cond_0

    .line 930
    return-object v2

    .line 932
    :cond_0
    if-gez p1, :cond_1

    .line 933
    const/4 p1, 0x0

    .line 935
    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    .line 936
    array-length p2, p0

    .line 938
    :cond_2
    sub-int v0, p2, p1

    .line 939
    .local v0, "newSize":I
    if-gtz v0, :cond_3

    .line 940
    sget-object v2, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    return-object v2

    .line 943
    :cond_3
    new-array v1, v0, [I

    .line 944
    .local v1, "subarray":[I
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 945
    return-object v1
.end method

.method public static subarray([JII)[J
    .locals 4
    .param p0, "array"    # [J
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 890
    if-nez p0, :cond_0

    .line 891
    return-object v2

    .line 893
    :cond_0
    if-gez p1, :cond_1

    .line 894
    const/4 p1, 0x0

    .line 896
    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    .line 897
    array-length p2, p0

    .line 899
    :cond_2
    sub-int v0, p2, p1

    .line 900
    .local v0, "newSize":I
    if-gtz v0, :cond_3

    .line 901
    sget-object v2, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    return-object v2

    .line 904
    :cond_3
    new-array v1, v0, [J

    .line 905
    .local v1, "subarray":[J
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 906
    return-object v1
.end method

.method public static subarray([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 6
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 848
    if-nez p0, :cond_0

    .line 849
    return-object v4

    .line 851
    :cond_0
    if-gez p1, :cond_1

    .line 852
    const/4 p1, 0x0

    .line 854
    :cond_1
    array-length v4, p0

    if-le p2, v4, :cond_2

    .line 855
    array-length p2, p0

    .line 857
    :cond_2
    sub-int v1, p2, p1

    .line 858
    .local v1, "newSize":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 859
    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-gtz v1, :cond_3

    .line 861
    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 862
    .local v0, "emptyArray":[Ljava/lang/Object;, "[TT;"
    return-object v0

    .line 865
    .end local v0    # "emptyArray":[Ljava/lang/Object;, "[TT;"
    :cond_3
    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 866
    .local v2, "subarray":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 867
    return-object v2
.end method

.method public static subarray([SII)[S
    .locals 4
    .param p0, "array"    # [S
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 968
    if-nez p0, :cond_0

    .line 969
    return-object v2

    .line 971
    :cond_0
    if-gez p1, :cond_1

    .line 972
    const/4 p1, 0x0

    .line 974
    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    .line 975
    array-length p2, p0

    .line 977
    :cond_2
    sub-int v0, p2, p1

    .line 978
    .local v0, "newSize":I
    if-gtz v0, :cond_3

    .line 979
    sget-object v2, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    return-object v2

    .line 982
    :cond_3
    new-array v1, v0, [S

    .line 983
    .local v1, "subarray":[S
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy([SI[SII)V

    .line 984
    return-object v1
.end method

.method public static subarray([ZII)[Z
    .locals 4
    .param p0, "array"    # [Z
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1163
    if-nez p0, :cond_0

    .line 1164
    return-object v2

    .line 1166
    :cond_0
    if-gez p1, :cond_1

    .line 1167
    const/4 p1, 0x0

    .line 1169
    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    .line 1170
    array-length p2, p0

    .line 1172
    :cond_2
    sub-int v0, p2, p1

    .line 1173
    .local v0, "newSize":I
    if-gtz v0, :cond_3

    .line 1174
    sget-object v2, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    return-object v2

    .line 1177
    :cond_3
    new-array v1, v0, [Z

    .line 1178
    .local v1, "subarray":[Z
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    .line 1179
    return-object v1
.end method

.method public static varargs toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    return-object p0
.end method

.method public static toMap([Ljava/lang/Object;)Ljava/util/Map;
    .locals 10
    .param p0, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 236
    if-nez p0, :cond_0

    .line 237
    return-object v5

    .line 239
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    array-length v5, p0

    int-to-double v6, v5

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 240
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p0

    if-ge v2, v5, :cond_4

    .line 241
    aget-object v4, p0, v2

    .line 242
    .local v4, "object":Ljava/lang/Object;
    instance-of v5, v4, Ljava/util/Map$Entry;

    if-eqz v5, :cond_1

    move-object v0, v4

    .line 243
    check-cast v0, Ljava/util/Map$Entry;

    .line 244
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    :cond_1
    instance-of v5, v4, [Ljava/lang/Object;

    if-eqz v5, :cond_3

    move-object v1, v4

    .line 246
    nop

    nop

    .line 247
    .local v1, "entry":[Ljava/lang/Object;
    array-length v5, v1

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    .line 248
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Array element "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 250
    const-string/jumbo v7, "\', has a length less than 2"

    .line 248
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 252
    :cond_2
    const/4 v5, 0x0

    aget-object v5, v1, v5

    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 254
    .end local v1    # "entry":[Ljava/lang/Object;
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Array element "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 256
    const-string/jumbo v7, "\', is neither of type Map.Entry nor an Array"

    .line 254
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 259
    .end local v4    # "object":Ljava/lang/Object;
    :cond_4
    return-object v3
.end method

.method public static toObject([Z)[Ljava/lang/Boolean;
    .locals 3
    .param p0, "array"    # [Z

    .prologue
    const/4 v2, 0x0

    .line 3212
    if-nez p0, :cond_0

    .line 3213
    return-object v2

    .line 3214
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 3215
    sget-object v2, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    return-object v2

    .line 3217
    :cond_1
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Boolean;

    .line 3218
    .local v1, "result":[Ljava/lang/Boolean;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 3219
    aget-boolean v2, p0, v0

    if-eqz v2, :cond_2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    aput-object v2, v1, v0

    .line 3218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3219
    :cond_2
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 3221
    :cond_3
    return-object v1
.end method

.method public static toObject([B)[Ljava/lang/Byte;
    .locals 3
    .param p0, "array"    # [B

    .prologue
    const/4 v2, 0x0

    .line 3008
    if-nez p0, :cond_0

    .line 3009
    return-object v2

    .line 3010
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 3011
    sget-object v2, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    return-object v2

    .line 3013
    :cond_1
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Byte;

    .line 3014
    .local v1, "result":[Ljava/lang/Byte;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 3015
    aget-byte v2, p0, v0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v0

    .line 3014
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3017
    :cond_2
    return-object v1
.end method

.method public static toObject([C)[Ljava/lang/Character;
    .locals 3
    .param p0, "array"    # [C

    .prologue
    const/4 v2, 0x0

    .line 2736
    if-nez p0, :cond_0

    .line 2737
    return-object v2

    .line 2738
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 2739
    sget-object v2, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    return-object v2

    .line 2741
    :cond_1
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Character;

    .line 2742
    .local v1, "result":[Ljava/lang/Character;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2743
    aget-char v2, p0, v0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v0

    .line 2742
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2745
    :cond_2
    return-object v1
.end method

.method public static toObject([D)[Ljava/lang/Double;
    .locals 4
    .param p0, "array"    # [D

    .prologue
    const/4 v2, 0x0

    .line 3076
    if-nez p0, :cond_0

    .line 3077
    return-object v2

    .line 3078
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 3079
    sget-object v2, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    return-object v2

    .line 3081
    :cond_1
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Double;

    .line 3082
    .local v1, "result":[Ljava/lang/Double;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 3083
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v0

    .line 3082
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3085
    :cond_2
    return-object v1
.end method

.method public static toObject([F)[Ljava/lang/Float;
    .locals 3
    .param p0, "array"    # [F

    .prologue
    const/4 v2, 0x0

    .line 3144
    if-nez p0, :cond_0

    .line 3145
    return-object v2

    .line 3146
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 3147
    sget-object v2, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    return-object v2

    .line 3149
    :cond_1
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Float;

    .line 3150
    .local v1, "result":[Ljava/lang/Float;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 3151
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v0

    .line 3150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3153
    :cond_2
    return-object v1
.end method

.method public static toObject([I)[Ljava/lang/Integer;
    .locals 3
    .param p0, "array"    # [I

    .prologue
    const/4 v2, 0x0

    .line 2872
    if-nez p0, :cond_0

    .line 2873
    return-object v2

    .line 2874
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 2875
    sget-object v2, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    return-object v2

    .line 2877
    :cond_1
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Integer;

    .line 2878
    .local v1, "result":[Ljava/lang/Integer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2879
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 2878
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2881
    :cond_2
    return-object v1
.end method

.method public static toObject([J)[Ljava/lang/Long;
    .locals 4
    .param p0, "array"    # [J

    .prologue
    const/4 v2, 0x0

    .line 2804
    if-nez p0, :cond_0

    .line 2805
    return-object v2

    .line 2806
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 2807
    sget-object v2, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    return-object v2

    .line 2809
    :cond_1
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Long;

    .line 2810
    .local v1, "result":[Ljava/lang/Long;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2811
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    .line 2810
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2813
    :cond_2
    return-object v1
.end method

.method public static toObject([S)[Ljava/lang/Short;
    .locals 3
    .param p0, "array"    # [S

    .prologue
    const/4 v2, 0x0

    .line 2940
    if-nez p0, :cond_0

    .line 2941
    return-object v2

    .line 2942
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 2943
    sget-object v2, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    return-object v2

    .line 2945
    :cond_1
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Short;

    .line 2946
    .local v1, "result":[Ljava/lang/Short;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2947
    aget-short v2, p0, v0

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v1, v0

    .line 2946
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2949
    :cond_2
    return-object v1
.end method

.method public static toPrimitive([Ljava/lang/Byte;)[B
    .locals 3
    .param p0, "array"    # [Ljava/lang/Byte;

    .prologue
    const/4 v2, 0x0

    .line 2964
    if-nez p0, :cond_0

    .line 2965
    return-object v2

    .line 2966
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 2967
    sget-object v2, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    return-object v2

    .line 2969
    :cond_1
    array-length v2, p0

    new-array v1, v2, [B

    .line 2970
    .local v1, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2971
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v0

    .line 2970
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2973
    :cond_2
    return-object v1
.end method

.method public static toPrimitive([Ljava/lang/Byte;B)[B
    .locals 4
    .param p0, "array"    # [Ljava/lang/Byte;
    .param p1, "valueForNull"    # B

    .prologue
    const/4 v3, 0x0

    .line 2986
    if-nez p0, :cond_0

    .line 2987
    return-object v3

    .line 2988
    :cond_0
    array-length v3, p0

    if-nez v3, :cond_1

    .line 2989
    sget-object v3, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    return-object v3

    .line 2991
    :cond_1
    array-length v3, p0

    new-array v2, v3, [B

    .line 2992
    .local v2, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_3

    .line 2993
    aget-object v0, p0, v1

    .line 2994
    .local v0, "b":Ljava/lang/Byte;
    if-nez v0, :cond_2

    move v3, p1

    :goto_1
    aput-byte v3, v2, v1

    .line 2992
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2994
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    goto :goto_1

    .line 2996
    .end local v0    # "b":Ljava/lang/Byte;
    :cond_3
    return-object v2
.end method

.method public static toPrimitive([Ljava/lang/Character;)[C
    .locals 3
    .param p0, "array"    # [Ljava/lang/Character;

    .prologue
    const/4 v2, 0x0

    .line 2692
    if-nez p0, :cond_0

    .line 2693
    return-object v2

    .line 2694
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 2695
    sget-object v2, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    return-object v2

    .line 2697
    :cond_1
    array-length v2, p0

    new-array v1, v2, [C

    .line 2698
    .local v1, "result":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2699
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    aput-char v2, v1, v0

    .line 2698
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2701
    :cond_2
    return-object v1
.end method

.method public static toPrimitive([Ljava/lang/Character;C)[C
    .locals 4
    .param p0, "array"    # [Ljava/lang/Character;
    .param p1, "valueForNull"    # C

    .prologue
    const/4 v3, 0x0

    .line 2714
    if-nez p0, :cond_0

    .line 2715
    return-object v3

    .line 2716
    :cond_0
    array-length v3, p0

    if-nez v3, :cond_1

    .line 2717
    sget-object v3, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    return-object v3

    .line 2719
    :cond_1
    array-length v3, p0

    new-array v2, v3, [C

    .line 2720
    .local v2, "result":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_3

    .line 2721
    aget-object v0, p0, v1

    .line 2722
    .local v0, "b":Ljava/lang/Character;
    if-nez v0, :cond_2

    move v3, p1

    :goto_1
    aput-char v3, v2, v1

    .line 2720
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2722
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v3

    goto :goto_1

    .line 2724
    .end local v0    # "b":Ljava/lang/Character;
    :cond_3
    return-object v2
.end method

.method public static toPrimitive([Ljava/lang/Double;)[D
    .locals 4
    .param p0, "array"    # [Ljava/lang/Double;

    .prologue
    const/4 v2, 0x0

    .line 3032
    if-nez p0, :cond_0

    .line 3033
    return-object v2

    .line 3034
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 3035
    sget-object v2, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    return-object v2

    .line 3037
    :cond_1
    array-length v2, p0

    new-array v1, v2, [D

    .line 3038
    .local v1, "result":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 3039
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 3038
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3041
    :cond_2
    return-object v1
.end method

.method public static toPrimitive([Ljava/lang/Double;D)[D
    .locals 7
    .param p0, "array"    # [Ljava/lang/Double;
    .param p1, "valueForNull"    # D

    .prologue
    const/4 v3, 0x0

    .line 3054
    if-nez p0, :cond_0

    .line 3055
    return-object v3

    .line 3056
    :cond_0
    array-length v3, p0

    if-nez v3, :cond_1

    .line 3057
    sget-object v3, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    return-object v3

    .line 3059
    :cond_1
    array-length v3, p0

    new-array v2, v3, [D

    .line 3060
    .local v2, "result":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_3

    .line 3061
    aget-object v0, p0, v1

    .line 3062
    .local v0, "b":Ljava/lang/Double;
    if-nez v0, :cond_2

    move-wide v4, p1

    :goto_1
    aput-wide v4, v2, v1

    .line 3060
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3062
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    goto :goto_1

    .line 3064
    .end local v0    # "b":Ljava/lang/Double;
    :cond_3
    return-object v2
.end method

.method public static toPrimitive([Ljava/lang/Float;)[F
    .locals 3
    .param p0, "array"    # [Ljava/lang/Float;

    .prologue
    const/4 v2, 0x0

    .line 3100
    if-nez p0, :cond_0

    .line 3101
    return-object v2

    .line 3102
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 3103
    sget-object v2, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    return-object v2

    .line 3105
    :cond_1
    array-length v2, p0

    new-array v1, v2, [F

    .line 3106
    .local v1, "result":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 3107
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v1, v0

    .line 3106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3109
    :cond_2
    return-object v1
.end method

.method public static toPrimitive([Ljava/lang/Float;F)[F
    .locals 4
    .param p0, "array"    # [Ljava/lang/Float;
    .param p1, "valueForNull"    # F

    .prologue
    const/4 v3, 0x0

    .line 3122
    if-nez p0, :cond_0

    .line 3123
    return-object v3

    .line 3124
    :cond_0
    array-length v3, p0

    if-nez v3, :cond_1

    .line 3125
    sget-object v3, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    return-object v3

    .line 3127
    :cond_1
    array-length v3, p0

    new-array v2, v3, [F

    .line 3128
    .local v2, "result":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_3

    .line 3129
    aget-object v0, p0, v1

    .line 3130
    .local v0, "b":Ljava/lang/Float;
    if-nez v0, :cond_2

    move v3, p1

    :goto_1
    aput v3, v2, v1

    .line 3128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3130
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_1

    .line 3132
    .end local v0    # "b":Ljava/lang/Float;
    :cond_3
    return-object v2
.end method

.method public static toPrimitive([Ljava/lang/Integer;)[I
    .locals 3
    .param p0, "array"    # [Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x0

    .line 2828
    if-nez p0, :cond_0

    .line 2829
    return-object v2

    .line 2830
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 2831
    sget-object v2, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    return-object v2

    .line 2833
    :cond_1
    array-length v2, p0

    new-array v1, v2, [I

    .line 2834
    .local v1, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2835
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 2834
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2837
    :cond_2
    return-object v1
.end method

.method public static toPrimitive([Ljava/lang/Integer;I)[I
    .locals 4
    .param p0, "array"    # [Ljava/lang/Integer;
    .param p1, "valueForNull"    # I

    .prologue
    const/4 v3, 0x0

    .line 2850
    if-nez p0, :cond_0

    .line 2851
    return-object v3

    .line 2852
    :cond_0
    array-length v3, p0

    if-nez v3, :cond_1

    .line 2853
    sget-object v3, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    return-object v3

    .line 2855
    :cond_1
    array-length v3, p0

    new-array v2, v3, [I

    .line 2856
    .local v2, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_3

    .line 2857
    aget-object v0, p0, v1

    .line 2858
    .local v0, "b":Ljava/lang/Integer;
    if-nez v0, :cond_2

    move v3, p1

    :goto_1
    aput v3, v2, v1

    .line 2856
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2858
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    .line 2860
    .end local v0    # "b":Ljava/lang/Integer;
    :cond_3
    return-object v2
.end method

.method public static toPrimitive([Ljava/lang/Long;)[J
    .locals 4
    .param p0, "array"    # [Ljava/lang/Long;

    .prologue
    const/4 v2, 0x0

    .line 2760
    if-nez p0, :cond_0

    .line 2761
    return-object v2

    .line 2762
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 2763
    sget-object v2, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    return-object v2

    .line 2765
    :cond_1
    array-length v2, p0

    new-array v1, v2, [J

    .line 2766
    .local v1, "result":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2767
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 2766
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2769
    :cond_2
    return-object v1
.end method

.method public static toPrimitive([Ljava/lang/Long;J)[J
    .locals 7
    .param p0, "array"    # [Ljava/lang/Long;
    .param p1, "valueForNull"    # J

    .prologue
    const/4 v3, 0x0

    .line 2782
    if-nez p0, :cond_0

    .line 2783
    return-object v3

    .line 2784
    :cond_0
    array-length v3, p0

    if-nez v3, :cond_1

    .line 2785
    sget-object v3, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    return-object v3

    .line 2787
    :cond_1
    array-length v3, p0

    new-array v2, v3, [J

    .line 2788
    .local v2, "result":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_3

    .line 2789
    aget-object v0, p0, v1

    .line 2790
    .local v0, "b":Ljava/lang/Long;
    if-nez v0, :cond_2

    move-wide v4, p1

    :goto_1
    aput-wide v4, v2, v1

    .line 2788
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2790
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_1

    .line 2792
    .end local v0    # "b":Ljava/lang/Long;
    :cond_3
    return-object v2
.end method

.method public static toPrimitive([Ljava/lang/Short;)[S
    .locals 3
    .param p0, "array"    # [Ljava/lang/Short;

    .prologue
    const/4 v2, 0x0

    .line 2896
    if-nez p0, :cond_0

    .line 2897
    return-object v2

    .line 2898
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 2899
    sget-object v2, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    return-object v2

    .line 2901
    :cond_1
    array-length v2, p0

    new-array v1, v2, [S

    .line 2902
    .local v1, "result":[S
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2903
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    aput-short v2, v1, v0

    .line 2902
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2905
    :cond_2
    return-object v1
.end method

.method public static toPrimitive([Ljava/lang/Short;S)[S
    .locals 4
    .param p0, "array"    # [Ljava/lang/Short;
    .param p1, "valueForNull"    # S

    .prologue
    const/4 v3, 0x0

    .line 2918
    if-nez p0, :cond_0

    .line 2919
    return-object v3

    .line 2920
    :cond_0
    array-length v3, p0

    if-nez v3, :cond_1

    .line 2921
    sget-object v3, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    return-object v3

    .line 2923
    :cond_1
    array-length v3, p0

    new-array v2, v3, [S

    .line 2924
    .local v2, "result":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_3

    .line 2925
    aget-object v0, p0, v1

    .line 2926
    .local v0, "b":Ljava/lang/Short;
    if-nez v0, :cond_2

    move v3, p1

    :goto_1
    aput-short v3, v2, v1

    .line 2924
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2926
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v3

    goto :goto_1

    .line 2928
    .end local v0    # "b":Ljava/lang/Short;
    :cond_3
    return-object v2
.end method

.method public static toPrimitive([Ljava/lang/Boolean;)[Z
    .locals 3
    .param p0, "array"    # [Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x0

    .line 3168
    if-nez p0, :cond_0

    .line 3169
    return-object v2

    .line 3170
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 3171
    sget-object v2, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    return-object v2

    .line 3173
    :cond_1
    array-length v2, p0

    new-array v1, v2, [Z

    .line 3174
    .local v1, "result":[Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 3175
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 3174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3177
    :cond_2
    return-object v1
.end method

.method public static toPrimitive([Ljava/lang/Boolean;Z)[Z
    .locals 4
    .param p0, "array"    # [Ljava/lang/Boolean;
    .param p1, "valueForNull"    # Z

    .prologue
    const/4 v3, 0x0

    .line 3190
    if-nez p0, :cond_0

    .line 3191
    return-object v3

    .line 3192
    :cond_0
    array-length v3, p0

    if-nez v3, :cond_1

    .line 3193
    sget-object v3, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    return-object v3

    .line 3195
    :cond_1
    array-length v3, p0

    new-array v2, v3, [Z

    .line 3196
    .local v2, "result":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_3

    .line 3197
    aget-object v0, p0, v1

    .line 3198
    .local v0, "b":Ljava/lang/Boolean;
    if-nez v0, :cond_2

    move v3, p1

    :goto_1
    aput-boolean v3, v2, v1

    .line 3196
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3198
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_1

    .line 3200
    .end local v0    # "b":Ljava/lang/Boolean;
    :cond_3
    return-object v2
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;

    .prologue
    .line 160
    const-string/jumbo v0, "{}"

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "stringIfNull"    # Ljava/lang/String;

    .prologue
    .line 176
    if-nez p0, :cond_0

    .line 177
    return-object p1

    .line 179
    :cond_0
    new-instance v0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;

    sget-object v1, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->SIMPLE_STYLE:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    invoke-direct {v0, p0, v1}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;)V

    invoke-virtual {v0, p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
