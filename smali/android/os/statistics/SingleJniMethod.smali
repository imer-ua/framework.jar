.class public final Landroid/os/statistics/SingleJniMethod;
.super Landroid/os/statistics/MicroscopicEvent;
.source "SingleJniMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/SingleJniMethod$1;,
        Landroid/os/statistics/SingleJniMethod$JniMethodFields;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/statistics/MicroscopicEvent",
        "<",
        "Landroid/os/statistics/SingleJniMethod$JniMethodFields;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/statistics/SingleJniMethod;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_STACK:Ljava/lang/String; = "stack"

.field private static final exceptionalClassMethodSimpleNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final exceptionalJniMethodFullNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 19
    const-string/jumbo v1, "java.lang.Object.wait"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 20
    const-string/jumbo v1, "java.lang.Object.notify"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 21
    const-string/jumbo v1, "java.lang.Object.notifyAll"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 22
    const-string/jumbo v1, "java.lang.Thread.sleep"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 23
    const-string/jumbo v1, "android.os.BinderProxy.transactNative"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 18
    sput-object v0, Landroid/os/statistics/SingleJniMethod;->exceptionalJniMethodFullNames:[Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    sput-object v0, Landroid/os/statistics/SingleJniMethod;->exceptionalClassMethodSimpleNames:Ljava/util/HashMap;

    .line 133
    new-instance v0, Landroid/os/statistics/SingleJniMethod$1;

    invoke-direct {v0}, Landroid/os/statistics/SingleJniMethod$1;-><init>()V

    .line 132
    sput-object v0, Landroid/os/statistics/SingleJniMethod;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;

    invoke-direct {v0}, Landroid/os/statistics/SingleJniMethod$JniMethodFields;-><init>()V

    const/16 v1, 0xa

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MicroscopicEvent;-><init>(ILandroid/os/statistics/MicroscopicEvent$MicroEventFields;)V

    .line 30
    return-void
.end method

.method private static buildStackTrace([Ljava/lang/StackTraceElement;[Ljava/lang/Class;)[Ljava/lang/String;
    .locals 14
    .param p0, "javaStackTraceElements"    # [Ljava/lang/StackTraceElement;
    .param p1, "javaStackTraceClasses"    # [Ljava/lang/Class;

    .prologue
    .line 148
    sget-object v9, Landroid/os/statistics/SingleJniMethod;->exceptionalClassMethodSimpleNames:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 149
    sget-object v10, Landroid/os/statistics/SingleJniMethod;->exceptionalClassMethodSimpleNames:Ljava/util/HashMap;

    monitor-enter v10

    .line 150
    :try_start_0
    sget-object v11, Landroid/os/statistics/SingleJniMethod;->exceptionalJniMethodFullNames:[Ljava/lang/String;

    const/4 v9, 0x0

    array-length v12, v11

    :goto_0
    if-ge v9, v12, :cond_1

    aget-object v4, v11, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .local v4, "methodFullName":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v13, "."

    invoke-virtual {v4, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 153
    .local v2, "dotPosition":I
    add-int/lit8 v13, v2, 0x1

    invoke-virtual {v4, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 154
    .local v5, "methodSimpleName":Ljava/lang/String;
    const/4 v13, 0x0

    invoke-virtual {v4, v13, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "classFullName":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 156
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v13, Landroid/os/statistics/SingleJniMethod;->exceptionalClassMethodSimpleNames:Ljava/util/HashMap;

    invoke-virtual {v13, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 157
    .local v3, "exceptionalMethodSimpleNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v3, :cond_0

    .line 158
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "exceptionalMethodSimpleNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .restart local v3    # "exceptionalMethodSimpleNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v13, Landroid/os/statistics/SingleJniMethod;->exceptionalClassMethodSimpleNames:Ljava/util/HashMap;

    invoke-virtual {v13, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_0
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    .end local v0    # "classFullName":Ljava/lang/String;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "dotPosition":I
    .end local v3    # "exceptionalMethodSimpleNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "methodSimpleName":Ljava/lang/String;
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .end local v4    # "methodFullName":Ljava/lang/String;
    :cond_1
    monitor-exit v10

    .line 168
    :cond_2
    if-eqz p0, :cond_3

    array-length v9, p0

    if-nez v9, :cond_4

    .line 170
    :cond_3
    sget-object v9, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    return-object v9

    .line 149
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 169
    :cond_4
    if-eqz p1, :cond_3

    array-length v9, p1

    if-eqz v9, :cond_3

    .line 173
    const/4 v9, 0x0

    aget-object v7, p0, v9

    .line 174
    .local v7, "topElement":Ljava/lang/StackTraceElement;
    const/4 v9, 0x0

    aget-object v6, p1, v9

    .line 175
    .local v6, "topClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "android.os.statistics."

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 176
    sget-object v9, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    return-object v9

    .line 178
    :cond_5
    sget-object v9, Landroid/os/statistics/SingleJniMethod;->exceptionalClassMethodSimpleNames:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 179
    .restart local v3    # "exceptionalMethodSimpleNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_6

    .line 180
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 179
    if-eqz v9, :cond_6

    .line 181
    sget-object v9, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    return-object v9

    .line 184
    :cond_6
    const/4 v9, 0x0

    invoke-static {p0, p1, v9}, Landroid/os/statistics/StackUtils;->getStackTrace([Ljava/lang/StackTraceElement;[Ljava/lang/Class;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 162
    .end local v3    # "exceptionalMethodSimpleNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "topClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "topElement":Ljava/lang/StackTraceElement;
    .restart local v4    # "methodFullName":Ljava/lang/String;
    :catch_0
    move-exception v8

    .local v8, "tr":Ljava/lang/ClassNotFoundException;
    goto :goto_1
.end method


# virtual methods
.method fillIn(Landroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)V
    .locals 2
    .param p1, "dataParcel"    # Landroid/os/statistics/JniParcel;
    .param p2, "javaBackTrace"    # Ljava/lang/Object;
    .param p3, "nativeBackTrace"    # Landroid/os/statistics/NativeBackTrace;

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Landroid/os/statistics/MicroscopicEvent;->threadId:I

    .line 103
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    .line 104
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    .line 106
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;

    iput-object p2, v0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->javaBackTrace:Ljava/lang/Object;

    .line 101
    return-void
.end method

.method public hasMultiplePeerBlockingEvents()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public hasPeerBlockingEvent()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockedBy(Landroid/os/statistics/MicroscopicEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/os/statistics/MicroscopicEvent;

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockedBySameProcess()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockingMultiplePeer()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockingSameProcess()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method isMeaningful()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "stackTrace":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v1

    check-cast v1, Landroid/os/statistics/SingleJniMethod$JniMethodFields;

    iget-object v0, v1, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->stackTrace:[Ljava/lang/String;

    .line 129
    .end local v0    # "stackTrace":[Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public isPeerBlockingEvent()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public isRootEvent()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 83
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;

    .line 84
    .local v0, "details":Landroid/os/statistics/SingleJniMethod$JniMethodFields;
    invoke-static {p1}, Landroid/os/statistics/ParcelUtils;->readStringArray(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "stackTrace":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .end local v1    # "stackTrace":[Ljava/lang/String;
    :goto_0
    iput-object v1, v0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->stackTrace:[Ljava/lang/String;

    .line 87
    iput-object v2, v0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->javaBackTrace:Ljava/lang/Object;

    .line 81
    return-void

    .line 85
    .restart local v1    # "stackTrace":[Ljava/lang/String;
    :cond_0
    sget-object v1, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    goto :goto_0
.end method

.method resolveLazyInfo()V
    .locals 3

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->isLazyInfoResolved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    return-void

    .line 115
    :cond_0
    invoke-super {p0}, Landroid/os/statistics/MicroscopicEvent;->resolveLazyInfo()V

    .line 116
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;

    .line 118
    .local v0, "details":Landroid/os/statistics/SingleJniMethod$JniMethodFields;
    iget-object v1, v0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->javaBackTrace:Ljava/lang/Object;

    invoke-static {v1}, Landroid/os/statistics/JavaBackTrace;->resolve(Ljava/lang/Object;)[Ljava/lang/StackTraceElement;

    move-result-object v1

    iget-object v2, v0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->javaBackTrace:Ljava/lang/Object;

    invoke-static {v2}, Landroid/os/statistics/JavaBackTrace;->resolveClasses(Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/statistics/SingleJniMethod;->buildStackTrace([Ljava/lang/StackTraceElement;[Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v1

    .line 117
    iput-object v1, v0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->stackTrace:[Ljava/lang/String;

    .line 120
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->javaBackTrace:Ljava/lang/Object;

    .line 110
    return-void
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent;->writeToJson(Lorg/json/JSONObject;)V

    .line 94
    :try_start_0
    const-string/jumbo v2, "stack"

    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v1

    check-cast v1, Landroid/os/statistics/SingleJniMethod$JniMethodFields;

    iget-object v1, v1, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->stackTrace:[Ljava/lang/String;

    invoke-static {v1}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Landroid/os/statistics/MicroscopicEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 77
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;

    iget-object v0, v0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->stackTrace:[Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/os/statistics/ParcelUtils;->writeStringArray(Landroid/os/Parcel;[Ljava/lang/String;)V

    .line 75
    return-void
.end method
