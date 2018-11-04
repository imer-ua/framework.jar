.class Lcom/miui/whetstone/IWhetstone$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWhetstone.java"

# interfaces
.implements Lcom/miui/whetstone/IWhetstone;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/IWhetstone$Stub;
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
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/miui/whetstone/IWhetstone$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 135
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/miui/whetstone/IWhetstone$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    const-string/jumbo v0, "com.miui.whetstone.IWhetstone"

    return-object v0
.end method

.method public log(I[B)V
    .locals 5
    .param p1, "tag"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 231
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.miui.whetstone.IWhetstone"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 234
    iget-object v1, p0, Lcom/miui/whetstone/IWhetstone$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 227
    return-void

    .line 236
    :catchall_0
    move-exception v1

    .line 237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 236
    throw v1
.end method

.method public recordRTCWakeupInfo(ILandroid/app/PendingIntent;Z)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "operation"    # Landroid/app/PendingIntent;
    .param p3, "status"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 246
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.miui.whetstone.IWhetstone"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    if-eqz p2, :cond_0

    .line 249
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 255
    :goto_0
    if-eqz p3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    iget-object v1, p0, Lcom/miui/whetstone/IWhetstone$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 242
    return-void

    .line 253
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 258
    :catchall_0
    move-exception v1

    .line 259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 258
    throw v1

    :cond_1
    move v1, v2

    .line 255
    goto :goto_1
.end method

.method public registerMiuiWhetstoneCloudSync(Landroid/content/ComponentName;Lcom/miui/whetstone/CloudControlInfo;)I
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "info"    # Lcom/miui/whetstone/CloudControlInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 150
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 153
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.miui.whetstone.IWhetstone"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 154
    if-eqz p1, :cond_0

    .line 155
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 161
    :goto_0
    if-eqz p2, :cond_1

    .line 162
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Lcom/miui/whetstone/CloudControlInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 168
    :goto_1
    iget-object v3, p0, Lcom/miui/whetstone/IWhetstone$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 169
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 170
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 173
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 176
    return v2

    .line 159
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v3

    .line 173
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 172
    throw v3

    .line 166
    :cond_1
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public registerMiuiWhetstoneCloudSyncList(Landroid/content/ComponentName;Ljava/util/List;)I
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/whetstone/CloudControlInfo;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 180
    .local p2, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/miui/whetstone/CloudControlInfo;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 181
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 184
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.miui.whetstone.IWhetstone"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 185
    if-eqz p1, :cond_0

    .line 186
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 192
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 193
    iget-object v3, p0, Lcom/miui/whetstone/IWhetstone$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 194
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 195
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 198
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 201
    return v2

    .line 190
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 197
    :catchall_0
    move-exception v3

    .line 198
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 197
    throw v3
.end method

.method public unregisterMiuiWhetstoneCloudSync(Landroid/content/ComponentName;)I
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
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
    const-string/jumbo v3, "com.miui.whetstone.IWhetstone"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 210
    if-eqz p1, :cond_0

    .line 211
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 217
    :goto_0
    iget-object v3, p0, Lcom/miui/whetstone/IWhetstone$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 218
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 219
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 222
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 225
    return v2

    .line 215
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 221
    :catchall_0
    move-exception v3

    .line 222
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 221
    throw v3
.end method
