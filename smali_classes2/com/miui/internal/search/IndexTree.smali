.class public abstract Lcom/miui/internal/search/IndexTree;
.super Ljava/lang/Object;
.source "IndexTree.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IndexTree"


# instance fields
.field private volatile mChanged:Z

.field final mLock:Ljava/lang/Object;

.field private mParent:Lcom/miui/internal/search/IndexTree;

.field private mSon:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/miui/internal/search/IndexTree;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/miui/internal/search/IndexTree;)V
    .locals 1
    .param p1, "parent"    # Lcom/miui/internal/search/IndexTree;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/search/IndexTree;->mLock:Ljava/lang/Object;

    .line 63
    iput-object p1, p0, Lcom/miui/internal/search/IndexTree;->mParent:Lcom/miui/internal/search/IndexTree;

    .line 62
    return-void
.end method


# virtual methods
.method protected final addSon(ILcom/miui/internal/search/IndexTree;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "newSon"    # Lcom/miui/internal/search/IndexTree;

    .prologue
    .line 291
    if-nez p2, :cond_0

    return-void

    .line 292
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/search/IndexTree;->mChanged:Z

    .line 293
    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 294
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 290
    return-void
.end method

.method protected final addSon(Lcom/miui/internal/search/IndexTree;)V
    .locals 1
    .param p1, "newSon"    # Lcom/miui/internal/search/IndexTree;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/miui/internal/search/IndexTree;->addSon(ILcom/miui/internal/search/IndexTree;)V

    .line 280
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public abstract commit(Ljava/lang/StringBuilder;)V
.end method

.method public abstract delete(Ljava/lang/String;[Ljava/lang/String;)Z
.end method

.method public final dispatchCommit(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lcom/miui/internal/search/IndexTree;->commit(Ljava/lang/StringBuilder;)V

    .line 265
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/internal/search/IndexTree;->mChanged:Z

    .line 266
    iget-object v2, p0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 267
    iget-object v3, p0, Lcom/miui/internal/search/IndexTree;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 268
    :try_start_0
    iget-object v2, p0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "son$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/search/IndexTree;

    .line 269
    .local v0, "son":Lcom/miui/internal/search/IndexTree;
    invoke-virtual {v0, p1}, Lcom/miui/internal/search/IndexTree;->dispatchCommit(Ljava/lang/StringBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 267
    .end local v0    # "son":Lcom/miui/internal/search/IndexTree;
    .end local v1    # "son$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "son$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 263
    .end local v1    # "son$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public final dispatchDelete(Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 7
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "deleted"    # Z

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, "count":I
    if-nez p3, :cond_0

    .line 241
    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/search/IndexTree;->delete(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p3

    .line 242
    if-eqz p3, :cond_0

    iget-object v5, p0, Lcom/miui/internal/search/IndexTree;->mParent:Lcom/miui/internal/search/IndexTree;

    if-eqz v5, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/miui/internal/search/IndexTree;->removeSelf()V

    .line 246
    :cond_0
    if-eqz p3, :cond_1

    .line 247
    const/4 v0, 0x1

    .line 249
    :cond_1
    invoke-virtual {p0}, Lcom/miui/internal/search/IndexTree;->getSons()Ljava/util/LinkedList;

    move-result-object v4

    .line 250
    .local v4, "sons":Ljava/util/LinkedList;, "Ljava/util/LinkedList<+Lcom/miui/internal/search/IndexTree;>;"
    if-nez v4, :cond_2

    .line 251
    return v0

    .line 253
    :cond_2
    iget-object v6, p0, Lcom/miui/internal/search/IndexTree;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 254
    :try_start_0
    invoke-virtual {v4}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 255
    .local v1, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<+Lcom/miui/internal/search/IndexTree;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "son$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/search/IndexTree;

    .line 256
    .local v2, "son":Lcom/miui/internal/search/IndexTree;
    invoke-virtual {v2, p1, p2, p3}, Lcom/miui/internal/search/IndexTree;->dispatchDelete(Ljava/lang/String;[Ljava/lang/String;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    add-int/2addr v0, v5

    goto :goto_0

    .end local v2    # "son":Lcom/miui/internal/search/IndexTree;
    :cond_3
    monitor-exit v6

    .line 259
    return v0

    .line 253
    .end local v1    # "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<+Lcom/miui/internal/search/IndexTree;>;"
    .end local v3    # "son$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public final dispatchInsert(Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 8
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 218
    invoke-virtual {p0, p1}, Lcom/miui/internal/search/IndexTree;->insert(Landroid/content/ContentValues;)Lcom/miui/internal/search/IndexTree;

    move-result-object v0

    .line 219
    .local v0, "newSon":Lcom/miui/internal/search/IndexTree;
    if-eqz v0, :cond_0

    .line 220
    iput-boolean v5, p0, Lcom/miui/internal/search/IndexTree;->mChanged:Z

    .line 221
    iput-boolean v5, v0, Lcom/miui/internal/search/IndexTree;->mChanged:Z

    .line 222
    invoke-virtual {v0}, Lcom/miui/internal/search/IndexTree;->getUri()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/search/IndexTree;->getSons()Ljava/util/LinkedList;

    move-result-object v4

    .line 225
    .local v4, "sons":Ljava/util/LinkedList;, "Ljava/util/LinkedList<+Lcom/miui/internal/search/IndexTree;>;"
    if-nez v4, :cond_1

    .line 226
    return-object v7

    .line 228
    :cond_1
    iget-object v6, p0, Lcom/miui/internal/search/IndexTree;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 229
    :try_start_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "son$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/search/IndexTree;

    .line 230
    .local v2, "son":Lcom/miui/internal/search/IndexTree;
    invoke-virtual {v2, p1}, Lcom/miui/internal/search/IndexTree;->dispatchInsert(Landroid/content/ContentValues;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 231
    .local v1, "ret":Ljava/lang/String;
    if-eqz v1, :cond_2

    monitor-exit v6

    return-object v1

    .end local v1    # "ret":Ljava/lang/String;
    .end local v2    # "son":Lcom/miui/internal/search/IndexTree;
    :cond_3
    monitor-exit v6

    .line 234
    return-object v7

    .line 228
    .end local v3    # "son$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public final dispatchQuery(Lcom/miui/internal/search/RankedCursor;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "cursor"    # Lcom/miui/internal/search/RankedCursor;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-virtual/range {p0 .. p5}, Lcom/miui/internal/search/IndexTree;->query(Lcom/miui/internal/search/RankedCursor;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    return-void

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/search/IndexTree;->getSons()Ljava/util/LinkedList;

    move-result-object v7

    .line 185
    .local v7, "sons":Ljava/util/LinkedList;, "Ljava/util/LinkedList<+Lcom/miui/internal/search/IndexTree;>;"
    if-nez v7, :cond_1

    .line 186
    return-void

    .line 188
    :cond_1
    iget-object v8, p0, Lcom/miui/internal/search/IndexTree;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 189
    :try_start_0
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "son$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/search/IndexTree;

    .local v0, "son":Lcom/miui/internal/search/IndexTree;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 190
    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/search/IndexTree;->dispatchQuery(Lcom/miui/internal/search/RankedCursor;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 188
    .end local v0    # "son":Lcom/miui/internal/search/IndexTree;
    .end local v6    # "son$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v8

    throw v1

    .restart local v6    # "son$iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit v8

    .line 180
    return-void
.end method

.method public final dispatchUpdate(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "count":I
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/search/IndexTree;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 199
    const/4 v0, 0x1

    .line 200
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/miui/internal/search/IndexTree;->mChanged:Z

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/search/IndexTree;->getSons()Ljava/util/LinkedList;

    move-result-object v3

    .line 203
    .local v3, "sons":Ljava/util/LinkedList;, "Ljava/util/LinkedList<+Lcom/miui/internal/search/IndexTree;>;"
    if-nez v3, :cond_1

    .line 204
    return v0

    .line 206
    :cond_1
    iget-object v5, p0, Lcom/miui/internal/search/IndexTree;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 207
    :try_start_0
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "son$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/search/IndexTree;

    .line 208
    .local v1, "son":Lcom/miui/internal/search/IndexTree;
    invoke-virtual {v1, p1, p2, p3}, Lcom/miui/internal/search/IndexTree;->dispatchUpdate(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .end local v1    # "son":Lcom/miui/internal/search/IndexTree;
    :cond_2
    monitor-exit v5

    .line 211
    return v0

    .line 206
    .end local v2    # "son$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public getParent()Lcom/miui/internal/search/IndexTree;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mParent:Lcom/miui/internal/search/IndexTree;

    return-object v0
.end method

.method public getSons()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/miui/internal/search/IndexTree;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    return-object v0
.end method

.method protected abstract getUri()Ljava/lang/String;
.end method

.method public abstract insert(Landroid/content/ContentValues;)Lcom/miui/internal/search/IndexTree;
.end method

.method public final needCommit()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 152
    iget-boolean v2, p0, Lcom/miui/internal/search/IndexTree;->mChanged:Z

    if-eqz v2, :cond_0

    return v4

    .line 153
    :cond_0
    iget-object v2, p0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    if-nez v2, :cond_1

    return v3

    .line 154
    :cond_1
    iget-object v2, p0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "son$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/search/IndexTree;

    .line 155
    .local v0, "son":Lcom/miui/internal/search/IndexTree;
    invoke-virtual {v0}, Lcom/miui/internal/search/IndexTree;->needCommit()Z

    move-result v2

    if-eqz v2, :cond_2

    return v4

    .line 157
    .end local v0    # "son":Lcom/miui/internal/search/IndexTree;
    :cond_3
    return v3
.end method

.method public abstract query(Lcom/miui/internal/search/RankedCursor;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public removeSelf()V
    .locals 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mParent:Lcom/miui/internal/search/IndexTree;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mParent:Lcom/miui/internal/search/IndexTree;

    iget-object v1, v0, Lcom/miui/internal/search/IndexTree;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mParent:Lcom/miui/internal/search/IndexTree;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/miui/internal/search/IndexTree;->mChanged:Z

    .line 304
    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mParent:Lcom/miui/internal/search/IndexTree;

    iget-object v0, v0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 300
    :cond_0
    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected replaceBy(Lcom/miui/internal/search/IndexTree;)V
    .locals 2
    .param p1, "tree"    # Lcom/miui/internal/search/IndexTree;

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/miui/internal/search/IndexTree;->getParent()Lcom/miui/internal/search/IndexTree;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/internal/search/IndexTree;->getSons()Ljava/util/LinkedList;

    move-result-object v0

    .line 312
    .local v0, "brothers":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/miui/internal/search/IndexTree;>;"
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 310
    return-void
.end method

.method public abstract update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z
.end method
