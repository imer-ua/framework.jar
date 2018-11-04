.class public Lmiui/maml/data/AsyncQueryHandler$WorkerHandler;
.super Landroid/os/Handler;
.source "AsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/AsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/data/AsyncQueryHandler;


# direct methods
.method public constructor <init>(Lmiui/maml/data/AsyncQueryHandler;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/maml/data/AsyncQueryHandler;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 64
    iput-object p1, p0, Lmiui/maml/data/AsyncQueryHandler$WorkerHandler;->this$0:Lmiui/maml/data/AsyncQueryHandler;

    .line 65
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 64
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 70
    iget-object v1, p0, Lmiui/maml/data/AsyncQueryHandler$WorkerHandler;->this$0:Lmiui/maml/data/AsyncQueryHandler;

    iget-object v1, v1, Lmiui/maml/data/AsyncQueryHandler;->mResolver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    .line 71
    .local v0, "resolver":Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    return-void

    .line 73
    :cond_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;

    .line 75
    .local v6, "args":Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;
    iget v11, p1, Landroid/os/Message;->what:I

    .line 76
    .local v11, "token":I
    iget v9, p1, Landroid/os/Message;->arg1:I

    .line 78
    .local v9, "event":I
    packed-switch v9, :pswitch_data_0

    .line 114
    :goto_0
    iget-object v1, v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 115
    .local v10, "reply":Landroid/os/Message;
    iput-object v6, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 116
    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v10, Landroid/os/Message;->arg1:I

    .line 123
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 69
    return-void

    .line 82
    .end local v10    # "reply":Landroid/os/Message;
    :pswitch_0
    :try_start_0
    iget-object v1, v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    .line 83
    iget-object v3, v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v4, v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 84
    iget-object v5, v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    .line 82
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 87
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 88
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_1
    iput-object v7, v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_0

    .line 90
    :catch_0
    move-exception v8

    .line 91
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "AsyncQuery"

    const-string/jumbo v2, "Exception thrown during handling EVENT_ARG_QUERY"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    const/4 v7, 0x0

    .local v7, "cursor":Landroid/database/Cursor;
    goto :goto_1

    .line 99
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "e":Ljava/lang/Exception;
    :pswitch_1
    iget-object v1, v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_0

    .line 103
    :pswitch_2
    iget-object v1, v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    iget-object v3, v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 104
    iget-object v4, v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 103
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_0

    .line 108
    :pswitch_3
    iget-object v1, v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v3, v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v6, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
