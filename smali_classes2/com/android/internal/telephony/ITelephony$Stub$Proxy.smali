.class Lcom/android/internal/telephony/ITelephony$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony$Stub;
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
    .line 1750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1752
    iput-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1750
    return-void
.end method


# virtual methods
.method public answerRingingCall()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1866
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1867
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1869
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1870
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1871
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1874
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1864
    return-void

    .line 1873
    :catchall_0
    move-exception v2

    .line 1874
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1873
    throw v2
.end method

.method public answerRingingCallForSubscriber(I)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1895
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1896
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1898
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1899
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1900
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1901
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1904
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1893
    return-void

    .line 1903
    :catchall_0
    move-exception v2

    .line 1904
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1903
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1790
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1791
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1793
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1794
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1795
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1796
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1797
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1800
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1788
    return-void

    .line 1799
    :catchall_0
    move-exception v2

    .line 1800
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1799
    throw v2
.end method

.method public canChangeDtmfToneLength()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4455
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4458
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4459
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x77

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4460
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4461
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4464
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4467
    return v2

    .line 4461
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4463
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4463
    throw v3
.end method

.method public carrierActionSetMeteredApnsEnabled(IZ)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5144
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5146
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5147
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5148
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5149
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x94

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5150
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5153
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5141
    return-void

    .line 5152
    :catchall_0
    move-exception v2

    .line 5153
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5152
    throw v2
.end method

.method public carrierActionSetRadioEnabled(IZ)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5166
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5167
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5169
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5170
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5171
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5172
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x95

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5173
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5176
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5164
    return-void

    .line 5175
    :catchall_0
    move-exception v2

    .line 5176
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5175
    throw v2
.end method

.method public checkCarrierPrivilegesForPackage(Ljava/lang/String;)I
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4025
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4026
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4029
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4030
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4031
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x66

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4032
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4033
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4036
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4037
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4039
    return v2

    .line 4035
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 4036
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4037
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4035
    throw v3
.end method

.method public checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4043
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4044
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4047
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4048
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4049
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x67

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4050
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4051
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4054
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4055
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4057
    return v2

    .line 4053
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 4054
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4055
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4053
    throw v3
.end method

.method public dial(Ljava/lang/String;)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1770
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1771
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1773
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1774
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1775
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1776
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1779
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1768
    return-void

    .line 1778
    :catchall_0
    move-exception v2

    .line 1779
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1778
    throw v2
.end method

.method public disableDataConnectivity()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2594
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2595
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2598
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2599
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x26

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2600
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2601
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2604
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2607
    return v2

    .line 2601
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2603
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2604
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2603
    throw v3
.end method

.method public disableLocationUpdates()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2538
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2539
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2541
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2542
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2543
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2546
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2547
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2536
    return-void

    .line 2545
    :catchall_0
    move-exception v2

    .line 2546
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2547
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2545
    throw v2
.end method

.method public disableLocationUpdatesForSubscriber(I)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2556
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2557
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2559
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2560
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2561
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2562
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2565
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2566
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2554
    return-void

    .line 2564
    :catchall_0
    move-exception v2

    .line 2565
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2566
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2564
    throw v2
.end method

.method public disableVisualVoicemailSmsFilter(Ljava/lang/String;I)V
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3073
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3075
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3076
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3077
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3078
    iget-object v1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3e

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3071
    return-void

    .line 3080
    :catchall_0
    move-exception v1

    .line 3081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3080
    throw v1
.end method

.method public enableDataConnectivity()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2574
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2575
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2578
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2579
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x25

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2580
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2581
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2584
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2585
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2587
    return v2

    .line 2581
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2583
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2584
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2585
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2583
    throw v3
.end method

.method public enableLocationUpdates()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2502
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2503
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2505
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2506
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2507
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2510
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2500
    return-void

    .line 2509
    :catchall_0
    move-exception v2

    .line 2510
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2509
    throw v2
.end method

.method public enableLocationUpdatesForSubscriber(I)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2520
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2521
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2523
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2524
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2525
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2526
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2529
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2518
    return-void

    .line 2528
    :catchall_0
    move-exception v2

    .line 2529
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2528
    throw v2
.end method

.method public enableVideoCalling(Z)V
    .locals 5
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4410
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4411
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4413
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4414
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4415
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x75

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4416
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4419
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4408
    return-void

    .line 4418
    :catchall_0
    move-exception v2

    .line 4419
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4418
    throw v2
.end method

.method public enableVisualVoicemailSmsFilter(Ljava/lang/String;ILandroid/telephony/VisualVoicemailSmsFilterSettings;)V
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "settings"    # Landroid/telephony/VisualVoicemailSmsFilterSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3050
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3051
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3053
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3054
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3055
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3056
    if-eqz p3, :cond_0

    .line 3057
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3058
    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Landroid/telephony/VisualVoicemailSmsFilterSettings;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3063
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3064
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3067
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3068
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3048
    return-void

    .line 3061
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3066
    :catchall_0
    move-exception v2

    .line 3067
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3068
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3066
    throw v2
.end method

.method public endCall()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1811
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1812
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1815
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1816
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1817
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1818
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1821
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1824
    return v2

    .line 1818
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1820
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1821
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1820
    throw v3
.end method

