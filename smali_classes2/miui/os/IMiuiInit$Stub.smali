.class public abstract Lmiui/os/IMiuiInit$Stub;
.super Landroid/os/Binder;
.source "IMiuiInit.java"

# interfaces
.implements Lmiui/os/IMiuiInit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/os/IMiuiInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/os/IMiuiInit$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.os.IMiuiInit"

.field static final TRANSACTION_doFactoryReset:I = 0x4

.field static final TRANSACTION_getAspectRatio:I = 0xb

.field static final TRANSACTION_getCustVariants:I = 0x2

.field static final TRANSACTION_getDefaultAspectType:I = 0xc

.field static final TRANSACTION_getMiuiChannelPath:I = 0x6

.field static final TRANSACTION_getMiuiPreinstallAppPath:I = 0x8

.field static final TRANSACTION_getNotchConfig:I = 0xd

.field static final TRANSACTION_getPreinstalledAppVersion:I = 0xe

.field static final TRANSACTION_initCustEnvironment:I = 0x1

.field static final TRANSACTION_installPreinstallApp:I = 0x3

.field static final TRANSACTION_isPreinstalledPackage:I = 0x5

.field static final TRANSACTION_isRestrictAspect:I = 0xa

.field static final TRANSACTION_removeFromPreinstallList:I = 0x7

.field static final TRANSACTION_setNotchSpecialMode:I = 0xf

.field static final TRANSACTION_setRestrictAspect:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "miui.os.IMiuiInit"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/os/IMiuiInit;
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
    const-string/jumbo v1, "miui.os.IMiuiInit"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/os/IMiuiInit;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lmiui/os/IMiuiInit;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lmiui/os/IMiuiInit$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/os/IMiuiInit$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 196
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    return v9

    .line 45
    :sswitch_0
    const-string/jumbo v9, "miui.os.IMiuiInit"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v9, 0x1

    return v9

    .line 50
    :sswitch_1
    const-string/jumbo v9, "miui.os.IMiuiInit"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lmiui/os/IMiuiInitObserver$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/os/IMiuiInitObserver;

    move-result-object v2

    .line 55
    .local v2, "_arg1":Lmiui/os/IMiuiInitObserver;
    invoke-virtual {p0, v0, v2}, Lmiui/os/IMiuiInit$Stub;->initCustEnvironment(Ljava/lang/String;Lmiui/os/IMiuiInitObserver;)Z

    move-result v7

    .line 56
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v7, :cond_0

    const/4 v9, 0x1

    :goto_0
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    const/4 v9, 0x1

    return v9

    .line 57
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 62
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lmiui/os/IMiuiInitObserver;
    .end local v7    # "_result":Z
    :sswitch_2
    const-string/jumbo v9, "miui.os.IMiuiInit"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lmiui/os/IMiuiInit$Stub;->getCustVariants()[Ljava/lang/String;

    move-result-object v8

    .line 64
    .local v8, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 66
    const/4 v9, 0x1

    return v9

    .line 70
    .end local v8    # "_result":[Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v9, "miui.os.IMiuiInit"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lmiui/os/IMiuiInit$Stub;->installPreinstallApp()V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    const/4 v9, 0x1

    return v9

    .line 77
    :sswitch_4
    const-string/jumbo v9, "miui.os.IMiuiInit"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1

    const/4 v1, 0x1

    .line 80
    .local v1, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v1}, Lmiui/os/IMiuiInit$Stub;->doFactoryReset(Z)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    const/4 v9, 0x1

    return v9

    .line 79
    .end local v1    # "_arg0":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 86
    :sswitch_5
    const-string/jumbo v9, "miui.os.IMiuiInit"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/os/IMiuiInit$Stub;->isPreinstalledPackage(Ljava/lang/String;)Z

    move-result v7

    .line 90
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v7, :cond_2

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    const/4 v9, 0x1

    return v9

    .line 91
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .line 96
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_6
    const-string/jumbo v9, "miui.os.IMiuiInit"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/os/IMiuiInit$Stub;->getMiuiChannelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 100
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    const/4 v9, 0x1

    return v9

    .line 106
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v9, "miui.os.IMiuiInit"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 109
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/os/IMiuiInit$Stub;->removeFromPreinstallList(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    const/4 v9, 0x1

    return v9

    .line 115
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v9, "miui.os.IMiuiInit"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/os/IMiuiInit$Stub;->getMiuiPreinstallAppPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 119
    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    const/4 v9, 0x1

    return v9

    .line 125
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v9, "miui.os.IMiuiInit"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 129
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3

    const/4 v3, 0x1

    .line 130
    .local v3, "_arg1":Z
    :goto_3
    invoke-virtual {p0, v0, v3}, Lmiui/os/IMiuiInit$Stub;->setRestrictAspect(Ljava/lang/String;Z)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    const/4 v9, 0x1

    return v9

    .line 129
    .end local v3    # "_arg1":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    .line 136
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v9, "miui.os.IMiuiInit"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 139
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/os/IMiuiInit$Stub;->isRestrictAspect(Ljava/lang/String;)Z

    move-result v7

    .line 140
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v7, :cond_4

    const/4 v9, 0x1

    :goto_4
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    const/4 v9, 0x1

    return v9

    .line 141
    :cond_4
    const/4 v9, 0x0

    goto :goto_4

    .line 146
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_b
    const-string/jumbo v9, "miui.os.IMiuiInit"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 149
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/os/IMiuiInit$Stub;->getAspectRatio(Ljava/lang/String;)F

    move-result v4

    .line 150
    .local v4, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 152
    const/4 v9, 0x1

    return v9

    .line 156
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":F
    :sswitch_c
    const-string/jumbo v9, "miui.os.IMiuiInit"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 159
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/os/IMiuiInit$Stub;->getDefaultAspectType(Ljava/lang/String;)I

    move-result v5

    .line 160
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    const/4 v9, 0x1

    return v9

    .line 166
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":I
    :sswitch_d
    const-string/jumbo v9, "miui.os.IMiuiInit"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 169
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/os/IMiuiInit$Stub;->getNotchConfig(Ljava/lang/String;)I

    move-result v5

    .line 170
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    const/4 v9, 0x1

    return v9

    .line 176
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":I
    :sswitch_e
    const-string/jumbo v9, "miui.os.IMiuiInit"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 179
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/os/IMiuiInit$Stub;->getPreinstalledAppVersion(Ljava/lang/String;)I

    move-result v5

    .line 180
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    const/4 v9, 0x1

    return v9

    .line 186
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":I
    :sswitch_f
    const-string/jumbo v9, "miui.os.IMiuiInit"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 190
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_5

    const/4 v3, 0x1

    .line 191
    .restart local v3    # "_arg1":Z
    :goto_5
    invoke-virtual {p0, v0, v3}, Lmiui/os/IMiuiInit$Stub;->setNotchSpecialMode(Ljava/lang/String;Z)V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    const/4 v9, 0x1

    return v9

    .line 190
    .end local v3    # "_arg1":Z
    :cond_5
    const/4 v3, 0x0

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
