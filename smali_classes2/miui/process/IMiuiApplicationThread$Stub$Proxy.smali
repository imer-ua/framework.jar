.class Lmiui/process/IMiuiApplicationThread$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMiuiApplicationThread.java"

# interfaces
.implements Lmiui/process/IMiuiApplicationThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/process/IMiuiApplicationThread$Stub;
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
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lmiui/process/IMiuiApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 70
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lmiui/process/IMiuiApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public dumpMessage()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 103
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 106
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "miui.process.IMiuiApplicationThread"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 107
    iget-object v3, p0, Lmiui/process/IMiuiApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 108
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 109
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 112
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 115
    return-object v2

    .line 111
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 111
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string/jumbo v0, "miui.process.IMiuiApplicationThread"

    return-object v0
.end method

.method public longScreenshot(I)Z
    .locals 6
    .param p1, "cmd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 85
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 88
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "miui.process.IMiuiApplicationThread"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-object v3, p0, Lmiui/process/IMiuiApplicationThread$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 91
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 92
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 95
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 96
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 98
    return v2

    .line 92
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 94
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 95
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 96
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 94
    throw v3
.end method
