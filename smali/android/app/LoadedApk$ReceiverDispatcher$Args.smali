.class final Landroid/app/LoadedApk$ReceiverDispatcher$Args;
.super Landroid/content/BroadcastReceiver$PendingResult;
.source "LoadedApk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk$ReceiverDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Args"
.end annotation


# instance fields
.field private mCurIntent:Landroid/content/Intent;

.field private mDispatched:Z

.field private final mOrdered:Z

.field final synthetic this$1:Landroid/app/LoadedApk$ReceiverDispatcher;


# direct methods
.method public constructor <init>(Landroid/app/LoadedApk$ReceiverDispatcher;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 11
    .param p1, "this$1"    # Landroid/app/LoadedApk$ReceiverDispatcher;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;
    .param p6, "ordered"    # Z
    .param p7, "sticky"    # Z
    .param p8, "sendingUser"    # I

    .prologue
    .line 1081
    iput-object p1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 1084
    iget-boolean v1, p1, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    if-eqz v1, :cond_0

    const/4 v5, 0x1

    .line 1085
    :goto_0
    iget-object v1, p1, Landroid/app/LoadedApk$ReceiverDispatcher;->mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

    invoke-virtual {v1}, Landroid/content/IIntentReceiver$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v10

    move-object v1, p0

    move v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    .line 1083
    invoke-direct/range {v1 .. v10}, Landroid/content/BroadcastReceiver$PendingResult;-><init>(ILjava/lang/String;Landroid/os/Bundle;IZZLandroid/os/IBinder;II)V

    .line 1086
    iput-object p2, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    .line 1087
    move/from16 v0, p6

    iput-boolean v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mOrdered:Z

    .line 1082
    return-void

    .line 1084
    :cond_0
    const/4 v5, 0x2

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 1091
    iget-object v7, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v5, v7, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1092
    .local v5, "receiver":Landroid/content/BroadcastReceiver;
    iget-boolean v4, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mOrdered:Z

    .line 1094
    .local v4, "ordered":Z
    sget-boolean v7, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    if-eqz v7, :cond_0

    .line 1095
    iget-object v7, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    const-string/jumbo v10, "seq"

    const/4 v11, -0x1

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1096
    .local v6, "seq":I
    const-string/jumbo v7, "ActivityThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Dispatching broadcast "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1097
    const-string/jumbo v11, " seq="

    .line 1096
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1097
    const-string/jumbo v11, " to "

    .line 1096
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1097
    iget-object v11, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v11, v11, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1096
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    const-string/jumbo v7, "ActivityThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "  mRegistered="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-boolean v11, v11, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1099
    const-string/jumbo v11, " mOrderedHint="

    .line 1098
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    .end local v6    # "seq":I
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .line 1103
    .local v3, "mgr":Landroid/app/IActivityManager;
    iget-object v2, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    .line 1104
    .local v2, "intent":Landroid/content/Intent;
    if-nez v2, :cond_1

    .line 1105
    const-string/jumbo v7, "LoadedApk"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Null intent being dispatched, mDispatched="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mDispatched:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :cond_1
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    .line 1109
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mDispatched:Z

    .line 1110
    if-eqz v5, :cond_2

    if-nez v2, :cond_5

    .line 1111
    :cond_2
    iget-object v7, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-boolean v7, v7, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    if-eqz v7, :cond_4

    if-eqz v4, :cond_4

    .line 1112
    sget-boolean v7, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    if-eqz v7, :cond_3

    const-string/jumbo v7, "ActivityThread"

    .line 1113
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Finishing null broadcast to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v11, v11, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1112
    invoke-static {v7, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    :cond_3
    invoke-virtual {p0, v3}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->sendFinished(Landroid/app/IActivityManager;)V

    .line 1116
    :cond_4
    return-void

    .line 1110
    :cond_5
    iget-object v7, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-boolean v7, v7, Landroid/app/LoadedApk$ReceiverDispatcher;->mForgotten:Z

    if-nez v7, :cond_2

    .line 1119
    const-string/jumbo v7, "broadcastReceiveReg"

    const-wide/16 v10, 0x40

    invoke-static {v10, v11, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1121
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1123
    .local v8, "startTime":J
    :try_start_0
    iget-object v7, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v7, v7, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7}, Landroid/content/BroadcastReceiver;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1124
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 1125
    invoke-virtual {v2}, Landroid/content/Intent;->prepareToEnterProcess()V

    .line 1126
    invoke-virtual {p0, v0}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 1127
    invoke-virtual {v5, p0}, Landroid/content/BroadcastReceiver;->setPendingResult(Landroid/content/BroadcastReceiver$PendingResult;)V

    .line 1128
    iget-object v7, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v7, v7, Landroid/app/LoadedApk$ReceiverDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1144
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    :cond_6
    invoke-virtual {v5}, Landroid/content/BroadcastReceiver;->getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 1145
    invoke-virtual {p0}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->finish()V

    .line 1148
    :cond_7
    const/16 v7, 0xc8

    invoke-static {v8, v9, v7}, Landroid/app/ActivityThreadInjector;->checkHandleMessageTime(JI)V

    .line 1149
    const-wide/16 v10, 0x40

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1090
    return-void

    .line 1129
    :catch_0
    move-exception v1

    .line 1130
    .local v1, "e":Ljava/lang/Exception;
    iget-object v7, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-boolean v7, v7, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    if-eqz v7, :cond_9

    if-eqz v4, :cond_9

    .line 1131
    sget-boolean v7, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    if-eqz v7, :cond_8

    const-string/jumbo v7, "ActivityThread"

    .line 1132
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Finishing failed broadcast to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v11, v11, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1131
    invoke-static {v7, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    :cond_8
    invoke-virtual {p0, v3}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->sendFinished(Landroid/app/IActivityManager;)V

    .line 1135
    :cond_9
    iget-object v7, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v7, v7, Landroid/app/LoadedApk$ReceiverDispatcher;->mInstrumentation:Landroid/app/Instrumentation;

    if-eqz v7, :cond_a

    .line 1136
    iget-object v7, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v7, v7, Landroid/app/LoadedApk$ReceiverDispatcher;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v10, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v10, v10, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v10, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1137
    :cond_a
    const-wide/16 v10, 0x40

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1138
    new-instance v7, Ljava/lang/RuntimeException;

    .line 1139
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Error receiving broadcast "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1140
    const-string/jumbo v11, " in "

    .line 1139
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1140
    iget-object v11, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v11, v11, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1139
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1138
    invoke-direct {v7, v10, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method
