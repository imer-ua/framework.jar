.class public abstract Landroid/media/IMiuiAudioRecord$Stub;
.super Landroid/os/Binder;
.source "IMiuiAudioRecord.java"

# interfaces
.implements Landroid/media/IMiuiAudioRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMiuiAudioRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMiuiAudioRecord$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IMiuiAudioRecord"

.field static final TRANSACTION_fillBuffer:I = 0x4

.field static final TRANSACTION_getMetaData:I = 0x3

.field static final TRANSACTION_start:I = 0x1

.field static final TRANSACTION_stop:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "android.media.IMiuiAudioRecord"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IMiuiAudioRecord;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-nez p0, :cond_0

    .line 28
    return-object v1

    .line 30
    :cond_0
    const-string/jumbo v1, "android.media.IMiuiAudioRecord"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/IMiuiAudioRecord;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/media/IMiuiAudioRecord;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/IMiuiAudioRecord$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IMiuiAudioRecord$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
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

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 46
    :sswitch_0
    const-string/jumbo v6, "android.media.IMiuiAudioRecord"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v7

    .line 51
    :sswitch_1
    const-string/jumbo v8, "android.media.IMiuiAudioRecord"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 54
    .local v2, "_arg0":J
    invoke-virtual {p0, v2, v3}, Landroid/media/IMiuiAudioRecord$Stub;->start(J)Z

    move-result v5

    .line 55
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    if-eqz v5, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    return v7

    .line 61
    .end local v2    # "_arg0":J
    .end local v5    # "_result":Z
    :sswitch_2
    const-string/jumbo v8, "android.media.IMiuiAudioRecord"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Landroid/media/IMiuiAudioRecord$Stub;->stop()Z

    move-result v5

    .line 63
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v5, :cond_1

    move v6, v7

    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    return v7

    .line 69
    .end local v5    # "_result":Z
    :sswitch_3
    const-string/jumbo v8, "android.media.IMiuiAudioRecord"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Landroid/media/IMiuiAudioRecord$Stub;->getMetaData()Landroid/os/Bundle;

    move-result-object v4

    .line 71
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v4, :cond_2

    .line 73
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    invoke-virtual {v4, p3, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 79
    :goto_0
    return v7

    .line 77
    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 83
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_4
    const-string/jumbo v8, "android.media.IMiuiAudioRecord"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 87
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 88
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/media/IMiuiAudioRecord$Stub;->fillBuffer(II)Landroid/os/Bundle;

    move-result-object v4

    .line 89
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    if-eqz v4, :cond_3

    .line 91
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    invoke-virtual {v4, p3, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 97
    :goto_1
    return v7

    .line 95
    :cond_3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 42
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
