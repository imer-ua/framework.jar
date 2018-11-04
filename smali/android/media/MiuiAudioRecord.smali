.class public Landroid/media/MiuiAudioRecord;
.super Landroid/media/IMiuiAudioRecord$Stub;
.source "MiuiAudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MiuiAudioRecord$AudioInfo;,
        Landroid/media/MiuiAudioRecord$MetaData;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mNativeAudioRecordInJavaObj:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string/jumbo v0, "MiuiAudioRecord"

    sput-object v0, Landroid/media/MiuiAudioRecord;->TAG:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "exmedia"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;J)V
    .locals 2
    .param p1, "sharedMem"    # Ljava/io/FileDescriptor;
    .param p2, "size"    # J

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/media/IMiuiAudioRecord$Stub;-><init>()V

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MiuiAudioRecord;->native_setup(Ljava/io/FileDescriptor;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    sget-object v0, Landroid/media/MiuiAudioRecord;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "init MiuiAudioRecord fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    return-void
.end method

.method private final native native_fillBuffer(Landroid/media/MiuiAudioRecord$AudioInfo;II)Z
.end method

.method private final native native_getMetadata(Landroid/media/MiuiAudioRecord$MetaData;)Z
.end method

.method private final native native_setup(Ljava/io/FileDescriptor;J)Z
.end method

.method private final native native_start(J)Z
.end method

.method private final native native_stop()Z
.end method


# virtual methods
.method public fillBuffer(II)Landroid/os/Bundle;
    .locals 6
    .param p1, "offset"    # I
    .param p2, "size"    # I

    .prologue
    .line 56
    new-instance v0, Landroid/media/MiuiAudioRecord$AudioInfo;

    invoke-direct {v0, p0}, Landroid/media/MiuiAudioRecord$AudioInfo;-><init>(Landroid/media/MiuiAudioRecord;)V

    .line 57
    .local v0, "audioInfo":Landroid/media/MiuiAudioRecord$AudioInfo;
    invoke-direct {p0, v0, p1, p2}, Landroid/media/MiuiAudioRecord;->native_fillBuffer(Landroid/media/MiuiAudioRecord$AudioInfo;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    sget-object v2, Landroid/media/MiuiAudioRecord;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "fillBuffer fail!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v2, 0x0

    return-object v2

    .line 61
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v1, "ret":Landroid/os/Bundle;
    const-string/jumbo v2, "presentationTimeUs"

    iget-wide v4, v0, Landroid/media/MiuiAudioRecord$AudioInfo;->timeUs:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 63
    const-string/jumbo v2, "size"

    iget-wide v4, v0, Landroid/media/MiuiAudioRecord$AudioInfo;->size:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 64
    return-object v1
.end method

.method public getMetaData()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 69
    new-instance v0, Landroid/media/MiuiAudioRecord$MetaData;

    invoke-direct {v0, p0}, Landroid/media/MiuiAudioRecord$MetaData;-><init>(Landroid/media/MiuiAudioRecord;)V

    .line 70
    .local v0, "meta":Landroid/media/MiuiAudioRecord$MetaData;
    invoke-direct {p0, v0}, Landroid/media/MiuiAudioRecord;->native_getMetadata(Landroid/media/MiuiAudioRecord$MetaData;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 71
    sget-object v2, Landroid/media/MiuiAudioRecord;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getMetaData fail!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v2, 0x0

    return-object v2

    .line 74
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v1, "ret":Landroid/os/Bundle;
    const-string/jumbo v2, "sample-rate"

    iget v3, v0, Landroid/media/MiuiAudioRecord$MetaData;->sampleRate:I

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 76
    const-string/jumbo v2, "channel-count"

    iget v3, v0, Landroid/media/MiuiAudioRecord$MetaData;->channelCount:I

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 77
    return-object v1
.end method

.method public start(J)Z
    .locals 1
    .param p1, "startTimeUs"    # J

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Landroid/media/MiuiAudioRecord;->native_start(J)Z

    move-result v0

    return v0
.end method

.method public stop()Z
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/media/MiuiAudioRecord;->native_stop()Z

    move-result v0

    return v0
.end method
