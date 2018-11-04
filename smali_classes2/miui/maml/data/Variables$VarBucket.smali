.class Lmiui/maml/data/Variables$VarBucket;
.super Lmiui/maml/data/Variables$BaseVarBucket;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Variables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VarBucket"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmiui/maml/data/Variables$BaseVarBucket;"
    }
.end annotation


# instance fields
.field private mArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/data/Variables$ValueInfo",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 159
    .local p0, "this":Lmiui/maml/data/Variables$VarBucket;, "Lmiui/maml/data/Variables$VarBucket<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/maml/data/Variables$BaseVarBucket;-><init>(Lmiui/maml/data/Variables$BaseVarBucket;)V

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    .line 159
    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/data/Variables$VarBucket;)V
    .locals 0

    .prologue
    .local p0, "this":Lmiui/maml/data/Variables$VarBucket;, "Lmiui/maml/data/Variables$VarBucket<TT;>;"
    invoke-direct {p0}, Lmiui/maml/data/Variables$VarBucket;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized get(I)Ljava/lang/Object;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lmiui/maml/data/Variables$VarBucket;, "Lmiui/maml/data/Variables$VarBucket<TT;>;"
    const/4 v2, 0x0

    monitor-enter p0

    .line 180
    :try_start_0
    iget-object v3, p0, Lmiui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/data/Variables$ValueInfo;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    .local v1, "info":Lmiui/maml/data/Variables$ValueInfo;, "Lmiui/maml/data/Variables$ValueInfo<TT;>;"
    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    iget-object v2, v1, Lmiui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 182
    .end local v1    # "info":Lmiui/maml/data/Variables$ValueInfo;, "Lmiui/maml/data/Variables$ValueInfo<TT;>;"
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    monitor-exit p0

    .line 184
    return-object v2

    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getVer(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .local p0, "this":Lmiui/maml/data/Variables$VarBucket;, "Lmiui/maml/data/Variables$VarBucket<TT;>;"
    const/4 v2, -0x1

    monitor-enter p0

    .line 189
    :try_start_0
    iget-object v3, p0, Lmiui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/data/Variables$ValueInfo;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    .local v1, "info":Lmiui/maml/data/Variables$ValueInfo;, "Lmiui/maml/data/Variables$ValueInfo<TT;>;"
    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    iget v2, v1, Lmiui/maml/data/Variables$ValueInfo;->mVersion:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 191
    .end local v1    # "info":Lmiui/maml/data/Variables$ValueInfo;, "Lmiui/maml/data/Variables$ValueInfo<TT;>;"
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    monitor-exit p0

    .line 193
    return v2

    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected onAddItem(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 208
    .local p0, "this":Lmiui/maml/data/Variables$VarBucket;, "Lmiui/maml/data/Variables$VarBucket<TT;>;"
    :goto_0
    iget-object v0, p0, Lmiui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 209
    iget-object v0, p0, Lmiui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 207
    :cond_0
    return-void
.end method

.method public final declared-synchronized put(ILjava/lang/Object;)V
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lmiui/maml/data/Variables$VarBucket;, "Lmiui/maml/data/Variables$VarBucket<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 163
    if-gez p1, :cond_0

    monitor-exit p0

    .line 164
    return-void

    .line 167
    :cond_0
    :try_start_0
    iget-object v2, p0, Lmiui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/data/Variables$ValueInfo;

    .line 168
    .local v1, "info":Lmiui/maml/data/Variables$ValueInfo;, "Lmiui/maml/data/Variables$ValueInfo<TT;>;"
    if-nez v1, :cond_1

    .line 169
    new-instance v1, Lmiui/maml/data/Variables$ValueInfo;

    .end local v1    # "info":Lmiui/maml/data/Variables$ValueInfo;, "Lmiui/maml/data/Variables$ValueInfo<TT;>;"
    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lmiui/maml/data/Variables$ValueInfo;-><init>(Ljava/lang/Object;I)V

    .line 170
    .restart local v1    # "info":Lmiui/maml/data/Variables$ValueInfo;, "Lmiui/maml/data/Variables$ValueInfo<TT;>;"
    iget-object v2, p0, Lmiui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "info":Lmiui/maml/data/Variables$ValueInfo;, "Lmiui/maml/data/Variables$ValueInfo<TT;>;"
    :goto_0
    monitor-exit p0

    .line 162
    return-void

    .line 172
    .restart local v1    # "info":Lmiui/maml/data/Variables$ValueInfo;, "Lmiui/maml/data/Variables$ValueInfo<TT;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v1, p2}, Lmiui/maml/data/Variables$ValueInfo;->setValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 174
    .end local v1    # "info":Lmiui/maml/data/Variables$ValueInfo;, "Lmiui/maml/data/Variables$ValueInfo<TT;>;"
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 197
    .local p0, "this":Lmiui/maml/data/Variables$VarBucket;, "Lmiui/maml/data/Variables$VarBucket<TT;>;"
    iget-object v3, p0, Lmiui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 198
    .local v0, "M":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 199
    iget-object v3, p0, Lmiui/maml/data/Variables$VarBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/Variables$ValueInfo;

    .line 200
    .local v2, "info":Lmiui/maml/data/Variables$ValueInfo;, "Lmiui/maml/data/Variables$ValueInfo<TT;>;"
    if-eqz v2, :cond_0

    .line 201
    invoke-virtual {v2}, Lmiui/maml/data/Variables$ValueInfo;->reset()V

    .line 198
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v2    # "info":Lmiui/maml/data/Variables$ValueInfo;, "Lmiui/maml/data/Variables$ValueInfo<TT;>;"
    :cond_1
    return-void
.end method
