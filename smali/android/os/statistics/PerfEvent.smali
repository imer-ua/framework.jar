.class public abstract Landroid/os/statistics/PerfEvent;
.super Ljava/lang/Object;
.source "PerfEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/PerfEvent$DetailFields;,
        Landroid/os/statistics/PerfEvent$EndTimeComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/os/statistics/PerfEvent$DetailFields;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final FIELD_CURRENT_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final FIELD_CURRENT_PID:Ljava/lang/String; = "pid"

.field public static final FIELD_CURRENT_PROCESS_NAME:Ljava/lang/String; = "processName"

.field public static final FIELD_CURRENT_UID:Ljava/lang/String; = "uid"

.field public static final FIELD_EVENT_SEQ:Ljava/lang/String; = "seq"

.field public static final FIELD_EVENT_TYPE:Ljava/lang/String; = "eventType"

.field public static final FIELD_EVENT_TYPE_NAME:Ljava/lang/String; = "eventTypeName"

.field private static MY_UID:I = 0x0

.field public static final TYPE_UNKNOWN:I = -0x1

.field public static final endUptimeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/os/statistics/PerfEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static processNameFromCmdline:Ljava/lang/String;

.field private static volatile processNameFromCmdlineReady:Z


# instance fields
.field private details:Landroid/os/statistics/PerfEvent$DetailFields;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public eventSeq:J

.field public final eventType:I

.field private persistentId:J

.field public pid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 150
    const/4 v0, -0x1

    sput v0, Landroid/os/statistics/PerfEvent;->MY_UID:I

    .line 220
    new-instance v0, Landroid/os/statistics/PerfEvent$EndTimeComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/statistics/PerfEvent$EndTimeComparator;-><init>(Landroid/os/statistics/PerfEvent$EndTimeComparator;)V

    sput-object v0, Landroid/os/statistics/PerfEvent;->endUptimeComparator:Ljava/util/Comparator;

    .line 20
    return-void
.end method

.method constructor <init>(ILandroid/os/statistics/PerfEvent$DetailFields;)V
    .locals 0
    .param p1, "_eventType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Landroid/os/statistics/PerfEvent;, "Landroid/os/statistics/PerfEvent<TT;>;"
    .local p2, "_fields":Landroid/os/statistics/PerfEvent$DetailFields;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Landroid/os/statistics/PerfEvent;->eventType:I

    .line 40
    iput-object p2, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    .line 38
    return-void
.end method

.method public static getCurrentProcessName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 175
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "processName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 177
    sget-boolean v4, Landroid/os/statistics/PerfEvent;->processNameFromCmdlineReady:Z

    if-nez v4, :cond_1

    .line 178
    const/4 v2, 0x0

    .line 180
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    const-string/jumbo v6, "/proc/self/cmdline"

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Landroid/os/statistics/PerfEvent;->processNameFromCmdline:Ljava/lang/String;

    .line 182
    sget-object v4, Landroid/os/statistics/PerfEvent;->processNameFromCmdline:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 183
    sget-object v4, Landroid/os/statistics/PerfEvent;->processNameFromCmdline:Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Landroid/os/statistics/PerfEvent;->processNameFromCmdline:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 189
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    move-object v2, v3

    .line 193
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :goto_1
    sget-object v4, Landroid/os/statistics/PerfEvent;->processNameFromCmdline:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 194
    sget-object v4, Landroid/os/statistics/PerfEvent;->processNameFromCmdline:Ljava/lang/String;

    const-string/jumbo v5, "<"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 199
    :cond_1
    :goto_2
    sget-object v1, Landroid/os/statistics/PerfEvent;->processNameFromCmdline:Ljava/lang/String;

    .line 201
    :cond_2
    if-nez v1, :cond_3

    const-string/jumbo v1, ""

    .end local v1    # "processName":Ljava/lang/String;
    :cond_3
    return-object v1

    .line 190
    .restart local v1    # "processName":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_0

    .line 185
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 186
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "ex":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 190
    :catch_2
    move-exception v0

    goto :goto_1

    .line 187
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 189
    :goto_4
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 187
    :goto_5
    throw v4

    .line 190
    :catch_3
    move-exception v0

    .restart local v0    # "ex":Ljava/lang/Exception;
    goto :goto_5

    .line 195
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_4
    sget-object v4, Landroid/os/statistics/PerfEvent;->processNameFromCmdline:Ljava/lang/String;

    const-string/jumbo v5, "zygote"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 196
    const/4 v4, 0x1

    sput-boolean v4, Landroid/os/statistics/PerfEvent;->processNameFromCmdlineReady:Z

    goto :goto_2

    .line 187
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 185
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    .restart local v0    # "ex":Ljava/lang/Exception;
    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_3
