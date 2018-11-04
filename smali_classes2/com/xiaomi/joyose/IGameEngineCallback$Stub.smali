.class public abstract Lcom/xiaomi/joyose/IGameEngineCallback$Stub;
.super Landroid/os/Binder;
.source "IGameEngineCallback.java"

# interfaces
.implements Lcom/xiaomi/joyose/IGameEngineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/joyose/IGameEngineCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/joyose/IGameEngineCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.joyose.IGameEngineCallback"

.field static final TRANSACTION_onApplyHardwareResource:I = 0x2

.field static final TRANSACTION_onEventHandle:I = 0x4

.field static final TRANSACTION_onRestoreDefaultConfig:I = 0x3

.field static final TRANSACTION_onUpdateGameInfo:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.xiaomi.joyose.IGameEngineCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/joyose/IGameEngineCallback;
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
    const-string/jumbo v1, "com.xiaomi.joyose.IGameEngineCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaomi/joyose/IGameEngineCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/xiaomi/joyose/IGameEngineCallback;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/xiaomi/joyose/IGameEngineCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaomi/joyose/IGameEngineCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
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
    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 84
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 42
    :sswitch_0
    const-string/jumbo v4, "com.xiaomi.joyose.IGameEngineCallback"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v5

    .line 47
    :sswitch_1
    const-string/jumbo v4, "com.xiaomi.joyose.IGameEngineCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/xiaomi/joyose/IGameEngineCallback$Stub;->onUpdateGameInfo(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    return v5

    .line 56
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v4, "com.xiaomi.joyose.IGameEngineCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 59
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/xiaomi/joyose/IGameEngineCallback$Stub;->onApplyHardwareResource(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    return v5

    .line 65
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v4, "com.xiaomi.joyose.IGameEngineCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/xiaomi/joyose/IGameEngineCallback$Stub;->onRestoreDefaultConfig()V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    return v5

    .line 72
    :sswitch_4
    const-string/jumbo v4, "com.xiaomi.joyose.IGameEngineCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Lcom/xiaomi/joyose/IGameEngineCallback$Stub;->onEventHandle(ILjava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    return v5

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
