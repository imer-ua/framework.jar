.class public abstract Landroid/net/INetworkManagementEventObserver$Stub;
.super Landroid/os/Binder;
.source "INetworkManagementEventObserver.java"

# interfaces
.implements Landroid/net/INetworkManagementEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkManagementEventObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkManagementEventObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkManagementEventObserver"

.field static final TRANSACTION_addressRemoved:I = 0x6

.field static final TRANSACTION_addressUpdated:I = 0x5

.field static final TRANSACTION_interfaceAdded:I = 0x3

.field static final TRANSACTION_interfaceClassDataActivityChanged:I = 0x8

.field static final TRANSACTION_interfaceConfigurationLost:I = 0xd

.field static final TRANSACTION_interfaceDnsServerInfo:I = 0xa

.field static final TRANSACTION_interfaceLinkStateChanged:I = 0x2

.field static final TRANSACTION_interfaceMessageRecevied:I = 0x9

.field static final TRANSACTION_interfaceRemoved:I = 0x4

.field static final TRANSACTION_interfaceStatusChanged:I = 0x1

.field static final TRANSACTION_limitReached:I = 0x7

.field static final TRANSACTION_routeRemoved:I = 0xc

.field static final TRANSACTION_routeUpdated:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.net.INetworkManagementEventObserver"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkManagementEventObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    return-object v1

    .line 31
    :cond_0
    const-string/jumbo v1, "android.net.INetworkManagementEventObserver"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/INetworkManagementEventObserver;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/net/INetworkManagementEventObserver;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/INetworkManagementEventObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetworkManagementEventObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 191
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    return v10

    .line 47
    :sswitch_0
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v10, 0x1

    return v10

    .line 52
    :sswitch_1
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_0

    const/4 v6, 0x1

    .line 57
    .local v6, "_arg1":Z
    :goto_0
    invoke-virtual {p0, v1, v6}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceStatusChanged(Ljava/lang/String;Z)V

    .line 58
    const/4 v10, 0x1

    return v10

    .line 56
    .end local v6    # "_arg1":Z
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 62
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 66
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1

    const/4 v6, 0x1

    .line 67
    .restart local v6    # "_arg1":Z
    :goto_1
    invoke-virtual {p0, v1, v6}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceLinkStateChanged(Ljava/lang/String;Z)V

    .line 68
    const/4 v10, 0x1

    return v10

    .line 66
    .end local v6    # "_arg1":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 72
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 75
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceAdded(Ljava/lang/String;)V

    .line 76
    const/4 v10, 0x1

    return v10

    .line 80
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 83
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceRemoved(Ljava/lang/String;)V

    .line 84
    const/4 v10, 0x1

    return v10

    .line 88
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 92
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2

    .line 93
    sget-object v10, Landroid/net/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 98
    :goto_2
    invoke-virtual {p0, v1, v4}, Landroid/net/INetworkManagementEventObserver$Stub;->addressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V

    .line 99
    const/4 v10, 0x1

    return v10

    .line 96
    :cond_2
    const/4 v4, 0x0

    .local v4, "_arg1":Landroid/net/LinkAddress;
    goto :goto_2

    .line 103
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/net/LinkAddress;
    :sswitch_6
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 107
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3

    .line 108
    sget-object v10, Landroid/net/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 113
    :goto_3
    invoke-virtual {p0, v1, v4}, Landroid/net/INetworkManagementEventObserver$Stub;->addressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V

    .line 114
    const/4 v10, 0x1

    return v10

    .line 111
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/net/LinkAddress;
    goto :goto_3

    .line 118
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/net/LinkAddress;
    :sswitch_7
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 122
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 123
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Landroid/net/INetworkManagementEventObserver$Stub;->limitReached(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const/4 v10, 0x1

    return v10

    .line 128
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 132
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4

    const/4 v6, 0x1

    .line 134
    .local v6, "_arg1":Z
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 135
    .local v8, "_arg2":J
    invoke-virtual {p0, v1, v6, v8, v9}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceClassDataActivityChanged(Ljava/lang/String;ZJ)V

    .line 136
    const/4 v10, 0x1

    return v10

    .line 132
    .end local v6    # "_arg1":Z
    .end local v8    # "_arg2":J
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Z
    goto :goto_4

    .line 140
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Z
    :sswitch_9
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 143
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceMessageRecevied(Ljava/lang/String;)V

    .line 144
    const/4 v10, 0x1

    return v10

    .line 148
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 152
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 154
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 155
    .local v7, "_arg2":[Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v7}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V

    .line 156
    const/4 v10, 0x1

    return v10

    .line 160
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v7    # "_arg2":[Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_5

    .line 163
    sget-object v10, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 168
    :goto_5
    invoke-virtual {p0, v0}, Landroid/net/INetworkManagementEventObserver$Stub;->routeUpdated(Landroid/net/RouteInfo;)V

    .line 169
    const/4 v10, 0x1

    return v10

    .line 166
    :cond_5
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/net/RouteInfo;
    goto :goto_5

    .line 173
    .end local v0    # "_arg0":Landroid/net/RouteInfo;
    :sswitch_c
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_6

    .line 176
    sget-object v10, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 181
    :goto_6
    invoke-virtual {p0, v0}, Landroid/net/INetworkManagementEventObserver$Stub;->routeRemoved(Landroid/net/RouteInfo;)V

    .line 182
    const/4 v10, 0x1

    return v10

    .line 179
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/RouteInfo;
    goto :goto_6

    .line 186
    .end local v0    # "_arg0":Landroid/net/RouteInfo;
    :sswitch_d
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceConfigurationLost()V

    .line 188
    const/4 v10, 0x1

    return v10

    .line 43
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
