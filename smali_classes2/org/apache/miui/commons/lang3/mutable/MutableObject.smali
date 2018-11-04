.class public Lorg/apache/miui/commons/lang3/mutable/MutableObject;
.super Ljava/lang/Object;
.source "MutableObject.java"

# interfaces
.implements Lorg/apache/miui/commons/lang3/mutable/Mutable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/miui/commons/lang3/mutable/Mutable",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x14146a94f5L


# instance fields
.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    .local p0, "this":Lorg/apache/miui/commons/lang3/mutable/MutableObject;, "Lorg/apache/miui/commons/lang3/mutable/MutableObject<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lorg/apache/miui/commons/lang3/mutable/MutableObject;, "Lorg/apache/miui/commons/lang3/mutable/MutableObject<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    .line 53
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/apache/miui/commons/lang3/mutable/MutableObject;, "Lorg/apache/miui/commons/lang3/mutable/MutableObject<TT;>;"
    const/4 v3, 0x0

    .line 92
    if-nez p1, :cond_0

    .line 93
    return v3

    .line 95
    :cond_0
    if-ne p0, p1, :cond_1

    .line 96
    const/4 v1, 0x1

    return v1

    .line 98
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_2

    move-object v0, p1

    .line 99
    check-cast v0, Lorg/apache/miui/commons/lang3/mutable/MutableObject;

    .line 100
    .local v0, "that":Lorg/apache/miui/commons/lang3/mutable/MutableObject;, "Lorg/apache/miui/commons/lang3/mutable/MutableObject<*>;"
    iget-object v1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    iget-object v2, v0, Lorg/apache/miui/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 102
    .end local v0    # "that":Lorg/apache/miui/commons/lang3/mutable/MutableObject;, "Lorg/apache/miui/commons/lang3/mutable/MutableObject<*>;"
    :cond_2
    return v3
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lorg/apache/miui/commons/lang3/mutable/MutableObject;, "Lorg/apache/miui/commons/lang3/mutable/MutableObject<TT;>;"
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 113
    .local p0, "this":Lorg/apache/miui/commons/lang3/mutable/MutableObject;, "Lorg/apache/miui/commons/lang3/mutable/MutableObject<TT;>;"
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lorg/apache/miui/commons/lang3/mutable/MutableObject;, "Lorg/apache/miui/commons/lang3/mutable/MutableObject<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    .local p0, "this":Lorg/apache/miui/commons/lang3/mutable/MutableObject;, "Lorg/apache/miui/commons/lang3/mutable/MutableObject<TT;>;"
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
