.class final Landroid/app/LoadedApk$ReceiverDispatcher;
.super Ljava/lang/Object;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReceiverDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LoadedApk$ReceiverDispatcher$Args;,
        Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;
    }
.end annotation


# instance fields
.field final mActivityThread:Landroid/os/Handler;

.field final mContext:Landroid/content/Context;

.field mForgotten:Z

.field final mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

.field final mInstrumentation:Landroid/app/Instrumentation;

.field final mLocation:Landroid/app/IntentReceiverLeaked;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field final mRegistered:Z

.field mUnregisterLocation:Ljava/lang/RuntimeException;


# direct methods
.method constructor <init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V
    .locals 3
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "activityThread"    # Landroid/os/Handler;
    .param p4, "instrumentation"    # Landroid/app/Instrumentation;
    .param p5, "registered"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1156
    if-nez p3, :cond_0

    .line 1157
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Handler must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1160
    :cond_0
    new-instance v1, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;

    if-eqz p5, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, p0, v0}, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;-><init>(Landroid/app/LoadedApk$ReceiverDispatcher;Z)V

    iput-object v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

    .line 1161
    iput-object p1, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1162
    iput-object p2, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mContext:Landroid/content/Context;

    .line 1163
    iput-object p3, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mActivityThread:Landroid/os/Handler;

    .line 1164
    iput-object p4, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mInstrumentation:Landroid/app/Instrumentation;

    .line 1165
    iput-boolean p5, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    .line 1166
    new-instance v0, Landroid/app/IntentReceiverLeaked;

    invoke-direct {v0, v2}, Landroid/app/IntentReceiverLeaked;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mLocation:Landroid/app/IntentReceiverLeaked;

    .line 1167
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mLocation:Landroid/app/IntentReceiverLeaked;

    invoke-virtual {v0}, Landroid/app/IntentReceiverLeaked;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1155
    return-void

    .line 1160
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method getIIntentReceiver()Landroid/content/IIntentReceiver;
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

    return-object v0
.end method

.method getIntentReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 1190
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method getLocation()Landroid/app/IntentReceiverLeaked;
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mLocation:Landroid/app/IntentReceiverLeaked;

    return-object v0
.end method

.method getUnregisterLocation()Ljava/lang/RuntimeException;
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mUnregisterLocation:Ljava/lang/RuntimeException;

    return-object v0
.end method

.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I

    .prologue
    .line 1207
    new-instance v0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;-><init>(Landroid/app/LoadedApk$ReceiverDispatcher;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    .line 1209
    .local v0, "args":Landroid/app/LoadedApk$ReceiverDispatcher$Args;
    if-nez p1, :cond_2

    .line 1210
    const-string/jumbo v1, "LoadedApk"

    const-string/jumbo v2, "Null intent received"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :cond_0
    :goto_0
    if-eqz p1, :cond_3

    iget-object v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mActivityThread:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1206
    :cond_1
    :goto_1
    return-void

    .line 1212
    :cond_2
    sget-boolean v1, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    if-eqz v1, :cond_0

    .line 1213
    const-string/jumbo v1, "seq"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 1214
    .local v10, "seq":I
    const-string/jumbo v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Enqueueing broadcast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1215
    const-string/jumbo v3, " seq="

    .line 1214
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1215
    const-string/jumbo v3, " to "

    .line 1214
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1215
    iget-object v3, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1214
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1219
    .end local v10    # "seq":I
    :cond_3
    iget-boolean v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    if-eqz v1, :cond_1

    if-eqz p5, :cond_1

    .line 1220
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    .line 1221
    .local v9, "mgr":Landroid/app/IActivityManager;
    sget-boolean v1, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "ActivityThread"

    .line 1222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Finishing sync broadcast to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1221
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    :cond_4
    invoke-virtual {v0, v9}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->sendFinished(Landroid/app/IActivityManager;)V

    goto :goto_1
.end method

.method setUnregisterLocation(Ljava/lang/RuntimeException;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/RuntimeException;

    .prologue
    .line 1198
    iput-object p1, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mUnregisterLocation:Ljava/lang/RuntimeException;

    .line 1197
    return-void
.end method

.method validate(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityThread"    # Landroid/os/Handler;

    .prologue
    .line 1171
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mContext:Landroid/content/Context;

    if-eq v0, p1, :cond_0

    .line 1172
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Receiver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1174
    const-string/jumbo v2, " registered with differing Context (was "

    .line 1173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1175
    iget-object v2, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mContext:Landroid/content/Context;

    .line 1173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1175
    const-string/jumbo v2, " now "

    .line 1173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1175
    const-string/jumbo v2, ")"

    .line 1173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1172
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1177
    :cond_0
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mActivityThread:Landroid/os/Handler;

    if-eq v0, p2, :cond_1

    .line 1178
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Receiver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1180
    const-string/jumbo v2, " registered with differing handler (was "

    .line 1179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1181
    iget-object v2, p0, Landroid/app/LoadedApk$ReceiverDispatcher;->mActivityThread:Landroid/os/Handler;

    .line 1179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1181
    const-string/jumbo v2, " now "

    .line 1179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1181
    const-string/jumbo v2, ")"

    .line 1179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1178
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1170
    :cond_1
    return-void
.end method