.end method


# virtual methods
.method public clearDetailFields()V
    .locals 1

    .prologue
    .line 105
    .local p0, "this":Landroid/os/statistics/PerfEvent;, "Landroid/os/statistics/PerfEvent<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    .line 104
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Landroid/os/statistics/PerfEvent;, "Landroid/os/statistics/PerfEvent<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method final fillIn(JLandroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)V
    .locals 1
    .param p1, "eventSeq"    # J
    .param p3, "dataParcel"    # Landroid/os/statistics/JniParcel;
    .param p4, "javaBackTrace"    # Ljava/lang/Object;
    .param p5, "nativeBackTrace"    # Landroid/os/statistics/NativeBackTrace;

    .prologue
    .line 120
    .local p0, "this":Landroid/os/statistics/PerfEvent;, "Landroid/os/statistics/PerfEvent<TT;>;"
    iput-wide p1, p0, Landroid/os/statistics/PerfEvent;->eventSeq:J

    .line 121
    invoke-virtual {p0, p3, p4, p5}, Landroid/os/statistics/PerfEvent;->fillIn(Landroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)V

    .line 119
    return-void
.end method

.method abstract fillIn(Landroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)V
.end method

.method final fillInCurrentProcessId()V
    .locals 1

    .prologue
    .line 155
    .local p0, "this":Landroid/os/statistics/PerfEvent;, "Landroid/os/statistics/PerfEvent<TT;>;"
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->occursInCurrentProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    sget v0, Landroid/os/statistics/PerfSuperviser;->MY_PID:I

    iput v0, p0, Landroid/os/statistics/PerfEvent;->pid:I

    .line 154
    :cond_0
    return-void
.end method

.method final fillInCurrentProcessInfo()V
    .locals 3

    .prologue
    .line 161
    .local p0, "this":Landroid/os/statistics/PerfEvent;, "Landroid/os/statistics/PerfEvent<TT;>;"
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->occursInCurrentProcess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    return-void

    .line 164
    :cond_0
    sget v1, Landroid/os/statistics/PerfSuperviser;->MY_PID:I

    iput v1, p0, Landroid/os/statistics/PerfEvent;->pid:I

    .line 165
    sget v1, Landroid/os/statistics/PerfEvent;->MY_UID:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 166
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    sput v1, Landroid/os/statistics/PerfEvent;->MY_UID:I

    .line 168
    :cond_1
    iget-object v1, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    sget v2, Landroid/os/statistics/PerfEvent;->MY_UID:I

    iput v2, v1, Landroid/os/statistics/PerfEvent$DetailFields;->uid:I

    .line 169
    iget-object v1, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    invoke-static {}, Landroid/os/statistics/PerfEvent;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/os/statistics/PerfEvent$DetailFields;->processName:Ljava/lang/String;

    .line 170
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    if-eqz v0, :cond_2

    .end local v0    # "packageName":Ljava/lang/String;
    :goto_0
    iput-object v0, v1, Landroid/os/statistics/PerfEvent$DetailFields;->packageName:Ljava/lang/String;

    .line 160
    return-void

    .line 171
    .restart local v0    # "packageName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public abstract getBeginUptimeMillis()J
.end method

.method public getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Landroid/os/statistics/PerfEvent;, "Landroid/os/statistics/PerfEvent<TT;>;"
    iget-object v0, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    return-object v0
.end method

.method public abstract getEndUptimeMillis()J
.end method

.method public getPersistentId()J
    .locals 2

    .prologue
    .line 97
    .local p0, "this":Landroid/os/statistics/PerfEvent;, "Landroid/os/statistics/PerfEvent<TT;>;"
    iget-wide v0, p0, Landroid/os/statistics/PerfEvent;->persistentId:J

    return-wide v0
.end method

.method isConcerned()Z
    .locals 1

    .prologue
    .line 131
    .local p0, "this":Landroid/os/statistics/PerfEvent;, "Landroid/os/statistics/PerfEvent<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public final isLazyInfoResolved()Z
    .locals 1

    .prologue
    .line 109
    .local p0, "this":Landroid/os/statistics/PerfEvent;, "Landroid/os/statistics/PerfEvent<TT;>;"
    iget-object v0, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x1

    return v0

    .line 112
    :cond_0
    iget-object v0, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    iget-boolean v0, v0, Landroid/os/statistics/PerfEvent$DetailFields;->lazyInfoResolved:Z

    return v0
.end method

