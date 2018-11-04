.class public abstract Lmiui/security/ITidaService$Stub;
.super Landroid/os/Binder;
.source "ITidaService.java"

# interfaces
.implements Lmiui/security/ITidaService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/security/ITidaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/security/ITidaService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.security.ITidaService"

.field static final TRANSACTION_contains:I = 0x1

.field static final TRANSACTION_generateKeyPair:I = 0x2

.field static final TRANSACTION_getFpIds:I = 0x6

.field static final TRANSACTION_sign:I = 0x5

.field static final TRANSACTION_signInit:I = 0x3

.field static final TRANSACTION_signUpdate:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "miui.security.ITidaService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/security/ITidaService;
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
    const-string/jumbo v1, "miui.security.ITidaService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/security/ITidaService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lmiui/security/ITidaService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lmiui/security/ITidaService$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/security/ITidaService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 9
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
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 45
    :sswitch_0
    const-string/jumbo v6, "miui.security.ITidaService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v7

    .line 50
    :sswitch_1
    const-string/jumbo v8, "miui.security.ITidaService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/security/ITidaService$Stub;->contains(Ljava/lang/String;)Z

    move-result v4

    .line 54
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v4, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    return v7

    .line 60
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_2
    const-string/jumbo v8, "miui.security.ITidaService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 64
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lmiui/security/ITidaService$Stub;->generateKeyPair(Ljava/lang/String;Ljava/lang/String;)Lmiui/security/KeyPairParcel;

    move-result-object v3

    .line 66
    .local v3, "_result":Lmiui/security/KeyPairParcel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-eqz v3, :cond_1

    .line 68
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    invoke-virtual {v3, p3, v7}, Lmiui/security/KeyPairParcel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 74
    :goto_0
    return v7

    .line 72
    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 78
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Lmiui/security/KeyPairParcel;
    :sswitch_3
    const-string/jumbo v6, "miui.security.ITidaService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 83
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lmiui/security/ITidaService$Stub;->signInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    return v7

    .line 89
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v6, "miui.security.ITidaService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/security/ITidaService$Stub;->signUpdate(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    return v7

    .line 98
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v6, "miui.security.ITidaService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lmiui/security/ITidaService$Stub;->sign()[B

    move-result-object v5

    .line 100
    .local v5, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 102
    return v7

    .line 106
    .end local v5    # "_result":[B
    :sswitch_6
    const-string/jumbo v6, "miui.security.ITidaService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lmiui/security/ITidaService$Stub;->getFpIds()Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    return v7

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
