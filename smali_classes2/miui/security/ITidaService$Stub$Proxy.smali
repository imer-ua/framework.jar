.class Lmiui/security/ITidaService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITidaService.java"

# interfaces
.implements Lmiui/security/ITidaService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/security/ITidaService$Stub;
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
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lmiui/security/ITidaService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 118
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lmiui/security/ITidaService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 133
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 136
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "miui.security.ITidaService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v3, p0, Lmiui/security/ITidaService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 139
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 140
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 143
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 146
    return v2

    .line 140
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 142
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 143
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 142
    throw v3
.end method

.method public generateKeyPair(Ljava/lang/String;Ljava/lang/String;)Lmiui/security/KeyPairParcel;
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "alg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 151
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 154
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "miui.security.ITidaService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object v3, p0, Lmiui/security/ITidaService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 158
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 159
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    sget-object v3, Lmiui/security/KeyPairParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/security/KeyPairParcel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 170
    return-object v2

    .line 163
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Lmiui/security/KeyPairParcel;
    goto :goto_0

    .line 166
    .end local v2    # "_result":Lmiui/security/KeyPairParcel;
    :catchall_0
    move-exception v3

    .line 167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 166
    throw v3
.end method

.method public getFpIds()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 223
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 226
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "miui.security.ITidaService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 227
    iget-object v3, p0, Lmiui/security/ITidaService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 228
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 229
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 232
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 235
    return-object v2

    .line 231
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 231
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const-string/jumbo v0, "miui.security.ITidaService"

    return-object v0
.end method

.method public sign()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 206
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 209
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "miui.security.ITidaService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 210
    iget-object v3, p0, Lmiui/security/ITidaService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 211
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 212
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 215
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 218
    return-object v2

    .line 214
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    .line 215
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 214
    throw v3
.end method

.method public signInit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "alg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 175
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 177
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "miui.security.ITidaService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Lmiui/security/ITidaService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 181
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 172
    return-void

    .line 183
    :catchall_0
    move-exception v2

    .line 184
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 183
    throw v2
.end method

.method public signUpdate(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 191
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 193
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "miui.security.ITidaService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-object v2, p0, Lmiui/security/ITidaService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 196
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 188
    return-void

    .line 198
    :catchall_0
    move-exception v2

    .line 199
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 198
    throw v2
.end method
