.class public abstract Lcom/miui/whetstone/IWhetstone$Stub;
.super Landroid/os/Binder;
.source "IWhetstone.java"

# interfaces
.implements Lcom/miui/whetstone/IWhetstone;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/IWhetstone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/IWhetstone$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.whetstone.IWhetstone"

.field static final TRANSACTION_log:I = 0x4

.field static final TRANSACTION_recordRTCWakeupInfo:I = 0x5

.field static final TRANSACTION_registerMiuiWhetstoneCloudSync:I = 0x1

.field static final TRANSACTION_registerMiuiWhetstoneCloudSyncList:I = 0x2

.field static final TRANSACTION_unregisterMiuiWhetstoneCloudSync:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.miui.whetstone.IWhetstone"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IWhetstone;
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
    const-string/jumbo v1, "com.miui.whetstone.IWhetstone"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/miui/whetstone/IWhetstone;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/miui/whetstone/IWhetstone$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/whetstone/IWhetstone$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    .line 45
    :sswitch_0
    const-string/jumbo v9, "com.miui.whetstone.IWhetstone"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v8

    .line 50
    :sswitch_1
    const-string/jumbo v9, "com.miui.whetstone.IWhetstone"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_0

    .line 53
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 59
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1

    .line 60
    sget-object v9, Lcom/miui/whetstone/CloudControlInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/whetstone/CloudControlInfo;

    .line 65
    :goto_1
    invoke-virtual {p0, v1, v3}, Lcom/miui/whetstone/IWhetstone$Stub;->registerMiuiWhetstoneCloudSync(Landroid/content/ComponentName;Lcom/miui/whetstone/CloudControlInfo;)I

    move-result v7

    .line 66
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    return v8

    .line 56
    .end local v7    # "_result":I
    :cond_0
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/content/ComponentName;
    goto :goto_0

    .line 63
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :cond_1
    const/4 v3, 0x0

    .local v3, "_arg1":Lcom/miui/whetstone/CloudControlInfo;
    goto :goto_1

    .line 72
    .end local v3    # "_arg1":Lcom/miui/whetstone/CloudControlInfo;
    :sswitch_2
    const-string/jumbo v9, "com.miui.whetstone.IWhetstone"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2

    .line 75
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 81
    :goto_2
    sget-object v9, Lcom/miui/whetstone/CloudControlInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 82
    .local v4, "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/miui/whetstone/CloudControlInfo;>;"
    invoke-virtual {p0, v1, v4}, Lcom/miui/whetstone/IWhetstone$Stub;->registerMiuiWhetstoneCloudSyncList(Landroid/content/ComponentName;Ljava/util/List;)I

    move-result v7

    .line 83
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    return v8

    .line 78
    .end local v4    # "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/miui/whetstone/CloudControlInfo;>;"
    .end local v7    # "_result":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2

    .line 89
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :sswitch_3
    const-string/jumbo v9, "com.miui.whetstone.IWhetstone"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3

    .line 92
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 97
    :goto_3
    invoke-virtual {p0, v1}, Lcom/miui/whetstone/IWhetstone$Stub;->unregisterMiuiWhetstoneCloudSync(Landroid/content/ComponentName;)I

    move-result v7

    .line 98
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    return v8

    .line 95
    .end local v7    # "_result":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3

    .line 104
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :sswitch_4
    const-string/jumbo v9, "com.miui.whetstone.IWhetstone"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 108
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 109
    .local v5, "_arg1":[B
    invoke-virtual {p0, v0, v5}, Lcom/miui/whetstone/IWhetstone$Stub;->log(I[B)V

    .line 110
    return v8

    .line 114
    .end local v0    # "_arg0":I
    .end local v5    # "_arg1":[B
    :sswitch_5
    const-string/jumbo v9, "com.miui.whetstone.IWhetstone"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 118
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_5

    .line 119
    sget-object v9, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 125
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4

    move v6, v8

    .line 126
    .local v6, "_arg2":Z
    :cond_4
    invoke-virtual {p0, v0, v2, v6}, Lcom/miui/whetstone/IWhetstone$Stub;->recordRTCWakeupInfo(ILandroid/app/PendingIntent;Z)V

    .line 127
    return v8

    .line 122
    .end local v6    # "_arg2":Z
    :cond_5
    const/4 v2, 0x0

    .local v2, "_arg1":Landroid/app/PendingIntent;
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
