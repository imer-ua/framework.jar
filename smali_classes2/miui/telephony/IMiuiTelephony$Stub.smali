.class public abstract Lmiui/telephony/IMiuiTelephony$Stub;
.super Landroid/os/Binder;
.source "IMiuiTelephony.java"

# interfaces
.implements Lmiui/telephony/IMiuiTelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/IMiuiTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/IMiuiTelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.telephony.IMiuiTelephony"

.field static final TRANSACTION_getCellLocationForSlot:I = 0x17

.field static final TRANSACTION_getDeviceId:I = 0x10

.field static final TRANSACTION_getDeviceIdList:I = 0xd

.field static final TRANSACTION_getImei:I = 0x11

.field static final TRANSACTION_getImeiList:I = 0xe

.field static final TRANSACTION_getMeid:I = 0x12

.field static final TRANSACTION_getMeidList:I = 0xf

.field static final TRANSACTION_getSmallDeviceId:I = 0x13

.field static final TRANSACTION_getSpn:I = 0x15

.field static final TRANSACTION_getSystemDefaultSlotId:I = 0xa

.field static final TRANSACTION_isIccCardActivate:I = 0xb

.field static final TRANSACTION_isImsRegistered:I = 0x3

.field static final TRANSACTION_isSameOperator:I = 0x14

.field static final TRANSACTION_isVolteEnabledByPlatform:I = 0x8

.field static final TRANSACTION_isVolteEnabledByPlatformForSlot:I = 0x9

.field static final TRANSACTION_isVolteEnabledByUser:I = 0x4

.field static final TRANSACTION_isVolteEnabledByUserForSlot:I = 0x5

.field static final TRANSACTION_isVtEnabledByPlatform:I = 0x6

.field static final TRANSACTION_isVtEnabledByPlatformForSlot:I = 0x7

.field static final TRANSACTION_onOperatorNumericOrNameSet:I = 0x16

.field static final TRANSACTION_setCallForwardingOption:I = 0x18

.field static final TRANSACTION_setDefaultDataSlotId:I = 0x2

.field static final TRANSACTION_setDefaultVoiceSlotId:I = 0x1