.method public endCallForSubscriber(I)Z
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1833
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1834
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1837
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1838
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1839
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1840
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1841
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1844
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1847
    return v2

    .line 1841
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1843
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1844
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1843
    throw v3
.end method

.method public factoryReset(I)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4786
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4787
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4789
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4790
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4791
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x86

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4792
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4795
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4784
    return-void

    .line 4794
    :catchall_0
    move-exception v2

    .line 4795
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4794
    throw v2
.end method

.method public getActivePhoneType()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2768
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2769
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2772
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2773
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2774
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2775
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2778
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2781
    return v2

    .line 2777
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2778
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2777
    throw v3
.end method

.method public getActivePhoneTypeForSlot(I)I
    .locals 6
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2785
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2786
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2789
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2790
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2791
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x30

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2792
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2793
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2796
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2799
    return v2

    .line 2795
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2796
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2795
    throw v3
.end method

.method public getAidForAppType(II)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "appType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4996
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4997
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5000
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5001
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5002
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5003
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5004
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5005
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 5008
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5011
    return-object v2

    .line 5007
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 5008
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5007
    throw v3
.end method

.method public getAllCellInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3313
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3314
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3317
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3318
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3319
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3320
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3321
    sget-object v3, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3324
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3327
    return-object v2

    .line 3323
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :catchall_0
    move-exception v3

    .line 3324
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3323
    throw v3
.end method

.method public getAllowedCarriers(I)Ljava/util/List;
    .locals 6
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5119
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5122
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5123
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5124
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x93

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5125
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5126
    sget-object v3, Landroid/service/carrier/CarrierIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 5129
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/service/carrier/CarrierIdentifier;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5132
    return-object v2

    .line 5128
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/service/carrier/CarrierIdentifier;>;"
    :catchall_0
    move-exception v3

    .line 5129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5128
    throw v3
.end method

