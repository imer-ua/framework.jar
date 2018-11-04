.class public Landroid/os/statistics/InputEventSuperviser$SingleInputEvent;
.super Landroid/os/statistics/MicroscopicEvent;
.source "InputEventSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/InputEventSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleInputEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/InputEventSuperviser$SingleInputEvent$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/statistics/MicroscopicEvent",
        "<",
        "Landroid/os/statistics/InputEventSuperviser$InputEventFields;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/statistics/InputEventSuperviser$SingleInputEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_INPUT_CHANNEL:Ljava/lang/String; = "inputChannel"

.field private static final FIELD_INPUT_EVENT_DESCRIPTION:Ljava/lang/String; = "inputEventDescription"

.field private static final FIELD_INPUT_EVENT_SEQUENCE_NUMBER:Ljava/lang/String; = "inputEventSequenceNumber"

.field private static final FIELD_INPUT_EVENT_STAGE:Ljava/lang/String; = "inputEventStage"

.field private static final FIELD_INPUT_EVENT_TIME:Ljava/lang/String; = "inputEventTime"

.field private static final FIELD_TARGET_RECEIVER:Ljava/lang/String; = "targetReceiver"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 206
    new-instance v0, Landroid/os/statistics/InputEventSuperviser$SingleInputEvent$1;

    invoke-direct {v0}, Landroid/os/statistics/InputEventSuperviser$SingleInputEvent$1;-><init>()V

    .line 205
    sput-object v0, Landroid/os/statistics/InputEventSuperviser$SingleInputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;

    invoke-direct {v0}, Landroid/os/statistics/InputEventSuperviser$InputEventFields;-><init>()V

    const/16 v1, 0x9

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MicroscopicEvent;-><init>(ILandroid/os/statistics/MicroscopicEvent$MicroEventFields;)V

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/statistics/MicroscopicEvent;->eventFlags:I

    .line 37
    return-void
.end method

