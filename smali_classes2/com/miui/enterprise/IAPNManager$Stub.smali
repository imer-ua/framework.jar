.class public abstract Lcom/miui/enterprise/IAPNManager$Stub;
.super Landroid/os/Binder;
.source "IAPNManager.java"

# interfaces
.implements Lcom/miui/enterprise/IAPNManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/enterprise/IAPNManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/enterprise/IAPNManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.enterprise.IAPNManager"

.field static final TRANSACTION_activeAPN:I = 0xc

.field static final TRANSACTION_activeAPNForNumeric:I = 0xb

.field static final TRANSACTION_addAPN:I = 0x6

.field static final TRANSACTION_addAPNForNumeric:I = 0x5

.field static final TRANSACTION_deleteAPN:I = 0x8

.field static final TRANSACTION_deleteAPNForNumeric:I = 0x7

.field static final TRANSACTION_editAPN:I = 0xa

.field static final TRANSACTION_editAPNForNumeric:I = 0x9

.field static final TRANSACTION_getAPN:I = 0x4

.field static final TRANSACTION_getAPNActiveMode:I = 0xf

.field static final TRANSACTION_getAPNForNumeric:I = 0x3

.field static final TRANSACTION_getAPNList:I = 0x2

.field static final TRANSACTION_getAPNListForNumeric:I = 0x1

.field static final TRANSACTION_queryApn:I = 0x10

.field static final TRANSACTION_resetAPN:I = 0xd

