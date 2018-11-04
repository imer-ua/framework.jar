.class public abstract Lmiui/mqsas/IMQSService$Stub;
.super Landroid/os/Binder;
.source "IMQSService.java"

# interfaces
.implements Lmiui/mqsas/IMQSService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/mqsas/IMQSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/mqsas/IMQSService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.mqsas.IMQSService"

.field static final TRANSACTION_checkIfNeedDumpFd:I = 0x2

.field static final TRANSACTION_checkIfNeedDumpheap:I = 0x3

.field static final TRANSACTION_dialogButtonChecked:I = 0x15

.field static final TRANSACTION_dumpBugReport:I = 0x14

.field static final TRANSACTION_getOnlineRuleMatched:I = 0x12

.field static final TRANSACTION_onBootCompleted:I = 0x9

.field static final TRANSACTION_reportAnrEvent:I = 0x4

.field static final TRANSACTION_reportBluetoothEvent:I = 0xf

.field static final TRANSACTION_reportBootEvent:I = 0xb

.field static final TRANSACTION_reportBrightnessEvent:I = 0x16

.field static final TRANSACTION_reportBroadcastEvent:I = 0xa

.field static final TRANSACTION_reportConnectExceptionEvent:I = 0xd

.field static final TRANSACTION_reportEvent:I = 0x10

.field static final TRANSACTION_reportEvents:I = 0x11

.field static final TRANSACTION_reportJavaExceptionEvent:I = 0x5

.field static final TRANSACTION_reportKillProcessEvents:I = 0xe

.field static final TRANSACTION_reportPackageEvent:I = 0x8

.field static final TRANSACTION_reportPackageForegroundEvents:I = 0x13

.field static final TRANSACTION_reportScreenOnEvent:I = 0x7

.field static final TRANSACTION_reportSimpleEvent:I = 0x1

.field static final TRANSACTION_reportTelephonyEvent:I = 0xc

