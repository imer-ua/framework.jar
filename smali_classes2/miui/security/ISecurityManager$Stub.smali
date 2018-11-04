.class public abstract Lmiui/security/ISecurityManager$Stub;
.super Landroid/os/Binder;
.source "ISecurityManager.java"

# interfaces
.implements Lmiui/security/ISecurityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/security/ISecurityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/security/ISecurityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.security.ISecurityManager"

.field static final TRANSACTION_activityResume:I = 0x1b

.field static final TRANSACTION_addAccessControlPass:I = 0x6

.field static final TRANSACTION_addAccessControlPassForUser:I = 0x26

.field static final TRANSACTION_areNotificationsEnabledForPackage:I = 0x34

.field static final TRANSACTION_checkAccessControlPass:I = 0x8

.field static final TRANSACTION_checkAccessControlPassAsUser:I = 0x1f

.field static final TRANSACTION_checkAccessControlPassword:I = 0x3e

.field static final TRANSACTION_checkAllowStartActivity:I = 0x22

.field static final TRANSACTION_checkGameBoosterAntimsgPassAsUser:I = 0x3a

.field static final TRANSACTION_checkSmsBlocked:I = 0x3

.field static final TRANSACTION_finishAccessControl:I = 0x1a

.field static final TRANSACTION_getAccessControlPasswordType:I = 0x40

.field static final TRANSACTION_getAllPrivacyApps:I = 0x4d

.field static final TRANSACTION_getAppPermissionControlOpen:I = 0x15

.field static final TRANSACTION_getAppRunningControlIBinder:I = 0x45

.field static final TRANSACTION_getApplicationAccessControlEnabled:I = 0x9

.field static final TRANSACTION_getApplicationAccessControlEnabledAsUser:I = 0x20

.field static final TRANSACTION_getApplicationChildrenControlEnabled:I = 0xb

.field static final TRANSACTION_getApplicationMaskNotificationEnabledAsUser:I = 0x32

.field static final TRANSACTION_getCurrentUserId:I = 0x1e

.field static final TRANSACTION_getGameMode:I = 0x3c

.field static final TRANSACTION_getIncompatibleAppList:I = 0x2e

.field static final TRANSACTION_getPackageNameByPid:I = 0x2

.field static final TRANSACTION_getSecondSpaceId:I = 0x47

.field static final TRANSACTION_getSysAppCracked:I = 0x23

.field static final TRANSACTION_getTopActivity:I = 0x44

.field static final TRANSACTION_getWakePathCallListLog:I = 0x14

.field static final TRANSACTION_getWakePathComponents:I = 0x2f

.field static final TRANSACTION_getWakeUpTime:I = 0xe

.field static final TRANSACTION_grantInstallPermission:I = 0x24

.field static final TRANSACTION_grantRuntimePermission:I = 0x1d

.field static final TRANSACTION_haveAccessControlPassword:I = 0x3f

.field static final TRANSACTION_isAllowStartService:I = 0x43

.field static final TRANSACTION_isAppHide:I = 0x36

.field static final TRANSACTION_isAppPrivacyEnabled:I = 0x42

.field static final TRANSACTION_isFunctionOpen:I = 0x37

.field static final TRANSACTION_isPrivacyApp:I = 0x4c

.field static final TRANSACTION_isRestrictedAppNet:I = 0x28

.field static final TRANSACTION_isValidDevice:I = 0x39

.field static final TRANSACTION_killNativePackageProcesses:I = 0x1

.field static final TRANSACTION_moveTaskToStack:I = 0x48

.field static final TRANSACTION_needFinishAccessControl:I = 0x19

.field static final TRANSACTION_notifyAppsPreInstalled:I = 0x31

.field static final TRANSACTION_offerGoogleBaseCallBack:I = 0x30

.field static final TRANSACTION_pushUpdatePkgsData:I = 0x4a

.field static final TRANSACTION_pushWakePathConfirmDialogWhiteList:I = 0x25

.field static final TRANSACTION_pushWakePathData:I = 0x11

.field static final TRANSACTION_pushWakePathWhiteList:I = 0x12

.field static final TRANSACTION_putSystemDataStringFile:I = 0xf

.field static final TRANSACTION_readSystemDataStringFile:I = 0x10

.field static final TRANSACTION_registerWakePathCallback:I = 0x17

.field static final TRANSACTION_removeAccessControlPass:I = 0x7

.field static final TRANSACTION_removeAccessControlPassAsUser:I = 0x18

.field static final TRANSACTION_removeWakePathData:I = 0x21

.field static final TRANSACTION_resizeTask:I = 0x49

.field static final TRANSACTION_saveIcon:I = 0x2a

.field static final TRANSACTION_setAccessControlPassword:I = 0x3d

.field static final TRANSACTION_setAppHide:I = 0x38

.field static final TRANSACTION_setAppPermissionControlOpen:I = 0x16

.field static final TRANSACTION_setAppPrivacyStatus:I = 0x41

.field static final TRANSACTION_setApplicationAccessControlEnabled:I = 0xa

.field static final TRANSACTION_setApplicationAccessControlEnabledForUser:I = 0x27

.field static final TRANSACTION_setApplicationChildrenControlEnabled:I = 0xc

