.class public final Landroid/media/AudioRecordingConfiguration;
.super Ljava/lang/Object;
.source "AudioRecordingConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioRecordingConfiguration$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mClientFormat:Landroid/media/AudioFormat;

.field private final mClientPackageName:Ljava/lang/String;

.field private final mClientSource:I

.field private final mClientUid:I

.field private final mDeviceFormat:Landroid/media/AudioFormat;

.field private final mPatchHandle:I

.field private final mSessionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "AudioRecordingConfiguration"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/media/AudioRecordingConfiguration;->TAG:Ljava/lang/String;

    .line 224
    new-instance v0, Landroid/media/AudioRecordingConfiguration$1;

    invoke-direct {v0}, Landroid/media/AudioRecordingConfiguration$1;-><init>()V

    .line 223
    sput-object v0, Landroid/media/AudioRecordingConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 47
    return-void
.end method

.method public constructor <init>(IIILandroid/media/AudioFormat;Landroid/media/AudioFormat;ILjava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "session"    # I
    .param p3, "source"    # I
    .param p4, "clientFormat"    # Landroid/media/AudioFormat;
    .param p5, "devFormat"    # Landroid/media/AudioFormat;
    .param p6, "patchHandle"    # I
    .param p7, "packageName"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Landroid/media/AudioRecordingConfiguration;->mClientUid:I

    .line 68
    iput p2, p0, Landroid/media/AudioRecordingConfiguration;->mSessionId:I

    .line 69
    iput p3, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    .line 70
    iput-object p4, p0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    .line 71
    iput-object p5, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    .line 72
    iput p6, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    .line 73
    iput-object p7, p0, Landroid/media/AudioRecordingConfiguration;->mClientPackageName:Ljava/lang/String;

    .line 66
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioRecordingConfiguration;->mSessionId:I

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    .line 262
    sget-object v0, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioFormat;

    iput-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    .line 263
    sget-object v0, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioFormat;

    iput-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientPackageName:Ljava/lang/String;

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientUid:I

    .line 259
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/AudioRecordingConfiguration;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/AudioRecordingConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static anonymizedCopy(Landroid/media/AudioRecordingConfiguration;)Landroid/media/AudioRecordingConfiguration;
    .locals 8
    .param p0, "in"    # Landroid/media/AudioRecordingConfiguration;

    .prologue
    .line 107
    new-instance v0, Landroid/media/AudioRecordingConfiguration;

    .line 108
    iget v2, p0, Landroid/media/AudioRecordingConfiguration;->mSessionId:I

    iget v3, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    iget-object v4, p0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    .line 109
    iget-object v5, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    iget v6, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    const-string/jumbo v7, ""

    .line 107
    const/4 v1, -0x1

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioRecordingConfiguration;-><init>(IIILandroid/media/AudioFormat;Landroid/media/AudioFormat;ILjava/lang/String;)V

    return-object v0
.end method

.method public static toLogFriendlyString(Landroid/media/AudioRecordingConfiguration;)Ljava/lang/String;
    .locals 3
    .param p0, "arc"    # Landroid/media/AudioRecordingConfiguration;

    .prologue
    .line 89
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "session:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioRecordingConfiguration;->mSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 90
    const-string/jumbo v2, " -- source:"

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 90
    iget v2, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    invoke-static {v2}, Landroid/media/MediaRecorder;->toLogFriendlyAudioSource(I)Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 91
    const-string/jumbo v2, " -- uid:"

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 91
    iget v2, p0, Landroid/media/AudioRecordingConfiguration;->mClientUid:I

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 92
    const-string/jumbo v2, " -- patch:"

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 92
    iget v2, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 93
    const-string/jumbo v2, " -- pack:"

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 93
    iget-object v2, p0, Landroid/media/AudioRecordingConfiguration;->mClientPackageName:Ljava/lang/String;

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 94
    const-string/jumbo v2, " -- format client="

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 94
    iget-object v2, p0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    invoke-virtual {v2}, Landroid/media/AudioFormat;->toLogFriendlyString()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 95
    const-string/jumbo v2, ", dev="

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 95
    iget-object v2, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    invoke-virtual {v2}, Landroid/media/AudioFormat;->toLogFriendlyString()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/media/AudioRecordingConfiguration;->toLogFriendlyString(Landroid/media/AudioRecordingConfiguration;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 271
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 272
    :cond_0
    if-eqz p1, :cond_2

    instance-of v2, p1, Landroid/media/AudioRecordingConfiguration;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 274
    check-cast v0, Landroid/media/AudioRecordingConfiguration;

    .line 276
    .local v0, "that":Landroid/media/AudioRecordingConfiguration;
    iget v2, p0, Landroid/media/AudioRecordingConfiguration;->mClientUid:I

    iget v3, v0, Landroid/media/AudioRecordingConfiguration;->mClientUid:I

    if-ne v2, v3, :cond_1

    .line 277
    iget v2, p0, Landroid/media/AudioRecordingConfiguration;->mSessionId:I

    iget v3, v0, Landroid/media/AudioRecordingConfiguration;->mSessionId:I

    if-ne v2, v3, :cond_1

    .line 278
    iget v2, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    iget v3, v0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    if-ne v2, v3, :cond_1

    .line 279
    iget v2, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    iget v3, v0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    if-ne v2, v3, :cond_1

    .line 280
    iget-object v2, p0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    iget-object v3, v0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    invoke-virtual {v2, v3}, Landroid/media/AudioFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 276
    if-eqz v2, :cond_1

    .line 281
    iget-object v2, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    iget-object v3, v0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    invoke-virtual {v2, v3}, Landroid/media/AudioFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 276
    if-eqz v2, :cond_1

    .line 282
    iget-object v1, p0, Landroid/media/AudioRecordingConfiguration;->mClientPackageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/media/AudioRecordingConfiguration;->mClientPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 276
    :cond_1
    return v1

    .line 272
    .end local v0    # "that":Landroid/media/AudioRecordingConfiguration;
    :cond_2
    return v1
.end method

.method public getAudioDevice()Landroid/media/AudioDeviceInfo;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 195
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v5, "patches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    invoke-static {v5}, Landroid/media/AudioManager;->listAudioPatches(Ljava/util/ArrayList;)I

    move-result v7

    if-eqz v7, :cond_0

    .line 197
    sget-object v7, Landroid/media/AudioRecordingConfiguration;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Error retrieving list of audio patches"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-object v10

    .line 200
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 201
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioPatch;

    .line 202
    .local v4, "patch":Landroid/media/AudioPatch;
    invoke-virtual {v4}, Landroid/media/AudioPatch;->id()I

    move-result v7

    iget v8, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    if-ne v7, v8, :cond_2

    .line 203
    invoke-virtual {v4}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v6

    .line 204
    .local v6, "sources":[Landroid/media/AudioPortConfig;
    if-eqz v6, :cond_3

    array-length v7, v6

    if-lez v7, :cond_3

    .line 206
    aget-object v7, v6, v9

    invoke-virtual {v7}, Landroid/media/AudioPortConfig;->port()Landroid/media/AudioPort;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/AudioPort;->id()I

    move-result v0

    .line 208
    .local v0, "devId":I
    const/4 v7, 0x1

    invoke-static {v7}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    .line 209
    .local v1, "devices":[Landroid/media/AudioDeviceInfo;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v7, v1

    if-ge v3, v7, :cond_3

    .line 210
    aget-object v7, v1, v3

    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v7

    if-ne v7, v0, :cond_1

    .line 211
    aget-object v7, v1, v3

    return-object v7

    .line 209
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 200
    .end local v0    # "devId":I
    .end local v1    # "devices":[Landroid/media/AudioDeviceInfo;
    .end local v3    # "j":I
    .end local v6    # "sources":[Landroid/media/AudioPortConfig;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    .end local v4    # "patch":Landroid/media/AudioPatch;
    :cond_3
    sget-object v7, Landroid/media/AudioRecordingConfiguration;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Couldn\'t find device for recording, did recording end already?"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-object v10
.end method

.method public getClientAudioSessionId()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mSessionId:I

    return v0
.end method

.method public getClientAudioSource()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    return v0
.end method

.method public getClientFormat()Landroid/media/AudioFormat;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    return-object v0
.end method

.method public getClientPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getClientUid()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientUid:I

    return v0
.end method

.method public getFormat()Landroid/media/AudioFormat;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 240
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/AudioRecordingConfiguration;->mSessionId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 250
    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioFormat;->writeToParcel(Landroid/os/Parcel;I)V

    .line 253
    iget-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioFormat;->writeToParcel(Landroid/os/Parcel;I)V

    .line 254
    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    return-void
.end method