.field static final TRANSACTION_reportWatchdogEvent:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "miui.mqsas.IMQSService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/mqsas/IMQSService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-nez p0, :cond_0

    .line 28
    return-object v1

    .line 30
    :cond_0
    const-string/jumbo v1, "miui.mqsas.IMQSService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/mqsas/IMQSService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lmiui/mqsas/IMQSService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lmiui/mqsas/IMQSService$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/mqsas/IMQSService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 22
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 319
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v21

    return v21

    .line 46
    :sswitch_0
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/16 v21, 0x1

    return v21

    .line 51
    :sswitch_1
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 55
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 56
    .local v12, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12}, Lmiui/mqsas/IMQSService$Stub;->reportSimpleEvent(ILjava/lang/String;)V

    .line 57
    const/16 v21, 0x1

    return v21

    .line 61
    .end local v2    # "_arg0":I
    .end local v12    # "_arg1":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_0

    .line 64
    sget-object v21, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    .line 69
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lmiui/mqsas/IMQSService$Stub;->checkIfNeedDumpFd(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)I

    move-result v19

    .line 70
    .local v19, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    const/16 v21, 0x1

    return v21

    .line 67
    .end local v19    # "_result":I
    :cond_0
    const/4 v7, 0x0

    .local v7, "_arg0":Lmiui/mqsas/sdk/event/JavaExceptionEvent;
    goto :goto_0

    .line 76
    .end local v7    # "_arg0":Lmiui/mqsas/sdk/event/JavaExceptionEvent;
    :sswitch_3
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_1

    .line 79
    sget-object v21, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    .line 84
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lmiui/mqsas/IMQSService$Stub;->checkIfNeedDumpheap(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)I

    move-result v19

    .line 85
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    const/16 v21, 0x1

    return v21

    .line 82
    .end local v19    # "_result":I
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Lmiui/mqsas/sdk/event/JavaExceptionEvent;
    goto :goto_1

    .line 91
    .end local v7    # "_arg0":Lmiui/mqsas/sdk/event/JavaExceptionEvent;
    :sswitch_4
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_2

    .line 94
    sget-object v21, Lmiui/mqsas/sdk/event/AnrEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/mqsas/sdk/event/AnrEvent;

    .line 99
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lmiui/mqsas/IMQSService$Stub;->reportAnrEvent(Lmiui/mqsas/sdk/event/AnrEvent;)V

    .line 100
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    const/16 v21, 0x1

    return v21

    .line 97
    :cond_2
    const/4 v5, 0x0

    .local v5, "_arg0":Lmiui/mqsas/sdk/event/AnrEvent;
    goto :goto_2

    .line 105
    .end local v5    # "_arg0":Lmiui/mqsas/sdk/event/AnrEvent;
    :sswitch_5
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_3

    .line 108
    sget-object v21, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    .line 113
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lmiui/mqsas/IMQSService$Stub;->reportJavaExceptionEvent(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)V

    .line 114
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    const/16 v21, 0x1

    return v21

    .line 111
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Lmiui/mqsas/sdk/event/JavaExceptionEvent;
    goto :goto_3

    .line 119
    .end local v7    # "_arg0":Lmiui/mqsas/sdk/event/JavaExceptionEvent;
    :sswitch_6
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_4

    .line 122
    sget-object v21, Lmiui/mqsas/sdk/event/WatchdogEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiui/mqsas/sdk/event/WatchdogEvent;

    .line 127
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lmiui/mqsas/IMQSService$Stub;->reportWatchdogEvent(Lmiui/mqsas/sdk/event/WatchdogEvent;)V

    .line 128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    const/16 v21, 0x1

    return v21

    .line 125
    :cond_4
    const/4 v10, 0x0

    .local v10, "_arg0":Lmiui/mqsas/sdk/event/WatchdogEvent;
    goto :goto_4

    .line 133
    .end local v10    # "_arg0":Lmiui/mqsas/sdk/event/WatchdogEvent;
    :sswitch_7
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_5

    .line 136
    sget-object v21, Lmiui/mqsas/sdk/event/ScreenOnEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmiui/mqsas/sdk/event/ScreenOnEvent;

    .line 141
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lmiui/mqsas/IMQSService$Stub;->reportScreenOnEvent(Lmiui/mqsas/sdk/event/ScreenOnEvent;)V

    .line 142
    const/16 v21, 0x1

    return v21

    .line 139
    :cond_5
    const/4 v9, 0x0

    .local v9, "_arg0":Lmiui/mqsas/sdk/event/ScreenOnEvent;
    goto :goto_5

    .line 146
    .end local v9    # "_arg0":Lmiui/mqsas/sdk/event/ScreenOnEvent;
    :sswitch_8
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_6

    .line 149
    sget-object v21, Lmiui/mqsas/sdk/event/PackageEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/mqsas/sdk/event/PackageEvent;

    .line 154
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lmiui/mqsas/IMQSService$Stub;->reportPackageEvent(Lmiui/mqsas/sdk/event/PackageEvent;)V

    .line 155
    const/16 v21, 0x1

    return v21

    .line 152
    :cond_6
    const/4 v8, 0x0

    .local v8, "_arg0":Lmiui/mqsas/sdk/event/PackageEvent;
    goto :goto_6

    .line 159
    .end local v8    # "_arg0":Lmiui/mqsas/sdk/event/PackageEvent;
    :sswitch_9
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p0 .. p0}, Lmiui/mqsas/IMQSService$Stub;->onBootCompleted()V

    .line 161
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    const/16 v21, 0x1

    return v21

    .line 166
    :sswitch_a
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_7

    .line 169
    sget-object v21, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;

    .line 174
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lmiui/mqsas/IMQSService$Stub;->reportBroadcastEvent(Landroid/content/pm/ParceledListSlice;)V

    .line 175
    const/16 v21, 0x1

    return v21

    .line 172
    :cond_7
    const/4 v3, 0x0

    .local v3, "_arg0":Landroid/content/pm/ParceledListSlice;
    goto :goto_7

    .line 179
    .end local v3    # "_arg0":Landroid/content/pm/ParceledListSlice;
    :sswitch_b
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_8

    .line 182
    sget-object v21, Lmiui/mqsas/sdk/event/BootEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/mqsas/sdk/event/BootEvent;

    .line 187
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lmiui/mqsas/IMQSService$Stub;->reportBootEvent(Lmiui/mqsas/sdk/event/BootEvent;)V

    .line 188
    const/16 v21, 0x1

    return v21

    .line 185
    :cond_8
    const/4 v6, 0x0

    .local v6, "_arg0":Lmiui/mqsas/sdk/event/BootEvent;
    goto :goto_8

    .line 192
    .end local v6    # "_arg0":Lmiui/mqsas/sdk/event/BootEvent;
    :sswitch_c
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 196
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 197
    .restart local v12    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12}, Lmiui/mqsas/IMQSService$Stub;->reportTelephonyEvent(ILjava/lang/String;)V

    .line 198
    const/16 v21, 0x1

    return v21

    .line 202
    .end local v2    # "_arg0":I
    .end local v12    # "_arg1":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 206
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 208
    .local v11, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 209
    .local v15, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11, v15}, Lmiui/mqsas/IMQSService$Stub;->reportConnectExceptionEvent(IILjava/lang/String;)V

    .line 210
    const/16 v21, 0x1

    return v21

    .line 214
    .end local v2    # "_arg0":I
    .end local v11    # "_arg1":I
    .end local v15    # "_arg2":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_9

    .line 217
    sget-object v21, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;

    .line 222
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lmiui/mqsas/IMQSService$Stub;->reportKillProcessEvents(Landroid/content/pm/ParceledListSlice;)V

    .line 223
    const/16 v21, 0x1

    return v21

    .line 220
    :cond_9
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/content/pm/ParceledListSlice;
    goto :goto_9

    .line 227
    .end local v3    # "_arg0":Landroid/content/pm/ParceledListSlice;
    :sswitch_f
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 231
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 232
    .restart local v12    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12}, Lmiui/mqsas/IMQSService$Stub;->reportBluetoothEvent(ILjava/lang/String;)V

    .line 233
    const/16 v21, 0x1

    return v21

    .line 237
    .end local v2    # "_arg0":I
    .end local v12    # "_arg1":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 241
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 243
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_a

    const/16 v16, 0x1

    .line 244
    .local v16, "_arg2":Z
    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v4, v12, v1}, Lmiui/mqsas/IMQSService$Stub;->reportEvent(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 245
    const/16 v21, 0x1

    return v21

    .line 243
    .end local v16    # "_arg2":Z
    :cond_a
    const/16 v16, 0x0

    goto :goto_a

    .line 249
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":Ljava/lang/String;
    :sswitch_11
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 253
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .line 255
    .local v13, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_b

    const/16 v16, 0x1

    .line 256
    .restart local v16    # "_arg2":Z
    :goto_b
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v4, v13, v1}, Lmiui/mqsas/IMQSService$Stub;->reportEvents(Ljava/lang/String;Ljava/util/List;Z)V

    .line 257
    const/16 v21, 0x1

    return v21

    .line 255
    .end local v16    # "_arg2":Z
    :cond_b
    const/16 v16, 0x0

    goto :goto_b

    .line 261
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_12
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 265
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 266
    .restart local v12    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12}, Lmiui/mqsas/IMQSService$Stub;->getOnlineRuleMatched(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 267
    .local v20, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    const/16 v21, 0x1

    return v21

    .line 273
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v20    # "_result":Ljava/lang/String;
    :sswitch_13
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_c

    .line 276
    sget-object v21, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;

    .line 281
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lmiui/mqsas/IMQSService$Stub;->reportPackageForegroundEvents(Landroid/content/pm/ParceledListSlice;)V

    .line 282
    const/16 v21, 0x1

    return v21

    .line 279
    :cond_c
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/content/pm/ParceledListSlice;
    goto :goto_c

    .line 286
    .end local v3    # "_arg0":Landroid/content/pm/ParceledListSlice;
    :sswitch_14
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p0 .. p0}, Lmiui/mqsas/IMQSService$Stub;->dumpBugReport()V

    .line 288
    const/16 v21, 0x1

    return v21

    .line 292
    :sswitch_15
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 296
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 298
    .restart local v11    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 300
    .restart local v15    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_d

    const/16 v18, 0x1

    .line 301
    .local v18, "_arg3":Z
    :goto_d
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v2, v11, v15, v1}, Lmiui/mqsas/IMQSService$Stub;->dialogButtonChecked(IILjava/lang/String;Z)V

    .line 302
    const/16 v21, 0x1

    return v21

    .line 300
    .end local v18    # "_arg3":Z
    :cond_d
    const/16 v18, 0x0

    goto :goto_d

    .line 306
    .end local v2    # "_arg0":I
    .end local v11    # "_arg1":I
    .end local v15    # "_arg2":Ljava/lang/String;
    :sswitch_16
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 310
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 312
    .restart local v11    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 314
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 315
    .local v17, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v11, v14, v1}, Lmiui/mqsas/IMQSService$Stub;->reportBrightnessEvent(IIILjava/lang/String;)V

    .line 316
    const/16 v21, 0x1

    return v21

    .line 42
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
