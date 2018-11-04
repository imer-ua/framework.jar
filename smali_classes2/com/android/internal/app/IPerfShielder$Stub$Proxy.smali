.class Lcom/android/internal/app/IPerfShielder$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPerfShielder.java"

# interfaces
.implements Lcom/android/internal/app/IPerfShielder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IPerfShielder$Stub;
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
    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    iput-object p1, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 517
    return-void
.end method


# virtual methods
.method public abortMatchingScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;IJ)V
    .locals 6
    .param p1, "scenario"    # Landroid/os/statistics/E2EScenario;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "tid"    # I
    .param p4, "uptimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1059
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1060
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1062
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1063
    if-eqz p1, :cond_0

    .line 1064
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1065
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/statistics/E2EScenario;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1070
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1071
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1072
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1073
    iget-object v2, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1074
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1077
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1078
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1057
    return-void

    .line 1068
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1076
    :catchall_0
    move-exception v2

    .line 1077
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1078
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1076
    throw v2
.end method

.method public abortSpecificScenario(Landroid/os/Bundle;IJ)V
    .locals 5
    .param p1, "scenarioBundle"    # Landroid/os/Bundle;
    .param p2, "tid"    # I
    .param p3, "uptimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1083
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1084
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1086
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1087
    if-eqz p1, :cond_0

    .line 1088
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1089
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1094
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1095
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1096
    iget-object v2, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1097
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1100
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1081
    return-void

    .line 1092
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1099
    :catchall_0
    move-exception v2

    .line 1100
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1099
    throw v2
.end method

.method public addActivityLaunchTime(Ljava/lang/String;Ljava/lang/String;JJZZ)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "launchStartTime"    # J
    .param p5, "launchEndTime"    # J
    .param p7, "fromHome"    # Z
    .param p8, "isColdStart"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 550
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 552
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 554
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 555
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 556
    invoke-virtual {v0, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    .line 557
    if-eqz p7, :cond_0

    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    if-eqz p8, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    iget-object v1, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 548
    return-void

    :cond_0
    move v3, v2

    .line 557
    goto :goto_0

    :cond_1
    move v1, v2

    .line 558
    goto :goto_1

    .line 561
    :catchall_0
    move-exception v1

    .line 562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 561
    throw v1
.end method

.method public addCallingPkgHookRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "hostApp"    # Ljava/lang/String;
    .param p2, "originCallingPkg"    # Ljava/lang/String;
    .param p3, "hookCallingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 951
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 952
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 955
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 956
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 957
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 958
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 959
    iget-object v3, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 960
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 961
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 964
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 967
    return v2

    .line 961
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 963
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 964
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 963
    throw v3
.end method

.method public addTimeConsumingIntent([Ljava/lang/String;)V
    .locals 5
    .param p1, "actions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 763
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 764
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 766
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 767
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 768
    iget-object v2, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 769
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 772
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 773
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 761
    return-void

    .line 771
    :catchall_0
    move-exception v2

    .line 772
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 773
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 771
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public beginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;IJZ)Landroid/os/Bundle;
    .locals 6
    .param p1, "scenario"    # Landroid/os/statistics/E2EScenario;
    .param p2, "settings"    # Landroid/os/statistics/E2EScenarioSettings;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "payload"    # Landroid/os/statistics/E2EScenarioPayload;
    .param p5, "tid"    # I
    .param p6, "uptimeMillis"    # J
    .param p8, "needResultBundle"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1012
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1013
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1016
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v5, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1017
    if-eqz p1, :cond_0

    .line 1018
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1019
    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5}, Landroid/os/statistics/E2EScenario;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1024
    :goto_0
    if-eqz p2, :cond_1

    .line 1025
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1026
    const/4 v5, 0x0

    invoke-virtual {p2, v0, v5}, Landroid/os/statistics/E2EScenarioSettings;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1031
    :goto_1
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1032
    if-eqz p4, :cond_2

    .line 1033
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1034
    const/4 v5, 0x0

    invoke-virtual {p4, v0, v5}, Landroid/os/statistics/E2EScenarioPayload;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1039
    :goto_2
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1040
    invoke-virtual {v0, p6, p7}, Landroid/os/Parcel;->writeLong(J)V

    .line 1041
    if-eqz p8, :cond_3

    :goto_3
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1042
    iget-object v3, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1043
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1044
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 1045
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1052
    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1053
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1055
    return-object v2

    .line 1022
    :cond_0
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1051
    :catchall_0
    move-exception v3

    .line 1052
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1053
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1051
    throw v3

    .line 1029
    :cond_1
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1037
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_3
    move v3, v4

    .line 1041
    goto :goto_3

    .line 1048
    :cond_4
    const/4 v2, 0x0

    .local v2, "_result":Landroid/os/Bundle;
    goto :goto_4
