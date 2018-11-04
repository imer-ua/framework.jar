.class public Landroid/media/AudioServiceInjector;
.super Ljava/lang/Object;
.source "AudioServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioServiceInjector$1;
    }
.end annotation


# static fields
.field public static final ACTION_VOLUME_BOOST:Ljava/lang/String; = "miui.intent.action.VOLUME_BOOST"

.field public static final DEFAULT_VOL_STREAM_NO_PLAYBACK:I = 0x3

.field public static final EXTRA_BOOST_STATE:Ljava/lang/String; = "volume_boost_state"

.field private static final MUTE_TIME_INTERVAL_INDEX:I = 0x3

.field private static final RANDOM_SOUND_DEFALTE_URI:Ljava/lang/String; = "file:///system/media/audio/ui/notice_audition.ogg"

.field private static final RANDOM_SOUND_NUM_INDEX:I = 0x0

.field private static RANDOM_SOUND_PREFIX:Ljava/lang/String; = null

.field private static SEQUENCE_SOUND_PREFIX:Ljava/lang/String; = null

.field private static final SEQ_SOUND_NUM_INDEX:I = 0x1

.field private static final SEQ_TIME_INTERVAL_INDEX:I = 0x2

.field private static final SOUND_SUFFIX:Ljava/lang/String; = ".ogg"

.field private static final TAG:Ljava/lang/String; = "AudioService"

.field private static final availableDevice:I = 0x8c

