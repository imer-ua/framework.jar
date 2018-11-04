.class public abstract Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;
.super Landroid/os/Binder;
.source "IPowerKeeperPolicy.java"

# interfaces
.implements Lcom/miui/whetstone/IPowerKeeperPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/IPowerKeeperPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/IPowerKeeperPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.whetstone.IPowerKeeperPolicy"

.field static final TRANSACTION_getAlarmPolicies:I = 0x4

.field static final TRANSACTION_getAppBroadcastControlStat:I = 0xe

.field static final TRANSACTION_getBroadcastPolicies:I = 0x2

.field static final TRANSACTION_isLeScanAllowed:I = 0xa

.field static final TRANSACTION_offerPowerKeeperIBinder:I = 0x6

.field static final TRANSACTION_setAlarmPolicy:I = 0x3

.field static final TRANSACTION_setAppBGIdleFeatureEnable:I = 0x10

.field static final TRANSACTION_setAppBGIdleLevel:I = 0x11

.field static final TRANSACTION_setAppBroadcastControlStat:I = 0xd

.field static final TRANSACTION_setAppPushAlarmLeader:I = 0x8

.field static final TRANSACTION_setAppPushAlarmProperty:I = 0x7

.field static final TRANSACTION_setBroadcastPolicy:I = 0x1

.field static final TRANSACTION_setLeScanFeature:I = 0x9

.field static final TRANSACTION_setLeScanParam:I = 0xf

.field static final TRANSACTION_startLeScan:I = 0xb

.field static final TRANSACTION_stopLeScan:I = 0xc