.field static final TRANSACTION_setApplicationMaskNotificationEnabledForUser:I = 0x33

.field static final TRANSACTION_setCoreRuntimePermissionEnabled:I = 0x1c

.field static final TRANSACTION_setCurrentNetworkState:I = 0x2c

.field static final TRANSACTION_setGameBoosterIBinder:I = 0x3b

.field static final TRANSACTION_setIncompatibleAppList:I = 0x2d

.field static final TRANSACTION_setMiuiFirewallRule:I = 0x2b

.field static final TRANSACTION_setNotificationsEnabledForPackage:I = 0x35

.field static final TRANSACTION_setPrivacyApp:I = 0x4b

.field static final TRANSACTION_setTrackWakePathCallListLogEnabled:I = 0x13

.field static final TRANSACTION_setWakeUpTime:I = 0xd

.field static final TRANSACTION_startInterceptSmsBySender:I = 0x4

.field static final TRANSACTION_stopInterceptSmsBySender:I = 0x5

.field static final TRANSACTION_watchGreenGuardProcess:I = 0x46

.field static final TRANSACTION_writeAppHideConfig:I = 0x29


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "miui.security.ISecurityManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/security/ISecurityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "miui.security.ISecurityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/security/ISecurityManager;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lmiui/security/ISecurityManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lmiui/security/ISecurityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/security/ISecurityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 35
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 933
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v34

    return v34

    .line 45
    :sswitch_0
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/16 v34, 0x1

    return v34

    .line 50
    :sswitch_1
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 54
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 55
    .local v19, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Lmiui/security/ISecurityManager$Stub;->killNativePackageProcesses(ILjava/lang/String;)V

    .line 56
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    const/16 v34, 0x1

    return v34

    .line 61
    .end local v4    # "_arg0":I
    .end local v19    # "_arg1":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 64
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/security/ISecurityManager$Stub;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v31

    .line 65
    .local v31, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    const/16 v34, 0x1

    return v34

    .line 71
    .end local v4    # "_arg0":I
    .end local v31    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_0

    .line 74
    sget-object v34, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 79
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lmiui/security/ISecurityManager$Stub;->checkSmsBlocked(Landroid/content/Intent;)Z

    move-result v33

    .line 80
    .local v33, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v33, :cond_1

    const/16 v34, 0x1

    :goto_1
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    if-eqz v5, :cond_2

    .line 83
    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 89
    :goto_2
    const/16 v34, 0x1

    return v34

    .line 77
    .end local v33    # "_result":Z
    :cond_0
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/content/Intent;
    goto :goto_0

    .line 81
    .end local v5    # "_arg0":Landroid/content/Intent;
    .restart local v33    # "_result":Z
    :cond_1
    const/16 v34, 0x0

    goto :goto_1

    .line 87
    :cond_2
    const/16 v34, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 93
    .end local v33    # "_result":Z
    :sswitch_4
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 97
    .local v8, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 99
    .restart local v19    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 100
    .local v22, "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v0, v8, v1, v2}, Lmiui/security/ISecurityManager$Stub;->startInterceptSmsBySender(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v33

    .line 101
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    if-eqz v33, :cond_3

    const/16 v34, 0x1

    :goto_3
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    const/16 v34, 0x1

    return v34

    .line 102
    :cond_3
    const/16 v34, 0x0

    goto :goto_3

    .line 107
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v22    # "_arg2":I
    .end local v33    # "_result":Z
    :sswitch_5
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->stopInterceptSmsBySender()Z

    move-result v33

    .line 109
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v33, :cond_4

    const/16 v34, 0x1

    :goto_4
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    const/16 v34, 0x1

    return v34

    .line 110
    :cond_4
    const/16 v34, 0x0

    goto :goto_4

    .line 115
    .end local v33    # "_result":Z
    :sswitch_6
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 118
    .restart local v8    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lmiui/security/ISecurityManager$Stub;->addAccessControlPass(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    const/16 v34, 0x1

    return v34

    .line 124
    .end local v8    # "_arg0":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 127
    .restart local v8    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lmiui/security/ISecurityManager$Stub;->removeAccessControlPass(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    const/16 v34, 0x1

    return v34

    .line 133
    .end local v8    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 137
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_5

    .line 138
    sget-object v34, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Intent;

    .line 143
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v13}, Lmiui/security/ISecurityManager$Stub;->checkAccessControlPass(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v33

    .line 144
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v33, :cond_6

    const/16 v34, 0x1

    :goto_6
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    const/16 v34, 0x1

    return v34

    .line 141
    .end local v33    # "_result":Z
    :cond_5
    const/4 v13, 0x0

    .local v13, "_arg1":Landroid/content/Intent;
    goto :goto_5

    .line 145
    .end local v13    # "_arg1":Landroid/content/Intent;
    .restart local v33    # "_result":Z
    :cond_6
    const/16 v34, 0x0

    goto :goto_6

    .line 150
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v33    # "_result":Z
    :sswitch_9
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 153
    .restart local v8    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lmiui/security/ISecurityManager$Stub;->getApplicationAccessControlEnabled(Ljava/lang/String;)Z

    move-result v33

    .line 154
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v33, :cond_7

    const/16 v34, 0x1

    :goto_7
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    const/16 v34, 0x1

    return v34

    .line 155
    :cond_7
    const/16 v34, 0x0

    goto :goto_7

    .line 160
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v33    # "_result":Z
    :sswitch_a
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 164
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_8

    const/16 v21, 0x1

    .line 165
    .local v21, "_arg1":Z
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v8, v1}, Lmiui/security/ISecurityManager$Stub;->setApplicationAccessControlEnabled(Ljava/lang/String;Z)V

    .line 166
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    const/16 v34, 0x1

    return v34

    .line 164
    .end local v21    # "_arg1":Z
    :cond_8
    const/16 v21, 0x0

    goto :goto_8

    .line 171
    .end local v8    # "_arg0":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 174
    .restart local v8    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lmiui/security/ISecurityManager$Stub;->getApplicationChildrenControlEnabled(Ljava/lang/String;)Z

    move-result v33

    .line 175
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v33, :cond_9

    const/16 v34, 0x1

    :goto_9
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    const/16 v34, 0x1

    return v34

    .line 176
    :cond_9
    const/16 v34, 0x0

    goto :goto_9

    .line 181
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v33    # "_result":Z
    :sswitch_c
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 185
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_a

    const/16 v21, 0x1

    .line 186
    .restart local v21    # "_arg1":Z
    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v8, v1}, Lmiui/security/ISecurityManager$Stub;->setApplicationChildrenControlEnabled(Ljava/lang/String;Z)V

    .line 187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    const/16 v34, 0x1

    return v34

    .line 185
    .end local v21    # "_arg1":Z
    :cond_a
    const/16 v21, 0x0

    goto :goto_a

    .line 192
    .end local v8    # "_arg0":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 196
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 197
    .local v14, "_arg1":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v14, v15}, Lmiui/security/ISecurityManager$Stub;->setWakeUpTime(Ljava/lang/String;J)V

    .line 198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    const/16 v34, 0x1

    return v34

    .line 203
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":J
    :sswitch_e
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 206
    .restart local v8    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lmiui/security/ISecurityManager$Stub;->getWakeUpTime(Ljava/lang/String;)J

    move-result-wide v28

    .line 207
    .local v28, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    move-object/from16 v0, p3

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 209
    const/16 v34, 0x1

    return v34

    .line 213
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v28    # "_result":J
    :sswitch_f
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 217
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 218
    .restart local v19    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v8, v1}, Lmiui/security/ISecurityManager$Stub;->putSystemDataStringFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v33

    .line 219
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    if-eqz v33, :cond_b

    const/16 v34, 0x1

    :goto_b
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    const/16 v34, 0x1

    return v34

    .line 220
    :cond_b
    const/16 v34, 0x0

    goto :goto_b

    .line 225
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v33    # "_result":Z
    :sswitch_10
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 228
    .restart local v8    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lmiui/security/ISecurityManager$Stub;->readSystemDataStringFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 229
    .restart local v31    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    const/16 v34, 0x1

    return v34

    .line 235
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v31    # "_result":Ljava/lang/String;
    :sswitch_11
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 239
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_c

    .line 240
    sget-object v34, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ParceledListSlice;

    .line 246
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 247
    .restart local v22    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2}, Lmiui/security/ISecurityManager$Stub;->pushWakePathData(ILandroid/content/pm/ParceledListSlice;I)V

    .line 248
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    const/16 v34, 0x1

    return v34

    .line 243
    .end local v22    # "_arg2":I
    :cond_c
    const/16 v16, 0x0

    .local v16, "_arg1":Landroid/content/pm/ParceledListSlice;
    goto :goto_c

    .line 253
    .end local v4    # "_arg0":I
    .end local v16    # "_arg1":Landroid/content/pm/ParceledListSlice;
    :sswitch_12
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 257
    .local v9, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 258
    .local v12, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v12}, Lmiui/security/ISecurityManager$Stub;->pushWakePathWhiteList(Ljava/util/List;I)V

    .line 259
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    const/16 v34, 0x1

    return v34

    .line 264
    .end local v9    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "_arg1":I
    :sswitch_13
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_d

    const/4 v11, 0x1

    .line 267
    .local v11, "_arg0":Z
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lmiui/security/ISecurityManager$Stub;->setTrackWakePathCallListLogEnabled(Z)V

    .line 268
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    const/16 v34, 0x1

    return v34

    .line 266
    .end local v11    # "_arg0":Z
    :cond_d
    const/4 v11, 0x0

    goto :goto_d

    .line 273
    :sswitch_14
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->getWakePathCallListLog()Landroid/content/pm/ParceledListSlice;

    move-result-object v27

    .line 275
    .local v27, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    if-eqz v27, :cond_e

    .line 277
    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    const/16 v34, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 283
    :goto_e
    const/16 v34, 0x1

    return v34

    .line 281
    :cond_e
    const/16 v34, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 287
    .end local v27    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_15
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 290
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/security/ISecurityManager$Stub;->getAppPermissionControlOpen(I)I

    move-result v26

    .line 291
    .local v26, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    const/16 v34, 0x1

    return v34

    .line 297
    .end local v4    # "_arg0":I
    .end local v26    # "_result":I
    :sswitch_16
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 300
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/security/ISecurityManager$Stub;->setAppPermissionControlOpen(I)V

    .line 301
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    const/16 v34, 0x1

    return v34

    .line 306
    .end local v4    # "_arg0":I
    :sswitch_17
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/android/internal/app/IWakePathCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IWakePathCallback;

    move-result-object v7

    .line 309
    .local v7, "_arg0":Lcom/android/internal/app/IWakePathCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lmiui/security/ISecurityManager$Stub;->registerWakePathCallback(Lcom/android/internal/app/IWakePathCallback;)V

    .line 310
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    const/16 v34, 0x1

    return v34

    .line 315
    .end local v7    # "_arg0":Lcom/android/internal/app/IWakePathCallback;
    :sswitch_18
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 319
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 320
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Lmiui/security/ISecurityManager$Stub;->removeAccessControlPassAsUser(Ljava/lang/String;I)V

    .line 321
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    const/16 v34, 0x1

    return v34

    .line 326
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    :sswitch_19
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 329
    .local v6, "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lmiui/security/ISecurityManager$Stub;->needFinishAccessControl(Landroid/os/IBinder;)Z

    move-result v33

    .line 330
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    if-eqz v33, :cond_f

    const/16 v34, 0x1

    :goto_f
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    const/16 v34, 0x1

    return v34

    .line 331
    :cond_f
    const/16 v34, 0x0

    goto :goto_f

    .line 336
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v33    # "_result":Z
    :sswitch_1a
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 340
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 341
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Lmiui/security/ISecurityManager$Stub;->finishAccessControl(Ljava/lang/String;I)V

    .line 342
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    const/16 v34, 0x1

    return v34

    .line 347
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    :sswitch_1b
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_10

    .line 350
    sget-object v34, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 355
    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lmiui/security/ISecurityManager$Stub;->activityResume(Landroid/content/Intent;)I

    move-result v26

    .line 356
    .restart local v26    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    const/16 v34, 0x1

    return v34

    .line 353
    .end local v26    # "_result":I
    :cond_10
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/Intent;
    goto :goto_10

    .line 362
    .end local v5    # "_arg0":Landroid/content/Intent;
    :sswitch_1c
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_11

    const/4 v11, 0x1

    .line 366
    .local v11, "_arg0":Z
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 367
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lmiui/security/ISecurityManager$Stub;->setCoreRuntimePermissionEnabled(ZI)V

    .line 368
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    const/16 v34, 0x1

    return v34

    .line 364
    .end local v11    # "_arg0":Z
    .end local v12    # "_arg1":I
    :cond_11
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Z
    goto :goto_11

    .line 373
    .end local v11    # "_arg0":Z
    :sswitch_1d
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 376
    .restart local v8    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lmiui/security/ISecurityManager$Stub;->grantRuntimePermission(Ljava/lang/String;)V

    .line 377
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    const/16 v34, 0x1

    return v34

    .line 382
    .end local v8    # "_arg0":Ljava/lang/String;
    :sswitch_1e
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->getCurrentUserId()I

    move-result v26

    .line 384
    .restart local v26    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    const/16 v34, 0x1

    return v34

    .line 390
    .end local v26    # "_result":I
    :sswitch_1f
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 394
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_12

    .line 395
    sget-object v34, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Intent;

    .line 401
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 402
    .restart local v22    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v8, v13, v1}, Lmiui/security/ISecurityManager$Stub;->checkAccessControlPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v33

    .line 403
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    if-eqz v33, :cond_13

    const/16 v34, 0x1

    :goto_13
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    const/16 v34, 0x1

    return v34

    .line 398
    .end local v22    # "_arg2":I
    .end local v33    # "_result":Z
    :cond_12
    const/4 v13, 0x0

    .restart local v13    # "_arg1":Landroid/content/Intent;
    goto :goto_12

    .line 404
    .end local v13    # "_arg1":Landroid/content/Intent;
    .restart local v22    # "_arg2":I
    .restart local v33    # "_result":Z
    :cond_13
    const/16 v34, 0x0

    goto :goto_13

    .line 409
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v22    # "_arg2":I
    .end local v33    # "_result":Z
    :sswitch_20
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 413
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 414
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Lmiui/security/ISecurityManager$Stub;->getApplicationAccessControlEnabledAsUser(Ljava/lang/String;I)Z

    move-result v33

    .line 415
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    if-eqz v33, :cond_14

    const/16 v34, 0x1

    :goto_14
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    const/16 v34, 0x1

    return v34

    .line 416
    :cond_14
    const/16 v34, 0x0

    goto :goto_14

    .line 421
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v33    # "_result":Z
    :sswitch_21
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 424
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/security/ISecurityManager$Stub;->removeWakePathData(I)V

    .line 425
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    const/16 v34, 0x1

    return v34

    .line 430
    .end local v4    # "_arg0":I
    :sswitch_22
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 434
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 436
    .restart local v19    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_15

    .line 437
    sget-object v34, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/Intent;

    .line 443
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 444
    .local v25, "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    move/from16 v3, v25

    invoke-virtual {v0, v8, v1, v2, v3}, Lmiui/security/ISecurityManager$Stub;->checkAllowStartActivity(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v33

    .line 445
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    if-eqz v33, :cond_16

    const/16 v34, 0x1

    :goto_16
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    const/16 v34, 0x1

    return v34

    .line 440
    .end local v25    # "_arg3":I
    .end local v33    # "_result":Z
    :cond_15
    const/16 v23, 0x0

    .local v23, "_arg2":Landroid/content/Intent;
    goto :goto_15

    .line 446
    .end local v23    # "_arg2":Landroid/content/Intent;
    .restart local v25    # "_arg3":I
    .restart local v33    # "_result":Z
    :cond_16
    const/16 v34, 0x0

    goto :goto_16

    .line 451
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v25    # "_arg3":I
    .end local v33    # "_result":Z
    :sswitch_23
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->getSysAppCracked()I

    move-result v26

    .line 453
    .restart local v26    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    const/16 v34, 0x1

    return v34

    .line 459
    .end local v26    # "_result":I
    :sswitch_24
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 463
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 464
    .restart local v19    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v8, v1}, Lmiui/security/ISecurityManager$Stub;->grantInstallPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    const/16 v34, 0x1

    return v34

    .line 470
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":Ljava/lang/String;
    :sswitch_25
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 474
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v20

    .line 475
    .local v20, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Lmiui/security/ISecurityManager$Stub;->pushWakePathConfirmDialogWhiteList(ILjava/util/List;)V

    .line 476
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    const/16 v34, 0x1

    return v34

    .line 481
    .end local v4    # "_arg0":I
    .end local v20    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_26
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 485
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 486
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Lmiui/security/ISecurityManager$Stub;->addAccessControlPassForUser(Ljava/lang/String;I)V

    .line 487
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    const/16 v34, 0x1

    return v34

    .line 492
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    :sswitch_27
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 496
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_17

    const/16 v21, 0x1

    .line 498
    .local v21, "_arg1":Z
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 499
    .restart local v22    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v8, v1, v2}, Lmiui/security/ISecurityManager$Stub;->setApplicationAccessControlEnabledForUser(Ljava/lang/String;ZI)V

    .line 500
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    const/16 v34, 0x1

    return v34

    .line 496
    .end local v21    # "_arg1":Z
    .end local v22    # "_arg2":I
    :cond_17
    const/16 v21, 0x0

    .restart local v21    # "_arg1":Z
    goto :goto_17

    .line 505
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v21    # "_arg1":Z
    :sswitch_28
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 508
    .restart local v8    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lmiui/security/ISecurityManager$Stub;->isRestrictedAppNet(Ljava/lang/String;)Z

    move-result v33

    .line 509
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    if-eqz v33, :cond_18

    const/16 v34, 0x1

    :goto_18
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 511
    const/16 v34, 0x1

    return v34

    .line 510
    :cond_18
    const/16 v34, 0x0

    goto :goto_18

    .line 515
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v33    # "_result":Z
    :sswitch_29
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_19

    const/4 v11, 0x1

    .line 518
    .local v11, "_arg0":Z
    :goto_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lmiui/security/ISecurityManager$Stub;->writeAppHideConfig(Z)Z

    move-result v33

    .line 519
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    if-eqz v33, :cond_1a

    const/16 v34, 0x1

    :goto_1a
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 521
    const/16 v34, 0x1

    return v34

    .line 517
    .end local v11    # "_arg0":Z
    .end local v33    # "_result":Z
    :cond_19
    const/4 v11, 0x0

    goto :goto_19

    .line 520
    .restart local v11    # "_arg0":Z
    .restart local v33    # "_result":Z
    :cond_1a
    const/16 v34, 0x0

    goto :goto_1a

    .line 525
    .end local v11    # "_arg0":Z
    .end local v33    # "_result":Z
    :sswitch_2a
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 529
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_1b

    .line 530
    sget-object v34, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Bitmap;

    .line 535
    :goto_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v8, v1}, Lmiui/security/ISecurityManager$Stub;->saveIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 536
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    const/16 v34, 0x1

    return v34

    .line 533
    :cond_1b
    const/16 v17, 0x0

    .local v17, "_arg1":Landroid/graphics/Bitmap;
    goto :goto_1b

    .line 541
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":Landroid/graphics/Bitmap;
    :sswitch_2b
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 545
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 547
    .restart local v12    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 548
    .restart local v22    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v8, v12, v1}, Lmiui/security/ISecurityManager$Stub;->setMiuiFirewallRule(Ljava/lang/String;II)Z

    move-result v33

    .line 549
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    if-eqz v33, :cond_1c

    const/16 v34, 0x1

    :goto_1c
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 551
    const/16 v34, 0x1

    return v34

    .line 550
    :cond_1c
    const/16 v34, 0x0

    goto :goto_1c

    .line 555
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v22    # "_arg2":I
    .end local v33    # "_result":Z
    :sswitch_2c
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 558
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/security/ISecurityManager$Stub;->setCurrentNetworkState(I)Z

    move-result v33

    .line 559
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    if-eqz v33, :cond_1d

    const/16 v34, 0x1

    :goto_1d
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 561
    const/16 v34, 0x1

    return v34

    .line 560
    :cond_1d
    const/16 v34, 0x0

    goto :goto_1d

    .line 565
    .end local v4    # "_arg0":I
    .end local v33    # "_result":Z
    :sswitch_2d
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 568
    .restart local v9    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lmiui/security/ISecurityManager$Stub;->setIncompatibleAppList(Ljava/util/List;)V

    .line 569
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    const/16 v34, 0x1

    return v34

    .line 574
    .end local v9    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_2e
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->getIncompatibleAppList()Ljava/util/List;

    move-result-object v32

    .line 576
    .local v32, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 578
    const/16 v34, 0x1

    return v34

    .line 582
    .end local v32    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_2f
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 585
    .restart local v8    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lmiui/security/ISecurityManager$Stub;->getWakePathComponents(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v27

    .line 586
    .restart local v27    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    if-eqz v27, :cond_1e

    .line 588
    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 589
    const/16 v34, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 594
    :goto_1e
    const/16 v34, 0x1

    return v34

    .line 592
    :cond_1e
    const/16 v34, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1e

    .line 598
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_30
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lmiui/security/ISecurityCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/security/ISecurityCallback;

    move-result-object v10

    .line 601
    .local v10, "_arg0":Lmiui/security/ISecurityCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lmiui/security/ISecurityManager$Stub;->offerGoogleBaseCallBack(Lmiui/security/ISecurityCallback;)V

    .line 602
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    const/16 v34, 0x1

    return v34

    .line 607
    .end local v10    # "_arg0":Lmiui/security/ISecurityCallback;
    :sswitch_31
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->notifyAppsPreInstalled()V

    .line 609
    const/16 v34, 0x1

    return v34

    .line 613
    :sswitch_32
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 617
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 618
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Lmiui/security/ISecurityManager$Stub;->getApplicationMaskNotificationEnabledAsUser(Ljava/lang/String;I)Z

    move-result v33

    .line 619
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    if-eqz v33, :cond_1f

    const/16 v34, 0x1

    :goto_1f
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 621
    const/16 v34, 0x1

    return v34

    .line 620
    :cond_1f
    const/16 v34, 0x0

    goto :goto_1f

    .line 625
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v33    # "_result":Z
    :sswitch_33
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 629
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_20

    const/16 v21, 0x1

    .line 631
    .restart local v21    # "_arg1":Z
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 632
    .restart local v22    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v8, v1, v2}, Lmiui/security/ISecurityManager$Stub;->setApplicationMaskNotificationEnabledForUser(Ljava/lang/String;ZI)V

    .line 633
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    const/16 v34, 0x1

    return v34

    .line 629
    .end local v21    # "_arg1":Z
    .end local v22    # "_arg2":I
    :cond_20
    const/16 v21, 0x0

    .restart local v21    # "_arg1":Z
    goto :goto_20

    .line 638
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v21    # "_arg1":Z
    :sswitch_34
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 640
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 642
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 643
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Lmiui/security/ISecurityManager$Stub;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v33

    .line 644
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    if-eqz v33, :cond_21

    const/16 v34, 0x1

    :goto_21
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 646
    const/16 v34, 0x1

    return v34

    .line 645
    :cond_21
    const/16 v34, 0x0

    goto :goto_21

    .line 650
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v33    # "_result":Z
    :sswitch_35
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 654
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 656
    .restart local v12    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_22

    const/16 v24, 0x1

    .line 657
    .local v24, "_arg2":Z
    :goto_22
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v8, v12, v1}, Lmiui/security/ISecurityManager$Stub;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    .line 658
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    const/16 v34, 0x1

    return v34

    .line 656
    .end local v24    # "_arg2":Z
    :cond_22
    const/16 v24, 0x0

    goto :goto_22

    .line 663
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    :sswitch_36
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 664
    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->isAppHide()Z

    move-result v33

    .line 665
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    if-eqz v33, :cond_23

    const/16 v34, 0x1

    :goto_23
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 667
    const/16 v34, 0x1

    return v34

    .line 666
    :cond_23
    const/16 v34, 0x0

    goto :goto_23

    .line 671
    .end local v33    # "_result":Z
    :sswitch_37
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->isFunctionOpen()Z

    move-result v33

    .line 673
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 674
    if-eqz v33, :cond_24

    const/16 v34, 0x1

    :goto_24
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 675
    const/16 v34, 0x1

    return v34

    .line 674
    :cond_24
    const/16 v34, 0x0

    goto :goto_24

    .line 679
    .end local v33    # "_result":Z
    :sswitch_38
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_25

    const/4 v11, 0x1

    .line 682
    .restart local v11    # "_arg0":Z
    :goto_25
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lmiui/security/ISecurityManager$Stub;->setAppHide(Z)Z

    move-result v33

    .line 683
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    if-eqz v33, :cond_26

    const/16 v34, 0x1

    :goto_26
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 685
    const/16 v34, 0x1

    return v34

    .line 681
    .end local v11    # "_arg0":Z
    .end local v33    # "_result":Z
    :cond_25
    const/4 v11, 0x0

    goto :goto_25

    .line 684
    .restart local v11    # "_arg0":Z
    .restart local v33    # "_result":Z
    :cond_26
    const/16 v34, 0x0

    goto :goto_26

    .line 689
    .end local v11    # "_arg0":Z
    .end local v33    # "_result":Z
    :sswitch_39
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->isValidDevice()Z

    move-result v33

    .line 691
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    if-eqz v33, :cond_27

    const/16 v34, 0x1

    :goto_27
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 693
    const/16 v34, 0x1

    return v34

    .line 692
    :cond_27
    const/16 v34, 0x0

    goto :goto_27

    .line 697
    .end local v33    # "_result":Z
    :sswitch_3a
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 699
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 701
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_28

    .line 702
    sget-object v34, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Intent;

    .line 708
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 709
    .restart local v22    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v8, v13, v1}, Lmiui/security/ISecurityManager$Stub;->checkGameBoosterAntimsgPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v33

    .line 710
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    if-eqz v33, :cond_29

    const/16 v34, 0x1

    :goto_29
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 712
    const/16 v34, 0x1

    return v34

    .line 705
    .end local v22    # "_arg2":I
    .end local v33    # "_result":Z
    :cond_28
    const/4 v13, 0x0

    .restart local v13    # "_arg1":Landroid/content/Intent;
    goto :goto_28

    .line 711
    .end local v13    # "_arg1":Landroid/content/Intent;
    .restart local v22    # "_arg2":I
    .restart local v33    # "_result":Z
    :cond_29
    const/16 v34, 0x0

    goto :goto_29

    .line 716
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v22    # "_arg2":I
    .end local v33    # "_result":Z
    :sswitch_3b
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 718
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 720
    .restart local v6    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 722
    .restart local v12    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_2a

    const/16 v24, 0x1

    .line 723
    .restart local v24    # "_arg2":Z
    :goto_2a
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v6, v12, v1}, Lmiui/security/ISecurityManager$Stub;->setGameBoosterIBinder(Landroid/os/IBinder;IZ)V

    .line 724
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    const/16 v34, 0x1

    return v34

    .line 722
    .end local v24    # "_arg2":Z
    :cond_2a
    const/16 v24, 0x0

    goto :goto_2a

    .line 729
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v12    # "_arg1":I
    :sswitch_3c
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 731
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 732
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/security/ISecurityManager$Stub;->getGameMode(I)Z

    move-result v33

    .line 733
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    if-eqz v33, :cond_2b

    const/16 v34, 0x1

    :goto_2b
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    const/16 v34, 0x1

    return v34

    .line 734
    :cond_2b
    const/16 v34, 0x0

    goto :goto_2b

    .line 739
    .end local v4    # "_arg0":I
    .end local v33    # "_result":Z
    :sswitch_3d
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 741
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 743
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 745
    .restart local v19    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 746
    .restart local v22    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v0, v8, v1, v2}, Lmiui/security/ISecurityManager$Stub;->setAccessControlPassword(Ljava/lang/String;Ljava/lang/String;I)V

    .line 747
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    const/16 v34, 0x1

    return v34

    .line 752
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v22    # "_arg2":I
    :sswitch_3e
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 754
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 756
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 758
    .restart local v19    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 759
    .restart local v22    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v0, v8, v1, v2}, Lmiui/security/ISecurityManager$Stub;->checkAccessControlPassword(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v33

    .line 760
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    if-eqz v33, :cond_2c

    const/16 v34, 0x1

    :goto_2c
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 762
    const/16 v34, 0x1

    return v34

    .line 761
    :cond_2c
    const/16 v34, 0x0

    goto :goto_2c

    .line 766
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v22    # "_arg2":I
    .end local v33    # "_result":Z
    :sswitch_3f
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 769
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/security/ISecurityManager$Stub;->haveAccessControlPassword(I)Z

    move-result v33

    .line 770
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    if-eqz v33, :cond_2d

    const/16 v34, 0x1

    :goto_2d
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 772
    const/16 v34, 0x1

    return v34

    .line 771
    :cond_2d
    const/16 v34, 0x0

    goto :goto_2d

    .line 776
    .end local v4    # "_arg0":I
    .end local v33    # "_result":Z
    :sswitch_40
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 778
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 779
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/security/ISecurityManager$Stub;->getAccessControlPasswordType(I)Ljava/lang/String;

    move-result-object v31

    .line 780
    .restart local v31    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 782
    const/16 v34, 0x1

    return v34

    .line 786
    .end local v4    # "_arg0":I
    .end local v31    # "_result":Ljava/lang/String;
    :sswitch_41
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 788
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 790
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_2e

    const/16 v21, 0x1

    .line 791
    .local v21, "_arg1":Z
    :goto_2e
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v8, v1}, Lmiui/security/ISecurityManager$Stub;->setAppPrivacyStatus(Ljava/lang/String;Z)V

    .line 792
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    const/16 v34, 0x1

    return v34

    .line 790
    .end local v21    # "_arg1":Z
    :cond_2e
    const/16 v21, 0x0

    goto :goto_2e

    .line 797
    .end local v8    # "_arg0":Ljava/lang/String;
    :sswitch_42
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 799
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 800
    .restart local v8    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lmiui/security/ISecurityManager$Stub;->isAppPrivacyEnabled(Ljava/lang/String;)Z

    move-result v33

    .line 801
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    if-eqz v33, :cond_2f

    const/16 v34, 0x1

    :goto_2f
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 803
    const/16 v34, 0x1

    return v34

    .line 802
    :cond_2f
    const/16 v34, 0x0

    goto :goto_2f

    .line 807
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v33    # "_result":Z
    :sswitch_43
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 809
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_30

    .line 810
    sget-object v34, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 816
    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 817
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Lmiui/security/ISecurityManager$Stub;->isAllowStartService(Landroid/content/Intent;I)Z

    move-result v33

    .line 818
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 819
    if-eqz v33, :cond_31

    const/16 v34, 0x1

    :goto_31
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 820
    const/16 v34, 0x1

    return v34

    .line 813
    .end local v12    # "_arg1":I
    .end local v33    # "_result":Z
    :cond_30
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/Intent;
    goto :goto_30

    .line 819
    .end local v5    # "_arg0":Landroid/content/Intent;
    .restart local v12    # "_arg1":I
    .restart local v33    # "_result":Z
    :cond_31
    const/16 v34, 0x0

    goto :goto_31

    .line 824
    .end local v12    # "_arg1":I
    .end local v33    # "_result":Z
    :sswitch_44
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 825
    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->getTopActivity()Landroid/os/IBinder;

    move-result-object v30

    .line 826
    .local v30, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 828
    const/16 v34, 0x1

    return v34

    .line 832
    .end local v30    # "_result":Landroid/os/IBinder;
    :sswitch_45
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 833
    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->getAppRunningControlIBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 834
    .restart local v30    # "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 836
    const/16 v34, 0x1

    return v34

    .line 840
    .end local v30    # "_result":Landroid/os/IBinder;
    :sswitch_46
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 841
    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->watchGreenGuardProcess()V

    .line 842
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    const/16 v34, 0x1

    return v34

    .line 847
    :sswitch_47
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 848
    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->getSecondSpaceId()I

    move-result v26

    .line 849
    .restart local v26    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 850
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 851
    const/16 v34, 0x1

    return v34

    .line 855
    .end local v26    # "_result":I
    :sswitch_48
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 857
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 859
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 861
    .restart local v12    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_32

    const/16 v24, 0x1

    .line 862
    .restart local v24    # "_arg2":Z
    :goto_32
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v4, v12, v1}, Lmiui/security/ISecurityManager$Stub;->moveTaskToStack(IIZ)I

    move-result v26

    .line 863
    .restart local v26    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 864
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 865
    const/16 v34, 0x1

    return v34

    .line 861
    .end local v24    # "_arg2":Z
    .end local v26    # "_result":I
    :cond_32
    const/16 v24, 0x0

    goto :goto_32

    .line 869
    .end local v4    # "_arg0":I
    .end local v12    # "_arg1":I
    :sswitch_49
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 871
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 873
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_33

    .line 874
    sget-object v34, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Rect;

    .line 880
    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 881
    .restart local v22    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2}, Lmiui/security/ISecurityManager$Stub;->resizeTask(ILandroid/graphics/Rect;I)I

    move-result v26

    .line 882
    .restart local v26    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 883
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 884
    const/16 v34, 0x1

    return v34

    .line 877
    .end local v22    # "_arg2":I
    .end local v26    # "_result":I
    :cond_33
    const/16 v18, 0x0

    .local v18, "_arg1":Landroid/graphics/Rect;
    goto :goto_33

    .line 888
    .end local v4    # "_arg0":I
    .end local v18    # "_arg1":Landroid/graphics/Rect;
    :sswitch_4a
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 890
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 892
    .restart local v9    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_34

    const/16 v21, 0x1

    .line 893
    .restart local v21    # "_arg1":Z
    :goto_34
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v9, v1}, Lmiui/security/ISecurityManager$Stub;->pushUpdatePkgsData(Ljava/util/List;Z)V

    .line 894
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 895
    const/16 v34, 0x1

    return v34

    .line 892
    .end local v21    # "_arg1":Z
    :cond_34
    const/16 v21, 0x0

    goto :goto_34

    .line 899
    .end local v9    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_4b
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 901
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 903
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 905
    .restart local v12    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_35

    const/16 v24, 0x1

    .line 906
    .restart local v24    # "_arg2":Z
    :goto_35
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v8, v12, v1}, Lmiui/security/ISecurityManager$Stub;->setPrivacyApp(Ljava/lang/String;IZ)V

    .line 907
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 908
    const/16 v34, 0x1

    return v34

    .line 905
    .end local v24    # "_arg2":Z
    :cond_35
    const/16 v24, 0x0

    goto :goto_35

    .line 912
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    :sswitch_4c
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 914
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 916
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 917
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Lmiui/security/ISecurityManager$Stub;->isPrivacyApp(Ljava/lang/String;I)Z

    move-result v33

    .line 918
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 919
    if-eqz v33, :cond_36

    const/16 v34, 0x1

    :goto_36
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 920
    const/16 v34, 0x1

    return v34

    .line 919
    :cond_36
    const/16 v34, 0x0

    goto :goto_36

    .line 924
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v33    # "_result":Z
    :sswitch_4d
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 926
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 927
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/security/ISecurityManager$Stub;->getAllPrivacyApps(I)Ljava/util/List;

    move-result-object v32

    .line 928
    .restart local v32    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 930
    const/16 v34, 0x1

    return v34

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