.end method

.method public clearTimeConsumingIntent()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 793
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 794
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 796
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 797
    iget-object v2, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 798
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 801
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 791
    return-void

    .line 800
    :catchall_0
    move-exception v2

    .line 801
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 800
    throw v2
.end method

.method public closeCheckPriority()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 725
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 726
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 728
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 729
    iget-object v2, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 730
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 733
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 734
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 723
    return-void

    .line 732
    :catchall_0
    move-exception v2

    .line 733
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 734
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 732
    throw v2
.end method

.method public deletePackageInfo(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 898
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 899
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 902
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 903
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 904
    iget-object v3, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 905
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 906
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 909
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 912
    return v2

    .line 906
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 908
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 909
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 908
    throw v3
.end method

.method public deleteRedirectRule(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "destPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 853
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 854
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 857
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 858
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 859
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 860
    iget-object v3, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 861
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 862
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 865
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 866
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 868
    return v2

    .line 862
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 864
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 865
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 866
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 864
    throw v3
.end method

.method public finishMatchingScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;IJ)V
    .locals 5
    .param p1, "scenario"    # Landroid/os/statistics/E2EScenario;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "payload"    # Landroid/os/statistics/E2EScenarioPayload;
    .param p4, "tid"    # I
    .param p5, "uptimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1107
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1109
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1110
    if-eqz p1, :cond_0

    .line 1111
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1112
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/statistics/E2EScenario;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1117
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1118
    if-eqz p3, :cond_1

    .line 1119
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1120
    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Landroid/os/statistics/E2EScenarioPayload;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1125
    :goto_1
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1126
    invoke-virtual {v0, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    .line 1127
    iget-object v2, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1128
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1131
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1104
    return-void

    .line 1115
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1130
    :catchall_0
    move-exception v2

    .line 1131
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1130
    throw v2

    .line 1123
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public finishSpecificScenario(Landroid/os/Bundle;Landroid/os/statistics/E2EScenarioPayload;IJ)V
    .locals 6
    .param p1, "scenarioBundle"    # Landroid/os/Bundle;
    .param p2, "payload"    # Landroid/os/statistics/E2EScenarioPayload;
    .param p3, "tid"    # I
    .param p4, "uptimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1138
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1140
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1141
    if-eqz p1, :cond_0

    .line 1142
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1143
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1148
    :goto_0
    if-eqz p2, :cond_1

    .line 1149
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1150
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/os/statistics/E2EScenarioPayload;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1155
    :goto_1
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1156
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1157
    iget-object v2, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1158
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1161
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1135
    return-void

    .line 1146
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1160
    :catchall_0
    move-exception v2

    .line 1161
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1160
    throw v2

    .line 1153
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public getAllRunningProcessMemInfos()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 628
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 629
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 632
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 633
    iget-object v3, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 634
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 635
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 638
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 641
    return-object v2

    .line 637
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :catchall_0
    move-exception v3

    .line 638
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 637
    throw v3
.end method

.method public getFreeMemory()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 916
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 917
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 920
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 921
    iget-object v4, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x18

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 922
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 923
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 926
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 929
    return-wide v2

    .line 925
    .end local v2    # "_result":J
    :catchall_0
    move-exception v4

    .line 926
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 925
    throw v4
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    const-string/jumbo v0, "com.android.internal.app.IPerfShielder"

    return-object v0
.end method

.method public getMemoryTrimLevel()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 807
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 808
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 811
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 812
    iget-object v3, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 813
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 814
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 817
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 818
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 820
    return v2

    .line 816
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 817
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 818
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 816
    throw v3
.end method

.method public getPackageNameByPid(I)Ljava/lang/String;
    .locals 6
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 592
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 593
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 596
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 597
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 598
    iget-object v3, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 599
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 600
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 603
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 606
    return-object v2

    .line 602
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 603
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 602
    throw v3
.end method

.method public getPerfEventSocketFd()Landroid/os/ParcelFileDescriptor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 990
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 991
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 994
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 995
    iget-object v3, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 996
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 997
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 998
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1005
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1006
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1008
    return-object v2

    .line 1001
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    .line 1004
    .end local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v3

    .line 1005
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1006
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1004
    throw v3
.end method

.method public insertPackageInfo(Landroid/content/pm/PackageInfo;)Z
    .locals 6
    .param p1, "pInfo"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 874
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 875
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 878
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 879
    if-eqz p1, :cond_0

    .line 880
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 881
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 886
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 887
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 888
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 891
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 894
    return v2

    .line 884
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 890
    :catchall_0
    move-exception v3

    .line 891
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 890
    throw v3

    .line 888
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public insertRedirectRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "destPkg"    # Ljava/lang/String;
    .param p3, "redirectPkgname"    # Ljava/lang/String;
    .param p4, "clsNameMap"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 826
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 827
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 830
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 831
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 832
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 833
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 834
    if-eqz p4, :cond_0

    .line 835
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 836
    const/4 v3, 0x0

    invoke-virtual {p4, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 841
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 842
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 843
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 846
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 847
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 849
    return v2

    .line 839
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 845
    :catchall_0
    move-exception v3

    .line 846
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 847
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 845
    throw v3

    .line 843
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public killUnusedApp(II)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 579
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 581
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 582
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    iget-object v1, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 577
    return-void

    .line 586
    :catchall_0
    move-exception v1

    .line 587
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 586
    throw v1
.end method

.method public removeCallingPkgHookRule(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "hostApp"    # Ljava/lang/String;
    .param p2, "originCallingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 971
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 972
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 975
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 976
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 977
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 978
    iget-object v3, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 979
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 980
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 983
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 986
    return v2

    .line 980
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 982
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 983
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 982
    throw v3
.end method

.method public removeServicePriority(Lcom/android/internal/app/MiuiServicePriority;Z)V
    .locals 5
    .param p1, "servicePriority"    # Lcom/android/internal/app/MiuiServicePriority;
    .param p2, "inBlacklist"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 706
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 708
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 709
    if-eqz p1, :cond_0

    .line 710
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 711
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/app/MiuiServicePriority;->writeToParcel(Landroid/os/Parcel;I)V

    .line 716
    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 717
    iget-object v1, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 704
    return-void

    .line 714
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 719
    :catchall_0
    move-exception v1

    .line 720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 719
    throw v1

    :cond_1
    move v1, v2

    .line 716
    goto :goto_1
.end method

.method public removeTimeConsumingIntent([Ljava/lang/String;)V
    .locals 5
    .param p1, "actions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 778
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 779
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 781
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 782
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 783
    iget-object v2, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 784
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 788
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 776
    return-void

    .line 786
    :catchall_0
    move-exception v2

    .line 787
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 788
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 786
    throw v2
.end method

.method public reportAnr(ILjava/lang/String;JJLjava/lang/String;)V
    .locals 5
    .param p1, "callingPid"    # I
    .param p2, "windowName"    # Ljava/lang/String;
    .param p3, "totalDuration"    # J
    .param p5, "endTs"    # J
    .param p7, "cpuInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 933
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 935
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 936
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 937
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 938
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 939
    invoke-virtual {v0, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    .line 940
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 941
    iget-object v1, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x19

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 931
    return-void

    .line 943
    :catchall_0
    move-exception v1

    .line 944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 943
    throw v1
.end method

.method public reportExcessiveCpuUsageRecords(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1167
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1169
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1170
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1171
    iget-object v1, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x22

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1165
    return-void

    .line 1173
    :catchall_0
    move-exception v1

    .line 1174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1173
    throw v1
.end method

.method public reportPerceptibleJank(IILjava/lang/String;JJJIJ)V
    .locals 8
    .param p1, "callingPid"    # I
    .param p2, "renderThreadTid"    # I
    .param p3, "windowName"    # Ljava/lang/String;
    .param p4, "totalDuration"    # J
    .param p6, "maxFrameDuration"    # J
    .param p8, "endTs"    # J
    .param p10, "selfCause"    # I
    .param p11, "num_frames"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 531
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 533
    .local v2, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 534
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 536
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 537
    invoke-virtual {v2, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 538
    invoke-virtual {v2, p6, p7}, Landroid/os/Parcel;->writeLong(J)V

    .line 539
    move-wide/from16 v0, p8

    invoke-virtual {v2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 540
    move/from16 v0, p10

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    move-wide/from16 v0, p11

    invoke-virtual {v2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 542
    iget-object v3, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface {v3, v4, v2, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 529
    return-void

    .line 544
    :catchall_0
    move-exception v3

    .line 545
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 544
    throw v3
.end method

.method public setForkedProcessGroup(IIILjava/lang/String;)V
    .locals 5
    .param p1, "puid"    # I
    .param p2, "ppid"    # I
    .param p3, "group"    # I
    .param p4, "processName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 611
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 613
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 614
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 615
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 616
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 617
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 618
    iget-object v2, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 619
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 608
    return-void

    .line 621
    :catchall_0
    move-exception v2

    .line 622
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 621
    throw v2
.end method

.method public setMiuiBroadcastDispatchEnable(Z)V
    .locals 5
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 751
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 753
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 754
    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 755
    iget-object v1, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 749
    return-void

    .line 754
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 757
    :catchall_0
    move-exception v1

    .line 758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 757
    throw v1
.end method

.method public setMiuiContentProviderControl(Z)V
    .locals 5
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 739
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 741
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 742
    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 743
    iget-object v1, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 737
    return-void

    .line 742
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 745
    :catchall_0
    move-exception v1

    .line 746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 745
    throw v1
.end method

.method public setSchedFgPid(I)V
    .locals 5
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 567
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 569
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 570
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    iget-object v1, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 565
    return-void

    .line 573
    :catchall_0
    move-exception v1

    .line 574
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 573
    throw v1
.end method

.method public setServicePriority(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 681
    .local p1, "servicePrioritys":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MiuiServicePriority;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 683
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 684
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 685
    iget-object v1, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 679
    return-void

    .line 687
    :catchall_0
    move-exception v1

    .line 688
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 687
    throw v1
.end method

.method public setServicePriorityWithNoProc(Ljava/util/List;J)V
    .locals 6
    .param p2, "noProcDelayTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 693
    .local p1, "servicePrioritys":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MiuiServicePriority;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 695
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 696
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 697
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 698
    iget-object v1, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 691
    return-void

    .line 700
    :catchall_0
    move-exception v1

    .line 701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 700
    throw v1
.end method

.method public updateProcessFullMemInfoByPids([I)Ljava/util/List;
    .locals 6
    .param p1, "pids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 645
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 646
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 649
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 650
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 651
    iget-object v3, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 652
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 653
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 656
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 659
    return-object v2

    .line 655
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :catchall_0
    move-exception v3

    .line 656
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 655
    throw v3
.end method

.method public updateProcessPartialMemInfoByPids([I)Ljava/util/List;
    .locals 6
    .param p1, "pids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 663
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 664
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 667
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IPerfShielder"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 668
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 669
    iget-object v3, p0, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 670
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 671
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 674
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 677
    return-object v2

    .line 673
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :catchall_0
    move-exception v3

    .line 674
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 673
    throw v3
.end method
