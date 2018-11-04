.class public Lcom/android/internal/app/LaunchTimeRecord;
.super Ljava/lang/Object;
.source "LaunchTimeRecord.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LaunchTimeRecord$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/app/LaunchTimeRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field activity:Ljava/lang/String;

.field isColdStart:Z

.field launchEndTime:J

.field launchStartTime:J

.field launchTime:J

.field packageName:Ljava/lang/String;

.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/android/internal/app/LaunchTimeRecord$1;

    invoke-direct {v0}, Lcom/android/internal/app/LaunchTimeRecord$1;-><init>()V

    .line 107
    sput-object v0, Lcom/android/internal/app/LaunchTimeRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->packageName:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    .line 18
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->packageName:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/internal/app/LaunchTimeRecord;->readFromParcel(Landroid/os/Parcel;)V

    .line 119
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/app/LaunchTimeRecord;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/LaunchTimeRecord;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;
    .param p3, "launchStartTime"    # J
    .param p5, "launchEndTime"    # J
    .param p7, "isColdStart"    # Z

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->packageName:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/android/internal/app/LaunchTimeRecord;->packageName:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    .line 24
    iput-wide p3, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchStartTime:J

    .line 25
    iput-wide p5, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchEndTime:J

    .line 26
    sub-long v0, p5, p3

    iput-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchTime:J

    .line 27
    iput-boolean p7, p0, Lcom/android/internal/app/LaunchTimeRecord;->isColdStart:Z

    .line 21
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public getActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchEndTime()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchEndTime:J

    return-wide v0
.end method

.method public getLaunchStartTime()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchStartTime:J

    return-wide v0
.end method

.method public getLaunchTime()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchTime:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->type:I

    return v0
.end method

.method public isColdStart()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->isColdStart:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchStartTime:J

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchEndTime:J

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchTime:J

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/LaunchTimeRecord;->type:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->isColdStart:Z

    .line 98
    return-void

    .line 104
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActivity(Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setIsColdStart(Z)V
    .locals 0
    .param p1, "isColdStart"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/internal/app/LaunchTimeRecord;->isColdStart:Z

    .line 78
    return-void
.end method

.method public setLaunchEndTime(J)V
    .locals 1
    .param p1, "launchEndTime"    # J

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchEndTime:J

    .line 54
    return-void
.end method

.method public setLaunchStartTime(J)V
    .locals 1
    .param p1, "launchStartTime"    # J

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchStartTime:J

    .line 46
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/internal/app/LaunchTimeRecord;->packageName:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/android/internal/app/LaunchTimeRecord;->type:I

    .line 66
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 92
    iget-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchEndTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 93
    iget-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 94
    iget v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-boolean v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->isColdStart:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