.method private static compactChannel(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "inputChannelName"    # Ljava/lang/String;

    .prologue
    .line 189
    :try_start_0
    const-string/jumbo v2, "uninitialized"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    const-string/jumbo v2, "uninitialized"

    return-object v2

    .line 193
    :cond_0
    const-string/jumbo v2, " "

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "splitResult":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    .line 195
    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    aget-object v2, v1, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 197
    :cond_1
    return-object p0

    .line 200
    .end local v1    # "splitResult":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v2, "null"

    return-object v2
.end method


# virtual methods
.method fillIn(Landroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)V
    .locals 4
    .param p1, "dataParcel"    # Landroid/os/statistics/JniParcel;
    .param p2, "javaBackTrace"    # Ljava/lang/Object;
    .param p3, "nativeBackTrace"    # Landroid/os/statistics/NativeBackTrace;

    .prologue
    .line 129
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;

    .line 130
    .local v0, "details":Landroid/os/statistics/InputEventSuperviser$InputEventFields;
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, p0, Landroid/os/statistics/MicroscopicEvent;->threadId:I

    .line 131
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->threadName:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    .line 133
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    .line 134
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v1

    iput v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPolicy:I

    .line 135
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPriority:I

    .line 136
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedGroup:I

    .line 137
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->runningTimeMs:J

    .line 138
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->runnableTimeMs:J

    .line 139
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->sleepingTimeMs:J

    .line 140
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->endRealTimeMs:J

    .line 142
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventStage:I

    .line 143
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventSequenceNumber:I

    .line 144
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventTime:J

    .line 146
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventType:I

    .line 147
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventAction:I

    .line 148
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventCode:I

    .line 149
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputEventReceiver;

    iput-object v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->targetReceiver:Landroid/view/InputEventReceiver;

    .line 150
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputChannel;

    iput-object v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputChannel:Landroid/view/InputChannel;

    .line 128
    return-void
.end method

.method public hasMultiplePeerBlockingEvents()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public hasPeerBlockingEvent()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockedBy(Landroid/os/statistics/MicroscopicEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/os/statistics/MicroscopicEvent;

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockedBySameProcess()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockingMultiplePeer()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockingSameProcess()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public isPeerBlockingEvent()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public isRootEvent()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public isUserPerceptible()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 96
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 97
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;

    .line 98
    .local v0, "details":Landroid/os/statistics/InputEventSuperviser$InputEventFields;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventStage:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventSequenceNumber:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventTime:J

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventDescription:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputChannelName:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->targetReceiverName:Ljava/lang/String;

    .line 105
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventType:I

    .line 106
    iput v4, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventAction:I

    .line 107
    iput v4, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventCode:I

    .line 108
    iput-object v5, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->targetReceiver:Landroid/view/InputEventReceiver;

    .line 109
    iput-object v5, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputChannel:Landroid/view/InputChannel;

    .line 95
    return-void
.end method

.method resolveLazyInfo()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 155
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->isLazyInfoResolved()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    return-void

    .line 159
    :cond_0
    invoke-super {p0}, Landroid/os/statistics/MicroscopicEvent;->resolveLazyInfo()V

    .line 160
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;

    .line 161
    .local v0, "details":Landroid/os/statistics/InputEventSuperviser$InputEventFields;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .local v1, "msg":Ljava/lang/StringBuilder;
    iget v2, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventType:I

    if-nez v2, :cond_1

    .line 163
    const-string/jumbo v2, "KeyEvent { action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventAction:I

    invoke-static {v3}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string/jumbo v2, ", keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventCode:I

    invoke-static {v3}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const-string/jumbo v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventDescription:Ljava/lang/String;

    .line 172
    iget-object v2, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->targetReceiver:Landroid/view/InputEventReceiver;

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->targetReceiver:Landroid/view/InputEventReceiver;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->targetReceiverName:Ljava/lang/String;

    .line 173
    iget-object v2, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputChannel:Landroid/view/InputChannel;

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputChannel:Landroid/view/InputChannel;

    invoke-virtual {v2}, Landroid/view/InputChannel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/statistics/InputEventSuperviser$SingleInputEvent;->compactChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    iput-object v2, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputChannelName:Ljava/lang/String;

    .line 175
    const/4 v2, -0x1

    iput v2, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventType:I

    .line 176
    iput v5, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventAction:I

    .line 177
    iput v5, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventCode:I

    .line 178
    iput-object v4, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->targetReceiver:Landroid/view/InputEventReceiver;

    .line 179
    iput-object v4, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputChannel:Landroid/view/InputChannel;

    .line 154
    return-void

    .line 167
    :cond_1
    const-string/jumbo v2, "MotionEvent { action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventAction:I

    invoke-static {v3}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string/jumbo v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 172
    :cond_2
    const-string/jumbo v2, ""

    goto :goto_1

    .line 173
    :cond_3
    const-string/jumbo v2, ""

    goto :goto_2
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent;->writeToJson(Lorg/json/JSONObject;)V

    .line 116
    :try_start_0
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;

    .line 117
    .local v0, "details":Landroid/os/statistics/InputEventSuperviser$InputEventFields;
    const-string/jumbo v2, "inputEventStage"

    iget v3, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventStage:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 118
    const-string/jumbo v2, "inputEventSequenceNumber"

    iget v3, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventSequenceNumber:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 119
    const-string/jumbo v2, "inputEventTime"

    iget-wide v4, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventTime:J

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 120
    const-string/jumbo v2, "inputEventDescription"

    iget-object v3, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventDescription:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const-string/jumbo v2, "inputChannel"

    iget-object v3, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputChannelName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string/jumbo v2, "targetReceiver"

    iget-object v3, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->targetReceiverName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v0    # "details":Landroid/os/statistics/InputEventSuperviser$InputEventFields;
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v1

    .local v1, "ex":Lorg/json/JSONException;
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Landroid/os/statistics/MicroscopicEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 85
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;

    .line 86
    .local v0, "details":Landroid/os/statistics/InputEventSuperviser$InputEventFields;
    iget v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventStage:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventSequenceNumber:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-wide v2, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 89
    iget-object v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputEventDescription:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->inputChannelName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v1, v0, Landroid/os/statistics/InputEventSuperviser$InputEventFields;->targetReceiverName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    return-void
.end method
