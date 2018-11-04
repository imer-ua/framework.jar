.class Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;
.super Lcom/android/internal/telephony/IPhoneStateListener$Stub;
.source "PhoneStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IPhoneStateListenerStub"
.end annotation


# instance fields
.field private mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/telephony/PhoneStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/telephony/PhoneStateListener;)V
    .locals 1
    .param p1, "phoneStateListener"    # Landroid/telephony/PhoneStateListener;

    .prologue
    .line 555
    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;-><init>()V

    .line 556
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    .line 555
    return-void
.end method

.method private send(IIILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 560
    iget-object v1, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 561
    .local v0, "listener":Landroid/telephony/PhoneStateListener;
    if-eqz v0, :cond_0

    .line 562
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->-get0(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 559
    :cond_0
    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 4
    .param p1, "cfi"    # Z

    .prologue
    const/4 v1, 0x0

    .line 579
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v1, v3}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 578
    return-void

    :cond_0
    move v0, v1

    .line 579
    goto :goto_0
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 588
    const/16 v0, 0x20

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 587
    return-void
.end method

.method public onCarrierNetworkChange(Z)V
    .locals 3
    .param p1, "active"    # Z

    .prologue
    const/4 v2, 0x0

    .line 634
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-direct {p0, v1, v2, v2, v0}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 633
    return-void
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const/4 v1, 0x0

    .line 608
    const/16 v0, 0x400

    invoke-direct {p0, v0, v1, v1, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 607
    return-void
.end method

.method public onCellLocationChanged(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 583
    invoke-static {p1}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v0

    .line 584
    .local v0, "location":Landroid/telephony/CellLocation;
    const/16 v1, 0x10

    invoke-direct {p0, v1, v2, v2, v0}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 582
    return-void
.end method

.method public onDataActivity(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 596
    const/16 v0, 0x80

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 595
    return-void
.end method

.method public onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 2
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .prologue
    const/4 v1, 0x0

    .line 622
    const/16 v0, 0x2000

    invoke-direct {p0, v0, v1, v1, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 621
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 592
    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 591
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 4
    .param p1, "mwi"    # Z

    .prologue
    const/4 v1, 0x0

    .line 575
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v1, v3}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 574
    return-void

    :cond_0
    move v0, v1

    .line 575
    goto :goto_0
.end method

.method public onOemHookRawEvent([B)V
    .locals 2
    .param p1, "rawData"    # [B

    .prologue
    const/4 v1, 0x0

    .line 630
    const v0, 0x8000

    invoke-direct {p0, v0, v1, v1, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 629
    return-void
.end method

.method public onOtaspChanged(I)V
    .locals 3
    .param p1, "otaspMode"    # I

    .prologue
    .line 604
    const/16 v0, 0x200

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 603
    return-void
.end method

.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .locals 2
    .param p1, "callState"    # Landroid/telephony/PreciseCallState;

    .prologue
    const/4 v1, 0x0

    .line 612
    const/16 v0, 0x800

    invoke-direct {p0, v0, v1, v1, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 611
    return-void
.end method

.method public onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 2
    .param p1, "dataConnectionState"    # Landroid/telephony/PreciseDataConnectionState;

    .prologue
    const/4 v1, 0x0

    .line 617
    const/16 v0, 0x1000

    invoke-direct {p0, v0, v1, v1, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 616
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v1, 0x0

    .line 567
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, v1, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 566
    return-void
.end method

.method public onSignalStrengthChanged(I)V
    .locals 3
    .param p1, "asu"    # I

    .prologue
    .line 571
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 570
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    const/4 v1, 0x0

    .line 600
    const/16 v0, 0x100

    invoke-direct {p0, v0, v1, v1, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 599
    return-void
.end method

.method public onVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V
    .locals 2
    .param p1, "lteState"    # Landroid/telephony/VoLteServiceState;

    .prologue
    const/4 v1, 0x0

    .line 626
    const/16 v0, 0x4000

    invoke-direct {p0, v0, v1, v1, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 625
    return-void
.end method
