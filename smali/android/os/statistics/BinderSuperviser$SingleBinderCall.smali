.class public Landroid/os/statistics/BinderSuperviser$SingleBinderCall;
.super Landroid/os/statistics/MicroscopicEvent;
.source "BinderSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/BinderSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleBinderCall"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/BinderSuperviser$SingleBinderCall$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/statistics/MicroscopicEvent",
        "<",
        "Landroid/os/statistics/BinderSuperviser$BinderCallFields;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/statistics/BinderSuperviser$SingleBinderCall;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_CODE:Ljava/lang/String; = "code"

.field private static final FIELD_INTERFACE_DESCRIPTOR:Ljava/lang/String; = "interface"

.field private static final FIELD_STACK:Ljava/lang/String; = "stack"

.field private static sBinderProxyClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field public code:I

.field public interfaceDescriptor:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 288
    new-instance v0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall$1;

    invoke-direct {v0}, Landroid/os/statistics/BinderSuperviser$SingleBinderCall$1;-><init>()V

    .line 287
    sput-object v0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 95
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 105
    new-instance v0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;

    invoke-direct {v0}, Landroid/os/statistics/BinderSuperviser$BinderCallFields;-><init>()V

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MicroscopicEvent;-><init>(ILandroid/os/statistics/MicroscopicEvent$MicroEventFields;)V

    .line 104
    return-void
.end method

.method private static initClasses()V
    .locals 2

    .prologue
    .line 278
    sget-object v1, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->sBinderProxyClass:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 280
    :try_start_0
    const-string/jumbo v1, "android.os.BinderProxy"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->sBinderProxyClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_0
    return-void

    .line 281
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v0

    .line 282
    .restart local v0    # "ex":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static isJavaBinderCall([Ljava/lang/StackTraceElement;[Ljava/lang/Class;)Z
    .locals 3
    .param p0, "javaStackTraceElements"    # [Ljava/lang/StackTraceElement;
    .param p1, "javaStackTraceClasses"    # [Ljava/lang/Class;

    .prologue
    const/4 v1, 0x0

    .line 269
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 271
    :cond_0
    return v1

    .line 270
    :cond_1
    if-eqz p1, :cond_0

    array-length v2, p1

    if-eqz v2, :cond_0

    .line 273
    aget-object v0, p1, v1

    .line 274
    .local v0, "topClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->sBinderProxyClass:Ljava/lang/Class;

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method


# virtual methods
.method fillIn(Landroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)V
    .locals 4
    .param p1, "dataParcel"    # Landroid/os/statistics/JniParcel;
    .param p2, "javaBackTrace"    # Ljava/lang/Object;
    .param p3, "nativeBackTrace"    # Landroid/os/statistics/NativeBackTrace;

    .prologue
    .line 195
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;

    .line 196
    .local v0, "details":Landroid/os/statistics/BinderSuperviser$BinderCallFields;
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, p0, Landroid/os/statistics/MicroscopicEvent;->threadId:I

    .line 197
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->threadName:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    .line 199
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    .line 200
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v1

    iput v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPolicy:I

    .line 201
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPriority:I

    .line 202
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readObject()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->binder:Ljava/lang/Object;

    .line 203
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->interfaceDescriptor:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->code:I

    .line 206
    iput-object p2, v0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->javaBackTrace:Ljava/lang/Object;

    .line 207
    iput-object p3, v0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->nativeBackTrace:Landroid/os/statistics/NativeBackTrace;

    .line 194
    return-void
.end method

