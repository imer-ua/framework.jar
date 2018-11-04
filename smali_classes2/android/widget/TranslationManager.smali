.class Landroid/widget/TranslationManager;
.super Ljava/lang/Object;
.source "TranslationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TranslationManager$TranslateTask;,
        Landroid/widget/TranslationManager$TranslationConnection;,
        Landroid/widget/TranslationManager$TranslationRemoteCallback;
    }
.end annotation


# static fields
.field static final MSG_QUERY_FAIL:I = 0x1

.field static final MSG_QUERY_SUCCESS:I = 0x0

.field private static final STATE_DESTROYING:I = 0x3

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_INIT:I = 0x0

.field private static final STATE_INITIALIZING:I = 0x1

.field private static final STATE_TRANSLATING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TranslationManager"

.field private static final TRANSLATION_SERVICE_CLASS:Ljava/lang/String; = "com.miui.translationservice.TranslationService"

.field private static final TRANSLATION_SERVICE_PACKAGE:Ljava/lang/String; = "com.miui.translationservice"


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMainHandler:Landroid/os/Handler;

.field private mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

.field private mService:Lcom/miui/translationservice/ITranslation;

.field private mState:I


# direct methods
.method static synthetic -get0(Landroid/widget/TranslationManager;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Landroid/widget/TranslationManager;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/TranslationManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/TranslationManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/TranslationManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/widget/TranslationManager;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/TranslationManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/TranslationManager;->onDestroyed()V

    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/TranslationManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/TranslationManager;->onDisconnected()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/widget/TranslationManager;Lcom/miui/translationservice/ITranslation;)V
    .locals 0
    .param p1, "service"    # Lcom/miui/translationservice/ITranslation;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/TranslationManager;->onInitialized(Lcom/miui/translationservice/ITranslation;)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/widget/TranslationManager;Landroid/widget/TranslationManager$TranslateTask;Lcom/miui/translationservice/provider/TranslationResult;)V
    .locals 0
    .param p1, "task"    # Landroid/widget/TranslationManager$TranslateTask;
    .param p2, "result"    # Lcom/miui/translationservice/provider/TranslationResult;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/TranslationManager;->onTranslateDone(Landroid/widget/TranslationManager$TranslateTask;Lcom/miui/translationservice/provider/TranslationResult;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TranslationManager;->mService:Lcom/miui/translationservice/ITranslation;

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/widget/TranslationManager;->mMainHandler:Landroid/os/Handler;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TranslationManager;->mState:I

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationManager;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Landroid/widget/TranslationManager;->mHandler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method private deliverResult(Lcom/miui/translationservice/provider/TranslationResult;)V
    .locals 4
    .param p1, "result"    # Lcom/miui/translationservice/provider/TranslationResult;

    .prologue
    const/4 v2, 0x0

    .line 176
    iget-object v1, p0, Landroid/widget/TranslationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 178
    if-nez p1, :cond_0

    .line 179
    iget-object v1, p0, Landroid/widget/TranslationManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 183
    .local v0, "msg":Landroid/os/Message;
    :goto_0
    iget-object v1, p0, Landroid/widget/TranslationManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 175
    return-void

    .line 181
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Landroid/widget/TranslationManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "msg":Landroid/os/Message;
    goto :goto_0
.end method

.method private doDestroy()V
    .locals 3

    .prologue
    .line 88
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/TranslationManager;->mState:I

    .line 89
    new-instance v0, Landroid/widget/TranslationManager$2;

    invoke-direct {v0, p0}, Landroid/widget/TranslationManager$2;-><init>(Landroid/widget/TranslationManager;)V

    .line 100
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 89
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 87
    return-void
.end method

.method private doInitialize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    const-string/jumbo v0, "TranslationManager"

    const-string/jumbo v1, "try to bind translation service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TranslationManager;->mState:I

    .line 67
    iget-object v0, p0, Landroid/widget/TranslationManager;->mConnection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Landroid/widget/TranslationManager$TranslationConnection;

    invoke-direct {v0, p0, v2}, Landroid/widget/TranslationManager$TranslationConnection;-><init>(Landroid/widget/TranslationManager;Landroid/widget/TranslationManager$TranslationConnection;)V

    iput-object v0, p0, Landroid/widget/TranslationManager;->mConnection:Landroid/content/ServiceConnection;

    .line 70
    :cond_0
    new-instance v0, Landroid/widget/TranslationManager$1;

    invoke-direct {v0, p0}, Landroid/widget/TranslationManager$1;-><init>(Landroid/widget/TranslationManager;)V

    .line 84
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 70
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 63
    return-void
.end method

.method private doTranslate()V
    .locals 7

    .prologue
    .line 104
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/TranslationManager;->mState:I

    .line 106
    :try_start_0
    iget-object v1, p0, Landroid/widget/TranslationManager;->mService:Lcom/miui/translationservice/ITranslation;

    .line 107
    iget-object v2, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    iget-object v2, v2, Landroid/widget/TranslationManager$TranslateTask;->mSource:Ljava/lang/String;

    iget-object v3, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    iget-object v3, v3, Landroid/widget/TranslationManager$TranslateTask;->mTarget:Ljava/lang/String;

    iget-object v4, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    iget-object v4, v4, Landroid/widget/TranslationManager$TranslateTask;->mWord:Ljava/lang/String;

    .line 108
    new-instance v5, Landroid/widget/TranslationManager$TranslationRemoteCallback;

    iget-object v6, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    invoke-direct {v5, p0, v6}, Landroid/widget/TranslationManager$TranslationRemoteCallback;-><init>(Landroid/widget/TranslationManager;Landroid/widget/TranslationManager$TranslateTask;)V

    .line 106
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/miui/translationservice/ITranslation;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/translationservice/ITranslationRemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TranslationManager"

    const-string/jumbo v2, "bind translation service failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    iget-object v1, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/TranslationManager;->onTranslateDone(Landroid/widget/TranslationManager$TranslateTask;Lcom/miui/translationservice/provider/TranslationResult;)V

    goto :goto_0
