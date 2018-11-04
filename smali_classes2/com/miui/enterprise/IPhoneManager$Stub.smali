.class public abstract Lcom/miui/enterprise/IPhoneManager$Stub;
.super Landroid/os/Binder;
.source "IPhoneManager.java"

# interfaces
.implements Lcom/miui/enterprise/IPhoneManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/enterprise/IPhoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/enterprise/IPhoneManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.enterprise.IPhoneManager"

.field static final TRANSACTION_controlCellular:I = 0x3

.field static final TRANSACTION_controlPhoneCall:I = 0x2

.field static final TRANSACTION_controlSMS:I = 0x1

.field static final TRANSACTION_disableCallForward:I = 0x18

.field static final TRANSACTION_disableCallLog:I = 0x19

.field static final TRANSACTION_endCall:I = 0x17

.field static final TRANSACTION_getAreaCode:I = 0x1a

.field static final TRANSACTION_getCallBlackList:I = 0x13

.field static final TRANSACTION_getCallContactRestriction:I = 0x16

.field static final TRANSACTION_getCallWhiteList:I = 0x14

.field static final TRANSACTION_getCellularStatus:I = 0x6

.field static final TRANSACTION_getIMEI:I = 0x7

.field static final TRANSACTION_getMeid:I = 0x1b

.field static final TRANSACTION_getPhoneCallStatus:I = 0x5

.field static final TRANSACTION_getSMSBlackList:I = 0xd

.field static final TRANSACTION_getSMSContactRestriction:I = 0x10

.field static final TRANSACTION_getSMSStatus:I = 0x4

.field static final TRANSACTION_getSMSWhiteList:I = 0xe

.field static final TRANSACTION_isAutoRecordPhoneCall:I = 0xa

.field static final TRANSACTION_setCallBlackList:I = 0x11

.field static final TRANSACTION_setCallContactRestriction:I = 0x15

.field static final TRANSACTION_setCallWhiteList:I = 0x12

.field static final TRANSACTION_setIccCardActivate:I = 0x1c

.field static final TRANSACTION_setPhoneCallAutoRecord:I = 0x8

.field static final TRANSACTION_setPhoneCallAutoRecordDir:I = 0x9

.field static final TRANSACTION_setSMSBlackList:I = 0xb

.field static final TRANSACTION_setSMSContactRestriction:I = 0xf

