.class public Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;
.super Landroid/os/statistics/MicroscopicEvent;
.source "LooperMessageSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/LooperMessageSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleLooperMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/statistics/MicroscopicEvent",
        "<",
        "Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTIVITY_CONFIGURATION_CHANGED:I = 0x7d

.field private static final APPLICATION_OPERATION_MESSAGE_CODES:[I

.field private static final BIND_APPLICATION:I = 0x6e

.field private static final CONFIGURATION_CHANGED:I = 0x76

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_MESSAGE_NAME:Ljava/lang/String; = "messageName"

.field private static final FIELD_PLAN_UPTIME:Ljava/lang/String; = "planTime"

.field private static final HIDE_WINDOW:I = 0x6a

.field private static final LAUNCH_ACTIVITY:I = 0x64

.field private static final MULTI_WINDOW_MODE_CHANGED:I = 0x98

.field private static final NEW_INTENT:I = 0x70

.field private static final PAUSE_ACTIVITY:I = 0x65

.field private static final PAUSE_ACTIVITY_FINISHING:I = 0x66

.field private static final PICTURE_IN_PICTURE_MODE_CHANGED:I = 0x99

.field private static final RELAUNCH_ACTIVITY:I = 0x7e

.field private static final RESUME_ACTIVITY:I = 0x6b

.field private static final SEND_RESULT:I = 0x6c

.field private static final SHOW_WINDOW:I = 0x69

.field private static final STOP_ACTIVITY_HIDE:I = 0x68

.field private static final STOP_ACTIVITY_SHOW:I = 0x67

.field private static final WINDOW_OPERATION_MESSAGE_CODES:[I

.field private static activityThreadHandler:Landroid/os/Handler;

.field private static frameDisplayMessageCallbackClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static frameDisplayMessageTargetClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static isFrameDisplayMessageClassLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 189
    new-instance v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage$1;

    invoke-direct {v0}, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage$1;-><init>()V

    .line 188
    sput-object v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 221
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->WINDOW_OPERATION_MESSAGE_CODES:[I

    .line 240
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 241
    const/16 v1, 0x6e

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 240
    sput-object v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->APPLICATION_OPERATION_MESSAGE_CODES:[I

    .line 29
    return-void

    .line 221
    nop

    :array_0
    .array-data 4
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0x70
        0x76
        0x7d
        0x7e
        0x98
        0x99
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;

    invoke-direct {v0}, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;-><init>()V

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MicroscopicEvent;-><init>(ILandroid/os/statistics/MicroscopicEvent$MicroEventFields;)V

    .line 33
    return-void
.end method

.method private static isActivityThreadMessage(Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;)Z
    .locals 3
    .param p0, "singleLooperMessage"    # Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;

    .prologue
    const/4 v1, 0x0

    .line 246
    sget-object v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->activityThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 247
    invoke-static {}, Landroid/app/ActivityThreadInjector;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->activityThreadHandler:Landroid/os/Handler;

    .line 249
    :cond_0
    sget-object v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->activityThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 250
    sget-object v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->activityThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;

    iget-object v0, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageTargetClazz:Ljava/lang/Class;

    if-ne v2, v0, :cond_2

    .line 251
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;

    iget-object v0, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageCallbackClazz:Ljava/lang/Class;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 249
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 251
    goto :goto_0

    :cond_2
    move v0, v1

    .line 249
    goto :goto_0
.end method

.method private static isApplicationOperationMessage(Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;)Z
    .locals 3
    .param p0, "singleLooperMessage"    # Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;

    .prologue
    const/4 v1, 0x0

    .line 259
    sget-object v2, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->APPLICATION_OPERATION_MESSAGE_CODES:[I

    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;

    iget v0, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageWhat:I

    invoke-static {v2, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static isFrameDisplayMessage(Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;)Z
    .locals 6
    .param p0, "singleLooperMessage"    # Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 266
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;

    .line 267
    .local v0, "details":Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;
    iget-object v4, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageTargetClazz:Ljava/lang/Class;

    if-eqz v4, :cond_0

    .line 268
    iget-object v4, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageCallbackClazz:Ljava/lang/Class;

    if-nez v4, :cond_1

    .line 269
    :cond_0
    return v2

    .line 271
    :cond_1
    sget-boolean v4, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->isFrameDisplayMessageClassLoaded:Z

    if-nez v4, :cond_2

    .line 273
    :try_start_0
    const-string/jumbo v4, "android.view.Choreographer$FrameDisplayEventReceiver"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->frameDisplayMessageCallbackClass:Ljava/lang/Class;

    .line 274
    const-string/jumbo v4, "android.view.Choreographer$FrameHandler"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->frameDisplayMessageTargetClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :goto_0
    sput-boolean v3, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->isFrameDisplayMessageClassLoaded:Z

    .line 281
    :cond_2
    iget-object v4, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageCallbackClazz:Ljava/lang/Class;

    sget-object v5, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->frameDisplayMessageCallbackClass:Ljava/lang/Class;

    if-ne v4, v5, :cond_3

    .line 282
    iget-object v4, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageTargetClazz:Ljava/lang/Class;

    sget-object v5, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->frameDisplayMessageTargetClass:Ljava/lang/Class;

    if-ne v4, v5, :cond_3

    move v2, v3

    .line 281
    :cond_3
    return v2

    .line 275
    :catch_0
    move-exception v1

    .line 276
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 277
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 278
    sput-boolean v3, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->isFrameDisplayMessageClassLoaded:Z

    .line 277
    throw v2
.end method

.method private static isWindowOperationMessage(Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;)Z
    .locals 3
    .param p0, "singleLooperMessage"    # Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;

    .prologue
    const/4 v1, 0x0

    .line 255
    sget-object v2, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->WINDOW_OPERATION_MESSAGE_CODES:[I

    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;

    iget v0, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageWhat:I

    invoke-static {v2, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method fillIn(Landroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)V
    .locals 4
    .param p1, "dataParcel"    # Landroid/os/statistics/JniParcel;
    .param p2, "javaBackTrace"    # Ljava/lang/Object;
    .param p3, "nativeBackTrace"    # Landroid/os/statistics/NativeBackTrace;

    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;

    .line 113
    .local v0, "details":Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, p0, Landroid/os/statistics/MicroscopicEvent;->threadId:I

    .line 114
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->threadName:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    .line 116
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    .line 117
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v1

    iput v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPolicy:I

    .line 118
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPriority:I

    .line 119
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedGroup:I

    .line 120
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->runningTimeMs:J

    .line 121
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->runnableTimeMs:J

    .line 122
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->sleepingTimeMs:J

    .line 123
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->endRealTimeMs:J

    .line 124
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageWhat:I

    .line 125
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->planUptimeMillis:J

    .line 126
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageName:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    iput-object v1, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageTargetClazz:Ljava/lang/Class;

    .line 128
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    iput-object v1, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageCallbackClazz:Ljava/lang/Class;

    .line 111
    return-void
.end method

.method public hasMultiplePeerBlockingEvents()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public hasPeerBlockingEvent()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockedBy(Landroid/os/statistics/MicroscopicEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/os/statistics/MicroscopicEvent;

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockedBySameProcess()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockingMultiplePeer()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockingSameProcess()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method isConcerned()Z
    .locals 14

    .prologue
    .line 133
    invoke-static {p0}, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->isActivityThreadMessage(Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;)Z

    move-result v0

    .line 134
    .local v0, "isActivityThreadMessage":Z
    const/4 v4, 0x0

    .line 135
    .local v4, "isWindowOperationMessage":Z
    const/4 v1, 0x0

    .line 136
    .local v1, "isApplicationOperationMessage":Z
    if-eqz v0, :cond_0

    .line 137
    invoke-static {p0}, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->isWindowOperationMessage(Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;)Z

    move-result v4

    .line 138
    .local v4, "isWindowOperationMessage":Z
    invoke-static {p0}, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->isApplicationOperationMessage(Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;)Z

    move-result v1

    .line 140
    .end local v1    # "isApplicationOperationMessage":Z
    .end local v4    # "isWindowOperationMessage":Z
    :cond_0
    invoke-static {p0}, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->isFrameDisplayMessage(Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;)Z

    move-result v2

    .line 141
    .local v2, "isFrameDisplayMessage":Z
    if-eqz v4, :cond_2

    const/4 v5, 0x0

    move v10, v5

    :goto_0
    if-eqz v1, :cond_3

    const/4 v5, 0x0

    :goto_1
    and-int/2addr v10, v5

    if-eqz v2, :cond_4

    const/4 v5, 0x0

    :goto_2
    and-int v3, v10, v5

    .line 142
    .local v3, "isPlainMessage":Z
    iget-wide v10, p0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    iget-wide v12, p0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    sub-long v6, v10, v12

    .line 143
    .local v6, "spentTimeMillis":J
    const-wide v8, 0x7fffffffffffffffL

    .line 144
    .local v8, "thresholdMillis":J
    if-eqz v3, :cond_5

    .line 145
    move-wide v8, v6

    .line 153
    :cond_1
    :goto_3
    cmp-long v5, v6, v8

    if-ltz v5, :cond_8

    const/4 v5, 0x1

    :goto_4
    return v5

    .line 141
    .end local v3    # "isPlainMessage":Z
    .end local v6    # "spentTimeMillis":J
    .end local v8    # "thresholdMillis":J
    :cond_2
    const/4 v5, 0x1

    move v10, v5

    goto :goto_0

    :cond_3
    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x1

    goto :goto_2

    .line 146
    .restart local v3    # "isPlainMessage":Z
    .restart local v6    # "spentTimeMillis":J
    .restart local v8    # "thresholdMillis":J
    :cond_5
    if-eqz v2, :cond_6

    .line 147
    sget v5, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    int-to-long v8, v5

    goto :goto_3

    .line 148
    :cond_6
    if-eqz v4, :cond_7

    .line 149
    const-wide/16 v8, 0x12c

    goto :goto_3

    .line 150
    :cond_7
    if-eqz v1, :cond_1

    .line 151
    const-wide/16 v8, 0x258

    goto :goto_3

    .line 153
    :cond_8
    const/4 v5, 0x0

    goto :goto_4
.end method

.method public isPeerBlockingEvent()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public isRootEvent()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    .line 87
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 88
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;

    .line 89
    .local v0, "details":Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "messageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .end local v1    # "messageName":Ljava/lang/String;
    :goto_0
    iput-object v1, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageName:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->planUptimeMillis:J

    .line 93
    const/4 v2, 0x0

    iput v2, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageWhat:I

    .line 94
    iput-object v4, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageTargetClazz:Ljava/lang/Class;

    .line 95
    iput-object v4, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageCallbackClazz:Ljava/lang/Class;

    .line 86
    return-void

    .line 90
    .restart local v1    # "messageName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method resolveLazyInfo()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 158
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->isLazyInfoResolved()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    return-void

    .line 162
    :cond_0
    invoke-super {p0}, Landroid/os/statistics/MicroscopicEvent;->resolveLazyInfo()V

    .line 163
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v1

    check-cast v1, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;

    .line 164
    .local v1, "details":Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;
    iget-object v2, v1, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageName:Ljava/lang/String;

    .line 165
    .local v2, "messageName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "{ "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget-object v3, v1, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageCallbackClazz:Ljava/lang/Class;

    if-eqz v3, :cond_3

    .line 169
    const-string/jumbo v3, "callback="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-object v3, v1, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageCallbackClazz:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :goto_0
    iget-object v3, v1, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageTargetClazz:Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 176
    const-string/jumbo v3, " target="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v3, v1, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageTargetClazz:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_1
    const-string/jumbo v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageName:Ljava/lang/String;

    .line 183
    .end local v0    # "b":Ljava/lang/StringBuilder;
    :cond_2
    const/4 v3, 0x0

    iput v3, v1, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageWhat:I

    .line 184
    iput-object v4, v1, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageTargetClazz:Ljava/lang/Class;

    .line 185
    iput-object v4, v1, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageCallbackClazz:Ljava/lang/Class;

    .line 157
    return-void

    .line 172
    .restart local v0    # "b":Ljava/lang/StringBuilder;
    :cond_3
    const-string/jumbo v3, "what="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget v3, v1, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageWhat:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent;->writeToJson(Lorg/json/JSONObject;)V

    .line 101
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;

    .line 103
    .local v0, "details":Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;
    :try_start_0
    const-string/jumbo v2, "messageName"

    iget-object v3, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string/jumbo v2, "planTime"

    iget-wide v4, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->planUptimeMillis:J

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Landroid/os/statistics/MicroscopicEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 80
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;

    .line 81
    .local v0, "details":Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;
    iget-object v1, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-wide v2, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->planUptimeMillis:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 78
    return-void
.end method