.end method

.method private onDestroyed()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Landroid/widget/TranslationManager;->mService:Lcom/miui/translationservice/ITranslation;

    .line 156
    iput-object v0, p0, Landroid/widget/TranslationManager;->mConnection:Landroid/content/ServiceConnection;

    .line 158
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TranslationManager;->mState:I

    .line 159
    iget-object v0, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    if-eqz v0, :cond_0

    .line 160
    const-string/jumbo v0, "TranslationManager"

    const-string/jumbo v1, "new task received when destroying"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-direct {p0}, Landroid/widget/TranslationManager;->doInitialize()V

    .line 154
    :cond_0
    return-void
.end method

.method private onDisconnected()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 166
    iget v0, p0, Landroid/widget/TranslationManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 167
    const-string/jumbo v0, "TranslationManager"

    const-string/jumbo v1, "disconnected during translating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iput-object v2, p0, Landroid/widget/TranslationManager;->mService:Lcom/miui/translationservice/ITranslation;

    .line 169
    invoke-direct {p0, v2}, Landroid/widget/TranslationManager;->deliverResult(Lcom/miui/translationservice/provider/TranslationResult;)V

    .line 170
    iput-object v2, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    .line 171
    invoke-direct {p0}, Landroid/widget/TranslationManager;->doDestroy()V

    .line 165
    :cond_0
    return-void
.end method

.method private onInitialized(Lcom/miui/translationservice/ITranslation;)V
    .locals 3
    .param p1, "service"    # Lcom/miui/translationservice/ITranslation;

    .prologue
    const/4 v2, 0x0

    .line 116
    if-eqz p1, :cond_2

    .line 117
    iput-object p1, p0, Landroid/widget/TranslationManager;->mService:Lcom/miui/translationservice/ITranslation;

    .line 118
    iget-object v0, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    if-eqz v0, :cond_1

    .line 119
    const-string/jumbo v0, "TranslationManager"

    const-string/jumbo v1, "translate pending task"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-direct {p0}, Landroid/widget/TranslationManager;->doTranslate()V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    const-string/jumbo v0, "TranslationManager"

    const-string/jumbo v1, "no pending task, unbind service directly"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-direct {p0}, Landroid/widget/TranslationManager;->doDestroy()V

    goto :goto_0

    .line 126
    :cond_2
    const-string/jumbo v0, "TranslationManager"

    const-string/jumbo v1, "bind service failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iput-object v2, p0, Landroid/widget/TranslationManager;->mConnection:Landroid/content/ServiceConnection;

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TranslationManager;->mState:I

    .line 129
    iget-object v0, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    if-eqz v0, :cond_0

    .line 130
    iput-object v2, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    .line 131
    invoke-direct {p0, v2}, Landroid/widget/TranslationManager;->deliverResult(Lcom/miui/translationservice/provider/TranslationResult;)V

    goto :goto_0
.end method

.method private onTranslateDone(Landroid/widget/TranslationManager$TranslateTask;Lcom/miui/translationservice/provider/TranslationResult;)V
    .locals 3
    .param p1, "task"    # Landroid/widget/TranslationManager$TranslateTask;
    .param p2, "result"    # Lcom/miui/translationservice/provider/TranslationResult;

    .prologue
    const/4 v2, 0x0

    .line 137
    iget-object v0, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    invoke-static {v0, p1}, Landroid/widget/TranslationManager$TranslateTask;->equals(Landroid/widget/TranslationManager$TranslateTask;Landroid/widget/TranslationManager$TranslateTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const-string/jumbo v0, "TranslationManager"

    const-string/jumbo v1, "translate task done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-direct {p0, p2}, Landroid/widget/TranslationManager;->deliverResult(Lcom/miui/translationservice/provider/TranslationResult;)V

    .line 140
    iput-object v2, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    .line 143
    :cond_0
    iget v0, p0, Landroid/widget/TranslationManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 144
    iget-object v0, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    if-nez v0, :cond_2

    .line 145
    const-string/jumbo v0, "TranslationManager"

    const-string/jumbo v1, "no pending task found. release service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-direct {p0}, Landroid/widget/TranslationManager;->doDestroy()V

    .line 136
    :cond_1
    :goto_0
    return-void

    .line 148
    :cond_2
    const-string/jumbo v0, "TranslationManager"

    const-string/jumbo v1, "task changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-direct {p0}, Landroid/widget/TranslationManager;->doTranslate()V

    goto :goto_0
.end method


# virtual methods
.method isAvailable()Z
    .locals 1

    .prologue
    .line 187
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "word"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v0, Landroid/widget/TranslationManager$TranslateTask;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/TranslationManager$TranslateTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    .line 58
    iget v0, p0, Landroid/widget/TranslationManager;->mState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 59
    invoke-direct {p0}, Landroid/widget/TranslationManager;->doInitialize()V

    .line 55
    :cond_0
    return-void
.end method
