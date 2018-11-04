.class public abstract Lcom/android/internal/app/IOpsCallback$Stub;
.super Landroid/os/Binder;
.source "IOpsCallback.java"

# interfaces
.implements Lcom/android/internal/app/IOpsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IOpsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IOpsCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IOpsCallback"

.field static final TRANSACTION_askOperation:I = 0x1

.field static final TRANSACTION_getDefaultOp:I = 0x2

.field static final TRANSACTION_isAppPermissionControlOpen:I = 0x3

.field static final TRANSACTION_onAppApplyOperation:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.android.internal.app.IOpsCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IOpsCallback;
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
    const-string/jumbo v1, "com.android.internal.app.IOpsCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/app/IOpsCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/internal/app/IOpsCallback;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/app/IOpsCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IOpsCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 42
    :sswitch_0
    const-string/jumbo v0, "com.android.internal.app.IOpsCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v8

    .line 47
    :sswitch_1
    const-string/jumbo v0, "com.android.internal.app.IOpsCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 54
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/IOpsCallback$Stub;->askOperation(ILjava/lang/String;I)I

    move-result v6

    .line 55
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    return v8

    .line 61
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v6    # "_result":I
    :sswitch_2
    const-string/jumbo v0, "com.android.internal.app.IOpsCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 65
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 67
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 68
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/IOpsCallback$Stub;->getDefaultOp(ILjava/lang/String;I)I

    move-result v6

    .line 69
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    return v8

    .line 75
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v6    # "_result":I
    :sswitch_3
    const-string/jumbo v9, "com.android.internal.app.IOpsCallback"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 78
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IOpsCallback$Stub;->isAppPermissionControlOpen(I)Z

    move-result v7

    .line 79
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v7, :cond_0

    move v0, v8

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    return v8

    .line 85
    .end local v1    # "_arg0":I
    .end local v7    # "_result":Z
    :sswitch_4
    const-string/jumbo v9, "com.android.internal.app.IOpsCallback"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 89
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 91
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 93
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 95
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1

    move v5, v8

    .local v5, "_arg4":Z
    :goto_0
    move-object v0, p0

    .line 96
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IOpsCallback$Stub;->onAppApplyOperation(ILjava/lang/String;IIZ)V

    .line 97
    return v8

    .end local v5    # "_arg4":Z
    :cond_1
    move v5, v0

    .line 95
    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
