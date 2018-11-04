.class Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;
.super Ljava/lang/Object;
.source "IFingerprintServiceReceiver.java"

# interfaces
.implements Landroid/hardware/fingerprint/IFingerprintServiceReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;
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
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 148
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    const-string/jumbo v0, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    return-object v0
.end method

.method public onAcquired(JI)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 179
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 181
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget-object v1, p0, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 175
    return-void

    .line 184
    :catchall_0
    move-exception v1

    .line 185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 184
    throw v1
.end method

.method public onAuthenticationFailed(J)V
    .locals 5
    .param p1, "deviceId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 212
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 214
    iget-object v1, p0, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 208
    return-void

    .line 216
    :catchall_0
    move-exception v1

    .line 217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 216
    throw v1
.end method

.method public onAuthenticationFidoSucceeded(JLandroid/hardware/fingerprint/Fingerprint;Landroid/hardware/fingerprint/FingerprintFidoOut;)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p4, "fidoOut"    # Landroid/hardware/fingerprint/FingerprintFidoOut;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 253
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 255
    if-eqz p3, :cond_0

    .line 256
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/hardware/fingerprint/Fingerprint;->writeToParcel(Landroid/os/Parcel;I)V

    .line 262
    :goto_0
    if-eqz p4, :cond_1

    .line 263
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/hardware/fingerprint/FingerprintFidoOut;->writeToParcel(Landroid/os/Parcel;I)V

    .line 269
    :goto_1
    iget-object v1, p0, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 249
    return-void

    .line 260
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 271
    :catchall_0
    move-exception v1

    .line 272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 271
    throw v1

    .line 267
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onAuthenticationSucceeded(JLandroid/hardware/fingerprint/Fingerprint;I)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 192
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 194
    if-eqz p3, :cond_0

    .line 195
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/hardware/fingerprint/Fingerprint;->writeToParcel(Landroid/os/Parcel;I)V

    .line 201
    :goto_0
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget-object v1, p0, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 188
    return-void

    .line 199
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 204
    :catchall_0
    move-exception v1

    .line 205
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 204
    throw v1
.end method

.method public onEnrollResult(JIII)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 164
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 166
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-object v1, p0, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 160
    return-void

    .line 171
    :catchall_0
    move-exception v1

    .line 172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 171
    throw v1
.end method

.method public onError(JI)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 224
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 226
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    iget-object v1, p0, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 220
    return-void

    .line 229
    :catchall_0
    move-exception v1

    .line 230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 229
    throw v1
.end method

.method public onRemoved(JII)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 237
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 239
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget-object v1, p0, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 233
    return-void

    .line 243
    :catchall_0
    move-exception v1

    .line 244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 243
    throw v1
.end method
