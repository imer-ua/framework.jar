.class public abstract Lcom/miui/enterprise/IDeviceManager$Stub;
.super Landroid/os/Binder;
.source "IDeviceManager.java"

# interfaces
.implements Lcom/miui/enterprise/IDeviceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/enterprise/IDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/enterprise/IDeviceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.enterprise.IDeviceManager"

.field static final TRANSACTION_captureScreen:I = 0x16

.field static final TRANSACTION_deviceReboot:I = 0x3

.field static final TRANSACTION_deviceShutDown:I = 0x2

.field static final TRANSACTION_enableUsbDebug:I = 0x1c

.field static final TRANSACTION_formatSdCard:I = 0x4

.field static final TRANSACTION_getIpBlackList:I = 0x1b

.field static final TRANSACTION_getIpWhiteList:I = 0x1a

.field static final TRANSACTION_getUrlBlackList:I = 0x8

.field static final TRANSACTION_getUrlWhiteList:I = 0x7

.field static final TRANSACTION_getWifiApBssidBlackList:I = 0x13

.field static final TRANSACTION_getWifiApBssidWhiteList:I = 0x11

.field static final TRANSACTION_getWifiApSsidBlackList:I = 0x12

.field static final TRANSACTION_getWifiApSsidWhiteList:I = 0x10

.field static final TRANSACTION_getWifiConnRestriction:I = 0xb

.field static final TRANSACTION_isDeviceRoot:I = 0x1

.field static final TRANSACTION_recoveryFactory:I = 0x9

.field static final TRANSACTION_setBootAnimation:I = 0x1d

.field static final TRANSACTION_setBrowserRestriction:I = 0x15

.field static final TRANSACTION_setIpBlackList:I = 0x19

.field static final TRANSACTION_setIpRestriction:I = 0x17

.field static final TRANSACTION_setIpWhiteList:I = 0x18

.field static final TRANSACTION_setRingerMode:I = 0x14

.field static final TRANSACTION_setUrlBlackList:I = 0x6

.field static final TRANSACTION_setUrlWhiteList:I = 0x5

.field static final TRANSACTION_setWifiApBssidBlackList:I = 0xf

.field static final TRANSACTION_setWifiApBssidWhiteList:I = 0xd

.field static final TRANSACTION_setWifiApSsidBlackList:I = 0xe

.field static final TRANSACTION_setWifiApSsidWhiteList:I = 0xc

