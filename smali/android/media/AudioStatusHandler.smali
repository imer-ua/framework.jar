.class public Landroid/media/AudioStatusHandler;
.super Ljava/lang/Object;
.source "AudioStatusHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioStatusHandler$1;,
        Landroid/media/AudioStatusHandler$AudioState;,
        Landroid/media/AudioStatusHandler$ModeState;,
        Landroid/media/AudioStatusHandler$SpeakerState;,
        Landroid/media/AudioStatusHandler$Type;
    }
.end annotation


# static fields
.field private static final synthetic -android-media-AudioStatusHandler$TypeSwitchesValues:[I = null

.field private static final DEBUG:Z

.field private static final DELAY:J = 0xea60L

.field public static final KEY_PID:Ljava/lang/String; = "pid"

.field public static final KEY_STATE:Ljava/lang/String; = "state"

.field public static final KEY_TYPE:Ljava/lang/String; = "type"

.field public static final MODE_MASK_FOR_NOTIFY:Ljava/lang/String; = "mode_mask_for_notify"

.field public static final MODE_MASK_FOR_NOTIFY_DEFAULT:Ljava/lang/String; = "3"

.field private static final MSG_CANCEL_MODE_NOTIFICATION:I = 0x2712

.field private static final MSG_SEND_MODE_NOTIFICATION:I = 0x2711

.field private static final MSG_SEND_SPEAKER_NOTIFICATION:I = 0x2713

.field private static final TAG:Ljava/lang/String;

.field private static sAudioStatusHandler:Landroid/media/AudioStatusHandler;


# instance fields
.field private mActiveState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/AudioStatusHandler$Type;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/media/AudioStatusHandler$Type;",
            "Landroid/media/AudioStatusHandler$AudioState;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandle:Landroid/os/Handler;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Landroid/media/AudioStatusHandler;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/media/AudioStatusHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Landroid/media/AudioStatusHandler;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mActiveState:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get3(Landroid/media/AudioStatusHandler;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mAudioState:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get4(Landroid/media/AudioStatusHandler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static synthetic -getandroid-media-AudioStatusHandler$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/media/AudioStatusHandler;->-android-media-AudioStatusHandler$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/media/AudioStatusHandler;->-android-media-AudioStatusHandler$TypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/media/AudioStatusHandler$Type;->values()[Landroid/media/AudioStatusHandler$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/media/AudioStatusHandler$Type;->MODE:Landroid/media/AudioStatusHandler$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Landroid/media/AudioStatusHandler$Type;->SPEAKER:Landroid/media/AudioStatusHandler$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Landroid/media/AudioStatusHandler;->-android-media-AudioStatusHandler$TypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Landroid/media/AudioStatusHandler;I)V
    .locals 0
    .param p1, "msg"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/media/AudioStatusHandler;->cancelMessage(I)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/media/AudioStatusHandler;IJ)V
    .locals 0
    .param p1, "msg"    # I
    .param p2, "delay"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioStatusHandler;->sendMessage(IJ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const-class v0, Landroid/media/AudioStatusHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/AudioStatusHandler;->TAG:Ljava/lang/String;

    .line 24
    sget-object v0, Landroid/media/AudioStatusHandler;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/AudioStatusHandler;->DEBUG:Z

    .line 22
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioStatusHandler;->mAudioState:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioStatusHandler;->mActiveState:Ljava/util/List;

    .line 45
    new-instance v0, Landroid/media/AudioStatusHandler$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/media/AudioStatusHandler$1;-><init>(Landroid/media/AudioStatusHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/AudioStatusHandler;->mHandle:Landroid/os/Handler;

    .line 58
    iput-object p1, p0, Landroid/media/AudioStatusHandler;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method private addAudioState(Landroid/media/AudioStatusHandler$Type;)Landroid/media/AudioStatusHandler$AudioState;
    .locals 4
    .param p1, "type"    # Landroid/media/AudioStatusHandler$Type;

    .prologue
    const/4 v3, 0x0

    .line 94
    iget-object v1, p0, Landroid/media/AudioStatusHandler;->mAudioState:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioStatusHandler$AudioState;

    .line 95
    .local v0, "audioState":Landroid/media/AudioStatusHandler$AudioState;
    if-eqz v0, :cond_0

    .line 96
    return-object v0

    .line 98
    :cond_0
    invoke-static {}, Landroid/media/AudioStatusHandler;->-getandroid-media-AudioStatusHandler$TypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 108
    :goto_0
    if-eqz v0, :cond_1

    .line 109
    iget-object v1, p0, Landroid/media/AudioStatusHandler;->mAudioState:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v1, p0, Landroid/media/AudioStatusHandler;->mActiveState:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    return-object v0

    .line 100
    :pswitch_0
    new-instance v0, Landroid/media/AudioStatusHandler$ModeState;

    .end local v0    # "audioState":Landroid/media/AudioStatusHandler$AudioState;
    invoke-direct {v0, p0}, Landroid/media/AudioStatusHandler$ModeState;-><init>(Landroid/media/AudioStatusHandler;)V

    .line 101
    .restart local v0    # "audioState":Landroid/media/AudioStatusHandler$AudioState;
    goto :goto_0

    .line 103
    :pswitch_1
    new-instance v0, Landroid/media/AudioStatusHandler$SpeakerState;

    .end local v0    # "audioState":Landroid/media/AudioStatusHandler$AudioState;
    invoke-direct {v0, p0}, Landroid/media/AudioStatusHandler$SpeakerState;-><init>(Landroid/media/AudioStatusHandler;)V

    .line 104
    .restart local v0    # "audioState":Landroid/media/AudioStatusHandler$AudioState;
    goto :goto_0

    .line 113
    :cond_1
    return-object v3

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private cancelMessage(I)V
    .locals 1
    .param p1, "msg"    # I

    .prologue
    .line 117
    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mHandle:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mHandle:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 116
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/media/AudioStatusHandler;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    sget-object v0, Landroid/media/AudioStatusHandler;->sAudioStatusHandler:Landroid/media/AudioStatusHandler;

    if-nez v0, :cond_1

    .line 63
    const-class v1, Landroid/media/AudioStatusHandler;

    monitor-enter v1

    .line 64
    :try_start_0
    sget-object v0, Landroid/media/AudioStatusHandler;->sAudioStatusHandler:Landroid/media/AudioStatusHandler;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Landroid/media/AudioStatusHandler;

    invoke-direct {v0, p0}, Landroid/media/AudioStatusHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/media/AudioStatusHandler;->sAudioStatusHandler:Landroid/media/AudioStatusHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 69
    :cond_1
    sget-object v0, Landroid/media/AudioStatusHandler;->sAudioStatusHandler:Landroid/media/AudioStatusHandler;

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private sendMessage(IJ)V
    .locals 2
    .param p1, "msg"    # I
    .param p2, "delay"    # J

    .prologue
    .line 123
    invoke-direct {p0, p1}, Landroid/media/AudioStatusHandler;->cancelMessage(I)V

    .line 124
    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mHandle:Landroid/os/Handler;

    iget-object v1, p0, Landroid/media/AudioStatusHandler;->mHandle:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 122
    return-void
.end method


# virtual methods
.method public handleAudioStatusChanged(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 73
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    :cond_0
    return-void

    .line 77
    :cond_1
    const-string/jumbo v2, "type"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Landroid/media/AudioStatusHandler$Type;

    .line 78
    .local v1, "type":Landroid/media/AudioStatusHandler$Type;
    invoke-direct {p0, v1}, Landroid/media/AudioStatusHandler;->addAudioState(Landroid/media/AudioStatusHandler$Type;)Landroid/media/AudioStatusHandler$AudioState;

    move-result-object v0

    .line 80
    .local v0, "audioState":Landroid/media/AudioStatusHandler$AudioState;
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/media/AudioStatusHandler$AudioState;->update(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 87
    sget-boolean v2, Landroid/media/AudioStatusHandler;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 88
    sget-object v2, Landroid/media/AudioStatusHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleAudioStatusChanged type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/media/AudioStatusHandler$AudioState;->mType:Landroid/media/AudioStatusHandler$Type;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 89
    iget v4, v0, Landroid/media/AudioStatusHandler$AudioState;->mPid:I

    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 89
    const-string/jumbo v4, " state "

    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 89
    iget v4, v0, Landroid/media/AudioStatusHandler$AudioState;->mState:I

    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_2
    return-void

    .line 81
    :cond_3
    sget-boolean v2, Landroid/media/AudioStatusHandler;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 82
    sget-object v2, Landroid/media/AudioStatusHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleAudioStatusChanged no update "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_4
    return-void
.end method

.method public isSpeakerOn()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v2, p0, Landroid/media/AudioStatusHandler;->mAudioState:Ljava/util/Map;

    sget-object v3, Landroid/media/AudioStatusHandler$Type;->SPEAKER:Landroid/media/AudioStatusHandler$Type;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioStatusHandler$SpeakerState;

    .line 129
    .local v0, "speakerState":Landroid/media/AudioStatusHandler$SpeakerState;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v2, v0, Landroid/media/AudioStatusHandler$AudioState;->mState:I

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
