.class public abstract Landroid/nfc/INfcAdapterExtras$Stub;
.super Landroid/os/Binder;
.source "INfcAdapterExtras.java"

# interfaces
.implements Landroid/nfc/INfcAdapterExtras;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcAdapterExtras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcAdapterExtras$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcAdapterExtras"

.field static final TRANSACTION_authenticate:I = 0x6

.field static final TRANSACTION_close:I = 0x2

.field static final TRANSACTION_getCardEmulationRoute:I = 0x4

.field static final TRANSACTION_getDriverName:I = 0x7

.field static final TRANSACTION_getSpiSignedPK:I = 0x8

.field static final TRANSACTION_open:I = 0x1

.field static final TRANSACTION_setCardEmulationRoute:I = 0x5

.field static final TRANSACTION_transceive:I = 0x3

.field static final TRANSACTION_transciveThroughI2C:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "android.nfc.INfcAdapterExtras"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapterExtras;
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
    const-string/jumbo v1, "android.nfc.INfcAdapterExtras"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/nfc/INfcAdapterExtras;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/nfc/INfcAdapterExtras;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/nfc/INfcAdapterExtras$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/INfcAdapterExtras$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 163
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    return v9

    .line 45
    :sswitch_0
    const-string/jumbo v9, "android.nfc.INfcAdapterExtras"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v9, 0x1

    return v9

    .line 50
    :sswitch_1
    const-string/jumbo v9, "android.nfc.INfcAdapterExtras"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 55
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v0, v3}, Landroid/nfc/INfcAdapterExtras$Stub;->open(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v6

    .line 56
    .local v6, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v6, :cond_0

    .line 58
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    const/4 v9, 0x1

    invoke-virtual {v6, p3, v9}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 64
    :goto_0
    const/4 v9, 0x1

    return v9

    .line 62
    :cond_0
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 68
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v6    # "_result":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v9, "android.nfc.INfcAdapterExtras"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 73
    .restart local v3    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v0, v3}, Landroid/nfc/INfcAdapterExtras$Stub;->close(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v6

    .line 74
    .restart local v6    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v6, :cond_1

    .line 76
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    const/4 v9, 0x1

    invoke-virtual {v6, p3, v9}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 82
    :goto_1
    const/4 v9, 0x1

    return v9

    .line 80
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 86
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v6    # "_result":Landroid/os/Bundle;
    :sswitch_3
    const-string/jumbo v9, "android.nfc.INfcAdapterExtras"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 91
    .local v4, "_arg1":[B
    invoke-virtual {p0, v0, v4}, Landroid/nfc/INfcAdapterExtras$Stub;->transceive(Ljava/lang/String;[B)Landroid/os/Bundle;

    move-result-object v6

    .line 92
    .restart local v6    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v6, :cond_2

    .line 94
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    const/4 v9, 0x1

    invoke-virtual {v6, p3, v9}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 100
    :goto_2
    const/4 v9, 0x1

    return v9

    .line 98
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 104
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":[B
    .end local v6    # "_result":Landroid/os/Bundle;
    :sswitch_4
    const-string/jumbo v9, "android.nfc.INfcAdapterExtras"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 107
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/nfc/INfcAdapterExtras$Stub;->getCardEmulationRoute(Ljava/lang/String;)I

    move-result v5

    .line 108
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    const/4 v9, 0x1

    return v9

    .line 114
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":I
    :sswitch_5
    const-string/jumbo v9, "android.nfc.INfcAdapterExtras"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 119
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Landroid/nfc/INfcAdapterExtras$Stub;->setCardEmulationRoute(Ljava/lang/String;I)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    const/4 v9, 0x1

    return v9

    .line 125
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_6
    const-string/jumbo v9, "android.nfc.INfcAdapterExtras"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 129
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 130
    .restart local v4    # "_arg1":[B
    invoke-virtual {p0, v0, v4}, Landroid/nfc/INfcAdapterExtras$Stub;->authenticate(Ljava/lang/String;[B)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    const/4 v9, 0x1

    return v9

    .line 136
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":[B
    :sswitch_7
    const-string/jumbo v9, "android.nfc.INfcAdapterExtras"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 139
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/nfc/INfcAdapterExtras$Stub;->getDriverName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 140
    .local v7, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    const/4 v9, 0x1

    return v9

    .line 146
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v9, "android.nfc.INfcAdapterExtras"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Landroid/nfc/INfcAdapterExtras$Stub;->getSpiSignedPK()Ljava/lang/String;

    move-result-object v7

    .line 148
    .restart local v7    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    const/4 v9, 0x1

    return v9

    .line 154
    .end local v7    # "_result":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v9, "android.nfc.INfcAdapterExtras"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 157
    .local v1, "_arg0":[B
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapterExtras$Stub;->transciveThroughI2C([B)[B

    move-result-object v8

    .line 158
    .local v8, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 160
    const/4 v9, 0x1

    return v9

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