.method public getAtr(I)[B
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4971
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4972
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4975
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4976
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4977
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4978
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4979
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4982
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4983
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4985
    return-object v2

    .line 4981
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    .line 4982
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4983
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4981
    throw v3
.end method

.method public getCalculatedPreferredNetworkType(Ljava/lang/String;)I
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3712
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3713
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3716
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3717
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3718
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x58

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3719
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3720
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3723
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3724
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3726
    return v2

    .line 3722
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3723
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3724
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3722
    throw v3
.end method

.method public getCallState()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2699
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2700
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2703
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2704
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2705
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2706
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2709
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2710
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2712
    return v2

    .line 2708
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2709
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2710
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2708
    throw v3
.end method

.method public getCallStateForSlot(I)I
    .locals 6
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2716
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2717
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2720
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2721
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2722
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2723
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2724
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2727
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2730
    return v2

    .line 2726
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2727
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2726
    throw v3
.end method

.method public getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4071
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4072
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4075
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4076
    if-eqz p1, :cond_0

    .line 4077
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4078
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4083
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4084
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x68

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4085
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4086
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4089
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4090
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4092
    return-object v2

    .line 4081
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4088
    :catchall_0
    move-exception v3

    .line 4089
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4090
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4088
    throw v3
.end method

.method public getCarrierPrivilegeStatus(I)I
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4007
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4008
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4011
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4012
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4013
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x65

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4014
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4015
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4018
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4021
    return v2

    .line 4017
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 4018
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4017
    throw v3
.end method

.method public getCdmaEriIconIndex(Ljava/lang/String;)I
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2803
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2804
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2807
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2808
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2809
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x31

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2810
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2811
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2814
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2815
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2817
    return v2

    .line 2813
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2814
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2815
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2813
    throw v3
.end method

.method public getCdmaEriIconIndexForSubscriber(ILjava/lang/String;)I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2821
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2822
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2825
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2826
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2827
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2828
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x32

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2829
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2830
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2833
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2836
    return v2

    .line 2832
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2833
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2832
    throw v3
.end method

.method public getCdmaEriIconMode(Ljava/lang/String;)I
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2840
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2841
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2844
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2845
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2846
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x33

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2847
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2848
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2851
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2854
    return v2

    .line 2850
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2851
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2850
    throw v3
.end method

.method public getCdmaEriIconModeForSubscriber(ILjava/lang/String;)I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2858
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2859
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2862
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2863
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2864
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2865
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x34

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2866
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2867
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2870
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2871
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2873
    return v2

    .line 2869
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2870
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2871
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2869
    throw v3
.end method

.method public getCdmaEriText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2881
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2882
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2885
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2886
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2887
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x35

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2888
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2889
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2892
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2895
    return-object v2

    .line 2891
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 2892
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2891
    throw v3
.end method

.method public getCdmaEriTextForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2904
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2905
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2908
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2909
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2910
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2911
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x36

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2912
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2913
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2916
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2917
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2919
    return-object v2

    .line 2915
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 2916
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2917
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2915
    throw v3
.end method

.method public getCdmaMdn(I)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3967
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3968
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3971
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3972
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3973
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x63

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3974
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3975
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3978
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3979
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3981
    return-object v2

    .line 3977
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 3978
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3979
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3977
    throw v3
.end method

.method public getCdmaMin(I)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3989
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3990
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3993
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3994
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3995
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3996
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3997
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4000
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4001
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4003
    return-object v2

    .line 3999
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 4000
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4001
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3999
    throw v3
.end method

.method public getCdmaPrlVersion(I)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5050
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5051
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5054
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5055
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5056
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x90

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5057
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5058
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 5061
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5064
    return-object v2

    .line 5060
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 5061
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5060
    throw v3
.end method

.method public getCellLocation(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .param p1, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2631
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2632
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2635
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2636
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2637
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x28

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2638
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2639
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2640
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2647
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2650
    return-object v2

    .line 2643
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/os/Bundle;
    goto :goto_0

    .line 2646
    .end local v2    # "_result":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    .line 2647
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2646
    throw v3
.end method

.method public getCellLocationForSubscriber(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2654
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2655
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2658
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2659
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2660
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2661
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x29

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2662
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2663
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2664
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2671
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2674
    return-object v2

    .line 2667
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/os/Bundle;
    goto :goto_0

    .line 2670
    .end local v2    # "_result":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    .line 2671
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2670
    throw v3
.end method

.method public getCellNetworkScanResults(I)Lcom/android/internal/telephony/CellNetworkScanResult;
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3791
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3792
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3795
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3796
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3797
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3798
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3799
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 3800
    sget-object v3, Lcom/android/internal/telephony/CellNetworkScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/CellNetworkScanResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3807
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3810
    return-object v2

    .line 3803
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Lcom/android/internal/telephony/CellNetworkScanResult;
    goto :goto_0

    .line 3806
    .end local v2    # "_result":Lcom/android/internal/telephony/CellNetworkScanResult;
    :catchall_0
    move-exception v3

    .line 3807
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3806
    throw v3
.end method

.method public getDataActivity()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2734
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2735
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2738
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2739
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2740
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2741
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2744
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2747
    return v2

    .line 2743
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2744
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2743
    throw v3
.end method

.method public getDataEnabled(I)Z
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3903
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3904
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3907
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3908
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3909
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x60

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3910
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3911
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3914
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3917
    return v2

    .line 3911
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3913
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3914
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3913
    throw v3
.end method

.method public getDataNetworkType(Ljava/lang/String;)I
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3175
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3178
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3179
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3180
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x43

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3181
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3182
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3185
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3188
    return v2

    .line 3184
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3184
    throw v3
.end method

.method public getDataNetworkTypeForSubscriber(ILjava/lang/String;)I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3193
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3196
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3197
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3198
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3199
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x44

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3200
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3201
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3204
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3205
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3207
    return v2

    .line 3203
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3204
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3205
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3203
    throw v3
.end method

.method public getDataState()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2751
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2752
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2755
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2756
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2757
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2758
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2761
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2764
    return v2

    .line 2760
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2761
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2760
    throw v3
.end method

.method public getDefaultSim()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3349
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3350
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3353
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3354
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3355
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3356
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3359
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3362
    return v2

    .line 3358
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3359
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3358
    throw v3
.end method

.method public getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4690
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4691
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4694
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4695
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4696
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x82

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4697
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4698
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4701
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4704
    return-object v2

    .line 4700
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 4701
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4700
    throw v3
.end method

.method public getDeviceSoftwareVersionForSlot(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4743
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4744
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4747
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4748
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4749
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4750
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x84

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4751
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4752
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4755
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4756
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4758
    return-object v2

    .line 4754
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 4755
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4756
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4754
    throw v3
.end method

.method public getEsn(I)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5024
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5025
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5028
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5029
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5030
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5031
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5032
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 5035
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5038
    return-object v2

    .line 5034
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 5035
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5034
    throw v3
.end method

.method public getImeiForSlot(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4716
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4717
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4720
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4721
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4722
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4723
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x83

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4724
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4725
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4728
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4729
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4731
    return-object v2

    .line 4727
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 4728
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4729
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4727
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1760
    const-string/jumbo v0, "com.android.internal.telephony.ITelephony"

    return-object v0
.end method

.method public getLine1AlphaTagForDisplay(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4163
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4164
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4167
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4168
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4169
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4170
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4171
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4172
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4175
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4178
    return-object v2

    .line 4174
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 4175
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4174
    throw v3
.end method

.method public getLine1NumberForDisplay(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4136
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4139
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4140
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4141
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4142
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4143
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4144
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4147
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4150
    return-object v2

    .line 4146
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 4147
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4146
    throw v3
.end method

.method public getLocaleFromDefaultSim()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4807
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4808
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4811
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4812
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x87

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4813
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4814
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4817
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4818
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4820
    return-object v2

    .line 4816
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 4817
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4818
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4816
    throw v3
.end method

.method public getLteOnCdmaMode(Ljava/lang/String;)I
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3274
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3277
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3278
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3279
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x48

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3280
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3281
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3284
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3287
    return v2

    .line 3283
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3284
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3283
    throw v3
.end method

.method public getLteOnCdmaModeForSubscriber(ILjava/lang/String;)I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3291
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3292
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3295
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3296
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3297
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3298
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x49

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3299
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3300
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3303
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3306
    return v2

    .line 3302
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3302
    throw v3
.end method

.method public getMergedSubscriberIds(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4183
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4186
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4187
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4188
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4189
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4190
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4193
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4196
    return-object v2

    .line 4192
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 4193
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4192
    throw v3
.end method

.method public getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2681
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2682
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2685
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2686
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2687
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2688
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2689
    sget-object v3, Landroid/telephony/NeighboringCellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2692
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2695
    return-object v2

    .line 2691
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :catchall_0
    move-exception v3

    .line 2692
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2691
    throw v3
.end method

.method public getNetworkType()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3139
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3142
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3143
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x41

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3144
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3145
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3148
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3151
    return v2

    .line 3147
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3148
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3147
    throw v3
.end method

.method public getNetworkTypeForSubscriber(ILjava/lang/String;)I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3156
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3159
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3160
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3161
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3162
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x42

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3163
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3164
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3167
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3170
    return v2

    .line 3166
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3166
    throw v3
.end method

.method public getPackagesWithCarrierPrivileges()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4950
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4951
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4954
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4955
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4956
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4957
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4960
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4961
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4963
    return-object v2

    .line 4959
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    .line 4960
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4961
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4959
    throw v3
.end method

.method public getPcscfAddress(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3926
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3927
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3930
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3931
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3932
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3933
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x61

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3934
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3935
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3938
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3939
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3941
    return-object v2

    .line 3937
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 3938
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3939
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3937
    throw v3
.end method

.method public getPreferredNetworkType(I)I
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3730
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3731
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3734
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3735
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3736
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x59

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3737
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3738
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3741
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3742
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3744
    return v2

    .line 3740
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3741
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3742
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3740
    throw v3
.end method

.method public getRadioAccessFamily(ILjava/lang/String;)I
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4386
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4387
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4390
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4391
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4392
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4393
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x74

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4394
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4395
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4398
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4401
    return v2

    .line 4397
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 4398
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4397
    throw v3
.end method

.method public getServiceStateForSubscriber(ILjava/lang/String;)Landroid/telephony/ServiceState;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4855
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4856
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4859
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4860
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4861
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4862
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x89

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4863
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4864
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 4865
    sget-object v3, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ServiceState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4872
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4873
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4875
    return-object v2

    .line 4868
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/telephony/ServiceState;
    goto :goto_0

    .line 4871
    .end local v2    # "_result":Landroid/telephony/ServiceState;
    :catchall_0
    move-exception v3

    .line 4872
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4873
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4871
    throw v3
.end method

.method public getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I
    .locals 6
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4762
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4763
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4766
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4767
    if-eqz p1, :cond_0

    .line 4768
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4769
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/telecom/PhoneAccount;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4774
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x85

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4775
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4776
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4779
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4782
    return v2

    .line 4772
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4778
    :catchall_0
    move-exception v3

    .line 4779
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4778
    throw v3
.end method

.method public getSystemVisualVoicemailSmsFilterSettings(Ljava/lang/String;I)Landroid/telephony/VisualVoicemailSmsFilterSettings;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3115
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3118
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3119
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3120
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3121
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x40

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3122
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3123
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 3124
    sget-object v3, Landroid/telephony/VisualVoicemailSmsFilterSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/VisualVoicemailSmsFilterSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3131
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3134
    return-object v2

    .line 3127
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    goto :goto_0

    .line 3130
    .end local v2    # "_result":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    :catchall_0
    move-exception v3

    .line 3131
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3130
    throw v3
.end method

.method public getTelephonyHistograms()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5075
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5076
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5079
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5080
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x91

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5081
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5082
    sget-object v3, Landroid/telephony/TelephonyHistogram;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 5085
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5086
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5088
    return-object v2

    .line 5084
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    :catchall_0
    move-exception v3

    .line 5085
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5086
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5084
    throw v3
.end method

.method public getTetherApnRequired()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3748
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3749
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3752
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3753
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3754
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3755
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3758
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3761
    return v2

    .line 3757
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3758
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3757
    throw v3
.end method

.method public getVisualVoicemailSmsFilterSettings(Ljava/lang/String;I)Landroid/telephony/VisualVoicemailSmsFilterSettings;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3088
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3089
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3092
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3093
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3094
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3095
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3096
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3097
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 3098
    sget-object v3, Landroid/telephony/VisualVoicemailSmsFilterSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/VisualVoicemailSmsFilterSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3105
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3108
    return-object v2

    .line 3101
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    goto :goto_0

    .line 3104
    .end local v2    # "_result":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    :catchall_0
    move-exception v3

    .line 3105
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3104
    throw v3
.end method

.method public getVoiceMessageCount()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2968
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2969
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2972
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2973
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x39

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2974
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2975
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2978
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2979
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2981
    return v2

    .line 2977
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2978
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2979
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2977
    throw v3
.end method

.method public getVoiceMessageCountForSubscriber(I)I
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2985
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2986
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2989
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2990
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2991
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2992
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2993
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2996
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2997
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2999
    return v2

    .line 2995
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 2996
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2997
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2995
    throw v3
.end method

.method public getVoiceNetworkTypeForSubscriber(ILjava/lang/String;)I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3212
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3215
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3216
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3217
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3218
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x45

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3219
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3220
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3223
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3226
    return v2

    .line 3222
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 3223
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3222
    throw v3
.end method

.method public getVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    .locals 6
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4887
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4888
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4891
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4892
    if-eqz p1, :cond_0

    .line 4893
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4894
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4899
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4900
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4901
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 4902
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4909
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4912
    return-object v2

    .line 4897
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4908
    :catchall_0
    move-exception v3

    .line 4909
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4908
    throw v3

    .line 4905
    :cond_1
    const/4 v2, 0x0

    .local v2, "_result":Landroid/net/Uri;
    goto :goto_1
.end method

.method public getVtDataUsage()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5188
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5189
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5192
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5193
    iget-object v4, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x96

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5194
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5195
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 5198
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5201
    return-wide v2

    .line 5197
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    .line 5198
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5197
    throw v4
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 6
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2317
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2318
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2321
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2322
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2323
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2324
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2325
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2328
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2331
    return v2

    .line 2325
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2327
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2328
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2327
    throw v3
.end method

.method public handlePinMmiForSubscriber(ILjava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2343
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2344
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2347
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2348
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2349
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2350
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x19

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2351
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2352
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2355
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2358
    return v2

    .line 2352
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2354
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2355
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2354
    throw v3
.end method

.method public hasIccCard()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3234
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3237
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3238
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x46

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3239
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3240
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3243
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3246
    return v2

    .line 3240
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3242
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3243
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3242
    throw v3
.end method

.method public hasIccCardUsingSlotId(I)Z
    .locals 6
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3255
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3256
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3259
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3260
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3261
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x47

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3262
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3263
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3266
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3269
    return v2

    .line 3263
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3265
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3265
    throw v3
.end method

.method public iccCloseLogicalChannel(II)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3441
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3442
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3445
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3446
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3447
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3448
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3449
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3450
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3453
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3456
    return v2

    .line 3450
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3452
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3453
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3452
    throw v3
.end method

.method public iccExchangeSimIO(IIIIIILjava/lang/String;)[B
    .locals 6
    .param p1, "subId"    # I
    .param p2, "fileID"    # I
    .param p3, "command"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3555
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3556
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3559
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3560
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3561
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3562
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3563
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3564
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3565
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3566
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3567
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x52

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3568
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3569
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3572
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3575
    return-object v2

    .line 3571
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    .line 3572
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3571
    throw v3
.end method

.method public iccOpenLogicalChannel(ILjava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "AID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3375
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3376
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3379
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3380
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3381
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3382
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3383
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3384
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 3385
    sget-object v3, Landroid/telephony/IccOpenLogicalChannelResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/IccOpenLogicalChannelResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3392
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3395
    return-object v2

    .line 3388
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    goto :goto_0

    .line 3391
    .end local v2    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :catchall_0
    move-exception v3

    .line 3392
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3391
    throw v3
.end method

.method public iccOpenLogicalChannelWithP2(ILjava/lang/String;B)Landroid/telephony/IccOpenLogicalChannelResponse;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "AID"    # Ljava/lang/String;
    .param p3, "p2"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3406
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3407
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3410
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3411
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3412
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3413
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByte(B)V

    .line 3414
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3415
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3416
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 3417
    sget-object v3, Landroid/telephony/IccOpenLogicalChannelResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/IccOpenLogicalChannelResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3424
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3427
    return-object v2

    .line 3420
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    goto :goto_0

    .line 3423
    .end local v2    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :catchall_0
    move-exception v3

    .line 3424
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3423
    throw v3
.end method

.method public iccTransmitApduBasicChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "cla"    # I
    .param p3, "instruction"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3519
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3520
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3523
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3524
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3525
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3526
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3527
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3528
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3529
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3530
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3531
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x51

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3532
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3533
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3536
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3539
    return-object v2

    .line 3535
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 3536
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3535
    throw v3
.end method

.method public iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "channel"    # I
    .param p3, "cla"    # I
    .param p4, "instruction"    # I
    .param p5, "p1"    # I
    .param p6, "p2"    # I
    .param p7, "p3"    # I
    .param p8, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3478
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3479
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3482
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3483
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3484
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3485
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3486
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3487
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3488
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3489
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 3490
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3491
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x50

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3492
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3493
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3496
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3497
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3499
    return-object v2

    .line 3495
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 3496
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3497
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3495
    throw v3
.end method

.method public invokeOemRilRequestRaw([B[B)I
    .locals 6
    .param p1, "oemReq"    # [B
    .param p2, "oemResp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4275
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4276
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4279
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4280
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4281
    if-nez p2, :cond_0

    .line 4282
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4287
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4288
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4289
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4290
    .local v2, "_result":I
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4293
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4296
    return v2

    .line 4285
    .end local v2    # "_result":I
    :cond_0
    :try_start_1
    array-length v3, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4292
    :catchall_0
    move-exception v3

    .line 4293
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4292
    throw v3
.end method

.method public isDataConnectivityPossible()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2614
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2615
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2618
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2619
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x27

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2620
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2621
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2624
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2627
    return v2

    .line 2621
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2623
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2624
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2623
    throw v3
.end method

.method public isHearingAidCompatibilitySupported()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4520
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4521
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4524
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4525
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4526
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4527
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4530
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4533
    return v2

    .line 4527
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4529
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4530
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4529
    throw v3
.end method

.method public isIdle(Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2039
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2040
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2043
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2044
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2045
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2046
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2047
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2050
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2053
    return v2

    .line 2047
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2049
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2050
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2049
    throw v3
.end method

.method public isIdleForSubscriber(ILjava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2064
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2065
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2068
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2069
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2070
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2071
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2072
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2073
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2076
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2077
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2079
    return v2

    .line 2073
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2075
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2076
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2077
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2075
    throw v3
.end method

.method public isImsRegistered()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4540
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4541
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4544
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4545
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4546
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4547
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4550
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4553
    return v2

    .line 4547
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4549
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4550
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4549
    throw v3
.end method

.method public isImsRegisteredForSubscriber(I)Z
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4560
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4561
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4564
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4565
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4566
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4567
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4568
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4571
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4572
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4574
    return v2

    .line 4568
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4570
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4571
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4572
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4570
    throw v3
.end method

.method public isOffhook(Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1940
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1941
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1944
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1945
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1946
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1947
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1948
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1951
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1952
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1954
    return v2

    .line 1948
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1950
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1951
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1952
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1950
    throw v3
.end method

.method public isOffhookForSubscriber(ILjava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1965
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1966
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1969
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1970
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1971
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1972
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1973
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1974
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1977
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1978
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1980
    return v2

    .line 1974
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1976
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1977
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1978
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1976
    throw v3
.end method

.method public isRadioOn(Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2088
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2089
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2092
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2093
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2094
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2095
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2096
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2099
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2102
    return v2

    .line 2096
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2098
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2099
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2098
    throw v3
.end method

.method public isRadioOnForSubscriber(ILjava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2112
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2113
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2116
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2117
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2118
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2119
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2120
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2121
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2124
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2125
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2127
    return v2

    .line 2121
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2123
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2124
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2125
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2123
    throw v3
.end method

.method public isRinging(Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2016
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2017
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2020
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2021
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2022
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2023
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2024
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2027
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2028
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2030
    return v2

    .line 2024
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2026
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2027
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2028
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2026
    throw v3
.end method

.method public isRingingForSubscriber(ILjava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1992
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1993
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1996
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1997
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1998
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1999
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2000
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2001
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2004
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2005
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2007
    return v2

    .line 2001
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2003
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2004
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2005
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2003
    throw v3
.end method

.method public isTtyModeSupported()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4498
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4499
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4502
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4503
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x79

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4504
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4505
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4508
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4511
    return v2

    .line 4505
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4507
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4508
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4507
    throw v3
.end method

.method public isVideoCallingEnabled(Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4431
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4432
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4435
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4436
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4437
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x76

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4438
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4439
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4442
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4445
    return v2

    .line 4439
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4441
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4442
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4441
    throw v3
.end method

.method public isVideoTelephonyAvailable()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4643
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4644
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4647
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4648
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x80

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4649
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4650
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4653
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4654
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4656
    return v2

    .line 4650
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4652
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4653
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4654
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4652
    throw v3
.end method

.method public isVideoTelephonyWifiCallingAvailableForSubscriber(I)Z
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4664
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4665
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4668
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4669
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4670
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x81

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4671
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4672
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4675
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4678
    return v2

    .line 4672
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4674
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4675
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4674
    throw v3
.end method

.method public isVisualVoicemailEnabled(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3023
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3024
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3027
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3028
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3029
    if-eqz p2, :cond_0

    .line 3030
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3031
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3036
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3037
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3038
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 3041
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3044
    return v2

    .line 3034
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3040
    :catchall_0
    move-exception v3

    .line 3041
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3040
    throw v3

    .line 3038
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public isVoWifiCallingAvailableForSubscriber(I)Z
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4602
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4603
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4606
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4607
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4608
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4609
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4610
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4613
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4614
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4616
    return v2

    .line 4610
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4612
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4613
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4614
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4612
    throw v3
.end method

.method public isVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 6
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4923
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4924
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4927
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4928
    if-eqz p1, :cond_0

    .line 4929
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4930
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4935
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4936
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4937
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 4940
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4941
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4943
    return v2

    .line 4933
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4939
    :catchall_0
    move-exception v3

    .line 4940
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4941
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4939
    throw v3

    .line 4937
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public isVolteAvailable()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4623
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4624
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4627
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4628
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4629
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4630
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4633
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4636
    return v2

    .line 4630
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4632
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4633
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4632
    throw v3
.end method

.method public isWifiCallingAvailable()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4581
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4582
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4585
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4586
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4587
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4588
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4591
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4594
    return v2

    .line 4588
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4590
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4591
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4590
    throw v3
.end method

.method public isWorldPhone()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4476
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4477
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4480
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4481
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x78

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4482
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4483
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4486
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4489
    return v2

    .line 4483
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4485
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4486
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4485
    throw v3
.end method

.method public needMobileRadioShutdown()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4330
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4331
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4334
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4335
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x71

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4336
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4337
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4340
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4343
    return v2

    .line 4337
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4339
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4340
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4339
    throw v3
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2928
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2929
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2932
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2933
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x37

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2934
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2935
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2938
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2939
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2941
    return v2

    .line 2935
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2937
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2938
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2939
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2937
    throw v3
.end method

.method public nvReadItem(I)Ljava/lang/String;
    .locals 6
    .param p1, "itemID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3616
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3617
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3620
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3621
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3622
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x54

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3623
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3624
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3627
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3630
    return-object v2

    .line 3626
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 3627
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3626
    throw v3
.end method

.method public nvResetConfig(I)Z
    .locals 6
    .param p1, "resetType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3694
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3695
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3698
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3699
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3700
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x57

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3701
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3702
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3705
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3706
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3708
    return v2

    .line 3702
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3704
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3705
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3706
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3704
    throw v3
.end method

.method public nvWriteCdmaPrl([B)Z
    .locals 6
    .param p1, "preferredRoamingList"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3668
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3669
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3672
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3673
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3674
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x56

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3675
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3676
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3679
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3680
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3682
    return v2

    .line 3676
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3678
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3679
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3680
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3678
    throw v3
.end method

.method public nvWriteItem(ILjava/lang/String;)Z
    .locals 6
    .param p1, "itemID"    # I
    .param p2, "itemValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3642
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3643
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3646
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3647
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3648
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3649
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x55

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3650
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3651
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3654
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3655
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3657
    return v2

    .line 3651
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3653
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3654
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3655
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3653
    throw v3
.end method

.method public requestModemActivityInfo(Landroid/os/ResultReceiver;)V
    .locals 5
    .param p1, "result"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4831
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4833
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4834
    if-eqz p1, :cond_0

    .line 4835
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4836
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4841
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x88

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4844
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4829
    return-void

    .line 4839
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4843
    :catchall_0
    move-exception v1

    .line 4844
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4843
    throw v1
.end method

.method public sendDsiReduceTxPower([B[B)I
    .locals 6
    .param p1, "oemReq"    # [B
    .param p2, "oemResp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4301
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4304
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4305
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4306
    if-nez p2, :cond_0

    .line 4307
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4312
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x70

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4313
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4314
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4315
    .local v2, "_result":I
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4318
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4321
    return v2

    .line 4310
    .end local v2    # "_result":I
    :cond_0
    :try_start_1
    array-length v3, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4317
    :catchall_0
    move-exception v3

    .line 4318
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4317
    throw v3
.end method

.method public sendEnvelopeWithStatus(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3590
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3591
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3594
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3595
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3596
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3597
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x53

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3598
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3599
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3602
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3603
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3605
    return-object v2

    .line 3601
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 3602
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3603
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3601
    throw v3
.end method

.method public setAllowedCarriers(ILjava/util/List;)I
    .locals 6
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5092
    .local p2, "carriers":Ljava/util/List;, "Ljava/util/List<Landroid/service/carrier/CarrierIdentifier;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5093
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5096
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5097
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5098
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 5099
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x92

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5100
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5101
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 5104
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5107
    return v2

    .line 5103
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 5104
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5103
    throw v3
.end method

.method public setCellInfoListRate(I)V
    .locals 5
    .param p1, "rateInMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3335
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3337
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3338
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3339
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3340
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3343
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3332
    return-void

    .line 3342
    :catchall_0
    move-exception v2

    .line 3343
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3342
    throw v2
.end method

.method public setDataEnabled(IZ)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3882
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3883
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3885
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3886
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3887
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3888
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3889
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3892
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3880
    return-void

    .line 3891
    :catchall_0
    move-exception v2

    .line 3892
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3891
    throw v2
.end method

.method public setImsRegistrationState(Z)V
    .locals 5
    .param p1, "registered"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3948
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3949
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3951
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3952
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3953
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x62

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3954
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3957
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3958
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3946
    return-void

    .line 3956
    :catchall_0
    move-exception v2

    .line 3957
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3958
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3956
    throw v2
.end method

.method public setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4108
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4111
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4112
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4113
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4114
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4115
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x69

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4116
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4117
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4120
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4123
    return v2

    .line 4117
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4119
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4120
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4119
    throw v3
.end method

.method public setNetworkSelectionModeAutomatic(I)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3770
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3771
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3773
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3774
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3775
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3776
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3779
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3768
    return-void

    .line 3778
    :catchall_0
    move-exception v2

    .line 3779
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3778
    throw v2
.end method

.method public setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;Z)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "operator"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p3, "persistSelection"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3824
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3825
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3828
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3829
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3830
    if-eqz p2, :cond_0

    .line 3831
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3832
    const/4 v5, 0x0

    invoke-virtual {p2, v0, v5}, Lcom/android/internal/telephony/OperatorInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3837
    :goto_0
    if-eqz p3, :cond_1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3838
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3839
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3840
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 3843
    .local v2, "_result":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3844
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3846
    return v2

    .line 3835
    .end local v2    # "_result":Z
    :cond_0
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3842
    :catchall_0
    move-exception v3

    .line 3843
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3844
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3842
    throw v3

    :cond_1
    move v3, v4

    .line 3837
    goto :goto_1

    .line 3840
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_2
.end method

.method public setOperatorBrandOverride(ILjava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "brand"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4216
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4217
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4220
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4221
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4222
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4223
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4224
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4225
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4228
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4231
    return v2

    .line 4225
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4227
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4228
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4227
    throw v3
.end method

.method public setPolicyDataEnabled(ZI)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5212
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5214
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5215
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5216
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5217
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x97

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5218
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5221
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5222
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5209
    return-void

    .line 5220
    :catchall_0
    move-exception v2

    .line 5221
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5222
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5220
    throw v2
.end method

.method public setPreferredNetworkType(II)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "networkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3858
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3859
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3862
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3863
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3864
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3865
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3866
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3867
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3870
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3871
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3873
    return v2

    .line 3867
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 3869
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 3870
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3871
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3869
    throw v3
.end method

.method public setRadio(Z)Z
    .locals 6
    .param p1, "turnOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2401
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2402
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2405
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2406
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2407
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2408
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2409
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 2412
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2415
    return v2

    .line 2409
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2411
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2412
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2411
    throw v3
.end method

.method public setRadioCapability([Landroid/telephony/RadioAccessFamily;)V
    .locals 5
    .param p1, "rafs"    # [Landroid/telephony/RadioAccessFamily;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4371
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4372
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4374
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4375
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 4376
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x73

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4377
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4380
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4369
    return-void

    .line 4379
    :catchall_0
    move-exception v2

    .line 4380
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4379
    throw v2
.end method

.method public setRadioForSubscriber(IZ)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "turnOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2423
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2424
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2427
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2428
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2429
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2430
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2431
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2432
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 2435
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2438
    return v2

    .line 2432
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2434
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2435
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2434
    throw v3
.end method

.method public setRadioPower(Z)Z
    .locals 6
    .param p1, "turnOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2445
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2446
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2449
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2450
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2451
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2452
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2453
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 2456
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2459
    return v2

    .line 2453
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2455
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2456
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2455
    throw v3
.end method

.method public setRoamingOverride(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4253
    .local p2, "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4254
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4257
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4258
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4259
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4260
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4261
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4262
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4263
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4264
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4265
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4268
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4271
    return v2

    .line 4265
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 4267
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 4268
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4267
    throw v3
.end method

.method public setVisualVoicemailEnabled(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p3, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3003
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3005
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3006
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3007
    if-eqz p2, :cond_0

    .line 3008
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3009
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3014
    :goto_0
    if-eqz p3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3015
    iget-object v1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3b

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3001
    return-void

    .line 3012
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3017
    :catchall_0
    move-exception v1

    .line 3018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3017
    throw v1

    :cond_1
    move v1, v2

    .line 3014
    goto :goto_1
.end method

.method public setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2948
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2949
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2952
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2953
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2954
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2955
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2956
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x38

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2957
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2958
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2961
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2964
    return v2

    .line 2958
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2960
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2961
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2960
    throw v3
.end method

.method public shutdownMobileRadios()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4351
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4353
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4354
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x72

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4355
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4358
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4348
    return-void

    .line 4357
    :catchall_0
    move-exception v2

    .line 4358
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4357
    throw v2
.end method

.method public silenceRinger()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1921
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1922
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1924
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1925
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1926
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1929
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1930
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1919
    return-void

    .line 1928
    :catchall_0
    move-exception v2

    .line 1929
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1930
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1928
    throw v2
.end method

.method public supplyPin(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2136
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2137
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2140
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2141
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2142
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2143
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2144
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2147
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2150
    return v2

    .line 2144
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2146
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2147
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2146
    throw v3
.end method

.method public supplyPinForSubscriber(ILjava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2162
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2165
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2166
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2167
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2168
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2169
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2170
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2173
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2176
    return v2

    .line 2170
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2172
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2173
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2172
    throw v3
.end method

.method public supplyPinReportResult(Ljava/lang/String;)[I
    .locals 6
    .param p1, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2235
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2238
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2239
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2240
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2241
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2242
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2245
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2248
    return-object v2

    .line 2244
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    .line 2245
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2244
    throw v3
.end method

.method public supplyPinReportResultForSubscriber(ILjava/lang/String;)[I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2252
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2253
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2256
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2257
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2258
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2259
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2260
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2261
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2264
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2267
    return-object v2

    .line 2263
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    .line 2264
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2263
    throw v3
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2187
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2188
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2191
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2192
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2193
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2194
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2195
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2196
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2199
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2202
    return v2

    .line 2196
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2198
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2199
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2198
    throw v3
.end method

.method public supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2214
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2215
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2218
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2219
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2220
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2221
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2222
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2223
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2224
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2227
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2230
    return v2

    .line 2224
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 2226
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 2227
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2226
    throw v3
.end method

.method public supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 6
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2272
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2275
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2276
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2277
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2278
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2279
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2280
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2283
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2286
    return-object v2

    .line 2282
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    .line 2283
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2282
    throw v3
.end method

.method public supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2290
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2291
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2294
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2295
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2296
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2297
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2298
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2299
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2300
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2303
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2306
    return-object v2

    .line 2302
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    .line 2303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2302
    throw v3
.end method

.method public toggleRadioOnOff()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2365
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2366
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2368
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2369
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2370
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2373
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2363
    return-void

    .line 2372
    :catchall_0
    move-exception v2

    .line 2373
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2372
    throw v2
.end method

.method public toggleRadioOnOffForSubscriber(I)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2383
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2384
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2386
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2387
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2388
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2389
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2392
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2381
    return-void

    .line 2391
    :catchall_0
    move-exception v2

    .line 2392
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2391
    throw v2
.end method

.method public updateServiceLocation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2466
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2467
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2469
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2470
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2471
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2474
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2475
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2464
    return-void

    .line 2473
    :catchall_0
    move-exception v2

    .line 2474
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2475
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2473
    throw v2
.end method

.method public updateServiceLocationForSubscriber(I)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2484
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2485
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2487
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2488
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2489
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2490
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2493
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2482
    return-void

    .line 2492
    :catchall_0
    move-exception v2

    .line 2493
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2492
    throw v2
.end method
