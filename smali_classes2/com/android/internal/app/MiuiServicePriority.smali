.class public Lcom/android/internal/app/MiuiServicePriority;
.super Ljava/lang/Object;
.source "MiuiServicePriority.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/MiuiServicePriority$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;"
        }
    .end annotation
.end field

.field public static final HIGH_PRIORITY:I = 0xa

.field public static final LOW_PRIORITY:I = -0xa

.field public static final NORMAL_PRIORITY:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public checkPriority:Z

.field public delayTime:J

.field public inBlacklist:Z

.field public packageName:Ljava/lang/String;

.field public priority:I

.field public serviceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/android/internal/app/MiuiServicePriority$1;

    invoke-direct {v0}, Lcom/android/internal/app/MiuiServicePriority$1;-><init>()V

    .line 65
    sput-object v0, Lcom/android/internal/app/MiuiServicePriority;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MiuiServicePriority;->readFromParcel(Landroid/os/Parcel;)V

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/app/MiuiServicePriority;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/MiuiServicePriority;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZZJ)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "priority"    # I
    .param p4, "checkPriority"    # Z
    .param p5, "inBlacklist"    # Z
    .param p6, "delayTime"    # J

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/android/internal/app/MiuiServicePriority;->serviceName:Ljava/lang/String;

    .line 34
    iput p3, p0, Lcom/android/internal/app/MiuiServicePriority;->priority:I

    .line 35
    iput-boolean p4, p0, Lcom/android/internal/app/MiuiServicePriority;->checkPriority:Z

    .line 36
    iput-boolean p5, p0, Lcom/android/internal/app/MiuiServicePriority;->inBlacklist:Z

    .line 37
    iput-wide p6, p0, Lcom/android/internal/app/MiuiServicePriority;->delayTime:J

    .line 31
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MiuiServicePriority;->serviceName:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/MiuiServicePriority;->priority:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/app/MiuiServicePriority;->checkPriority:Z

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/app/MiuiServicePriority;->inBlacklist:Z

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/MiuiServicePriority;->delayTime:J

    .line 56
    return-void

    :cond_0
    move v0, v2

    .line 60
    goto :goto_0

    :cond_1
    move v1, v2

    .line 61
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    iget-object v0, p0, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/android/internal/app/MiuiServicePriority;->serviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget v0, p0, Lcom/android/internal/app/MiuiServicePriority;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-boolean v0, p0, Lcom/android/internal/app/MiuiServicePriority;->checkPriority:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-boolean v0, p0, Lcom/android/internal/app/MiuiServicePriority;->inBlacklist:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-wide v0, p0, Lcom/android/internal/app/MiuiServicePriority;->delayTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 47
    return-void

    :cond_0
    move v0, v2

    .line 51
    goto :goto_0

    :cond_1
    move v1, v2

    .line 52
    goto :goto_1
.end method
