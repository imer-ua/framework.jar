.class Landroid/media/AudioStatusHandler$ModeState;
.super Landroid/media/AudioStatusHandler$AudioState;
.source "AudioStatusHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioStatusHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ModeState"
.end annotation


# instance fields
.field private mModeMask:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/AudioStatusHandler;


# direct methods
.method public constructor <init>(Landroid/media/AudioStatusHandler;)V
    .locals 3
    .param p1, "this$0"    # Landroid/media/AudioStatusHandler;

    .prologue
    .line 188
    iput-object p1, p0, Landroid/media/AudioStatusHandler$ModeState;->this$0:Landroid/media/AudioStatusHandler;

    .line 189
    sget-object v0, Landroid/media/AudioStatusHandler$Type;->MODE:Landroid/media/AudioStatusHandler$Type;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/media/AudioStatusHandler$AudioState;-><init>(Landroid/media/AudioStatusHandler;Landroid/media/AudioStatusHandler$Type;I)V

    .line 191
    invoke-static {p1}, Landroid/media/AudioStatusHandler;->-get4(Landroid/media/AudioStatusHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mode_mask_for_notify"

    const/4 v2, -0x3

    .line 190
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioStatusHandler$ModeState;->mModeMask:Ljava/lang/String;

    .line 192
    iget-object v0, p0, Landroid/media/AudioStatusHandler$ModeState;->mModeMask:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 193
    const-string/jumbo v0, "3"

    iput-object v0, p0, Landroid/media/AudioStatusHandler$ModeState;->mModeMask:Ljava/lang/String;

    .line 188
    :cond_0
    return-void
.end method

.method private cancelModeNotification()V
    .locals 3

    .prologue
    .line 271
    iget-object v1, p0, Landroid/media/AudioStatusHandler$ModeState;->this$0:Landroid/media/AudioStatusHandler;

    invoke-static {v1}, Landroid/media/AudioStatusHandler;->-get4(Landroid/media/AudioStatusHandler;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 272
    .local v0, "manager":Landroid/app/NotificationManager;
    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 274
    invoke-static {}, Landroid/media/AudioStatusHandler;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    invoke-static {}, Landroid/media/AudioStatusHandler;->-get1()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "cancelAudioStatusNotification id 10001"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    return-void
.end method

.method private sendModeNotification()V
    .locals 3

    .prologue
    .line 256
    invoke-direct {p0}, Landroid/media/AudioStatusHandler$ModeState;->showNotifyForMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    invoke-static {}, Landroid/media/AudioStatusHandler;->-get1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendModeStatusNotification not communication mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioStatusHandler$AudioState;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return-void

    .line 261
    :cond_0
    invoke-static {}, Landroid/media/AudioStatusHandler;->-get0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    invoke-static {}, Landroid/media/AudioStatusHandler;->-get1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendModeStatusNotification type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 263
    iget-object v2, p0, Landroid/media/AudioStatusHandler$AudioState;->mType:Landroid/media/AudioStatusHandler$Type;

    .line 262
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 263
    const-string/jumbo v2, " pid "

    .line 262
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 263
    iget v2, p0, Landroid/media/AudioStatusHandler$AudioState;->mPid:I

    .line 262
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 263
    const-string/jumbo v2, " mode "

    .line 262
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 263
    iget v2, p0, Landroid/media/AudioStatusHandler$AudioState;->mState:I

    .line 262
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 263
    const-string/jumbo v2, " speakerOn "

    .line 262
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 263
    iget-object v2, p0, Landroid/media/AudioStatusHandler$ModeState;->this$0:Landroid/media/AudioStatusHandler;

    invoke-virtual {v2}, Landroid/media/AudioStatusHandler;->isSpeakerOn()Z

    move-result v2

    .line 262
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_1
    iget-object v0, p0, Landroid/media/AudioStatusHandler$ModeState;->this$0:Landroid/media/AudioStatusHandler;

    invoke-static {v0}, Landroid/media/AudioStatusHandler;->-get4(Landroid/media/AudioStatusHandler;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioStatusHandler$AudioState;->mPid:I

    iget-object v2, p0, Landroid/media/AudioStatusHandler$ModeState;->this$0:Landroid/media/AudioStatusHandler;

    invoke-virtual {v2}, Landroid/media/AudioStatusHandler;->isSpeakerOn()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/media/AudioStatusNotify;->sendAudioStatusNotification(Landroid/content/Context;IZ)V

    .line 255
    return-void
.end method

.method private sendOrUpdateModeMsg()V
    .locals 11

    .prologue
    const/16 v10, 0x2711

    const-wide/16 v8, 0x0

    .line 234
    invoke-direct {p0}, Landroid/media/AudioStatusHandler$ModeState;->showNotifyForMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 235
    iget-object v4, p0, Landroid/media/AudioStatusHandler$ModeState;->this$0:Landroid/media/AudioStatusHandler;

    invoke-static {v4, v10}, Landroid/media/AudioStatusHandler;->-wrap0(Landroid/media/AudioStatusHandler;I)V

    .line 236
    iget-object v4, p0, Landroid/media/AudioStatusHandler$ModeState;->this$0:Landroid/media/AudioStatusHandler;

    const/16 v5, 0x2712

    invoke-static {v4, v5, v8, v9}, Landroid/media/AudioStatusHandler;->-wrap1(Landroid/media/AudioStatusHandler;IJ)V

    .line 237
    return-void

    .line 241
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 242
    .local v0, "currentTime":J
    iget-wide v4, p0, Landroid/media/AudioStatusHandler$AudioState;->mStartTime:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_1

    .line 243
    iput-wide v0, p0, Landroid/media/AudioStatusHandler$AudioState;->mStartTime:J

    .line 246
    :cond_1
    iget-wide v4, p0, Landroid/media/AudioStatusHandler$AudioState;->mStartTime:J

    sub-long v4, v0, v4

    const-wide/32 v6, 0xea60

    sub-long v2, v6, v4

    .line 247
    .local v2, "delay":J
    cmp-long v4, v2, v8

    if-gez v4, :cond_2

    .line 248
    const-wide/16 v2, 0x0

    .line 252
    :cond_2
    iget-object v4, p0, Landroid/media/AudioStatusHandler$ModeState;->this$0:Landroid/media/AudioStatusHandler;

    invoke-static {v4, v10, v2, v3}, Landroid/media/AudioStatusHandler;->-wrap1(Landroid/media/AudioStatusHandler;IJ)V

    .line 232
    return-void
.end method

.method private showNotifyForMode()Z
    .locals 3

    .prologue
    .line 198
    invoke-static {}, Landroid/media/AudioStatusHandler;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-static {}, Landroid/media/AudioStatusHandler;->-get1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showNotifyForMode mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioStatusHandler$AudioState;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " modeString "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioStatusHandler$ModeState;->mModeMask:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    iget-object v0, p0, Landroid/media/AudioStatusHandler$ModeState;->mModeMask:Ljava/lang/String;

    iget v1, p0, Landroid/media/AudioStatusHandler$AudioState;->mState:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    const/4 v0, 0x1

    return v0

    .line 206
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onMessageReceived(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 211
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 224
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 213
    :pswitch_0
    invoke-direct {p0}, Landroid/media/AudioStatusHandler$ModeState;->sendModeNotification()V

    goto :goto_0

    .line 216
    :pswitch_1
    invoke-direct {p0}, Landroid/media/AudioStatusHandler$ModeState;->cancelModeNotification()V

    goto :goto_0

    .line 219
    :pswitch_2
    invoke-direct {p0}, Landroid/media/AudioStatusHandler$ModeState;->sendOrUpdateModeMsg()V

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onStateChanged()V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Landroid/media/AudioStatusHandler$ModeState;->sendOrUpdateModeMsg()V

    .line 228
    return-void
.end method
