.class public Lorg/apache/miui/commons/lang3/mutable/MutableByte;
.super Ljava/lang/Number;
.source "MutableByte.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/miui/commons/lang3/mutable/Mutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/miui/commons/lang3/mutable/MutableByte;",
        ">;",
        "Lorg/apache/miui/commons/lang3/mutable/Mutable",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5e85be21L


# instance fields
.field private value:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(B)V
    .locals 0
    .param p1, "value"    # B

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 55
    iput-byte p1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Number;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 66
    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 78
    invoke-static {p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    iput-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    .line 76
    return-void
.end method


# virtual methods
.method public add(B)V
    .locals 1
    .param p1, "operand"    # B

    .prologue
    .line 137
    iget-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    .line 136
    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .locals 2
    .param p1, "operand"    # Ljava/lang/Number;

    .prologue
    .line 148
    iget-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    .line 147
    return-void
.end method

.method public byteValue()B
    .locals 1

    .prologue
    .line 181
    iget-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 268
    check-cast p1, Lorg/apache/miui/commons/lang3/mutable/MutableByte;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->compareTo(Lorg/apache/miui/commons/lang3/mutable/MutableByte;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/miui/commons/lang3/mutable/MutableByte;)I
    .locals 2
    .param p1, "other"    # Lorg/apache/miui/commons/lang3/mutable/MutableByte;

    .prologue
    .line 269
    iget-byte v0, p1, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    .line 270
    .local v0, "anotherVal":B
    iget-byte v1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    if-ge v1, v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget-byte v1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    if-ne v1, v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public decrement()V
    .locals 1

    .prologue
    .line 126
    iget-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    .line 125
    return-void
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 221
    iget-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 245
    instance-of v1, p1, Lorg/apache/miui/commons/lang3/mutable/MutableByte;

    if-eqz v1, :cond_1

    .line 246
    iget-byte v1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    nop

    nop

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->byteValue()B

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 248
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method public floatValue()F
    .locals 1

    .prologue
    .line 211
    iget-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    int-to-float v0, v0

    return v0
.end method

.method public getValue()Ljava/lang/Byte;
    .locals 1

    .prologue
    .line 88
    iget-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->getValue()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 258
    iget-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    return v0
.end method

.method public increment()V
    .locals 1

    .prologue
    .line 117
    iget-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    .line 116
    return-void
.end method

.method public intValue()I
    .locals 1

    .prologue
    .line 191
    iget-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 201
    iget-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    int-to-long v0, v0

    return-wide v0
.end method

.method public setValue(B)V
    .locals 0
    .param p1, "value"    # B

    .prologue
    .line 97
    iput-byte p1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    .line 96
    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Number;

    .prologue
    .line 107
    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    .line 106
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 106
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public subtract(B)V
    .locals 1
    .param p1, "operand"    # B

    .prologue
    .line 158
    iget-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    .line 157
    return-void
.end method

.method public subtract(Ljava/lang/Number;)V
    .locals 2
    .param p1, "operand"    # Ljava/lang/Number;

    .prologue
    .line 169
    iget-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    .line 168
    return-void
.end method

.method public toByte()Ljava/lang/Byte;
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->byteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-byte v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableByte;->value:B

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