.field static final TRANSACTION_setSMSWhiteList:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/enterprise/IPhoneManager;
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
    const-string/jumbo v1, "com.miui.enterprise.IPhoneManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/enterprise/IPhoneManager;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/miui/enterprise/IPhoneManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/miui/enterprise/IPhoneManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/enterprise/IPhoneManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 11
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

    .line 334
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    return v10

    .line 45
    :sswitch_0
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v10, 0x1

    return v10

    .line 50
    :sswitch_1
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 55
    .local v4, "_arg1":I
    invoke-virtual {p0, v0, v4}, Lcom/miui/enterprise/IPhoneManager$Stub;->controlSMS(II)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    const/4 v10, 0x1

    return v10

    .line 61
    .end local v0    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_2
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 65
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 66
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v0, v4}, Lcom/miui/enterprise/IPhoneManager$Stub;->controlPhoneCall(II)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    const/4 v10, 0x1

    return v10

    .line 72
    .end local v0    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_3
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 77
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v0, v4}, Lcom/miui/enterprise/IPhoneManager$Stub;->controlCellular(II)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    const/4 v10, 0x1

    return v10

    .line 83
    .end local v0    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_4
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IPhoneManager$Stub;->getSMSStatus(I)I

    move-result v6

    .line 87
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    const/4 v10, 0x1

    return v10

    .line 93
    .end local v0    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_5
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 96
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IPhoneManager$Stub;->getPhoneCallStatus(I)I

    move-result v6

    .line 97
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    const/4 v10, 0x1

    return v10

    .line 103
    .end local v0    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_6
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 106
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IPhoneManager$Stub;->getCellularStatus(I)I

    move-result v6

    .line 107
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    const/4 v10, 0x1

    return v10

    .line 113
    .end local v0    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_7
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 116
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IPhoneManager$Stub;->getIMEI(I)Ljava/lang/String;

    move-result-object v7

    .line 117
    .local v7, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    const/4 v10, 0x1

    return v10

    .line 123
    .end local v0    # "_arg0":I
    .end local v7    # "_result":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_0

    const/4 v3, 0x1

    .line 127
    .local v3, "_arg0":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 128
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v3, v4}, Lcom/miui/enterprise/IPhoneManager$Stub;->setPhoneCallAutoRecord(ZI)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    const/4 v10, 0x1

    return v10

    .line 125
    .end local v3    # "_arg0":Z
    .end local v4    # "_arg1":I
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Z
    goto :goto_0

    .line 134
    .end local v3    # "_arg0":Z
    :sswitch_9
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IPhoneManager$Stub;->setPhoneCallAutoRecordDir(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    const/4 v10, 0x1

    return v10

    .line 143
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 146
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IPhoneManager$Stub;->isAutoRecordPhoneCall(I)Z

    move-result v9

    .line 147
    .local v9, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v9, :cond_1

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    const/4 v10, 0x1

    return v10

    .line 148
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 153
    .end local v0    # "_arg0":I
    .end local v9    # "_result":Z
    :sswitch_b
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 157
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 158
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v2, v4}, Lcom/miui/enterprise/IPhoneManager$Stub;->setSMSBlackList(Ljava/util/List;I)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    const/4 v10, 0x1

    return v10

    .line 164
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg1":I
    :sswitch_c
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 168
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 169
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v2, v4}, Lcom/miui/enterprise/IPhoneManager$Stub;->setSMSWhiteList(Ljava/util/List;I)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    const/4 v10, 0x1

    return v10

    .line 175
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg1":I
    :sswitch_d
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 178
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IPhoneManager$Stub;->getSMSBlackList(I)Ljava/util/List;

    move-result-object v8

    .line 179
    .local v8, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 181
    const/4 v10, 0x1

    return v10

    .line 185
    .end local v0    # "_arg0":I
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_e
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 188
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IPhoneManager$Stub;->getSMSWhiteList(I)Ljava/util/List;

    move-result-object v8

    .line 189
    .restart local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 191
    const/4 v10, 0x1

    return v10

    .line 195
    .end local v0    # "_arg0":I
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_f
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 199
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 200
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v0, v4}, Lcom/miui/enterprise/IPhoneManager$Stub;->setSMSContactRestriction(II)V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    const/4 v10, 0x1

    return v10

    .line 206
    .end local v0    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_10
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 209
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IPhoneManager$Stub;->getSMSContactRestriction(I)I

    move-result v6

    .line 210
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    const/4 v10, 0x1

    return v10

    .line 216
    .end local v0    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_11
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 220
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 221
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v2, v4}, Lcom/miui/enterprise/IPhoneManager$Stub;->setCallBlackList(Ljava/util/List;I)V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    const/4 v10, 0x1

    return v10

    .line 227
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg1":I
    :sswitch_12
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 231
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 232
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v2, v4}, Lcom/miui/enterprise/IPhoneManager$Stub;->setCallWhiteList(Ljava/util/List;I)V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    const/4 v10, 0x1

    return v10

    .line 238
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg1":I
    :sswitch_13
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 241
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IPhoneManager$Stub;->getCallBlackList(I)Ljava/util/List;

    move-result-object v8

    .line 242
    .restart local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 244
    const/4 v10, 0x1

    return v10

    .line 248
    .end local v0    # "_arg0":I
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_14
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 251
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IPhoneManager$Stub;->getCallWhiteList(I)Ljava/util/List;

    move-result-object v8

    .line 252
    .restart local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 254
    const/4 v10, 0x1

    return v10

    .line 258
    .end local v0    # "_arg0":I
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_15
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 262
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 263
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v0, v4}, Lcom/miui/enterprise/IPhoneManager$Stub;->setCallContactRestriction(II)V

    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    const/4 v10, 0x1

    return v10

    .line 269
    .end local v0    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_16
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 272
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IPhoneManager$Stub;->getCallContactRestriction(I)I

    move-result v6

    .line 273
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    const/4 v10, 0x1

    return v10

    .line 279
    .end local v0    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_17
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Lcom/miui/enterprise/IPhoneManager$Stub;->endCall()V

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    const/4 v10, 0x1

    return v10

    .line 286
    :sswitch_18
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2

    const/4 v3, 0x1

    .line 289
    .local v3, "_arg0":Z
    :goto_2
    invoke-virtual {p0, v3}, Lcom/miui/enterprise/IPhoneManager$Stub;->disableCallForward(Z)V

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    const/4 v10, 0x1

    return v10

    .line 288
    .end local v3    # "_arg0":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 295
    :sswitch_19
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3

    const/4 v3, 0x1

    .line 298
    .restart local v3    # "_arg0":Z
    :goto_3
    invoke-virtual {p0, v3}, Lcom/miui/enterprise/IPhoneManager$Stub;->disableCallLog(Z)V

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    const/4 v10, 0x1

    return v10

    .line 297
    .end local v3    # "_arg0":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    .line 304
    :sswitch_1a
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 307
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IPhoneManager$Stub;->getAreaCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 308
    .restart local v7    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    const/4 v10, 0x1

    return v10

    .line 314
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Ljava/lang/String;
    :sswitch_1b
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 317
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IPhoneManager$Stub;->getMeid(I)Ljava/lang/String;

    move-result-object v7

    .line 318
    .restart local v7    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 320
    const/4 v10, 0x1

    return v10

    .line 324
    .end local v0    # "_arg0":I
    .end local v7    # "_result":Ljava/lang/String;
    :sswitch_1c
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 328
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4

    const/4 v5, 0x1

    .line 329
    .local v5, "_arg1":Z
    :goto_4
    invoke-virtual {p0, v0, v5}, Lcom/miui/enterprise/IPhoneManager$Stub;->setIccCardActivate(IZ)V

    .line 330
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    const/4 v10, 0x1

    return v10

    .line 328
    .end local v5    # "_arg1":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_4

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
