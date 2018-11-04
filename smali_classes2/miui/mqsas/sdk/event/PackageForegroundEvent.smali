.class public Lmiui/mqsas/sdk/event/PackageForegroundEvent;
.super Ljava/lang/Object;
.source "PackageForegroundEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/mqsas/sdk/event/PackageForegroundEvent$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmiui/mqsas/sdk/event/PackageForegroundEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private componentName:Ljava/lang/String;

.field private foregroundTime:J

.field private identity:I

.field private isColdStart:Z

.field private packageName:Ljava/lang/String;

.field private pid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lmiui/mqsas/sdk/event/PackageForegroundEvent$1;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/PackageForegroundEvent$1;-><init>()V

    sput-object v0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->packageName:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->componentName:Ljava/lang/String;

    .line 21
    iput v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->identity:I

    .line 22
    iput v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->pid:I

    .line 23
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->foregroundTime:J

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->isColdStart:Z

    .line 18
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->packageName:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->componentName:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->identity:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->pid:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->foregroundTime:J

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->isColdStart:Z

    .line 27
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 125
    if-nez p1, :cond_0

    .line 126
    return v1

    :cond_0
    move-object v0, p1

    .line 128
    check-cast v0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;

    .line 129
    .local v0, "o":Lmiui/mqsas/sdk/event/PackageForegroundEvent;
    iget-object v2, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    iget-object v2, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->componentName:Ljava/lang/String;

    iget-object v3, v0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->componentName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 129
    if-eqz v2, :cond_1

    .line 131
    iget v2, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->identity:I

    iget v3, v0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->identity:I

    if-ne v2, v3, :cond_1

    .line 132
    iget v2, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->pid:I

    iget v3, v0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->pid:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 129
    :cond_1
    return v1
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->componentName:Ljava/lang/String;

    return-object v0
.end method

.method public getForegroundTime()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->foregroundTime:J

    return-wide v0
.end method

.method public getIdentity()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->identity:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->pid:I

    return v0
.end method

.method public isColdStart()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->isColdStart:Z

    return v0
.end method

.method public setColdStart(Z)V
    .locals 0
    .param p1, "coldStart"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->isColdStart:Z

    .line 107
    return-void
.end method

.method public setComponentName(Ljava/lang/String;)V
    .locals 0
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->componentName:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setForegroundTime(J)V
    .locals 1
    .param p1, "foregroundTime"    # J

    .prologue
    .line 100
    iput-wide p1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->foregroundTime:J

    .line 99
    return-void
.end method

.method public setIdentity(I)V
    .locals 0
    .param p1, "identity"    # I

    .prologue
    .line 84
    iput p1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->identity:I

    .line 83
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->packageName:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setPid(I)V
    .locals 0
    .param p1, "pid"    # I

    .prologue
    .line 92
    iput p1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->pid:I

    .line 91
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v2, 0x27

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PackageForegroundEvent{packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->packageName:Ljava/lang/String;

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 115
    const-string/jumbo v1, ", componentName=\'"

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->componentName:Ljava/lang/String;

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 116
    const-string/jumbo v1, ", identity="

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 116
    iget v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->identity:I

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    const-string/jumbo v1, ", pid="

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    iget v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->pid:I

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    const-string/jumbo v1, ", foregroundTime="

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    iget-wide v2, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->foregroundTime:J

    .line 113
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    const-string/jumbo v1, ", isColdStart="

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    iget-boolean v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->isColdStart:Z

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 120
    const/16 v1, 0x7d

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->componentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->identity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->foregroundTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 60
    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->isColdStart:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
