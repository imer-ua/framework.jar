.class public Lcom/android/internal/os/BinderTracker;
.super Ljava/lang/Object;
.source "BinderTracker.java"


# static fields
.field private static final BINDERTRACKER:Ljava/lang/String; = "binderTracker"

.field private static final DEBUG:Z


# instance fields
.field private binderAllPids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private binderPids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final binderTransactionFile:Ljava/lang/String;

.field private checkPid:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string/jumbo v0, "/d/binder/transactions"

    iput-object v0, p0, Lcom/android/internal/os/BinderTracker;->binderTransactionFile:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/android/internal/os/BinderTracker;->binderPids:Ljava/util/ArrayList;

    .line 45
    iput-object v1, p0, Lcom/android/internal/os/BinderTracker;->binderAllPids:Ljava/util/ArrayList;

    .line 54
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "pid"    # I

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string/jumbo v0, "/d/binder/transactions"

    iput-object v0, p0, Lcom/android/internal/os/BinderTracker;->binderTransactionFile:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/android/internal/os/BinderTracker;->binderPids:Ljava/util/ArrayList;

    .line 45
    iput-object v1, p0, Lcom/android/internal/os/BinderTracker;->binderAllPids:Ljava/util/ArrayList;

    .line 49
    iput p1, p0, Lcom/android/internal/os/BinderTracker;->checkPid:I

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderTracker;->binderPids:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderTracker;->binderAllPids:Ljava/util/ArrayList;

    .line 48
    return-void
.end method

