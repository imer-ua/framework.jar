.class Landroid/net/IMiuiNetworkManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMiuiNetworkManager.java"

# interfaces
.implements Landroid/net/IMiuiNetworkManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IMiuiNetworkManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Landroid/net/IMiuiNetworkManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 65
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Landroid/net/IMiuiNetworkManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string/jumbo v0, "android.net.IMiuiNetworkManager"

    return-object v0
.end method

.method public setNetworkTrafficPolicy(I)Z
    .locals 6
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 80
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 83
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.net.IMiuiNetworkManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-object v3, p0, Landroid/net/IMiuiNetworkManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 86
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 87
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 90
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 91
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 93
    return v2

    .line 87
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 89
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 90
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 91
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 89
    throw v3
.end method
