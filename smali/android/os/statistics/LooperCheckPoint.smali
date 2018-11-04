.class public final Landroid/os/statistics/LooperCheckPoint;
.super Landroid/os/statistics/MicroscopicEvent;
.source "LooperCheckPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/LooperCheckPoint$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/statistics/MicroscopicEvent",
        "<",
        "Landroid/os/statistics/MicroscopicEvent$MicroEventFields;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/statistics/LooperOnce;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Landroid/os/statistics/LooperCheckPoint$1;

    invoke-direct {v0}, Landroid/os/statistics/LooperCheckPoint$1;-><init>()V

    .line 59
    sput-object v0, Landroid/os/statistics/LooperCheckPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;

    invoke-direct {v0}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;-><init>()V

    const/16 v1, 0xc

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MicroscopicEvent;-><init>(ILandroid/os/statistics/MicroscopicEvent$MicroEventFields;)V

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/statistics/MicroscopicEvent;->eventFlags:I

    .line 10
    return-void
.end method


# virtual methods
.method fillIn(Landroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)V
    .locals 0
    .param p1, "dataParcel"    # Landroid/os/statistics/JniParcel;
    .param p2, "javaBackTrace"    # Ljava/lang/Object;
    .param p3, "nativeBackTrace"    # Landroid/os/statistics/NativeBackTrace;

    .prologue
    .line 56
    return-void
.end method

.method public hasMultiplePeerBlockingEvents()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public hasPeerBlockingEvent()Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockedBy(Landroid/os/statistics/MicroscopicEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/os/statistics/MicroscopicEvent;

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockedBySameProcess()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockingMultiplePeer()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public isBlockingSameProcess()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public isPeerBlockingEvent()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public isRootEvent()Z
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    return v0
.end method