.field private static final mContentResolverParameters:[Ljava/lang/String;

.field private static final mContentResolverTypes:[Ljava/lang/String;

.field private static mHasPlayedNormalNotification:Z

.field private static mLastNotificationTimeMs:J

.field private static mNotificationRandomSound:Z

.field public static mOriginalIndexWhenSetStreamVolume:I

.field private static mRandomSound:[Z

.field private static mSeqIndex:I

.field private static mTimeAndSoundNumParameters:[I

.field private static mTypes:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    const-string/jumbo v0, "file:///system/media/audio/ui/notification_beep_sound_"

    .line 41
    sput-object v0, Landroid/media/AudioServiceInjector;->RANDOM_SOUND_PREFIX:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "file:///system/media/audio/ui/notification_beep_soundseq_"

    .line 43
    sput-object v0, Landroid/media/AudioServiceInjector;->SEQUENCE_SOUND_PREFIX:Ljava/lang/String;

    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 47
    const-string/jumbo v1, "notification_sound"

    aput-object v1, v0, v2

    .line 48
    const-string/jumbo v1, "sms_received_sound"

    aput-object v1, v0, v3

    .line 49
    const-string/jumbo v1, "sms_received_sound_slot_1"

    aput-object v1, v0, v4

    .line 50
    const-string/jumbo v1, "sms_received_sound_slot_2"

    aput-object v1, v0, v5

    .line 51
    const-string/jumbo v1, "calendar_alert"

    aput-object v1, v0, v6

    .line 46
    sput-object v0, Landroid/media/AudioServiceInjector;->mContentResolverTypes:[Ljava/lang/String;

    .line 52
    new-array v0, v6, [Ljava/lang/String;

    .line 53
    const-string/jumbo v1, "random_note_mode_random_sound_number"

    aput-object v1, v0, v2

    .line 54
    const-string/jumbo v1, "random_note_mode_sequence_sound_number"

    aput-object v1, v0, v3

    .line 55
    const-string/jumbo v1, "random_note_mode_sequence_time_interval_ms"

    aput-object v1, v0, v4

    .line 56
    const-string/jumbo v1, "random_note_mode_mute_time_interval_ms"

    aput-object v1, v0, v5

    .line 52
    sput-object v0, Landroid/media/AudioServiceInjector;->mContentResolverParameters:[Ljava/lang/String;

    .line 57
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    .line 58
    sput v2, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    .line 59
    sput-boolean v2, Landroid/media/AudioServiceInjector;->mHasPlayedNormalNotification:Z

    .line 60
    sput-boolean v3, Landroid/media/AudioServiceInjector;->mNotificationRandomSound:Z

    .line 62
    const/4 v0, 0x5

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    .line 64
    const/16 v0, 0xa

    const/16 v1, 0x3e8

    const/16 v2, 0x2710

    filled-new-array {v0, v3, v1, v2}, [I

    move-result-object v0

    sput-object v0, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    .line 69
    new-instance v0, Landroid/media/AudioServiceInjector$1;

    invoke-direct {v0}, Landroid/media/AudioServiceInjector$1;-><init>()V

    sput-object v0, Landroid/media/AudioServiceInjector;->mTypes:Ljava/util/HashMap;

    .line 32
    return-void

    .line 62
    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustDefaultStreamVolume([I)V
    .locals 2
    .param p0, "defaultStreamVolume"    # [I

    .prologue
    .line 219
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 220
    if-eqz v0, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 219
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    :cond_1
    const/16 v1, 0xa

    aput v1, p0, v0

    goto :goto_1

    .line 218
    :cond_2
    return-void
.end method

.method public static adjustHiFiVolume(ILandroid/content/Context;)V
    .locals 2
    .param p0, "direction"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    invoke-static {p1}, Lmiui/util/AudioManagerHelper;->getHiFiVolume(Landroid/content/Context;)I

    move-result v0

    .line 105
    .local v0, "currentHiFiVolume":I
    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    .line 106
    add-int/lit8 v1, v0, -0xa

    invoke-static {p1, v1}, Lmiui/util/AudioManagerHelper;->setHiFiVolume(Landroid/content/Context;I)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 108
    add-int/lit8 v1, v0, 0xa

    invoke-static {p1, v1}, Lmiui/util/AudioManagerHelper;->setHiFiVolume(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static adjustMaxStreamVolume([I)V
    .locals 2
    .param p0, "maxStreamVolume"    # [I

    .prologue
    .line 202
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 203
    if-eqz v0, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 202
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_1
    const/16 v1, 0xf

    aput v1, p0, v0

    goto :goto_1

    .line 201
    :cond_2
    return-void
.end method

.method public static adjustMinStreamVolume([I)V
    .locals 2
    .param p0, "minStreamVolume"    # [I

    .prologue
    .line 211
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 212
    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 213
    const/4 v1, 0x1

    aput v1, p0, v0

    .line 211
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_1
    return-void
.end method

.method public static calculateStreamMaxVolume(IILandroid/content/Context;)I
    .locals 2
    .param p0, "streamType"    # I
    .param p1, "maxIndex"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    add-int/lit8 v1, p1, 0x5

    div-int/lit8 v0, v1, 0xa

    .line 180
    .local v0, "retValue":I
    const/4 v1, 0x3

    if-ne v1, p0, :cond_0

    invoke-static {p2}, Lmiui/util/AudioManagerHelper;->isHiFiMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    add-int/lit8 v0, v0, 0xa

    .line 184
    :cond_0
    return v0
.end method

.method public static calculateStreamVolume(IILandroid/content/Context;)I
    .locals 2
    .param p0, "streamType"    # I
    .param p1, "index"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 171
    add-int/lit8 v1, p1, 0x5

    div-int/lit8 v0, v1, 0xa

    .line 172
    .local v0, "retValue":I
    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    invoke-static {p2}, Lmiui/util/AudioManagerHelper;->isHiFiMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    invoke-static {p2}, Lmiui/util/AudioManagerHelper;->getHiFiVolume(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    .line 175
    :cond_0
    return v0
.end method

.method public static checkForRingerModeChange(Landroid/content/Context;III)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldRingerMode"    # I
    .param p2, "newRingerMode"    # I
    .param p3, "direction"    # I

    .prologue
    .line 228
    invoke-static {p0, p2}, Lmiui/util/AudioManagerHelper;->getValidatedRingerMode(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static checkMusicStream([Ljava/lang/Object;Landroid/content/Context;II)V
    .locals 0
    .param p0, "object"    # [Ljava/lang/Object;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ringerMode"    # I
    .param p3, "dev"    # I

    .prologue
    .line 265
    return-void
.end method

.method public static getActiveStreamType(ZIIIZ)I
    .locals 6
    .param p0, "isInCommunication"    # Z
    .param p1, "platformType"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "streamOverrideDelayMs"    # I
    .param p4, "DEBUG_VOL"    # Z

    .prologue
    const/high16 v1, -0x80000000

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x5

    const/4 v2, 0x2

    .line 593
    packed-switch p1, :pswitch_data_0

    .line 632
    :cond_0
    if-eqz p0, :cond_f

    .line 633
    invoke-static {v4}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v0

    if-ne v0, v5, :cond_d

    .line 635
    if-eqz p4, :cond_1

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "getActiveStreamType: Forcing STREAM_BLUETOOTH_SCO"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_1
    const/4 v0, 0x6

    return v0

    .line 595
    :pswitch_0
    if-eqz p0, :cond_3

    .line 596
    invoke-static {v4}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 599
    const/4 v0, 0x6

    return v0

    .line 602
    :cond_2
    return v4

    .line 604
    :cond_3
    if-ne p2, v1, :cond_9

    .line 605
    invoke-static {v2, p3}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 606
    if-eqz p4, :cond_4

    .line 607
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "getActiveStreamType: Forcing STREAM_RING stream active"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_4
    return v2

    .line 609
    :cond_5
    invoke-static {v3, p3}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 611
    if-eqz p4, :cond_6

    .line 612
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "getActiveStreamType: Forcing STREAM_NOTIFICATION stream active"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_6
    return v3

    .line 615
    :cond_7
    if-eqz p4, :cond_8

    .line 616
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "getActiveStreamType: Forcing DEFAULT_VOL_STREAM_NO_PLAYBACK(3) b/c default"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_8
    return v5

    .line 622
    :cond_9
    invoke-static {v3, p3}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v0

    .line 621
    if-eqz v0, :cond_b

    .line 623
    if-eqz p4, :cond_a

    .line 624
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "getActiveStreamType: Forcing STREAM_NOTIFICATION stream active"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_a
    return v3

    .line 626
    :cond_b
    invoke-static {v2, p3}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    if-eqz p4, :cond_c

    .line 628
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "getActiveStreamType: Forcing STREAM_RING stream active"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_c
    return v2

    .line 638
    :cond_d
    if-eqz p4, :cond_e

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "getActiveStreamType: Forcing STREAM_VOICE_CALL"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_e
    return v4

    .line 641
    :cond_f
    invoke-static {v3, p3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 643
    if-eqz p4, :cond_10

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "getActiveStreamType: Forcing STREAM_NOTIFICATION"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_10
    return v3

    .line 645
    :cond_11
    invoke-static {v2, p3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 647
    if-eqz p4, :cond_12

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "getActiveStreamType: Forcing STREAM_RING"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_12
    return v2

    .line 649
    :cond_13
    if-ne p2, v1, :cond_19

    .line 650
    invoke-static {v3, p3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 652
    if-eqz p4, :cond_14

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "getActiveStreamType: Forcing STREAM_NOTIFICATION"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_14
    return v3

    .line 654
    :cond_15
    invoke-static {v2, p3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 656
    if-eqz p4, :cond_16

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "getActiveStreamType: Forcing STREAM_RING"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_16
    return v2

    .line 659
    :cond_17
    if-eqz p4, :cond_18

    .line 660
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "getActiveStreamType: Forcing DEFAULT_VOL_STREAM_NO_PLAYBACK(3) b/c default"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_18
    return v5

    .line 668
    :cond_19
    if-eqz p4, :cond_1a

    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getActiveStreamType: Returning suggested type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_1a
    return p2

    .line 593
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDefaultVolStreamNoPlayback(I)I
    .locals 1
    .param p0, "defaultType"    # I

    .prologue
    .line 687
    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    return p0

    .line 690
    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method private static getIndexForType(Ljava/lang/String;)I
    .locals 3
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 565
    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIndexForType() type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    sget-object v0, Landroid/media/AudioServiceInjector;->mTypes:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getNotificationUri()Ljava/lang/String;
    .locals 12

    .prologue
    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 436
    .local v6, "time":J
    const/4 v2, 0x0

    .line 438
    .local v2, "path":Ljava/lang/String;
    sget-boolean v8, Landroid/media/AudioServiceInjector;->mNotificationRandomSound:Z

    if-nez v8, :cond_5

    .line 439
    const/4 v1, 0x1

    .line 440
    .local v1, "isNeedMute":Z
    sget-wide v8, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 441
    sget-wide v8, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    sub-long v8, v6, v8

    .line 442
    sget-object v10, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    int-to-long v10, v10

    .line 441
    cmp-long v8, v8, v10

    if-lez v8, :cond_3

    .line 443
    :cond_0
    const/4 v1, 0x0

    .line 444
    const/4 v8, 0x0

    sput-boolean v8, Landroid/media/AudioServiceInjector;->mHasPlayedNormalNotification:Z

    .line 455
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 456
    const-string/jumbo v2, "normal_notification"

    .line 457
    .local v2, "path":Ljava/lang/String;
    sput-wide v6, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    .line 496
    .end local v1    # "isNeedMute":Z
    .end local v2    # "path":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v2

    .line 445
    .restart local v1    # "isNeedMute":Z
    .local v2, "path":Ljava/lang/String;
    :cond_3
    sget-wide v8, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    sub-long v8, v6, v8

    .line 446
    sget-object v10, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    int-to-long v10, v10

    .line 445
    cmp-long v8, v8, v10

    if-gtz v8, :cond_4

    .line 447
    sget-boolean v8, Landroid/media/AudioServiceInjector;->mHasPlayedNormalNotification:Z

    if-nez v8, :cond_1

    .line 448
    const/4 v8, 0x1

    sput-boolean v8, Landroid/media/AudioServiceInjector;->mHasPlayedNormalNotification:Z

    .line 449
    const/4 v1, 0x0

    goto :goto_0

    .line 451
    :cond_4
    sget-boolean v8, Landroid/media/AudioServiceInjector;->mHasPlayedNormalNotification:Z

    if-nez v8, :cond_1

    .line 452
    const/4 v1, 0x0

    goto :goto_0

    .line 460
    .end local v1    # "isNeedMute":Z
    :cond_5
    const/4 v3, 0x0

    .line 461
    .local v3, "playRandom":Z
    const/4 v4, 0x0

    .line 463
    .local v4, "playSeq":Z
    sget-wide v8, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_6

    .line 464
    sget-wide v8, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    sub-long v8, v6, v8

    .line 465
    sget-object v10, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    int-to-long v10, v10

    .line 464
    cmp-long v8, v8, v10

    if-lez v8, :cond_8

    .line 466
    :cond_6
    const/4 v3, 0x1

    .line 467
    const/4 v8, 0x0

    sput v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    .line 478
    :cond_7
    :goto_2
    if-eqz v3, :cond_a

    .line 479
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    .line 480
    sget-object v9, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    .line 479
    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int/lit8 v0, v8, 0x1

    .line 481
    .local v0, "index":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    sget-object v8, Landroid/media/AudioServiceInjector;->RANDOM_SOUND_PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 484
    const-string/jumbo v8, ".ogg"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, "path":Ljava/lang/String;
    sput-wide v6, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    goto :goto_1

    .line 468
    .end local v0    # "index":I
    .end local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    .local v2, "path":Ljava/lang/String;
    :cond_8
    sget-wide v8, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    sub-long v8, v6, v8

    .line 469
    sget-object v10, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    int-to-long v10, v10

    .line 468
    cmp-long v8, v8, v10

    if-gtz v8, :cond_9

    .line 470
    sget v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    sget-object v9, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    if-ge v8, v9, :cond_7

    .line 471
    sget v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    .line 472
    const/4 v4, 0x1

    goto :goto_2

    .line 474
    :cond_9
    sget v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    if-nez v8, :cond_7

    .line 475
    const/4 v3, 0x1

    goto :goto_2

    .line 487
    :cond_a
    if-eqz v4, :cond_2

    .line 488
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    .restart local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    sget-object v8, Landroid/media/AudioServiceInjector;->SEQUENCE_SOUND_PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    sget v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 491
    const-string/jumbo v8, ".ogg"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 493
    .local v2, "path":Ljava/lang/String;
    sput-wide v6, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    goto/16 :goto_1
.end method

.method public static getNotificationUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 500
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 501
    .local v6, "time":J
    const/4 v2, 0x0

    .line 503
    .local v2, "path":Ljava/lang/String;
    invoke-static {p0}, Landroid/media/AudioServiceInjector;->getIndexForType(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Landroid/media/AudioServiceInjector;->playRandomSound(I)Z

    move-result v8

    if-nez v8, :cond_5

    .line 504
    const/4 v1, 0x1

    .line 505
    .local v1, "isNeedMute":Z
    sget-wide v8, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 506
    sget-wide v8, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    sub-long v8, v6, v8

    .line 507
    sget-object v10, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    int-to-long v10, v10

    .line 506
    cmp-long v8, v8, v10

    if-lez v8, :cond_3

    .line 508
    :cond_0
    const/4 v1, 0x0

    .line 509
    const/4 v8, 0x0

    sput v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    .line 520
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 521
    const-string/jumbo v2, "normal_notification"

    .line 522
    .local v2, "path":Ljava/lang/String;
    sput-wide v6, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    .line 561
    .end local v1    # "isNeedMute":Z
    .end local v2    # "path":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v2

    .line 510
    .restart local v1    # "isNeedMute":Z
    .local v2, "path":Ljava/lang/String;
    :cond_3
    sget-wide v8, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    sub-long v8, v6, v8

    .line 511
    sget-object v10, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    int-to-long v10, v10

    .line 510
    cmp-long v8, v8, v10

    if-gtz v8, :cond_4

    .line 512
    sget v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    sget-object v9, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    if-ge v8, v9, :cond_1

    .line 513
    sget v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    .line 514
    const/4 v1, 0x0

    goto :goto_0

    .line 516
    :cond_4
    sget v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    if-nez v8, :cond_1

    .line 517
    const/4 v1, 0x0

    goto :goto_0

    .line 525
    .end local v1    # "isNeedMute":Z
    :cond_5
    const/4 v3, 0x0

    .line 526
    .local v3, "playRandom":Z
    const/4 v4, 0x0

    .line 528
    .local v4, "playSeq":Z
    sget-wide v8, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_6

    .line 529
    sget-wide v8, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    sub-long v8, v6, v8

    .line 530
    sget-object v10, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    int-to-long v10, v10

    .line 529
    cmp-long v8, v8, v10

    if-lez v8, :cond_8

    .line 531
    :cond_6
    const/4 v3, 0x1

    .line 532
    const/4 v8, 0x0

    sput v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    .line 543
    :cond_7
    :goto_2
    if-eqz v3, :cond_a

    .line 544
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    .line 545
    sget-object v9, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    .line 544
    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int/lit8 v0, v8, 0x1

    .line 546
    .local v0, "index":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 547
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    sget-object v8, Landroid/media/AudioServiceInjector;->RANDOM_SOUND_PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 549
    const-string/jumbo v8, ".ogg"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 551
    .local v2, "path":Ljava/lang/String;
    sput-wide v6, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    goto :goto_1

    .line 533
    .end local v0    # "index":I
    .end local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    .local v2, "path":Ljava/lang/String;
    :cond_8
    sget-wide v8, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    sub-long v8, v6, v8

    .line 534
    sget-object v10, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    int-to-long v10, v10

    .line 533
    cmp-long v8, v8, v10

    if-gtz v8, :cond_9

    .line 535
    sget v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    sget-object v9, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    if-ge v8, v9, :cond_7

    .line 536
    sget v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    .line 537
    const/4 v4, 0x1

    goto :goto_2

    .line 539
    :cond_9
    sget v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    if-nez v8, :cond_7

    .line 540
    const/4 v3, 0x1

    goto :goto_2

    .line 552
    :cond_a
    if-eqz v4, :cond_2

    .line 553
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 554
    .restart local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    sget-object v8, Landroid/media/AudioServiceInjector;->SEQUENCE_SOUND_PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    sget v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 556
    const-string/jumbo v8, ".ogg"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 558
    .local v2, "path":Ljava/lang/String;
    sput-wide v6, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    goto/16 :goto_1
.end method

.method public static getRingerModeAffectedStreams(ILandroid/content/Context;)I
    .locals 6
    .param p0, "streams"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 240
    sget-boolean v1, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-nez v1, :cond_0

    return p0

    .line 242
    :cond_0
    invoke-static {p1}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 244
    or-int/lit8 p0, p0, 0x26

    .line 248
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 249
    const-string/jumbo v3, "mute_music_at_silent"

    const/4 v4, -0x3

    .line 248
    invoke-static {v1, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 251
    .local v0, "muteMusic":I
    and-int/lit8 p0, p0, -0x9

    .line 252
    if-ne v0, v5, :cond_3

    const/16 v1, 0x8

    :goto_0
    or-int/2addr p0, v1

    .line 255
    .end local v0    # "muteMusic":I
    :cond_1
    invoke-static {p1}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 257
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v1, v3, :cond_4

    :goto_1
    or-int/lit16 p0, v2, 0x100

    .line 261
    :cond_2
    return p0

    .restart local v0    # "muteMusic":I
    :cond_3
    move v1, v2

    .line 252
    goto :goto_0

    .line 258
    .end local v0    # "muteMusic":I
    :cond_4
    const/4 v2, 0x2

    goto :goto_1
.end method

.method public static handleAudioStatusChanged(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 752
    invoke-static {p0}, Landroid/media/AudioStatusHandler;->getInstance(Landroid/content/Context;)Landroid/media/AudioStatusHandler;

    move-result-object v0

    .line 753
    .local v0, "statusHandler":Landroid/media/AudioStatusHandler;
    invoke-virtual {v0, p1}, Landroid/media/AudioStatusHandler;->handleAudioStatusChanged(Landroid/os/Bundle;)V

    .line 751
    return-void
.end method

.method public static handleModeChanged(Landroid/content/Context;II)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid"    # I
    .param p2, "mode"    # I

    .prologue
    .line 736
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 737
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "type"

    sget-object v2, Landroid/media/AudioStatusHandler$Type;->MODE:Landroid/media/AudioStatusHandler$Type;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 738
    const-string/jumbo v1, "pid"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 739
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 740
    invoke-static {p0, v0}, Landroid/media/AudioServiceInjector;->handleAudioStatusChanged(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 735
    return-void
.end method

.method public static handleSpeakerChanged(Landroid/content/Context;IZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid"    # I
    .param p2, "speakeron"    # Z

    .prologue
    .line 744
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 745
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "type"

    sget-object v2, Landroid/media/AudioStatusHandler$Type;->SPEAKER:Landroid/media/AudioStatusHandler$Type;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 746
    const-string/jumbo v1, "pid"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 747
    const-string/jumbo v2, "state"

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 748
    invoke-static {p0, v0}, Landroid/media/AudioServiceInjector;->handleAudioStatusChanged(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 743
    return-void

    .line 747
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static handleZenModeChangedForMusic(Ljava/lang/Object;Landroid/content/Context;IIII[I)V
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preZenMode"    # I
    .param p3, "zenmode"    # I
    .param p4, "maxIndexSrc"    # I
    .param p5, "maxIndexDsts"    # I
    .param p6, "streamVolumeAlias"    # [I

    .prologue
    const/4 v1, 0x1

    .line 295
    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v0, :cond_0

    if-ne p3, p2, :cond_1

    .line 296
    :cond_0
    return-void

    .line 295
    :cond_1
    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    if-ne p3, v1, :cond_3

    .line 300
    invoke-static {p0, p1, p4, p5, p6}, Landroid/media/AudioServiceInjector;->saveAllDevicesMusicVolume(Ljava/lang/Object;Landroid/content/Context;II[I)V

    .line 304
    :cond_2
    :goto_0
    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "on change zenmode from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return-void

    .line 301
    :cond_3
    if-ne p2, v1, :cond_2

    .line 302
    invoke-static {p0, p1, p4, p5, p6}, Landroid/media/AudioServiceInjector;->restoreAllDevicesMusicVolume(Ljava/lang/Object;Landroid/content/Context;II[I)V

    goto :goto_0
.end method

.method public static handleZenModeVolumeChanged(Landroid/content/Context;III)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "streamType"    # I
    .param p2, "device"    # I
    .param p3, "index"    # I

    .prologue
    .line 270
    sget-boolean v4, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v4, :cond_0

    .line 271
    const/4 v4, 0x3

    if-eq p1, v4, :cond_1

    .line 274
    :cond_0
    return-void

    .line 272
    :cond_1
    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 273
    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v4

    .line 270
    if-nez v4, :cond_0

    .line 277
    const-string/jumbo v2, "volume_music_before_mute"

    .line 278
    .local v2, "nameForMute":Ljava/lang/String;
    invoke-static {p2}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v3

    .line 279
    .local v3, "suffix":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 281
    return-void

    .line 283
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 284
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 286
    .local v0, "identity":J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 288
    add-int/lit8 v5, p3, 0x5

    div-int/lit8 v5, v5, 0xa

    .line 289
    const/4 v6, -0x2

    .line 285
    invoke-static {v4, v2, v5, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 290
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 269
    return-void
.end method

.method public static isActiveForReal(ZI)Z
    .locals 2
    .param p0, "orgActiveForReal"    # Z
    .param p1, "maybeActiveStreamType"    # I

    .prologue
    const/4 v1, 0x0

    .line 674
    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    return p0

    .line 678
    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 679
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 680
    :cond_1
    invoke-static {p1, v1}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v0

    return v0

    .line 682
    :cond_2
    invoke-static {p1, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    return v0
.end method

.method public static isOnlyAdjustVolume(I)Z
    .locals 2
    .param p0, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 188
    const/high16 v1, 0x100000

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isOnlyAdjustVolume(III)Z
    .locals 3
    .param p0, "flags"    # I
    .param p1, "stream"    # I
    .param p2, "mode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 197
    const/high16 v2, 0x100000

    and-int/2addr v2, p0

    if-nez v2, :cond_1

    .line 198
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 197
    :cond_1
    return v0
.end method

.method public static isPackageProtectedWhenUserBackground(ILandroid/content/pm/PackageInfo;)Z
    .locals 1
    .param p0, "userId"    # I
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 232
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, p0}, Lmiui/process/ProcessManager;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isXOptMode()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 192
    const-string/jumbo v3, "persist.sys.miui_optimization"

    const-string/jumbo v0, "1"

    .line 193
    const-string/jumbo v4, "ro.miui.cts"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 192
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static needEnableVoiceVolumeBoost(IZIIZ)Z
    .locals 5
    .param p0, "direction"    # I
    .param p1, "isMaxVol"    # Z
    .param p2, "device"    # I
    .param p3, "streamTypeAlias"    # I
    .param p4, "boostEnabled"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 695
    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 696
    if-eqz p3, :cond_1

    .line 699
    :cond_0
    return v4

    .line 697
    :cond_1
    if-ne p2, v3, :cond_0

    .line 698
    const-string/jumbo v0, "manual"

    const-string/jumbo v1, "ro.vendor.audio.voice.volume.boost"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "direction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " isMaxVol:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 702
    const-string/jumbo v2, " device:"

    .line 701
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 702
    const-string/jumbo v2, " streamTypeAlias:"

    .line 701
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 702
    const-string/jumbo v2, " boostEnabled:"

    .line 701
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    if-ne p0, v3, :cond_2

    if-eqz p1, :cond_2

    .line 705
    if-eqz p4, :cond_3

    .line 708
    :cond_2
    const/4 v0, -0x1

    if-ne p0, v0, :cond_4

    if-eqz p4, :cond_4

    .line 710
    return v3

    .line 706
    :cond_3
    return v3

    .line 712
    :cond_4
    return v4
.end method

.method private static onSetStreamVolumeIntAlt(Ljava/lang/Object;IIII[ILandroid/content/Context;)V
    .locals 16
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I
    .param p4, "maxIndex"    # I
    .param p5, "streamVolumeAlias"    # [I
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    :try_start_0
    invoke-static/range {p6 .. p6}, Lmiui/util/AudioManagerHelper;->isHiFiMode(Landroid/content/Context;)Z

    move-result v7

    .line 122
    .local v7, "isHiFiMode":Z
    const/4 v2, 0x0

    .line 123
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 124
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x0

    .line 125
    .local v8, "method":Ljava/lang/reflect/Method;
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x17

    if-lt v12, v13, :cond_3

    .line 126
    if-eqz v2, :cond_0

    .line 127
    const-string/jumbo v12, "setStreamVolumeInt"

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Class;

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x0

    aput-object v14, v13, v15

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x1

    aput-object v14, v13, v15

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x2

    aput-object v14, v13, v15

    .line 128
    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x3

    aput-object v14, v13, v15

    const-class v14, Ljava/lang/String;

    const/4 v15, 0x4

    aput-object v14, v13, v15

    .line 127
    invoke-virtual {v2, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 136
    .end local v8    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    const/4 v12, 0x3

    move/from16 v0, p1

    if-ne v12, v0, :cond_5

    if-eqz v7, :cond_5

    move/from16 v0, p2

    move/from16 v1, p4

    if-lt v0, v1, :cond_5

    .line 137
    move/from16 v9, p4

    .line 138
    .local v9, "rawStreamMaxIndex":I
    if-eqz v8, :cond_1

    .line 139
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 140
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x17

    if-lt v12, v13, :cond_4

    .line 141
    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    aget v13, p5, p1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v12, v14

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v12, v14

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x3

    aput-object v13, v12, v14

    const-string/jumbo v13, "AudioService"

    const/4 v14, 0x4

    aput-object v13, v12, v14

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_1
    :goto_1
    add-int/lit8 v12, p4, 0x5

    div-int/lit8 v10, v12, 0xa

    .line 147
    .local v10, "streamMaxIndex":I
    sget v12, Landroid/media/AudioServiceInjector;->mOriginalIndexWhenSetStreamVolume:I

    sub-int/2addr v12, v10

    mul-int/lit8 v12, v12, 0xa

    move-object/from16 v0, p6

    invoke-static {v0, v12}, Lmiui/util/AudioManagerHelper;->setHiFiVolume(Landroid/content/Context;I)V

    .line 119
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "isHiFiMode":Z
    .end local v9    # "rawStreamMaxIndex":I
    .end local v10    # "streamMaxIndex":I
    :cond_2
    :goto_2
    return-void

    .line 131
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "isHiFiMode":Z
    .restart local v8    # "method":Ljava/lang/reflect/Method;
    :cond_3
    if-eqz v2, :cond_0

    .line 132
    const-string/jumbo v12, "setStreamVolumeInt"

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Class;

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x0

    aput-object v14, v13, v15

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x1

    aput-object v14, v13, v15

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x2

    aput-object v14, v13, v15

    .line 133
    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x3

    aput-object v14, v13, v15

    .line 132
    invoke-virtual {v2, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .local v8, "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 143
    .end local v8    # "method":Ljava/lang/reflect/Method;
    .restart local v9    # "rawStreamMaxIndex":I
    :cond_4
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    aget v13, p5, p1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v12, v14

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v12, v14

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x3

    aput-object v13, v12, v14

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 159
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "isHiFiMode":Z
    .end local v9    # "rawStreamMaxIndex":I
    :catch_0
    move-exception v5

    .line 160
    .local v5, "e":Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 149
    .end local v5    # "e":Ljava/lang/UnsupportedOperationException;
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "isHiFiMode":Z
    :cond_5
    if-eqz v8, :cond_2

    .line 150
    const/4 v12, 0x1

    :try_start_1
    invoke-virtual {v8, v12}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 151
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x17

    if-lt v12, v13, :cond_6

    .line 152
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Pid:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " Uid:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 153
    .local v11, "tag":Ljava/lang/String;
    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    aget v13, p5, p1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v12, v14

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v12, v14

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x3

    aput-object v13, v12, v14

    const/4 v13, 0x4

    aput-object v11, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_2

    .line 161
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "isHiFiMode":Z
    .end local v11    # "tag":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 162
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 155
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "isHiFiMode":Z
    :cond_6
    const/4 v12, 0x4

    :try_start_2
    new-array v12, v12, [Ljava/lang/Object;

    aget v13, p5, p1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v12, v14

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v12, v14

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x3

    aput-object v13, v12, v14

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_2

    .line 163
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "isHiFiMode":Z
    :catch_2
    move-exception v3

    .line 164
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 165
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v6

    .line 166
    .local v6, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2
.end method

.method private static playRandomSound(I)Z
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 570
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 571
    sget-object v0, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    aget-boolean v0, v0, p0

    return v0

    .line 573
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static restoreAllDevicesMusicVolume(Ljava/lang/Object;Landroid/content/Context;II[I)V
    .locals 11
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxIndexSrc"    # I
    .param p3, "maxIndexDst"    # I
    .param p4, "streamVolumeAlias"    # [I

    .prologue
    const/4 v10, -0x2

    .line 345
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 346
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const v5, 0x3ffffff

    .line 347
    .local v5, "remainingDevices":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-eqz v5, :cond_3

    .line 348
    const-string/jumbo v3, "volume_music"

    .line 349
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v4, "volume_music_before_mute"

    .line 351
    .local v4, "nameForMute":Ljava/lang/String;
    const/4 v8, 0x1

    shl-int v1, v8, v2

    .line 352
    .local v1, "device":I
    and-int v8, v1, v5

    if-nez v8, :cond_1

    .line 347
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 355
    :cond_1
    not-int v8, v1

    and-int/2addr v5, v8

    .line 358
    invoke-static {v1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v6

    .line 359
    .local v6, "suffix":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 360
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 361
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 365
    :cond_2
    const/16 v8, 0xa

    .line 364
    invoke-static {v0, v4, v8, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    .line 366
    .local v7, "volume":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 368
    invoke-static {v0, v3, v7, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    .line 377
    .end local v1    # "device":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "nameForMute":Ljava/lang/String;
    .end local v6    # "suffix":Ljava/lang/String;
    .end local v7    # "volume":I
    :cond_3
    invoke-static {p0}, Landroid/media/AudioServiceInjector;->updateMusicStreamVolume(Ljava/lang/Object;)V

    .line 344
    return-void
.end method

.method private static saveAllDevicesMusicVolume(Ljava/lang/Object;Landroid/content/Context;II[I)V
    .locals 14
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxIndexSrc"    # I
    .param p3, "maxIndexDst"    # I
    .param p4, "streamVolumeAlias"    # [I

    .prologue
    .line 309
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 310
    .local v7, "contentResolver":Landroid/content/ContentResolver;
    const v11, 0x3ffffff

    .line 311
    .local v11, "remainingDevices":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-eqz v11, :cond_3

    .line 312
    const-string/jumbo v9, "volume_music"

    .line 313
    .local v9, "name":Ljava/lang/String;
    const-string/jumbo v10, "volume_music_before_mute"

    .line 314
    .local v10, "nameForMute":Ljava/lang/String;
    const/4 v0, 0x1

    shl-int v3, v0, v8

    .line 315
    .local v3, "device":I
    and-int v0, v3, v11

    if-nez v0, :cond_1

    .line 311
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 318
    :cond_1
    not-int v0, v3

    and-int/2addr v11, v0

    .line 321
    invoke-static {v3}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v12

    .line 322
    .local v12, "suffix":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 328
    :cond_2
    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 327
    invoke-static {v7, v9, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    .line 330
    .local v13, "volume":I
    const/4 v1, 0x3

    .line 331
    const/4 v2, 0x0

    move-object v0, p0

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, p1

    .line 330
    invoke-static/range {v0 .. v6}, Landroid/media/AudioServiceInjector;->onSetStreamVolumeIntAlt(Ljava/lang/Object;IIII[ILandroid/content/Context;)V

    .line 333
    const/4 v0, -0x1

    if-eq v13, v0, :cond_0

    .line 338
    const/4 v0, -0x2

    .line 334
    invoke-static {v7, v10, v13, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    .line 308
    .end local v3    # "device":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "nameForMute":Ljava/lang/String;
    .end local v12    # "suffix":Ljava/lang/String;
    .end local v13    # "volume":I
    :cond_3
    return-void
.end method

.method public static sendVolumeBoostBroadcast(ZLandroid/content/Context;)V
    .locals 4
    .param p0, "boostEnabled"    # Z
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 725
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 727
    .local v0, "ident":J
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "miui.intent.action.VOLUME_BOOST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 728
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "volume_boost_state"

    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 729
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 724
    return-void

    .line 730
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    .line 731
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 730
    throw v3
.end method

.method public static setStreamVolumeIntAlt(Ljava/lang/Object;IIII[ILandroid/content/Context;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I
    .param p4, "maxIndex"    # I
    .param p5, "streamVolumeAlias"    # [I
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    aget v0, p5, p1

    invoke-static {p6, v0, p3, p2}, Landroid/media/AudioServiceInjector;->handleZenModeVolumeChanged(Landroid/content/Context;III)V

    .line 115
    invoke-static/range {p0 .. p6}, Landroid/media/AudioServiceInjector;->onSetStreamVolumeIntAlt(Ljava/lang/Object;IIII[ILandroid/content/Context;)V

    .line 113
    return-void
.end method

.method public static setVolumeBoost(ZLandroid/content/Context;)Z
    .locals 7
    .param p0, "boostEnabled"    # Z
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 716
    const-string/jumbo v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 717
    .local v0, "am":Landroid/media/AudioManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "voice_volume_boost="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p0, :cond_0

    const-string/jumbo v2, "false"

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 718
    .local v1, "params":Ljava/lang/String;
    const-string/jumbo v2, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "params:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 720
    if-eqz p0, :cond_1

    move v2, v3

    :goto_1
    invoke-static {v2, p1}, Landroid/media/AudioServiceInjector;->sendVolumeBoostBroadcast(ZLandroid/content/Context;)V

    .line 721
    if-eqz p0, :cond_2

    :goto_2
    return v3

    .line 717
    .end local v1    # "params":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "true"

    goto :goto_0

    .restart local v1    # "params":Ljava/lang/String;
    :cond_1
    move v2, v4

    .line 720
    goto :goto_1

    :cond_2
    move v3, v4

    .line 721
    goto :goto_2
.end method

.method public static shouldAdjustHiFiVolume(IIIILandroid/content/Context;)Z
    .locals 7
    .param p0, "streamType"    # I
    .param p1, "direction"    # I
    .param p2, "streamIndex"    # I
    .param p3, "maxIndex"    # I
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 91
    const/4 v5, 0x3

    if-ne p0, v5, :cond_0

    invoke-static {p4}, Lmiui/util/AudioManagerHelper;->isHiFiMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 95
    invoke-static {p4}, Lmiui/util/AudioManagerHelper;->getHiFiVolume(Landroid/content/Context;)I

    move-result v2

    .line 96
    .local v2, "currentHiFiVolume":I
    move v3, p3

    .line 97
    .local v3, "maxStreamIndex":I
    const/4 v5, -0x1

    if-ne p1, v5, :cond_1

    if-lez v2, :cond_1

    const/4 v0, 0x1

    .line 98
    .local v0, "adjustDownHiFiVolume":Z
    :goto_0
    if-ne p1, v4, :cond_2

    if-ne p2, p3, :cond_2

    const/4 v1, 0x1

    .line 99
    .local v1, "adjustUpHiFiVolume":Z
    :goto_1
    if-nez v0, :cond_3

    .end local v1    # "adjustUpHiFiVolume":Z
    :goto_2
    return v1

    .line 92
    .end local v0    # "adjustDownHiFiVolume":Z
    .end local v2    # "currentHiFiVolume":I
    .end local v3    # "maxStreamIndex":I
    :cond_0
    return v6

    .line 97
    .restart local v2    # "currentHiFiVolume":I
    .restart local v3    # "maxStreamIndex":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "adjustDownHiFiVolume":Z
    goto :goto_0

    .line 98
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "adjustUpHiFiVolume":Z
    goto :goto_1

    :cond_3
    move v1, v4

    .line 99
    goto :goto_2
.end method

.method private static updateMusicStreamVolume(Ljava/lang/Object;)V
    .locals 8
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 382
    const/4 v0, 0x0

    .line 383
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 384
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v6, "reloadMusicVolume"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 385
    .local v5, "method":Ljava/lang/reflect/Method;
    if-eqz v5, :cond_0

    .line 386
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 387
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 395
    :catch_0
    move-exception v4

    .line 396
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 393
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .line 394
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 391
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 392
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 389
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v3

    .line 390
    .local v3, "e":Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateNotificationMode(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 405
    const/4 v4, 0x1

    .line 406
    .local v4, "randomSound":Z
    const/4 v5, 0x0

    .line 407
    .local v5, "uri":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 408
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .end local v4    # "randomSound":Z
    .end local v5    # "uri":Ljava/lang/String;
    .local v2, "index":I
    :goto_0
    sget-object v6, Landroid/media/AudioServiceInjector;->mContentResolverTypes:[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_1

    .line 409
    sget-object v6, Landroid/media/AudioServiceInjector;->mContentResolverTypes:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-static {v0, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 410
    .local v5, "uri":Ljava/lang/String;
    const-string/jumbo v6, "file:///system/media/audio/ui/notice_audition.ogg"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 411
    .local v4, "randomSound":Z
    sget-object v6, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    aget-boolean v6, v6, v2

    if-eq v4, v6, :cond_0

    .line 412
    sget-object v6, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    aput-boolean v4, v6, v2

    .line 413
    sput v7, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    .line 408
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 418
    .end local v4    # "randomSound":Z
    .end local v5    # "uri":Ljava/lang/String;
    :cond_1
    const/4 v3, -0x1

    .line 419
    .local v3, "parameter":I
    const/4 v2, 0x0

    :goto_1
    :try_start_0
    sget-object v6, Landroid/media/AudioServiceInjector;->mContentResolverParameters:[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_3

    .line 421
    sget-object v6, Landroid/media/AudioServiceInjector;->mContentResolverParameters:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    const/4 v8, 0x0

    .line 420
    invoke-static {v0, v6, v8, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 422
    if-eqz v3, :cond_2

    sget-object v6, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aget v6, v6, v2

    if-eq v3, v6, :cond_2

    .line 423
    sget-object v6, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aput v3, v6, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 426
    :catch_0
    move-exception v1

    .line 427
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Cannot get random notification settings provider value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const-string/jumbo v6, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateNotificationMode():\n mRandomSound[]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 431
    const-string/jumbo v8, "\n mTimeAndSoundNumParameters[]="

    .line 430
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 431
    sget-object v8, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    .line 430
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return-void
.end method

.method public static updateRestriction(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 236
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->updateRestriction(Landroid/content/Context;)V

    .line 235
    return-void
.end method

.method private static wasStreamActiveRecently(II)Z
    .locals 1
    .param p0, "stream"    # I
    .param p1, "delay_ms"    # I

    .prologue
    .line 584
    invoke-static {p0, p1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 585
    invoke-static {p0, p1}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    .line 584
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
