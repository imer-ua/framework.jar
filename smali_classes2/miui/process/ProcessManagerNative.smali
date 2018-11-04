.class public abstract Lmiui/process/ProcessManagerNative;
.super Landroid/os/Binder;
.source "ProcessManagerNative.java"

# interfaces
.implements Lmiui/process/IProcessManager;


# static fields
.field private static volatile pm:Lmiui/process/IProcessManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-object v0, Lmiui/process/ProcessManagerNative;->pm:Lmiui/process/IProcessManager;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 23
    const-string/jumbo v0, "miui.IProcessManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/process/IProcessManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 31
    if-nez p0, :cond_0

    .line 32
    return-object v1

    .line 34
    :cond_0
    const-string/jumbo v1, "miui.IProcessManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lmiui/process/IProcessManager;

    .line 35
    .local v0, "in":Lmiui/process/IProcessManager;
    if-eqz v0, :cond_1

    .line 36
    return-object v0

    .line 39
    :cond_1
    new-instance v1, Lmiui/process/ProcessManagerProxy;

    invoke-direct {v1, p0}, Lmiui/process/ProcessManagerProxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefault()Lmiui/process/IProcessManager;
    .locals 3

    .prologue
    .line 50
    sget-object v1, Lmiui/process/ProcessManagerNative;->pm:Lmiui/process/IProcessManager;

    if-nez v1, :cond_1

    .line 51
    const-class v2, Lmiui/process/ProcessManagerNative;

    monitor-enter v2

    .line 52
    :try_start_0
    sget-object v1, Lmiui/process/ProcessManagerNative;->pm:Lmiui/process/IProcessManager;

    if-nez v1, :cond_0

    .line 53
    const-string/jumbo v1, "ProcessManager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 54
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lmiui/process/ProcessManagerNative;->asInterface(Landroid/os/IBinder;)Lmiui/process/IProcessManager;

    move-result-object v1

    sput-object v1, Lmiui/process/ProcessManagerNative;->pm:Lmiui/process/IProcessManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 58
    :cond_1
    sget-object v1, Lmiui/process/ProcessManagerNative;->pm:Lmiui/process/IProcessManager;

    return-object v1

    .line 51
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 43
    return-object p0
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 39
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 67
    packed-switch p1, :pswitch_data_0

    .line 243
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 69
    :pswitch_0
    const-string/jumbo v4, "miui.IProcessManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    sget-object v4, Lmiui/process/ProcessConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lmiui/process/ProcessConfig;

    .line 71
    .local v25, "config":Lmiui/process/ProcessConfig;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lmiui/process/ProcessManagerNative;->kill(Lmiui/process/ProcessConfig;)Z

    move-result v35

    .line 72
    .local v35, "success":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v35, :cond_0

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    const/4 v4, 0x1

    return v4

    .line 73
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 78
    .end local v25    # "config":Lmiui/process/ProcessConfig;
    .end local v35    # "success":Z
    :pswitch_1
    const-string/jumbo v4, "miui.IProcessManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 80
    .local v13, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 81
    .local v8, "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v28, 0x1

    .line 82
    .local v28, "isLocked":Z
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v13, v8, v1}, Lmiui/process/ProcessManagerNative;->updateApplicationLockedState(Ljava/lang/String;IZ)V

    .line 83
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    const/4 v4, 0x1

    return v4

    .line 81
    .end local v28    # "isLocked":Z
    :cond_1
    const/16 v28, 0x0

    goto :goto_1

    .line 88
    .end local v8    # "userId":I
    .end local v13    # "packageName":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v4, "miui.IProcessManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 90
    .restart local v8    # "userId":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lmiui/process/ProcessManagerNative;->getLockedApplication(I)Ljava/util/List;

    move-result-object v30

    .line 91
    .local v30, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v30, :cond_2

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v21

    .line 93
    .local v21, "N":I
    :goto_2
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_3
    move/from16 v0, v27

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 96
    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    add-int/lit8 v27, v27, 0x1

    goto :goto_3

    .line 92
    .end local v21    # "N":I
    .end local v27    # "i":I
    :cond_2
    const/16 v21, -0x1

    goto :goto_2

    .line 98
    .restart local v21    # "N":I
    .restart local v27    # "i":I
    :cond_3
    const/4 v4, 0x1

    return v4

    .line 102
    .end local v8    # "userId":I
    .end local v21    # "N":I
    .end local v27    # "i":I
    .end local v30    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3
    const-string/jumbo v4, "miui.IProcessManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    sget-object v4, Lmiui/process/ProcessConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lmiui/process/ProcessConfig;

    .line 104
    .restart local v25    # "config":Lmiui/process/ProcessConfig;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lmiui/process/ProcessManagerNative;->updateConfig(Lmiui/process/ProcessConfig;)V

    .line 105
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    const/4 v4, 0x1

    return v4

    .line 110
    .end local v25    # "config":Lmiui/process/ProcessConfig;
    :pswitch_4
    const-string/jumbo v4, "miui.IProcessManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    const-class v4, Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v5

    .line 112
    .local v5, "dataList":Ljava/util/List;, "Ljava/util/List<Lmiui/process/PreloadProcessData;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 113
    .local v6, "startNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v10, 0x1

    if-ne v4, v10, :cond_4

    const/4 v7, 0x1

    .line 114
    .local v7, "ignoreMemory":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 115
    .restart local v8    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "flag":I
    move-object/from16 v4, p0

    .line 116
    invoke-virtual/range {v4 .. v9}, Lmiui/process/ProcessManagerNative;->startProcesses(Ljava/util/List;IZII)I

    move-result v34

    .line 117
    .local v34, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    const/4 v4, 0x1

    return v4

    .line 113
    .end local v7    # "ignoreMemory":Z
    .end local v8    # "userId":I
    .end local v9    # "flag":I
    .end local v34    # "result":I
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "ignoreMemory":Z
    goto :goto_4

    .line 123
    .end local v5    # "dataList":Ljava/util/List;, "Ljava/util/List<Lmiui/process/PreloadProcessData;>;"
    .end local v6    # "startNum":I
    .end local v7    # "ignoreMemory":Z
    :pswitch_5
    const-string/jumbo v4, "miui.IProcessManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    const/16 v29, 0x1

    .line 125
    .local v29, "isProtected":Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    .line 126
    .local v38, "timeout":I
    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lmiui/process/ProcessManagerNative;->protectCurrentProcess(ZI)Z

    move-result v35

    .line 127
    .restart local v35    # "success":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v35, :cond_6

    const/4 v4, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    const/4 v4, 0x1

    return v4

    .line 124
    .end local v29    # "isProtected":Z
    .end local v35    # "success":Z
    .end local v38    # "timeout":I
    :cond_5
    const/16 v29, 0x0

    .restart local v29    # "isProtected":Z
    goto :goto_5

    .line 128
    .restart local v35    # "success":Z
    .restart local v38    # "timeout":I
    :cond_6
    const/4 v4, 0x0

    goto :goto_6

    .line 133
    .end local v29    # "isProtected":Z
    .end local v35    # "success":Z
    .end local v38    # "timeout":I
    :pswitch_6
    const-string/jumbo v4, "miui.IProcessManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    sget-object v4, Lmiui/process/ProcessCloudData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lmiui/process/ProcessCloudData;

    .line 135
    .local v24, "cloudData":Lmiui/process/ProcessCloudData;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lmiui/process/ProcessManagerNative;->updateCloudData(Lmiui/process/ProcessCloudData;)V

    .line 136
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    const/4 v4, 0x1

    return v4

    .line 141
    .end local v24    # "cloudData":Lmiui/process/ProcessCloudData;
    :pswitch_7
    const-string/jumbo v4, "miui.IProcessManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 143
    .restart local v13    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 144
    .restart local v8    # "userId":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v8}, Lmiui/process/ProcessManagerNative;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v28

    .line 145
    .restart local v28    # "isLocked":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    if-eqz v28, :cond_7

    const/4 v4, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    const/4 v4, 0x1

    return v4

    .line 146
    :cond_7
    const/4 v4, 0x0

    goto :goto_7

    .line 151
    .end local v8    # "userId":I
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v28    # "isLocked":Z
    :pswitch_8
    const-string/jumbo v4, "miui.IProcessManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 152
    invoke-static {v4}, Lmiui/process/IForegroundInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/process/IForegroundInfoListener;

    move-result-object v33

    .line 154
    .local v33, "listener":Lmiui/process/IForegroundInfoListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lmiui/process/ProcessManagerNative;->registerForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V

    .line 155
    const/4 v4, 0x1

    return v4

    .line 159
    .end local v33    # "listener":Lmiui/process/IForegroundInfoListener;
    :pswitch_9
    const-string/jumbo v4, "miui.IProcessManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 160
    invoke-static {v4}, Lmiui/process/IForegroundInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/process/IForegroundInfoListener;

    move-result-object v33

    .line 162
    .restart local v33    # "listener":Lmiui/process/IForegroundInfoListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lmiui/process/ProcessManagerNative;->unregisterForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V

    .line 163
    const/4 v4, 0x1

    return v4

    .line 167
    .end local v33    # "listener":Lmiui/process/IForegroundInfoListener;
    :pswitch_a
    const-string/jumbo v4, "miui.IProcessManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p0 .. p0}, Lmiui/process/ProcessManagerNative;->getForegroundInfo()Lmiui/process/ForegroundInfo;

    move-result-object v26

    .line 169
    .local v26, "foregroundInfo":Lmiui/process/ForegroundInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    const/4 v4, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lmiui/process/ForegroundInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 171
    const/4 v4, 0x1

    return v4

    .line 175
    .end local v26    # "foregroundInfo":Lmiui/process/ForegroundInfo;
    :pswitch_b
    const-string/jumbo v4, "miui.IProcessManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v23

    .line 177
    .local v23, "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 178
    .local v11, "pid":I
    if-eqz v23, :cond_8

    invoke-static/range {v23 .. v23}, Lmiui/process/IMiuiApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/process/IMiuiApplicationThread;

    move-result-object v4

    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11}, Lmiui/process/ProcessManagerNative;->addMiuiApplicationThread(Lmiui/process/IMiuiApplicationThread;I)V

    .line 179
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    const/4 v4, 0x1

    return v4

    .line 178
    :cond_8
    const/4 v4, 0x0

    goto :goto_8

    .line 184
    .end local v11    # "pid":I
    .end local v23    # "b":Landroid/os/IBinder;
    :pswitch_c
    const-string/jumbo v4, "miui.IProcessManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p0 .. p0}, Lmiui/process/ProcessManagerNative;->getForegroundApplicationThread()Lmiui/process/IMiuiApplicationThread;

    move-result-object v22

    .line 186
    .local v22, "applicationThread":Lmiui/process/IMiuiApplicationThread;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    if-eqz v22, :cond_9

    invoke-interface/range {v22 .. v22}, Lmiui/process/IMiuiApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 188
    const/4 v4, 0x1

    return v4

    .line 187
    :cond_9
    const/4 v4, 0x0

    goto :goto_9

    .line 192
    .end local v22    # "applicationThread":Lmiui/process/IMiuiApplicationThread;
    :pswitch_d
    const-string/jumbo v4, "miui.IProcessManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v37, "targetPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 195
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v36, "targetActivities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 197
    invoke-static {v4}, Lmiui/process/IActivityChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/process/IActivityChangeListener;

    move-result-object v32

    .line 199
    .local v32, "listener":Lmiui/process/IActivityChangeListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lmiui/process/ProcessManagerNative;->registerActivityChangeListener(Ljava/util/List;Ljava/util/List;Lmiui/process/IActivityChangeListener;)V

    .line 200
    const/4 v4, 0x1

    return v4

    .line 204
    .end local v32    # "listener":Lmiui/process/IActivityChangeListener;
    .end local v36    # "targetActivities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v37    # "targetPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_e
    const-string/jumbo v4, "miui.IProcessManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 205
    invoke-static {v4}, Lmiui/process/IActivityChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/process/IActivityChangeListener;

    move-result-object v32

    .line 207
    .restart local v32    # "listener":Lmiui/process/IActivityChangeListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lmiui/process/ProcessManagerNative;->unregisterActivityChangeListener(Lmiui/process/IActivityChangeListener;)V

    .line 208
    const/4 v4, 0x1

    return v4

    .line 212
    .end local v32    # "listener":Lmiui/process/IActivityChangeListener;
    :pswitch_f
    const-string/jumbo v4, "miui.IProcessManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 214
    .restart local v11    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 215
    .local v12, "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 216
    .restart local v13    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 217
    .local v14, "processName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "userId":I
    move-object/from16 v10, p0

    move v15, v8

    .line 219
    invoke-virtual/range {v10 .. v15}, Lmiui/process/ProcessManagerNative;->getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v31

    .line 220
    .local v31, "list":Ljava/util/List;, "Ljava/util/List<Lmiui/process/RunningProcessInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 222
    const/4 v4, 0x1

    return v4

    .line 226
    .end local v8    # "userId":I
    .end local v11    # "pid":I
    .end local v12    # "uid":I
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "processName":Ljava/lang/String;
    .end local v31    # "list":Ljava/util/List;, "Ljava/util/List<Lmiui/process/RunningProcessInfo;>;"
    :pswitch_10
    const-string/jumbo v4, "miui.IProcessManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p0 .. p0}, Lmiui/process/ProcessManagerNative;->boostCameraIfNeeded()V

    .line 228
    const/4 v4, 0x1

    return v4

    .line 232
    :pswitch_11
    const-string/jumbo v4, "miui.IProcessManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 234
    .restart local v14    # "processName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 235
    .local v17, "targetAdj":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 236
    .local v18, "timeout":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "userId":I
    move-object/from16 v15, p0

    move-object/from16 v16, v14

    move/from16 v20, v8

    .line 237
    invoke-virtual/range {v15 .. v20}, Lmiui/process/ProcessManagerNative;->adjBoost(Ljava/lang/String;IJI)V

    .line 238
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    const/4 v4, 0x1

    return v4

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