.field static final TRANSACTION_setIccCardActivate:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "miui.telephony.IMiuiTelephony"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/telephony/IMiuiTelephony;
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
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/telephony/IMiuiTelephony;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lmiui/telephony/IMiuiTelephony;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lmiui/telephony/IMiuiTelephony$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/telephony/IMiuiTelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 17
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

    .line 318
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 42
    :sswitch_0
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v1, 0x1

    return v1

    .line 47
    :sswitch_1
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 51
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 52
    .local v8, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lmiui/telephony/IMiuiTelephony$Stub;->setDefaultVoiceSlotId(ILjava/lang/String;)V

    .line 53
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    const/4 v1, 0x1

    return v1

    .line 58
    .end local v2    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 62
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 63
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lmiui/telephony/IMiuiTelephony$Stub;->setDefaultDataSlotId(ILjava/lang/String;)Z

    move-result v16

    .line 64
    .local v16, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v16, :cond_0

    const/4 v1, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    const/4 v1, 0x1

    return v1

    .line 65
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 70
    .end local v2    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v16    # "_result":Z
    :sswitch_3
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 73
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lmiui/telephony/IMiuiTelephony$Stub;->isImsRegistered(I)Z

    move-result v16

    .line 74
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v16, :cond_1

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    const/4 v1, 0x1

    return v1

    .line 75
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 80
    .end local v2    # "_arg0":I
    .end local v16    # "_result":Z
    :sswitch_4
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p0 .. p0}, Lmiui/telephony/IMiuiTelephony$Stub;->isVolteEnabledByUser()Z

    move-result v16

    .line 82
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v16, :cond_2

    const/4 v1, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    const/4 v1, 0x1

    return v1

    .line 83
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 88
    .end local v16    # "_result":Z
    :sswitch_5
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 91
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lmiui/telephony/IMiuiTelephony$Stub;->isVolteEnabledByUserForSlot(I)Z

    move-result v16

    .line 92
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v16, :cond_3

    const/4 v1, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    const/4 v1, 0x1

    return v1

    .line 93
    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    .line 98
    .end local v2    # "_arg0":I
    .end local v16    # "_result":Z
    :sswitch_6
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Lmiui/telephony/IMiuiTelephony$Stub;->isVtEnabledByPlatform()Z

    move-result v16

    .line 100
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v16, :cond_4

    const/4 v1, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    const/4 v1, 0x1

    return v1

    .line 101
    :cond_4
    const/4 v1, 0x0

    goto :goto_4

    .line 106
    .end local v16    # "_result":Z
    :sswitch_7
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 109
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lmiui/telephony/IMiuiTelephony$Stub;->isVtEnabledByPlatformForSlot(I)Z

    move-result v16

    .line 110
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v16, :cond_5

    const/4 v1, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    const/4 v1, 0x1

    return v1

    .line 111
    :cond_5
    const/4 v1, 0x0

    goto :goto_5

    .line 116
    .end local v2    # "_arg0":I
    .end local v16    # "_result":Z
    :sswitch_8
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p0 .. p0}, Lmiui/telephony/IMiuiTelephony$Stub;->isVolteEnabledByPlatform()Z

    move-result v16

    .line 118
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v16, :cond_6

    const/4 v1, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    const/4 v1, 0x1

    return v1

    .line 119
    :cond_6
    const/4 v1, 0x0

    goto :goto_6

    .line 124
    .end local v16    # "_result":Z
    :sswitch_9
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 127
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lmiui/telephony/IMiuiTelephony$Stub;->isVolteEnabledByPlatformForSlot(I)Z

    move-result v16

    .line 128
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v16, :cond_7

    const/4 v1, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    const/4 v1, 0x1

    return v1

    .line 129
    :cond_7
    const/4 v1, 0x0

    goto :goto_7

    .line 134
    .end local v2    # "_arg0":I
    .end local v16    # "_result":Z
    :sswitch_a
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p0 .. p0}, Lmiui/telephony/IMiuiTelephony$Stub;->getSystemDefaultSlotId()I

    move-result v12

    .line 136
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    const/4 v1, 0x1

    return v1

    .line 142
    .end local v12    # "_result":I
    :sswitch_b
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 145
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lmiui/telephony/IMiuiTelephony$Stub;->isIccCardActivate(I)Z

    move-result v16

    .line 146
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v16, :cond_8

    const/4 v1, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    const/4 v1, 0x1

    return v1

    .line 147
    :cond_8
    const/4 v1, 0x0

    goto :goto_8

    .line 152
    .end local v2    # "_arg0":I
    .end local v16    # "_result":Z
    :sswitch_c
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 156
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    const/4 v9, 0x1

    .line 157
    .local v9, "_arg1":Z
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lmiui/telephony/IMiuiTelephony$Stub;->setIccCardActivate(IZ)V

    .line 158
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    const/4 v1, 0x1

    return v1

    .line 156
    .end local v9    # "_arg1":Z
    :cond_9
    const/4 v9, 0x0

    goto :goto_9

    .line 163
    .end local v2    # "_arg0":I
    :sswitch_d
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 166
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lmiui/telephony/IMiuiTelephony$Stub;->getDeviceIdList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 167
    .local v15, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 169
    const/4 v1, 0x1

    return v1

    .line 173
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v15    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_e
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 176
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lmiui/telephony/IMiuiTelephony$Stub;->getImeiList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 177
    .restart local v15    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 179
    const/4 v1, 0x1

    return v1

    .line 183
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v15    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_f
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 186
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lmiui/telephony/IMiuiTelephony$Stub;->getMeidList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 187
    .restart local v15    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 189
    const/4 v1, 0x1

    return v1

    .line 193
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v15    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_10
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 196
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lmiui/telephony/IMiuiTelephony$Stub;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 197
    .local v14, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    const/4 v1, 0x1

    return v1

    .line 203
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v14    # "_result":Ljava/lang/String;
    :sswitch_11
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 207
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 208
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lmiui/telephony/IMiuiTelephony$Stub;->getImei(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 209
    .restart local v14    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    const/4 v1, 0x1

    return v1

    .line 215
    .end local v2    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v14    # "_result":Ljava/lang/String;
    :sswitch_12
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 219
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 220
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lmiui/telephony/IMiuiTelephony$Stub;->getMeid(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 221
    .restart local v14    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    const/4 v1, 0x1

    return v1

    .line 227
    .end local v2    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v14    # "_result":Ljava/lang/String;
    :sswitch_13
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 230
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lmiui/telephony/IMiuiTelephony$Stub;->getSmallDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 231
    .restart local v14    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    const/4 v1, 0x1

    return v1

    .line 237
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v14    # "_result":Ljava/lang/String;
    :sswitch_14
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 241
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 242
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lmiui/telephony/IMiuiTelephony$Stub;->isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    .line 243
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    if-eqz v16, :cond_a

    const/4 v1, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    const/4 v1, 0x1

    return v1

    .line 244
    :cond_a
    const/4 v1, 0x0

    goto :goto_a

    .line 249
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v16    # "_result":Z
    :sswitch_15
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 253
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 255
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 257
    .local v10, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    const/4 v11, 0x1

    .line 258
    .local v11, "_arg3":Z
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v3, v10, v11}, Lmiui/telephony/IMiuiTelephony$Stub;->getSpn(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v14

    .line 259
    .restart local v14    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    const/4 v1, 0x1

    return v1

    .line 257
    .end local v11    # "_arg3":Z
    .end local v14    # "_result":Ljava/lang/String;
    :cond_b
    const/4 v11, 0x0

    goto :goto_b

    .line 265
    .end local v3    # "_arg1":I
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg2":Ljava/lang/String;
    :sswitch_16
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 269
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 271
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 272
    .restart local v10    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8, v10}, Lmiui/telephony/IMiuiTelephony$Stub;->onOperatorNumericOrNameSet(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 273
    .restart local v14    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 275
    const/4 v1, 0x1

    return v1

    .line 279
    .end local v2    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg2":Ljava/lang/String;
    .end local v14    # "_result":Ljava/lang/String;
    :sswitch_17
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 283
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 284
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lmiui/telephony/IMiuiTelephony$Stub;->getCellLocationForSlot(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    .line 285
    .local v13, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    if-eqz v13, :cond_c

    .line 287
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 293
    :goto_c
    const/4 v1, 0x1

    return v1

    .line 291
    :cond_c
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 297
    .end local v2    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v13    # "_result":Landroid/os/Bundle;
    :sswitch_18
    const-string/jumbo v1, "miui.telephony.IMiuiTelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 301
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 303
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 305
    .local v4, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 307
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    .line 308
    sget-object v1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ResultReceiver;

    :goto_d
    move-object/from16 v1, p0

    .line 313
    invoke-virtual/range {v1 .. v6}, Lmiui/telephony/IMiuiTelephony$Stub;->setCallForwardingOption(IIILjava/lang/String;Landroid/os/ResultReceiver;)V

    .line 314
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    const/4 v1, 0x1

    return v1

    .line 311
    :cond_d
    const/4 v6, 0x0

    .local v6, "_arg4":Landroid/os/ResultReceiver;
    goto :goto_d

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
