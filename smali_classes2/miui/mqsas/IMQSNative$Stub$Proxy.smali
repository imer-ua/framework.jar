.class Lmiui/mqsas/IMQSNative$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMQSNative.java"

# interfaces
.implements Lmiui/mqsas/IMQSNative;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/mqsas/IMQSNative$Stub;
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
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lmiui/mqsas/IMQSNative$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 147
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lmiui/mqsas/IMQSNative$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public attachSockFilter(Ljava/lang/String;Ljava/lang/String;IIIII[BILjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "srcMac"    # Ljava/lang/String;
    .param p2, "dstMac"    # Ljava/lang/String;
    .param p3, "srcIp"    # I
    .param p4, "dstIp"    # I
    .param p5, "proto"    # I
    .param p6, "srcPort"    # I
    .param p7, "dstPort"    # I
    .param p8, "identifyData"    # [B
    .param p9, "retDataLen"    # I
    .param p10, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 185
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 188
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "miui.mqsas.IMQSNative"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 197
    move/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    move-object/from16 v0, p10

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-object v4, p0, Lmiui/mqsas/IMQSNative$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 200
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 201
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 202
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 210
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 212
    return-object v3

    .line 205
    :cond_0
    const/4 v3, 0x0

    .local v3, "_result":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    .line 208
    .end local v3    # "_result":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v4

    .line 209
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 210
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 208
    throw v4
.end method

.method public captureLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZIZLjava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "headline"    # Ljava/lang/String;
    .param p5, "offline"    # Z
    .param p6, "id"    # I
    .param p7, "upload"    # Z
    .param p8, "where"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZIZ",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p3, "actions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "parmas":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p9, "includeFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 162
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 164
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "miui.mqsas.IMQSNative"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 168
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 169
    if-eqz p5, :cond_0

    move v4, v2

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    if-eqz p7, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 174
    iget-object v2, p0, Lmiui/mqsas/IMQSNative$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 175
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 159
    return-void

    :cond_0
    move v4, v3

    .line 169
    goto :goto_0

    :cond_1
    move v2, v3

    .line 171
    goto :goto_1

    .line 177
    :catchall_0
    move-exception v2

    .line 178
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 177
    throw v2
.end method

.method public getFreeFragStats()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 253
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 256
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "miui.mqsas.IMQSNative"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 257
    iget-object v3, p0, Lmiui/mqsas/IMQSNative$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 258
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 259
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 262
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 265
    return-object v2

    .line 261
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 262
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 261
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    const-string/jumbo v0, "miui.mqsas.IMQSNative"

    return-object v0
.end method

.method public runCommand(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 233
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 236
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "miui.mqsas.IMQSNative"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget-object v3, p0, Lmiui/mqsas/IMQSNative$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 241
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 242
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 245
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 248
    return v2

    .line 244
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 245
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 244
    throw v3
.end method

.method public setCoreFilter(IZ)V
    .locals 5
    .param p1, "pid"    # I
    .param p2, "isFull"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 216
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 217
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 219
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "miui.mqsas.IMQSNative"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget-object v2, p0, Lmiui/mqsas/IMQSNative$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 223
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 214
    return-void

    .line 225
    :catchall_0
    move-exception v2

    .line 226
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 225
    throw v2
.end method