.method public hasMultiplePeerBlockingEvents()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public hasNativeStack()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 212
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    if-nez v0, :cond_0

    .line 213
    return v1

    .line 215
    :cond_0
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;

    iget-object v0, v0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->nativeBackTrace:Landroid/os/statistics/NativeBackTrace;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public hasPeerBlockingEvent()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public isBlockedBy(Landroid/os/statistics/MicroscopicEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/os/statistics/MicroscopicEvent;

    .prologue
    const/4 v1, 0x0

    .line 130
    instance-of v2, p1, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;

    if-nez v2, :cond_0

    .line 131
    return v1

    :cond_0
    move-object v0, p1

    .line 133
    nop

    nop

    .line 134
    .local v0, "singleBinderExecution":Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;
    iget v2, v0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->callingPid:I

    iget v3, p0, Landroid/os/statistics/PerfEvent;->pid:I

    if-ne v2, v3, :cond_1

    .line 135
    iget-wide v2, v0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    iget-wide v4, p0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 136
    iget-wide v2, v0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    iget-wide v4, p0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 137
    iget v2, v0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->code:I

    iget v3, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->code:I

    if-ne v2, v3, :cond_1

    .line 138
    iget-object v1, v0, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;->interfaceDescriptor:Ljava/lang/String;

    iget-object v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->interfaceDescriptor:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 134
    :cond_1
    return v1
.end method

.method public isBlockedBySameProcess()Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockingMultiplePeer()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockingSameProcess()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public isPeerBlockingEvent()Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public isRootEvent()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    .line 166
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 167
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;

    .line 168
    .local v0, "details":Landroid/os/statistics/BinderSuperviser$BinderCallFields;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->interfaceDescriptor:Ljava/lang/String;

    .line 169
    iget-object v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->interfaceDescriptor:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 170
    const-string/jumbo v2, ""

    iput-object v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->interfaceDescriptor:Ljava/lang/String;

    .line 172
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->code:I

    .line 173
    invoke-static {p1}, Landroid/os/statistics/ParcelUtils;->readStringArray(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "stackTrace":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .end local v1    # "stackTrace":[Ljava/lang/String;
    :goto_0
    iput-object v1, v0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->stackTrace:[Ljava/lang/String;

    .line 176
    iput-object v3, v0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->binder:Ljava/lang/Object;

    .line 177
    iput-object v3, v0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->javaBackTrace:Ljava/lang/Object;

    .line 178
    iput-object v3, v0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->nativeBackTrace:Landroid/os/statistics/NativeBackTrace;

    .line 165
    return-void

    .line 174
    .restart local v1    # "stackTrace":[Ljava/lang/String;
    :cond_1
    sget-object v1, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    goto :goto_0
.end method

.method resolveLazyInfo()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 220
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->isLazyInfoResolved()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 221
    return-void

    .line 224
    :cond_0
    invoke-super {p0}, Landroid/os/statistics/MicroscopicEvent;->resolveLazyInfo()V

    .line 225
    invoke-static {}, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->initClasses()V

    .line 226
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v1

    check-cast v1, Landroid/os/statistics/BinderSuperviser$BinderCallFields;

    .line 227
    .local v1, "details":Landroid/os/statistics/BinderSuperviser$BinderCallFields;
    iget-object v7, v1, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->binder:Ljava/lang/Object;

    if-eqz v7, :cond_1

    .line 228
    iget-object v7, v1, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->binder:Ljava/lang/Object;

    invoke-static {v7}, Landroid/os/statistics/BinderSuperviser;->-wrap0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->interfaceDescriptor:Ljava/lang/String;

    .line 230
    :cond_1
    iget-object v7, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->interfaceDescriptor:Ljava/lang/String;

    if-nez v7, :cond_2

    .line 231
    const-string/jumbo v7, ""

    iput-object v7, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->interfaceDescriptor:Ljava/lang/String;

    .line 234
    :cond_2
    iget-object v7, v1, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->javaBackTrace:Ljava/lang/Object;

    invoke-static {v7}, Landroid/os/statistics/JavaBackTrace;->resolve(Ljava/lang/Object;)[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 235
    .local v4, "javaStackTraceElements":[Ljava/lang/StackTraceElement;
    iget-object v7, v1, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->javaBackTrace:Ljava/lang/Object;

    invoke-static {v7}, Landroid/os/statistics/JavaBackTrace;->resolveClasses(Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v3

    .line 236
    .local v3, "javaStackTraceClasses":[Ljava/lang/Class;
    invoke-static {v4, v3}, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->isJavaBinderCall([Ljava/lang/StackTraceElement;[Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 237
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, v3

    if-ge v2, v7, :cond_4

    .line 238
    aget-object v0, v3, v2

    .line 239
    .local v0, "clazz":Ljava/lang/Class;
    sget-object v7, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->sBinderProxyClass:Ljava/lang/Class;

    if-ne v0, v7, :cond_3

    .line 240
    aput-object v8, v3, v2

    .line 241
    aput-object v8, v4, v2

    .line 237
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    .end local v0    # "clazz":Ljava/lang/Class;
    :cond_4
    invoke-static {v4, v3, v8}, Landroid/os/statistics/StackUtils;->getStackTrace([Ljava/lang/StackTraceElement;[Ljava/lang/Class;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->stackTrace:[Ljava/lang/String;

    .line 260
    .end local v2    # "i":I
    :goto_1
    iput-object v8, v1, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->binder:Ljava/lang/Object;

    .line 261
    iput-object v8, v1, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->javaBackTrace:Ljava/lang/Object;

    .line 262
    iget-object v7, v1, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->nativeBackTrace:Landroid/os/statistics/NativeBackTrace;

    if-eqz v7, :cond_5

    .line 263
    iget-object v7, v1, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->nativeBackTrace:Landroid/os/statistics/NativeBackTrace;

    invoke-virtual {v7}, Landroid/os/statistics/NativeBackTrace;->dispose()V

    .line 265
    :cond_5
    iput-object v8, v1, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->nativeBackTrace:Landroid/os/statistics/NativeBackTrace;

    .line 219
    return-void

    .line 246
    :cond_6
    iget-object v7, v1, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->nativeBackTrace:Landroid/os/statistics/NativeBackTrace;

    invoke-static {v7}, Landroid/os/statistics/NativeBackTrace;->resolve(Landroid/os/statistics/NativeBackTrace;)[Ljava/lang/String;

    move-result-object v6

    .line 247
    .local v6, "nativeStackTrace":[Ljava/lang/String;
    if-eqz v6, :cond_8

    .line 248
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    array-length v7, v6

    if-ge v2, v7, :cond_8

    .line 249
    aget-object v5, v6, v2

    .line 250
    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_8

    const-string/jumbo v7, "BinderSuperviser"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string/jumbo v7, "libbinder.so"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 251
    :cond_7
    aput-object v8, v6, v2

    .line 248
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 257
    .end local v2    # "i":I
    .end local v5    # "line":Ljava/lang/String;
    :cond_8
    invoke-static {v4, v3, v6}, Landroid/os/statistics/StackUtils;->getStackTrace([Ljava/lang/StackTraceElement;[Ljava/lang/Class;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->stackTrace:[Ljava/lang/String;

    goto :goto_1
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent;->writeToJson(Lorg/json/JSONObject;)V

    .line 185
    :try_start_0
    const-string/jumbo v1, "interface"

    iget-object v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->interfaceDescriptor:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string/jumbo v1, "code"

    iget v2, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->code:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 187
    const-string/jumbo v2, "stack"

    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v1

    check-cast v1, Landroid/os/statistics/BinderSuperviser$BinderCallFields;

    iget-object v1, v1, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->stackTrace:[Ljava/lang/String;

    invoke-static {v1}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 158
    invoke-super {p0, p1, p2}, Landroid/os/statistics/MicroscopicEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 159
    iget-object v0, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->interfaceDescriptor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget v0, p0, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;->code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    invoke-virtual {p0}, Landroid/os/statistics/PerfEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;

    iget-object v0, v0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->stackTrace:[Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/os/statistics/ParcelUtils;->writeStringArray(Landroid/os/Parcel;[Ljava/lang/String;)V

    .line 157
    return-void
.end method