.field static final TRANSACTION_updateWakelockBlockedUid:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IPowerKeeperPolicy;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 23
    if-nez p0, :cond_0

    .line 24
    return-object v1

    .line 26
    :cond_0
    const-string/jumbo v1, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/whetstone/IPowerKeeperPolicy;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/miui/whetstone/IPowerKeeperPolicy;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 240
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v15

    return v15

    .line 42
    :sswitch_0
    const-string/jumbo v15, "com.miui.whetstone.IPowerKeeperPolicy"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v15, 0x1

    return v15

    .line 47
    :sswitch_1
    const-string/jumbo v15, "com.miui.whetstone.IPowerKeeperPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    sget-object v15, Lcom/miui/whetstone/BroadcastPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/miui/whetstone/BroadcastPolicy;

    .line 51
    .local v6, "_arg0":[Lcom/miui/whetstone/BroadcastPolicy;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_0

    const/4 v10, 0x1

    .line 52
    .local v10, "_arg1":Z
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setBroadcastPolicy([Lcom/miui/whetstone/BroadcastPolicy;Z)V

    .line 53
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    const/4 v15, 0x1

    return v15

    .line 51
    .end local v10    # "_arg1":Z
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 58
    .end local v6    # "_arg0":[Lcom/miui/whetstone/BroadcastPolicy;
    :sswitch_2
    const-string/jumbo v15, "com.miui.whetstone.IPowerKeeperPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->getBroadcastPolicies()[Lcom/miui/whetstone/BroadcastPolicy;

    move-result-object v14

    .line 60
    .local v14, "_result":[Lcom/miui/whetstone/BroadcastPolicy;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 62
    const/4 v15, 0x1

    return v15

    .line 66
    .end local v14    # "_result":[Lcom/miui/whetstone/BroadcastPolicy;
    :sswitch_3
    const-string/jumbo v15, "com.miui.whetstone.IPowerKeeperPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    sget-object v15, Lcom/miui/whetstone/AlarmPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/miui/whetstone/AlarmPolicy;

    .line 70
    .local v5, "_arg0":[Lcom/miui/whetstone/AlarmPolicy;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_1

    const/4 v10, 0x1

    .line 71
    .restart local v10    # "_arg1":Z
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v10}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setAlarmPolicy([Lcom/miui/whetstone/AlarmPolicy;Z)V

    .line 72
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    const/4 v15, 0x1

    return v15

    .line 70
    .end local v10    # "_arg1":Z
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 77
    .end local v5    # "_arg0":[Lcom/miui/whetstone/AlarmPolicy;
    :sswitch_4
    const-string/jumbo v15, "com.miui.whetstone.IPowerKeeperPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->getAlarmPolicies()[Lcom/miui/whetstone/AlarmPolicy;

    move-result-object v13

    .line 79
    .local v13, "_result":[Lcom/miui/whetstone/AlarmPolicy;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v15}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 81
    const/4 v15, 0x1

    return v15

    .line 85
    .end local v13    # "_result":[Lcom/miui/whetstone/AlarmPolicy;
    :sswitch_5
    const-string/jumbo v15, "com.miui.whetstone.IPowerKeeperPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 89
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 91
    .local v9, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_2

    const/4 v11, 0x1

    .line 92
    .local v11, "_arg2":Z
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v9, v11}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->updateWakelockBlockedUid(ILjava/lang/String;Z)V

    .line 93
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    const/4 v15, 0x1

    return v15

    .line 91
    .end local v11    # "_arg2":Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    .line 98
    .end local v1    # "_arg0":I
    .end local v9    # "_arg1":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v15, "com.miui.whetstone.IPowerKeeperPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 101
    .local v3, "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->offerPowerKeeperIBinder(Landroid/os/IBinder;)V

    .line 102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    const/4 v15, 0x1

    return v15

    .line 107
    .end local v3    # "_arg0":Landroid/os/IBinder;
    :sswitch_7
    const-string/jumbo v15, "com.miui.whetstone.IPowerKeeperPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 111
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_3

    .line 112
    sget-object v15, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 118
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_4

    const/4 v11, 0x1

    .line 119
    .restart local v11    # "_arg2":Z
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v8, v11}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setAppPushAlarmProperty(ILandroid/content/Intent;Z)V

    .line 120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    const/4 v15, 0x1

    return v15

    .line 115
    .end local v11    # "_arg2":Z
    :cond_3
    const/4 v8, 0x0

    .local v8, "_arg1":Landroid/content/Intent;
    goto :goto_3

    .line 118
    .end local v8    # "_arg1":Landroid/content/Intent;
    :cond_4
    const/4 v11, 0x0

    goto :goto_4

    .line 125
    .end local v1    # "_arg0":I
    :sswitch_8
    const-string/jumbo v15, "com.miui.whetstone.IPowerKeeperPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 129
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_5

    .line 130
    sget-object v15, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 135
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v8}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setAppPushAlarmLeader(ILandroid/content/Intent;)V

    .line 136
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    const/4 v15, 0x1

    return v15

    .line 133
    :cond_5
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Landroid/content/Intent;
    goto :goto_5

    .line 141
    .end local v1    # "_arg0":I
    .end local v8    # "_arg1":Landroid/content/Intent;
    :sswitch_9
    const-string/jumbo v15, "com.miui.whetstone.IPowerKeeperPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_6

    const/4 v4, 0x1

    .line 144
    .local v4, "_arg0":Z
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setLeScanFeature(Z)V

    .line 145
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    const/4 v15, 0x1

    return v15

    .line 143
    .end local v4    # "_arg0":Z
    :cond_6
    const/4 v4, 0x0

    goto :goto_6

    .line 150
    :sswitch_a
    const-string/jumbo v15, "com.miui.whetstone.IPowerKeeperPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 153
    .restart local v1    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->isLeScanAllowed(I)Z

    move-result v12

    .line 154
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v12, :cond_7

    const/4 v15, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    const/4 v15, 0x1

    return v15

    .line 155
    :cond_7
    const/4 v15, 0x0

    goto :goto_7

    .line 160
    .end local v1    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_b
    const-string/jumbo v15, "com.miui.whetstone.IPowerKeeperPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_8

    .line 163
    sget-object v15, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 168
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->startLeScan(Landroid/os/Bundle;)V

    .line 169
    const/4 v15, 0x1

    return v15

    .line 166
    :cond_8
    const/4 v2, 0x0

    .local v2, "_arg0":Landroid/os/Bundle;
    goto :goto_8

    .line 173
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :sswitch_c
    const-string/jumbo v15, "com.miui.whetstone.IPowerKeeperPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_9

    .line 176
    sget-object v15, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 181
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->stopLeScan(Landroid/os/Bundle;)V

    .line 182
    const/4 v15, 0x1

    return v15

    .line 179
    :cond_9
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/os/Bundle;
    goto :goto_9

    .line 186
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :sswitch_d
    const-string/jumbo v15, "com.miui.whetstone.IPowerKeeperPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 190
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_a

    const/4 v10, 0x1

    .line 191
    .restart local v10    # "_arg1":Z
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v10}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setAppBroadcastControlStat(IZ)V

    .line 192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    const/4 v15, 0x1

    return v15

    .line 190
    .end local v10    # "_arg1":Z
    :cond_a
    const/4 v10, 0x0

    goto :goto_a

    .line 197
    .end local v1    # "_arg0":I
    :sswitch_e
    const-string/jumbo v15, "com.miui.whetstone.IPowerKeeperPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 200
    .restart local v1    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->getAppBroadcastControlStat(I)Z

    move-result v12

    .line 201
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    if-eqz v12, :cond_b

    const/4 v15, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    const/4 v15, 0x1

    return v15

    .line 202
    :cond_b
    const/4 v15, 0x0

    goto :goto_b

    .line 207
    .end local v1    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_f
    const-string/jumbo v15, "com.miui.whetstone.IPowerKeeperPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_c

    .line 210
    sget-object v15, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 215
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setLeScanParam(Landroid/os/Bundle;)V

    .line 216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    const/4 v15, 0x1

    return v15

    .line 213
    :cond_c
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/os/Bundle;
    goto :goto_c

    .line 221
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :sswitch_10
    const-string/jumbo v15, "com.miui.whetstone.IPowerKeeperPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_d

    const/4 v4, 0x1

    .line 224
    .restart local v4    # "_arg0":Z
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setAppBGIdleFeatureEnable(Z)V

    .line 225
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    const/4 v15, 0x1

    return v15

    .line 223
    .end local v4    # "_arg0":Z
    :cond_d
    const/4 v4, 0x0

    goto :goto_d

    .line 230
    :sswitch_11
    const-string/jumbo v15, "com.miui.whetstone.IPowerKeeperPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 234
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 235
    .local v7, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v7}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setAppBGIdleLevel(II)V

    .line 236
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    const/4 v15, 0x1

    return v15

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