.field static final TRANSACTION_setWifiConnRestriction:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/enterprise/IDeviceManager;
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
    const-string/jumbo v1, "com.miui.enterprise.IDeviceManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/enterprise/IDeviceManager;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/miui/enterprise/IDeviceManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/miui/enterprise/IDeviceManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/enterprise/IDeviceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 10
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

    .line 345
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    return v9

    .line 45
    :sswitch_0
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v9, 0x1

    return v9

    .line 50
    :sswitch_1
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/miui/enterprise/IDeviceManager$Stub;->isDeviceRoot()Z

    move-result v8

    .line 52
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v8, :cond_0

    const/4 v9, 0x1

    :goto_0
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    const/4 v9, 0x1

    return v9

    .line 53
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 58
    .end local v8    # "_result":Z
    :sswitch_2
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/miui/enterprise/IDeviceManager$Stub;->deviceShutDown()V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    const/4 v9, 0x1

    return v9

    .line 65
    :sswitch_3
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/miui/enterprise/IDeviceManager$Stub;->deviceReboot()V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    const/4 v9, 0x1

    return v9

    .line 72
    :sswitch_4
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/miui/enterprise/IDeviceManager$Stub;->formatSdCard()V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    const/4 v9, 0x1

    return v9

    .line 79
    :sswitch_5
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 83
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 84
    .local v4, "_arg1":I
    invoke-virtual {p0, v2, v4}, Lcom/miui/enterprise/IDeviceManager$Stub;->setUrlWhiteList(Ljava/util/List;I)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    const/4 v9, 0x1

    return v9

    .line 90
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg1":I
    :sswitch_6
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 94
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 95
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v2, v4}, Lcom/miui/enterprise/IDeviceManager$Stub;->setUrlBlackList(Ljava/util/List;I)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    const/4 v9, 0x1

    return v9

    .line 101
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg1":I
    :sswitch_7
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 104
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IDeviceManager$Stub;->getUrlWhiteList(I)Ljava/util/List;

    move-result-object v7

    .line 105
    .local v7, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 107
    const/4 v9, 0x1

    return v9

    .line 111
    .end local v0    # "_arg0":I
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_8
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 114
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IDeviceManager$Stub;->getUrlBlackList(I)Ljava/util/List;

    move-result-object v7

    .line 115
    .restart local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 117
    const/4 v9, 0x1

    return v9

    .line 121
    .end local v0    # "_arg0":I
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_9
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1

    const/4 v3, 0x1

    .line 124
    .local v3, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v3}, Lcom/miui/enterprise/IDeviceManager$Stub;->recoveryFactory(Z)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    const/4 v9, 0x1

    return v9

    .line 123
    .end local v3    # "_arg0":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 130
    :sswitch_a
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 134
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 135
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v0, v4}, Lcom/miui/enterprise/IDeviceManager$Stub;->setWifiConnRestriction(II)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    const/4 v9, 0x1

    return v9

    .line 141
    .end local v0    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_b
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 144
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IDeviceManager$Stub;->getWifiConnRestriction(I)I

    move-result v5

    .line 145
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    const/4 v9, 0x1

    return v9

    .line 151
    .end local v0    # "_arg0":I
    .end local v5    # "_result":I
    :sswitch_c
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 155
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 156
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v2, v4}, Lcom/miui/enterprise/IDeviceManager$Stub;->setWifiApSsidWhiteList(Ljava/util/List;I)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    const/4 v9, 0x1

    return v9

    .line 162
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg1":I
    :sswitch_d
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 166
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 167
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v2, v4}, Lcom/miui/enterprise/IDeviceManager$Stub;->setWifiApBssidWhiteList(Ljava/util/List;I)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    const/4 v9, 0x1

    return v9

    .line 173
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg1":I
    :sswitch_e
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 177
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 178
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v2, v4}, Lcom/miui/enterprise/IDeviceManager$Stub;->setWifiApSsidBlackList(Ljava/util/List;I)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    const/4 v9, 0x1

    return v9

    .line 184
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg1":I
    :sswitch_f
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 188
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 189
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v2, v4}, Lcom/miui/enterprise/IDeviceManager$Stub;->setWifiApBssidBlackList(Ljava/util/List;I)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    const/4 v9, 0x1

    return v9

    .line 195
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg1":I
    :sswitch_10
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 198
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IDeviceManager$Stub;->getWifiApSsidWhiteList(I)Ljava/util/List;

    move-result-object v7

    .line 199
    .restart local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 201
    const/4 v9, 0x1

    return v9

    .line 205
    .end local v0    # "_arg0":I
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_11
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 208
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IDeviceManager$Stub;->getWifiApBssidWhiteList(I)Ljava/util/List;

    move-result-object v7

    .line 209
    .restart local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 211
    const/4 v9, 0x1

    return v9

    .line 215
    .end local v0    # "_arg0":I
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_12
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 218
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IDeviceManager$Stub;->getWifiApSsidBlackList(I)Ljava/util/List;

    move-result-object v7

    .line 219
    .restart local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 221
    const/4 v9, 0x1

    return v9

    .line 225
    .end local v0    # "_arg0":I
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_13
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 228
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IDeviceManager$Stub;->getWifiApBssidBlackList(I)Ljava/util/List;

    move-result-object v7

    .line 229
    .restart local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 231
    const/4 v9, 0x1

    return v9

    .line 235
    .end local v0    # "_arg0":I
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_14
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 238
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IDeviceManager$Stub;->setRingerMode(I)V

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    const/4 v9, 0x1

    return v9

    .line 244
    .end local v0    # "_arg0":I
    :sswitch_15
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 248
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 249
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v0, v4}, Lcom/miui/enterprise/IDeviceManager$Stub;->setBrowserRestriction(II)V

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    const/4 v9, 0x1

    return v9

    .line 255
    .end local v0    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_16
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/miui/enterprise/IDeviceManager$Stub;->captureScreen()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 257
    .local v6, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    if-eqz v6, :cond_2

    .line 259
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    const/4 v9, 0x1

    invoke-virtual {v6, p3, v9}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 265
    :goto_2
    const/4 v9, 0x1

    return v9

    .line 263
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 269
    .end local v6    # "_result":Landroid/graphics/Bitmap;
    :sswitch_17
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 273
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 274
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v0, v4}, Lcom/miui/enterprise/IDeviceManager$Stub;->setIpRestriction(II)V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    const/4 v9, 0x1

    return v9

    .line 280
    .end local v0    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_18
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 284
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 285
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v2, v4}, Lcom/miui/enterprise/IDeviceManager$Stub;->setIpWhiteList(Ljava/util/List;I)V

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    const/4 v9, 0x1

    return v9

    .line 291
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg1":I
    :sswitch_19
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 295
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 296
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v2, v4}, Lcom/miui/enterprise/IDeviceManager$Stub;->setIpBlackList(Ljava/util/List;I)V

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    const/4 v9, 0x1

    return v9

    .line 302
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg1":I
    :sswitch_1a
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 305
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IDeviceManager$Stub;->getIpWhiteList(I)Ljava/util/List;

    move-result-object v7

    .line 306
    .restart local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 308
    const/4 v9, 0x1

    return v9

    .line 312
    .end local v0    # "_arg0":I
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_1b
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 315
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IDeviceManager$Stub;->getIpBlackList(I)Ljava/util/List;

    move-result-object v7

    .line 316
    .restart local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 318
    const/4 v9, 0x1

    return v9

    .line 322
    .end local v0    # "_arg0":I
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_1c
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3

    const/4 v3, 0x1

    .line 325
    .restart local v3    # "_arg0":Z
    :goto_3
    invoke-virtual {p0, v3}, Lcom/miui/enterprise/IDeviceManager$Stub;->enableUsbDebug(Z)V

    .line 326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    const/4 v9, 0x1

    return v9

    .line 324
    .end local v3    # "_arg0":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    .line 331
    :sswitch_1d
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4

    .line 334
    sget-object v9, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 339
    :goto_4
    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IDeviceManager$Stub;->setBootAnimation(Landroid/os/ParcelFileDescriptor;)Z

    move-result v8

    .line 340
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    if-eqz v8, :cond_5

    const/4 v9, 0x1

    :goto_5
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    const/4 v9, 0x1

    return v9

    .line 337
    .end local v8    # "_result":Z
    :cond_4
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_4

    .line 341
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .restart local v8    # "_result":Z
    :cond_5
    const/4 v9, 0x0

    goto :goto_5

    .line 41
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
