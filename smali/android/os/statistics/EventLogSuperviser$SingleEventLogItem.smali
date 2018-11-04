.class public Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;
.super Landroid/os/statistics/MacroscopicEvent;
.source "EventLogSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/EventLogSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleEventLogItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/statistics/MacroscopicEvent",
        "<",
        "Landroid/os/statistics/EventLogSuperviser$EventLogFields;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_EVENT_LOG_TAG_ID:Ljava/lang/String; = "eventLogTagId"

.field private static final FIELD_EVENT_LOG_TAG_NAME:Ljava/lang/String; = "eventLogTagName"

.field private static final FIELD_EVENT_LOG_TIME:Ljava/lang/String; = "eventLogTime"

.field private static final FIELD_EVENT_LOG_VALUE_STRS:Ljava/lang/String; = "eventlogValues"


# instance fields
.field public currentTimeMillis:J

.field public eventLogTagId:I

.field public eventLogTagName:Ljava/lang/String;

.field public eventLogValueStrs:[Ljava/lang/String;

.field public launchEventTotalTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 235
    new-instance v0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem$1;

    invoke-direct {v0}, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem$1;-><init>()V

    .line 234
    sput-object v0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 102
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 115
    new-instance v0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;

    invoke-direct {v0}, Landroid/os/statistics/EventLogSuperviser$EventLogFields;-><init>()V

    const/high16 v1, 0x10000

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MacroscopicEvent;-><init>(ILandroid/os/statistics/PerfEvent$DetailFields;)V

    .line 114
    return-void
.end method


# virtual methods
.method fillIn(Landroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)V
    .locals 0
    .param p1, "dataParcel"    # Landroid/os/statistics/JniParcel;
    .param p2, "javaBackTrace"    # Ljava/lang/Object;
    .param p3, "nativeBackTrace"    # Landroid/os/statistics/NativeBackTrace;

    .prologue
    .line 163
    return-void
.end method

.method public getBeginUptimeMillis()J
    .locals 4

    .prologue
    .line 215
    iget v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagId:I

    const/16 v1, 0x7538

    if-ne v0, v1, :cond_0

    .line 216
    iget-wide v0, p0, Landroid/os/statistics/MacroscopicEvent;->occurUptimeMillis:J

    const-wide/32 v2, 0xea60

    sub-long/2addr v0, v2

    return-wide v0

    .line 217
    :cond_0
    iget v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagId:I

    const/16 v1, 0x7588

    if-ne v0, v1, :cond_1

    .line 218
    iget-wide v0, p0, Landroid/os/statistics/MacroscopicEvent;->occurUptimeMillis:J

    iget-wide v2, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->launchEventTotalTime:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 220
    :cond_1
    iget-wide v0, p0, Landroid/os/statistics/MacroscopicEvent;->occurUptimeMillis:J

    return-wide v0
.end method

.method public getEndUptimeMillis()J
    .locals 2

    .prologue
    .line 225
    iget-wide v0, p0, Landroid/os/statistics/MacroscopicEvent;->occurUptimeMillis:J

    return-wide v0
.end method

.method isConcerned()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 200
    iget v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagId:I

    const/16 v1, 0x7538

    if-ne v0, v1, :cond_0

    .line 201
    return v4

    .line 203
    :cond_0
    iget v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagId:I

    const/16 v1, 0x7588

    if-ne v0, v1, :cond_2

    .line 204
    iget-wide v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->launchEventTotalTime:J

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->launchEventTotalTime:J

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 205
    return v4

    .line 207
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 210
    :cond_2
    return v4
.end method

.method public isUserPerceptible()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 230
    iget v1, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagId:I

    const/16 v2, 0x7538

    if-eq v1, v2, :cond_0

    .line 231
    iget v1, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagId:I

    const/16 v2, 0x7588

    if-ne v1, v2, :cond_1

    .line 230
    :cond_0
    :goto_0
    return v0

    .line 231
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-super {p0, p1}, Landroid/os/statistics/MacroscopicEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->currentTimeMillis:J

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagId:I

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagName:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->launchEventTotalTime:J

    .line 135
    iget-object v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 136
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagName:Ljava/lang/String;

    .line 138
    :cond_0
    invoke-static {p1}, Landroid/os/statistics/ParcelUtils;->readStringArray(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogValueStrs:[Ljava/lang/String;

    .line 139
    iget-object v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogValueStrs:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 140
    invoke-static {}, Landroid/os/statistics/EventLogSuperviser;->-get0()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogValueStrs:[Ljava/lang/String;

    .line 143
    :cond_1
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;

    iput-object v2, v0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueObject:Ljava/lang/Object;

    .line 129
    return-void
.end method

.method resolveLazyInfo()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 168
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->isLazyInfoResolved()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    return-void

    .line 172
    :cond_0
    invoke-super {p0}, Landroid/os/statistics/MacroscopicEvent;->resolveLazyInfo()V

    .line 173
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;

    .line 174
    .local v0, "details":Landroid/os/statistics/EventLogSuperviser$EventLogFields;
    iget v3, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagId:I

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 175
    iget v3, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagId:I

    invoke-static {v3}, Landroid/util/EventLog;->getTagName(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagName:Ljava/lang/String;

    .line 176
    iget-object v3, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagName:Ljava/lang/String;

    .line 180
    :cond_1
    iget-object v3, v0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueObject:Ljava/lang/Object;

    if-eqz v3, :cond_4

    .line 181
    iget-object v3, v0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueObject:Ljava/lang/Object;

    instance-of v3, v3, [Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 182
    iget-object v2, v0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueObject:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 183
    .local v2, "objects":[Ljava/lang/Object;
    array-length v3, v2

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogValueStrs:[Ljava/lang/String;

    .line 184
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 185
    iget-object v3, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogValueStrs:[Ljava/lang/String;

    aget-object v4, v2, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    .end local v1    # "i":I
    .end local v2    # "objects":[Ljava/lang/Object;
    :cond_2
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogValueStrs:[Ljava/lang/String;

    .line 189
    iget-object v3, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogValueStrs:[Ljava/lang/String;

    iget-object v4, v0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueObject:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 195
    :cond_3
    :goto_1
    iput-object v6, v0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueObject:Ljava/lang/Object;

    .line 167
    return-void

    .line 192
    :cond_4
    invoke-static {}, Landroid/os/statistics/EventLogSuperviser;->-get0()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogValueStrs:[Ljava/lang/String;

    goto :goto_1
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/os/statistics/MacroscopicEvent;->writeToJson(Lorg/json/JSONObject;)V

    .line 150
    :try_start_0
    const-string/jumbo v2, "eventLogTime"

    iget-wide v4, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->currentTimeMillis:J

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 151
    const-string/jumbo v2, "eventLogTagId"

    iget v3, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagId:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 152
    const-string/jumbo v2, "eventLogTagName"

    iget-object v3, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    iget-object v2, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogValueStrs:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 154
    new-instance v0, Lorg/json/JSONArray;

    iget-object v2, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogValueStrs:[Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    .line 155
    .local v0, "arr":Lorg/json/JSONArray;
    const-string/jumbo v2, "eventlogValues"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v0    # "arr":Lorg/json/JSONArray;
    :cond_0
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 120
    invoke-super {p0, p1, p2}, Landroid/os/statistics/MacroscopicEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 121
    iget-wide v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->currentTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 122
    iget v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-wide v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->launchEventTotalTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 125
    iget-object v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogValueStrs:[Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/os/statistics/ParcelUtils;->writeStringArray(Landroid/os/Parcel;[Ljava/lang/String;)V

    .line 119
    return-void
.end method
