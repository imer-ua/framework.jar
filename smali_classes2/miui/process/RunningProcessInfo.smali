.class public Lmiui/process/RunningProcessInfo;
.super Ljava/lang/Object;
.source "RunningProcessInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/process/RunningProcessInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmiui/process/RunningProcessInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAdj:I

.field public mPid:I

.field public mPkgList:[Ljava/lang/String;

.field public mProcState:I

.field public mProcessName:Ljava/lang/String;

.field public mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lmiui/process/RunningProcessInfo$1;

    invoke-direct {v0}, Lmiui/process/RunningProcessInfo$1;-><init>()V

    sput-object v0, Lmiui/process/RunningProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-direct {p0, p1}, Lmiui/process/RunningProcessInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 24
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/process/RunningProcessInfo;->mProcessName:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/process/RunningProcessInfo;->mPid:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/process/RunningProcessInfo;->mUid:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/process/RunningProcessInfo;->mAdj:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/process/RunningProcessInfo;->mProcState:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/process/RunningProcessInfo;->mPkgList:[Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 66
    instance-of v2, p1, Lmiui/process/RunningProcessInfo;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 67
    nop

    nop

    .line 68
    .local v0, "otherInfo":Lmiui/process/RunningProcessInfo;
    iget-object v2, p0, Lmiui/process/RunningProcessInfo;->mProcessName:Ljava/lang/String;

    iget-object v3, v0, Lmiui/process/RunningProcessInfo;->mProcessName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lmiui/process/RunningProcessInfo;->mPid:I

    iget v3, v0, Lmiui/process/RunningProcessInfo;->mPid:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 70
    .end local v0    # "otherInfo":Lmiui/process/RunningProcessInfo;
    :cond_1
    return v1
.end method

.method public isProcessForeground()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 74
    iget v1, p0, Lmiui/process/RunningProcessInfo;->mProcState:I

    if-ltz v1, :cond_0

    .line 75
    iget v1, p0, Lmiui/process/RunningProcessInfo;->mProcState:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 74
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RunningProcessInfo{mProcessName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lmiui/process/RunningProcessInfo;->mProcessName:Ljava/lang/String;

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 81
    const/16 v1, 0x27

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 82
    const-string/jumbo v1, ", mPid="

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 82
    iget v1, p0, Lmiui/process/RunningProcessInfo;->mPid:I

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 83
    const-string/jumbo v1, ", mUid="

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 83
    iget v1, p0, Lmiui/process/RunningProcessInfo;->mUid:I

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    const-string/jumbo v1, ", mAdj="

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    iget v1, p0, Lmiui/process/RunningProcessInfo;->mAdj:I

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    const-string/jumbo v1, ", mProcState="

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    iget v1, p0, Lmiui/process/RunningProcessInfo;->mProcState:I

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 86
    const-string/jumbo v1, ", mPkgList="

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lmiui/process/RunningProcessInfo;->mPkgList:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    const/16 v1, 0x7d

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lmiui/process/RunningProcessInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget v0, p0, Lmiui/process/RunningProcessInfo;->mPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget v0, p0, Lmiui/process/RunningProcessInfo;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget v0, p0, Lmiui/process/RunningProcessInfo;->mAdj:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget v0, p0, Lmiui/process/RunningProcessInfo;->mProcState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-object v0, p0, Lmiui/process/RunningProcessInfo;->mPkgList:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 38
    return-void
.end method