.method isMeaningful()Z
    .locals 1

    .prologue
    .line 142
    .local p0, "this":Landroid/os/statistics/PerfEvent;, "Landroid/os/statistics/PerfEvent<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isUserPerceptible()Z
    .locals 1

    .prologue
    .line 147
    .local p0, "this":Landroid/os/statistics/PerfEvent;, "Landroid/os/statistics/PerfEvent<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method occursInCurrentProcess()Z
    .locals 1

    .prologue
    .line 116
    .local p0, "this":Landroid/os/statistics/PerfEvent;, "Landroid/os/statistics/PerfEvent<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 62
    .local p0, "this":Landroid/os/statistics/PerfEvent;, "Landroid/os/statistics/PerfEvent<TT;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/PerfEvent;->eventSeq:J

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/statistics/PerfEvent;->pid:I

    .line 64
    iget-object v2, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/os/statistics/PerfEvent$DetailFields;->uid:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "processName":Ljava/lang/String;
    iget-object v2, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    if-eqz v1, :cond_0

    .end local v1    # "processName":Ljava/lang/String;
    :goto_0
    iput-object v1, v2, Landroid/os/statistics/PerfEvent$DetailFields;->processName:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "packageName":Ljava/lang/String;
    iget-object v2, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    if-eqz v0, :cond_1

    .end local v0    # "packageName":Ljava/lang/String;
    :goto_1
    iput-object v0, v2, Landroid/os/statistics/PerfEvent$DetailFields;->packageName:Ljava/lang/String;

    .line 69
    iget-object v2, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/os/statistics/PerfEvent$DetailFields;->lazyInfoResolved:Z

    .line 61
    return-void

    .line 66
    .restart local v1    # "processName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0

    .line 68
    .end local v1    # "processName":Ljava/lang/String;
    .restart local v0    # "packageName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method resolveLazyInfo()V
    .locals 2

    .prologue
    .line 135
    .local p0, "this":Landroid/os/statistics/PerfEvent;, "Landroid/os/statistics/PerfEvent<TT;>;"
    iget-object v0, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/os/statistics/PerfEvent$DetailFields;->lazyInfoResolved:Z

    .line 134
    return-void
.end method

.method public setPersistentId(J)V
    .locals 1
    .param p1, "persistentId"    # J

    .prologue
    .line 101
    .local p0, "this":Landroid/os/statistics/PerfEvent;, "Landroid/os/statistics/PerfEvent<TT;>;"
    iput-wide p1, p0, Landroid/os/statistics/PerfEvent;->persistentId:J

    .line 100
    return-void
.end method

.method public final toJson()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Landroid/os/statistics/PerfEvent;, "Landroid/os/statistics/PerfEvent<TT;>;"
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 74
    .local v0, "json":Lorg/json/JSONObject;
    invoke-virtual {p0, v0}, Landroid/os/statistics/PerfEvent;->writeToJson(Lorg/json/JSONObject;)V

    .line 75
    return-object v0
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 80
    .local p0, "this":Landroid/os/statistics/PerfEvent;, "Landroid/os/statistics/PerfEvent<TT;>;"
    :try_start_0
    const-string/jumbo v1, "eventType"

    iget v2, p0, Landroid/os/statistics/PerfEvent;->eventType:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 81
    const-string/jumbo v1, "eventTypeName"

    iget v2, p0, Landroid/os/statistics/PerfEvent;->eventType:I

    invoke-static {v2}, Landroid/os/statistics/PerfEventConstants;->getTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string/jumbo v1, "seq"

    iget-wide v2, p0, Landroid/os/statistics/PerfEvent;->eventSeq:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 83
    const-string/jumbo v1, "pid"

    iget v2, p0, Landroid/os/statistics/PerfEvent;->pid:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 84
    const-string/jumbo v1, "uid"

    iget-object v2, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    iget v2, v2, Landroid/os/statistics/PerfEvent$DetailFields;->uid:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 85
    const-string/jumbo v1, "processName"

    iget-object v2, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    iget-object v2, v2, Landroid/os/statistics/PerfEvent$DetailFields;->processName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string/jumbo v1, "packageName"

    iget-object v2, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    iget-object v2, v2, Landroid/os/statistics/PerfEvent$DetailFields;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 54
    .local p0, "this":Landroid/os/statistics/PerfEvent;, "Landroid/os/statistics/PerfEvent<TT;>;"
    iget-wide v0, p0, Landroid/os/statistics/PerfEvent;->eventSeq:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 55
    iget v0, p0, Landroid/os/statistics/PerfEvent;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-object v0, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    iget v0, v0, Landroid/os/statistics/PerfEvent$DetailFields;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-object v0, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    iget-object v0, v0, Landroid/os/statistics/PerfEvent$DetailFields;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    iget-object v0, v0, Landroid/os/statistics/PerfEvent$DetailFields;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    return-void
.end method