.method private binderFileIfExist()Z
    .locals 3

    .prologue
    .line 58
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/d/binder/transactions"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "fileTransactions":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    const/4 v1, 0x1

    return v1

    .line 62
    :cond_0
    const-string/jumbo v1, "binderTracker"

    const-string/jumbo v2, "binder transaction file not exist/d/binder/transactions"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public getAllBinders(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v0, "anrBinders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 157
    .local v3, "listSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_6

    .line 158
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 159
    .local v4, "tmp":Ljava/lang/Integer;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v5, "tmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 161
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 162
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 163
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_0
    rem-int/lit8 v6, v2, 0x2

    if-nez v6, :cond_1

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 168
    :cond_1
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 169
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 166
    :cond_3
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 174
    :cond_4
    iget-object v6, p0, Lcom/android/internal/os/BinderTracker;->binderAllPids:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 175
    iget-object v6, p0, Lcom/android/internal/os/BinderTracker;->binderAllPids:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    .end local v2    # "j":I
    .end local v4    # "tmp":Ljava/lang/Integer;
    .end local v5    # "tmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_6
    const-string/jumbo v6, "binderTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "binderAllPids :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/os/BinderTracker;->binderAllPids:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/os/BinderTracker;->binderAllPids:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget v6, p0, Lcom/android/internal/os/BinderTracker;->checkPid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-virtual {p0, v0}, Lcom/android/internal/os/BinderTracker;->getBinderPids(Ljava/util/ArrayList;)V

    .line 184
    iget-object v6, p0, Lcom/android/internal/os/BinderTracker;->binderPids:Ljava/util/ArrayList;

    return-object v6
.end method

.method public getBinderPids(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "anrBinders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v5, "tmpBindersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 195
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/internal/os/BinderTracker;->binderAllPids:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 196
    iget-object v6, p0, Lcom/android/internal/os/BinderTracker;->binderAllPids:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 197
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_2
    iget-object v6, p0, Lcom/android/internal/os/BinderTracker;->binderAllPids:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 198
    iget-object v6, p0, Lcom/android/internal/os/BinderTracker;->binderAllPids:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 199
    .local v4, "tmp":Ljava/lang/Integer;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/os/BinderTracker;->binderPids:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 197
    :cond_0
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 202
    :cond_1
    const-string/jumbo v7, "binderTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " binder communication with: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/android/internal/os/BinderTracker;->binderAllPids:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v6, p0, Lcom/android/internal/os/BinderTracker;->binderPids:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 219
    .end local v1    # "i":I
    .end local v3    # "k":I
    .end local v4    # "tmp":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "binderTracker"

    const-string/jumbo v7, "method getAll() happened unknown error!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void

    .line 195
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 194
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 211
    .end local v1    # "i":I
    :cond_4
    :try_start_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_5

    .line 212
    return-void

    .line 217
    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/internal/os/BinderTracker;->getBinderPids(Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public getBinderTransaction()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 73
    .local v2, "startTime":J
    iget-object v4, p0, Lcom/android/internal/os/BinderTracker;->binderPids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 74
    invoke-direct {p0}, Lcom/android/internal/os/BinderTracker;->binderFileIfExist()Z

    move-result v4

    if-nez v4, :cond_0

    .line 75
    const-string/jumbo v4, "binderTracker"

    const-string/jumbo v5, "file not exist or unknown error!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-object v7

    .line 78
    :cond_0
    iget v4, p0, Lcom/android/internal/os/BinderTracker;->checkPid:I

    const-string/jumbo v5, "/d/binder/transactions"

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/os/BinderTracker;->getBinderTransactionFile(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 79
    .local v1, "listBinders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 80
    :cond_1
    const-string/jumbo v4, "binderTracker"

    const-string/jumbo v5, "can\'t get any effective binder communication information !"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-object v7

    .line 84
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/internal/os/BinderTracker;->getAllBinders(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 85
    .local v0, "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 86
    :cond_3
    const-string/jumbo v4, "binderTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Not found any binders communicated with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/os/BinderTracker;->checkPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " or known error happened ."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-object v7

    .line 89
    :cond_4
    const-string/jumbo v4, "binderTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "binderPids: size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/os/BinderTracker;->binderPids:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",content:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/os/BinderTracker;->binderPids:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string/jumbo v4, "Time"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "total time is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-object v0
.end method

.method public getBinderTransactionFile(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 19
    .param p1, "checkPid"    # I
    .param p2, "binderFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    const-string/jumbo v16, "binderTracker"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "getBinderTransactionFile beginning! File : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v3, 0x0

    .line 102
    .local v3, "bReader":Ljava/io/BufferedReader;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v5, "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v16, Ljava/io/FileReader;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 105
    .local v4, "bReader":Ljava/io/BufferedReader;
    const/4 v15, 0x0

    .line 106
    .local v15, "tmp":Ljava/lang/String;
    const/4 v12, 0x0

    .line 108
    .end local v3    # "bReader":Ljava/io/BufferedReader;
    .end local v15    # "tmp":Ljava/lang/String;
    .local v12, "line":I
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .local v15, "tmp":Ljava/lang/String;
    if-eqz v15, :cond_5

    .line 109
    const-string/jumbo v16, "from"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_0

    const-string/jumbo v16, "to"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 113
    const-string/jumbo v16, "\\s+"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "arr":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    array-length v0, v2

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v10, v0, :cond_0

    .line 115
    const-string/jumbo v16, "from"

    aget-object v17, v2, v10

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 116
    add-int/lit8 v16, v10, 0x1

    aget-object v16, v2, v16

    const-string/jumbo v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    aget-object v8, v16, v17

    .line 117
    .local v8, "first":Ljava/lang/String;
    add-int/lit8 v16, v10, 0x3

    aget-object v16, v2, v16

    const-string/jumbo v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    aget-object v13, v16, v17

    .line 119
    .local v13, "second":Ljava/lang/String;
    const-string/jumbo v16, "[0-9]+"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    const-string/jumbo v16, "[0-9]+"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    .line 120
    .local v11, "isDigital":Z
    :goto_2
    if-nez v11, :cond_3

    .line 114
    .end local v8    # "first":Ljava/lang/String;
    .end local v11    # "isDigital":Z
    .end local v13    # "second":Ljava/lang/String;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 119
    .restart local v8    # "first":Ljava/lang/String;
    .restart local v13    # "second":Ljava/lang/String;
    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    .line 123
    .restart local v11    # "isDigital":Z
    :cond_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 124
    .local v9, "firstBinder":Ljava/lang/Integer;
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    .line 125
    .local v14, "secondBinder":Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v16

    if-eqz v16, :cond_0

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v16

    if-eqz v16, :cond_0

    .line 126
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 138
    .end local v2    # "arr":[Ljava/lang/String;
    .end local v8    # "first":Ljava/lang/String;
    .end local v9    # "firstBinder":Ljava/lang/Integer;
    .end local v10    # "i":I
    .end local v11    # "isDigital":Z
    .end local v13    # "second":Ljava/lang/String;
    .end local v14    # "secondBinder":Ljava/lang/Integer;
    .end local v15    # "tmp":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 139
    .local v7, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v16, "binderTracker"

    const-string/jumbo v17, "parse failed"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 141
    .end local v7    # "e":Ljava/io/IOException;
    :cond_4
    :goto_3
    return-object v5

    .line 135
    .restart local v15    # "tmp":Ljava/lang/String;
    :cond_5
    if-eqz v4, :cond_4

    .line 136
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 142
    .end local v15    # "tmp":Ljava/lang/String;
    :catch_1
    move-exception v6

    .local v6, "e":Ljava/io/FileNotFoundException;
    move-object v3, v4

    .line 143
    .end local v4    # "bReader":Ljava/io/BufferedReader;
    .end local v12    # "line":I
    :goto_4
    const-string/jumbo v16, "binderTracker"

    const-string/jumbo v17, "parse failed"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/16 v16, 0x0

    return-object v16

    .line 142
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "bReader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v6

    .restart local v6    # "e":Ljava/io/FileNotFoundException;
    goto :goto_4
.end method
