.class public Lmiui/hardware/display/DisplayFeatureServiceProxy;
.super Ljava/lang/Object;
.source "DisplayFeatureServiceProxy.java"


# static fields
.field private static final INTERFACE_DESCRIPTOR:Ljava/lang/String; = "miui.hardware.display.IDisplayFeatureService"

.field private static final TRANSACTION_setAd:I = 0x3

.field private static final TRANSACTION_setCABC:I = 0x5

.field private static final TRANSACTION_setCE:I = 0x4

.field private static final TRANSACTION_setColorPrefer:I = 0x1

.field private static final TRANSACTION_setEyeCare:I = 0x2

.field private static final TRANSACTION_setFeature:I = 0x64

.field private static final TRANSACTION_setGamutMode:I = 0x6


# instance fields
.field private mDescriptor:Ljava/lang/String;

.field private mService:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lmiui/hardware/display/DisplayFeatureServiceProxy;->mService:Landroid/os/IBinder;

    .line 29
    :try_start_0
    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureServiceProxy;->mService:Landroid/os/IBinder;

    invoke-interface {v1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/hardware/display/DisplayFeatureServiceProxy;->mDescriptor:Ljava/lang/String;

    .line 30
    iget-object v1, p0, Lmiui/hardware/display/DisplayFeatureServiceProxy;->mDescriptor:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    const-string/jumbo v1, "miui.hardware.display.IDisplayFeatureService"

    iput-object v1, p0, Lmiui/hardware/display/DisplayFeatureServiceProxy;->mDescriptor:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :cond_0
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private varargs callTransact(I[I)I
    .locals 6
    .param p1, "transactId"    # I
    .param p2, "params"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 74
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 75
    .local v2, "reply":Landroid/os/Parcel;
    const/4 v3, -0x1

    .line 77
    .local v3, "result":I
    :try_start_0
    iget-object v5, p0, Lmiui/hardware/display/DisplayFeatureServiceProxy;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 78
    array-length v5, p2

    :goto_0
    if-ge v4, v5, :cond_0

    aget v1, p2, v4

    .line 79
    .local v1, "param":I
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 81
    .end local v1    # "param":I
    :cond_0
    iget-object v4, p0, Lmiui/hardware/display/DisplayFeatureServiceProxy;->mService:Landroid/os/IBinder;

    const/4 v5, 0x0

    invoke-interface {v4, p1, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 82
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 83
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 86
    :cond_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 87
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 89
    return v3

    .line 85
    :catchall_0
    move-exception v4

    .line 86
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 87
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 85
    throw v4
.end method


# virtual methods
.method setAd(III)I
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "enable"    # I
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 49
    new-array v0, v2, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    invoke-direct {p0, v2, v0}, Lmiui/hardware/display/DisplayFeatureServiceProxy;->callTransact(I[I)I

    move-result v0

    return v0
.end method

.method setCABC(II)I
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lmiui/hardware/display/DisplayFeatureServiceProxy;->callTransact(I[I)I

    move-result v0

    return v0
.end method

.method setCE(II)I
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lmiui/hardware/display/DisplayFeatureServiceProxy;->callTransact(I[I)I

    move-result v0

    return v0
.end method

.method setColorPrefer(II)I
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    aput p2, v0, v2

    invoke-direct {p0, v2, v0}, Lmiui/hardware/display/DisplayFeatureServiceProxy;->callTransact(I[I)I

    move-result v0

    return v0
.end method

.method setEyeCare(II)I
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 44
    new-array v0, v2, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-direct {p0, v2, v0}, Lmiui/hardware/display/DisplayFeatureServiceProxy;->callTransact(I[I)I

    move-result v0

    return v0
.end method

.method setFeature(IIII)I
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "mode"    # I
    .param p3, "value"    # I
    .param p4, "cookie"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    const/4 v1, 0x3

    aput p4, v0, v1

    const/16 v1, 0x64

    invoke-direct {p0, v1, v0}, Lmiui/hardware/display/DisplayFeatureServiceProxy;->callTransact(I[I)I

    move-result v0

    return v0
.end method

.method setGamutMode(II)I
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lmiui/hardware/display/DisplayFeatureServiceProxy;->callTransact(I[I)I

    move-result v0

    return v0
.end method
