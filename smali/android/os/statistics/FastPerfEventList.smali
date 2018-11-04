.class public Landroid/os/statistics/FastPerfEventList;
.super Ljava/lang/Object;
.source "FastPerfEventList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/os/statistics/PerfEvent;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public events:[Landroid/os/statistics/PerfEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public size:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 1
    .param p2, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, "this":Landroid/os/statistics/FastPerfEventList;, "Landroid/os/statistics/FastPerfEventList<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/statistics/PerfEvent;

    iput-object v0, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    .line 13
    return-void
.end method


# virtual methods
.method public add(ILandroid/os/statistics/PerfEvent;)V
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Landroid/os/statistics/FastPerfEventList;, "Landroid/os/statistics/FastPerfEventList<TT;>;"
    .local p2, "perfEvent":Landroid/os/statistics/PerfEvent;, "TT;"
    iget v0, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    iget-object v1, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 38
    iget v0, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/statistics/FastPerfEventList;->ensureCapacity(I)V

    .line 40
    :cond_0
    iget v0, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    if-ge p1, v0, :cond_1

    .line 41
    iget-object v0, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    iget-object v1, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    :cond_1
    iget-object v0, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    aput-object p2, v0, p1

    .line 44
    iget v0, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    .line 36
    return-void
.end method

.method public add(Landroid/os/statistics/PerfEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Landroid/os/statistics/FastPerfEventList;, "Landroid/os/statistics/FastPerfEventList<TT;>;"
    .local p1, "perfEvent":Landroid/os/statistics/PerfEvent;, "TT;"
    iget v0, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    iget-object v1, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 49
    iget v0, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/statistics/FastPerfEventList;->ensureCapacity(I)V

    .line 51
    :cond_0
    iget-object v0, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    iget v1, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    aput-object p1, v0, v1

    .line 47
    return-void
.end method

.method public addAll(Landroid/os/statistics/FastPerfEventList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/statistics/FastPerfEventList",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Landroid/os/statistics/FastPerfEventList;, "Landroid/os/statistics/FastPerfEventList<TT;>;"
    .local p1, "perfEvents":Landroid/os/statistics/FastPerfEventList;, "Landroid/os/statistics/FastPerfEventList<+TT;>;"
    iget v0, p1, Landroid/os/statistics/FastPerfEventList;->size:I

    .line 56
    .local v0, "numNew":I
    iget v1, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/os/statistics/FastPerfEventList;->ensureCapacity(I)V

    .line 57
    iget-object v1, p1, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    iget-object v2, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    iget v3, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iget v1, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    .line 54
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 62
    .local p0, "this":Landroid/os/statistics/FastPerfEventList;, "Landroid/os/statistics/FastPerfEventList<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    if-ge v0, v1, :cond_0

    .line 63
    iget-object v1, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    .line 61
    return-void
.end method

.method public compact()V
    .locals 5

    .prologue
    .local p0, "this":Landroid/os/statistics/FastPerfEventList;, "Landroid/os/statistics/FastPerfEventList<TT;>;"
    const/4 v4, 0x0

    .line 79
    const/4 v2, 0x0

    .line 80
    .local v2, "compactingPos":I
    const/4 v1, 0x0

    .line 81
    .local v1, "checkingPos":I
    :cond_0
    :goto_0
    iget v3, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    if-ge v2, v3, :cond_5

    iget v3, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    if-ge v1, v3, :cond_5

    .line 82
    iget-object v3, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    .line 83
    add-int/lit8 v2, v2, 0x1

    .line 84
    goto :goto_0

    .line 87
    :cond_1
    if-gt v1, v2, :cond_2

    .line 88
    add-int/lit8 v1, v2, 0x1

    .line 90
    :cond_2
    const/4 v0, 0x0

    .line 91
    :goto_1
    iget v3, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    if-ge v1, v3, :cond_3

    .line 92
    iget-object v3, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    aget-object v0, v3, v1

    .line 93
    .local v0, "checkingPerfEvent":Landroid/os/statistics/PerfEvent;, "TT;"
    if-eqz v0, :cond_4

    .line 98
    .end local v0    # "checkingPerfEvent":Landroid/os/statistics/PerfEvent;, "TT;"
    :cond_3
    iget v3, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    if-ge v1, v3, :cond_0

    .line 99
    iget-object v3, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    aput-object v0, v3, v2

    .line 100
    iget-object v3, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    aput-object v4, v3, v1

    .line 101
    add-int/lit8 v1, v1, 0x1

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    .restart local v0    # "checkingPerfEvent":Landroid/os/statistics/PerfEvent;, "TT;"
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 105
    .end local v0    # "checkingPerfEvent":Landroid/os/statistics/PerfEvent;, "TT;"
    :cond_5
    iget v3, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    if-eq v2, v3, :cond_6

    iget-object v3, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    aget-object v3, v3, v2

    if-nez v3, :cond_7

    .line 106
    :cond_6
    iput v2, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    .line 78
    :goto_2
    return-void

    .line 108
    :cond_7
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    goto :goto_2
.end method

.method public ensureCapacity(I)V
    .locals 3
    .param p1, "capacity"    # I

    .prologue
    .line 22
    .local p0, "this":Landroid/os/statistics/FastPerfEventList;, "Landroid/os/statistics/FastPerfEventList<TT;>;"
    iget-object v2, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    array-length v1, v2

    .line 23
    .local v1, "oldCapacity":I
    if-le p1, v1, :cond_1

    .line 24
    shr-int/lit8 v2, v1, 0x1

    add-int v0, v1, v2

    .line 25
    .local v0, "newCapacity":I
    if-ge v0, p1, :cond_0

    .line 26
    move v0, p1

    .line 28
    :cond_0
    iget-object v2, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/statistics/PerfEvent;

    iput-object v2, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    .line 21
    .end local v0    # "newCapacity":I
    :cond_1
    return-void
.end method

.method public get(I)Landroid/os/statistics/PerfEvent;
    .locals 1
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Landroid/os/statistics/FastPerfEventList;, "Landroid/os/statistics/FastPerfEventList<TT;>;"
    iget-object v0, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .local p0, "this":Landroid/os/statistics/FastPerfEventList;, "Landroid/os/statistics/FastPerfEventList<TT;>;"
    const/4 v0, 0x0

    .line 18
    iget v1, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public trimTo(I)V
    .locals 2
    .param p1, "suggestedCapacity"    # I

    .prologue
    .line 69
    .local p0, "this":Landroid/os/statistics/FastPerfEventList;, "Landroid/os/statistics/FastPerfEventList<TT;>;"
    iget v0, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    iget v1, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    .line 70
    iget v0, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    iget v1, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    shr-int/lit8 v1, v1, 0x1

    add-int p1, v0, v1

    .line 72
    :cond_0
    iget-object v0, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 73
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/statistics/PerfEvent;

    iput-object v0, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    .line 68
    return-void
.end method
