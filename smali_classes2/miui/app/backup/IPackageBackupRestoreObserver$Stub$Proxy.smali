.class Lmiui/app/backup/IPackageBackupRestoreObserver$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPackageBackupRestoreObserver.java"

# interfaces
.implements Lmiui/app/backup/IPackageBackupRestoreObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;
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
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 134
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const-string/jumbo v0, "miui.app.backup.IPackageBackupRestoreObserver"

    return-object v0
.end method

.method public onBackupEnd(Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 163
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-object v1, p0, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 159
    return-void

    .line 168
    :catchall_0
    move-exception v1

    .line 169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 168
    throw v1
.end method

.method public onBackupStart(Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 150
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-object v1, p0, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 146
    return-void

    .line 155
    :catchall_0
    move-exception v1

    .line 156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 155
    throw v1
.end method

.method public onCustomProgressChange(Ljava/lang/String;IIJJ)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .param p3, "progType"    # I
    .param p4, "prog"    # J
    .param p6, "total"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 230
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 235
    invoke-virtual {v0, p6, p7}, Landroid/os/Parcel;->writeLong(J)V

    .line 236
    iget-object v1, p0, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 226
    return-void

    .line 238
    :catchall_0
    move-exception v1

    .line 239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 238
    throw v1
.end method

.method public onError(Ljava/lang/String;II)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .param p3, "err"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 216
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget-object v1, p0, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 212
    return-void

    .line 222
    :catchall_0
    move-exception v1

    .line 223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 222
    throw v1
.end method

.method public onRestoreEnd(Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 189
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-object v1, p0, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 185
    return-void

    .line 194
    :catchall_0
    move-exception v1

    .line 195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 194
    throw v1
.end method

.method public onRestoreError(Ljava/lang/String;II)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .param p3, "err"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 202
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget-object v1, p0, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 198
    return-void

    .line 208
    :catchall_0
    move-exception v1

    .line 209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 208
    throw v1
.end method

.method public onRestoreStart(Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 176
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget-object v1, p0, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 172
    return-void

    .line 181
    :catchall_0
    move-exception v1

    .line 182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 181
    throw v1
.end method
