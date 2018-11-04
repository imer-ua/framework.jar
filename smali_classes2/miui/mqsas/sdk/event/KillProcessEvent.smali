.class public Lmiui/mqsas/sdk/event/KillProcessEvent;
.super Ljava/lang/Object;
.source "KillProcessEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/mqsas/sdk/event/KillProcessEvent$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmiui/mqsas/sdk/event/KillProcessEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final POLICY_EXCEPTION:Ljava/lang/String; = "exception"

.field public static final POLICY_KILL_SELF:Ljava/lang/String; = "killself"

.field public static final POLICY_LMK:Ljava/lang/String; = "lowmemorykiller"

.field public static final POLICY_OTHER:Ljava/lang/String; = "other"

.field public static final POLICY_POWERKEEPER:Ljava/lang/String; = "powerkeeper"

.field public static final POLICY_SECURITY:Ljava/lang/String; = "securitycenter"

.field public static final POLICY_SYSTEM:Ljava/lang/String; = "system"

.field public static final POLICY_SYSTEMUI:Ljava/lang/String; = "systemui"

.field public static final POLICY_UNUSE:Ljava/lang/String; = "userunused"

.field public static final POLICY_WHETSTONE:Ljava/lang/String; = "whetstone"

.field public static final PROCESS_STATE_NONEXISTENT:I = -0x1

.field public static final UNKNOWN_ADJ:I = 0x7fffffff


# instance fields
.field private isInterestingToUser:Z

.field private killedProc:Ljava/lang/String;

.field private killedReason:Ljava/lang/String;

.field private killedTime:J

.field private policy:Ljava/lang/String;

.field private procAdj:I

.field private procState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lmiui/mqsas/sdk/event/KillProcessEvent$1;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/KillProcessEvent$1;-><init>()V

    sput-object v0, Lmiui/mqsas/sdk/event/KillProcessEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->policy:Ljava/lang/String;

    .line 58
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedReason:Ljava/lang/String;

    .line 59
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedProc:Ljava/lang/String;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->procState:I

    .line 61
    const v0, 0x7fffffff

    iput v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->procAdj:I

    .line 62
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedTime:J

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->isInterestingToUser:Z

    .line 56
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->policy:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedReason:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedProc:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->procState:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->procAdj:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedTime:J

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->isInterestingToUser:Z

    .line 66
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/mqsas/sdk/event/KillProcessEvent;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lmiui/mqsas/sdk/event/KillProcessEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public getKilledProc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedProc:Ljava/lang/String;

    return-object v0
.end method

.method public getKilledReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedReason:Ljava/lang/String;

    return-object v0
.end method

.method public getKilledTime()J
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedTime:J

    return-wide v0
.end method

.method public getPolicy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->policy:Ljava/lang/String;

    return-object v0
.end method

.method public getProcAdj()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->procAdj:I

    return v0
.end method

.method public getProcState()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->procState:I

    return v0
.end method

.method public isInterestingToUser()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->isInterestingToUser:Z

    return v0
.end method

.method public setInterestingToUser(Z)V
    .locals 0
    .param p1, "interestingToUser"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->isInterestingToUser:Z

    .line 156
    return-void
.end method

.method public setKilledProc(Ljava/lang/String;)V
    .locals 0
    .param p1, "killedProc"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedProc:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setKilledReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "killedReason"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedReason:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setKilledTime(J)V
    .locals 1
    .param p1, "killedTime"    # J

    .prologue
    .line 149
    iput-wide p1, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedTime:J

    .line 148
    return-void
.end method

.method public setPolicy(Ljava/lang/String;)V
    .locals 0
    .param p1, "policy"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->policy:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setProcAdj(I)V
    .locals 0
    .param p1, "procAdj"    # I

    .prologue
    .line 141
    iput p1, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->procAdj:I

    .line 140
    return-void
.end method

.method public setProcState(I)V
    .locals 0
    .param p1, "procState"    # I

    .prologue
    .line 133
    iput p1, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->procState:I

    .line 132
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "KillProcessEvent { policy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->policy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 164
    const-string/jumbo v2, " killedProcess="

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 164
    iget-object v2, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedProc:Ljava/lang/String;

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 164
    const-string/jumbo v2, " processState="

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 164
    iget v2, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->procState:I

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 165
    const-string/jumbo v2, " processAdj="

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 165
    iget v2, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->procAdj:I

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 165
    const-string/jumbo v2, " killedTime="

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 165
    iget-wide v2, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedTime:J

    .line 163
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    const-string/jumbo v2, " isInterestingToUser="

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    iget-boolean v2, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->isInterestingToUser:Z

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    const-string/jumbo v2, "}"

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->policy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedProc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->procState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->procAdj:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 101
    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->isInterestingToUser:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