.field static final TRANSACTION_setAPNActiveMode:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.miui.enterprise.IAPNManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/enterprise/IAPNManager;
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
    const-string/jumbo v1, "com.miui.enterprise.IAPNManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/enterprise/IAPNManager;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/miui/enterprise/IAPNManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/miui/enterprise/IAPNManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/enterprise/IAPNManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 12
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

    .line 244
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v11

    return v11

    .line 45
    :sswitch_0
    const-string/jumbo v11, "com.miui.enterprise.IAPNManager"

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v11, 0x1

    return v11

    .line 50
    :sswitch_1
    const-string/jumbo v11, "com.miui.enterprise.IAPNManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IAPNManager$Stub;->getAPNListForNumeric(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 54
    .local v8, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/miui/enterprise/sdk/APNConfig;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 56
    const/4 v11, 0x1

    return v11

    .line 60
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/miui/enterprise/sdk/APNConfig;>;"
    :sswitch_2
    const-string/jumbo v11, "com.miui.enterprise.IAPNManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/miui/enterprise/IAPNManager$Stub;->getAPNList()Ljava/util/List;

    move-result-object v8

    .line 62
    .restart local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/miui/enterprise/sdk/APNConfig;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 64
    const/4 v11, 0x1

    return v11

    .line 68
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/miui/enterprise/sdk/APNConfig;>;"
    :sswitch_3
    const-string/jumbo v11, "com.miui.enterprise.IAPNManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 72
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Lcom/miui/enterprise/IAPNManager$Stub;->getAPNForNumeric(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/enterprise/sdk/APNConfig;

    move-result-object v7

    .line 74
    .local v7, "_result":Lcom/miui/enterprise/sdk/APNConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v7, :cond_0

    .line 76
    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    const/4 v11, 0x1

    invoke-virtual {v7, p3, v11}, Lcom/miui/enterprise/sdk/APNConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 82
    :goto_0
    const/4 v11, 0x1

    return v11

    .line 80
    :cond_0
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 86
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v7    # "_result":Lcom/miui/enterprise/sdk/APNConfig;
    :sswitch_4
    const-string/jumbo v11, "com.miui.enterprise.IAPNManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 89
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IAPNManager$Stub;->getAPN(Ljava/lang/String;)Lcom/miui/enterprise/sdk/APNConfig;

    move-result-object v7

    .line 90
    .restart local v7    # "_result":Lcom/miui/enterprise/sdk/APNConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v7, :cond_1

    .line 92
    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    const/4 v11, 0x1

    invoke-virtual {v7, p3, v11}, Lcom/miui/enterprise/sdk/APNConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 98
    :goto_1
    const/4 v11, 0x1

    return v11

    .line 96
    :cond_1
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 102
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Lcom/miui/enterprise/sdk/APNConfig;
    :sswitch_5
    const-string/jumbo v11, "com.miui.enterprise.IAPNManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 106
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_2

    .line 107
    sget-object v11, Lcom/miui/enterprise/sdk/APNConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/enterprise/sdk/APNConfig;

    .line 112
    :goto_2
    invoke-virtual {p0, v2, v3}, Lcom/miui/enterprise/IAPNManager$Stub;->addAPNForNumeric(Ljava/lang/String;Lcom/miui/enterprise/sdk/APNConfig;)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    const/4 v11, 0x1

    return v11

    .line 110
    :cond_2
    const/4 v3, 0x0

    .local v3, "_arg1":Lcom/miui/enterprise/sdk/APNConfig;
    goto :goto_2

    .line 118
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/miui/enterprise/sdk/APNConfig;
    :sswitch_6
    const-string/jumbo v11, "com.miui.enterprise.IAPNManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_3

    .line 121
    sget-object v11, Lcom/miui/enterprise/sdk/APNConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/enterprise/sdk/APNConfig;

    .line 126
    :goto_3
    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IAPNManager$Stub;->addAPN(Lcom/miui/enterprise/sdk/APNConfig;)Z

    move-result v10

    .line 127
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v10, :cond_4

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    const/4 v11, 0x1

    return v11

    .line 124
    .end local v10    # "_result":Z
    :cond_3
    const/4 v1, 0x0

    .local v1, "_arg0":Lcom/miui/enterprise/sdk/APNConfig;
    goto :goto_3

    .line 128
    .end local v1    # "_arg0":Lcom/miui/enterprise/sdk/APNConfig;
    .restart local v10    # "_result":Z
    :cond_4
    const/4 v11, 0x0

    goto :goto_4

    .line 133
    .end local v10    # "_result":Z
    :sswitch_7
    const-string/jumbo v11, "com.miui.enterprise.IAPNManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 137
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 138
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Lcom/miui/enterprise/IAPNManager$Stub;->deleteAPNForNumeric(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    const/4 v11, 0x1

    return v11

    .line 144
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v11, "com.miui.enterprise.IAPNManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 147
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IAPNManager$Stub;->deleteAPN(Ljava/lang/String;)Z

    move-result v10

    .line 148
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    if-eqz v10, :cond_5

    const/4 v11, 0x1

    :goto_5
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    const/4 v11, 0x1

    return v11

    .line 149
    :cond_5
    const/4 v11, 0x0

    goto :goto_5

    .line 154
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":Z
    :sswitch_9
    const-string/jumbo v11, "com.miui.enterprise.IAPNManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 158
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 160
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_6

    .line 161
    sget-object v11, Lcom/miui/enterprise/sdk/APNConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/enterprise/sdk/APNConfig;

    .line 166
    :goto_6
    invoke-virtual {p0, v2, v4, v5}, Lcom/miui/enterprise/IAPNManager$Stub;->editAPNForNumeric(Ljava/lang/String;Ljava/lang/String;Lcom/miui/enterprise/sdk/APNConfig;)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    const/4 v11, 0x1

    return v11

    .line 164
    :cond_6
    const/4 v5, 0x0

    .local v5, "_arg2":Lcom/miui/enterprise/sdk/APNConfig;
    goto :goto_6

    .line 172
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Lcom/miui/enterprise/sdk/APNConfig;
    :sswitch_a
    const-string/jumbo v11, "com.miui.enterprise.IAPNManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 176
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_7

    .line 177
    sget-object v11, Lcom/miui/enterprise/sdk/APNConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/enterprise/sdk/APNConfig;

    .line 182
    :goto_7
    invoke-virtual {p0, v2, v3}, Lcom/miui/enterprise/IAPNManager$Stub;->editAPN(Ljava/lang/String;Lcom/miui/enterprise/sdk/APNConfig;)Z

    move-result v10

    .line 183
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    if-eqz v10, :cond_8

    const/4 v11, 0x1

    :goto_8
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    const/4 v11, 0x1

    return v11

    .line 180
    .end local v10    # "_result":Z
    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Lcom/miui/enterprise/sdk/APNConfig;
    goto :goto_7

    .line 184
    .end local v3    # "_arg1":Lcom/miui/enterprise/sdk/APNConfig;
    .restart local v10    # "_result":Z
    :cond_8
    const/4 v11, 0x0

    goto :goto_8

    .line 189
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":Z
    :sswitch_b
    const-string/jumbo v11, "com.miui.enterprise.IAPNManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 193
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 194
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Lcom/miui/enterprise/IAPNManager$Stub;->activeAPNForNumeric(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    const/4 v11, 0x1

    return v11

    .line 200
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v11, "com.miui.enterprise.IAPNManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 203
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IAPNManager$Stub;->activeAPN(Ljava/lang/String;)Z

    move-result v10

    .line 204
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    if-eqz v10, :cond_9

    const/4 v11, 0x1

    :goto_9
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    const/4 v11, 0x1

    return v11

    .line 205
    :cond_9
    const/4 v11, 0x0

    goto :goto_9

    .line 210
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":Z
    :sswitch_d
    const-string/jumbo v11, "com.miui.enterprise.IAPNManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/miui/enterprise/IAPNManager$Stub;->resetAPN()Z

    move-result v10

    .line 212
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    if-eqz v10, :cond_a

    const/4 v11, 0x1

    :goto_a
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    const/4 v11, 0x1

    return v11

    .line 213
    :cond_a
    const/4 v11, 0x0

    goto :goto_a

    .line 218
    .end local v10    # "_result":Z
    :sswitch_e
    const-string/jumbo v11, "com.miui.enterprise.IAPNManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 221
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IAPNManager$Stub;->setAPNActiveMode(I)V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    const/4 v11, 0x1

    return v11

    .line 227
    .end local v0    # "_arg0":I
    :sswitch_f
    const-string/jumbo v11, "com.miui.enterprise.IAPNManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/miui/enterprise/IAPNManager$Stub;->getAPNActiveMode()I

    move-result v6

    .line 229
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    const/4 v11, 0x1

    return v11

    .line 235
    .end local v6    # "_result":I
    :sswitch_10
    const-string/jumbo v11, "com.miui.enterprise.IAPNManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 238
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IAPNManager$Stub;->queryApn(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 239
    .local v9, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 241
    const/4 v11, 0x1

    return v11

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
