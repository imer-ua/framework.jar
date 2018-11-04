.class public Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;
.super Ljava/lang/Object;
.source "MutableBoolean.java"

# interfaces
.implements Lorg/apache/miui/commons/lang3/mutable/Mutable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/miui/commons/lang3/mutable/Mutable",
        "<",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x430a31a5c56f1c87L


# instance fields
.field private value:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;->value:Z

    .line 67
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean p1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;->value:Z

    .line 56
    return-void
.end method


# virtual methods
.method public booleanValue()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;->value:Z

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 178
    check-cast p1, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;->compareTo(Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;)I
    .locals 2
    .param p1, "other"    # Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;

    .prologue
    .line 179
    iget-boolean v0, p1, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;->value:Z

    .line 180
    .local v0, "anotherVal":Z
    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;->value:Z

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;->value:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 154
    instance-of v1, p1, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;

    if-eqz v1, :cond_1

    .line 155
    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;->value:Z

    nop

    nop

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 157
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method public getValue()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;->getValue()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;->value:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isFalse()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;->value:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTrue()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;->value:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValue(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 98
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;->value:Z

    .line 97
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 97
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;->setValue(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setValue(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;->value:Z

    .line 87
    return-void
.end method

.method public toBoolean()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableBoolean;->value:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
