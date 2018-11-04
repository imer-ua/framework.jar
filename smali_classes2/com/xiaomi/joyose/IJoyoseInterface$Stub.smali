.class public abstract Lcom/xiaomi/joyose/IJoyoseInterface$Stub;
.super Landroid/os/Binder;
.source "IJoyoseInterface.java"

# interfaces
.implements Lcom/xiaomi/joyose/IJoyoseInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/joyose/IJoyoseInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/joyose/IJoyoseInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.joyose.IJoyoseInterface"

.field static final TRANSACTION_getAllSteps:I = 0x7

.field static final TRANSACTION_handleGameBoosterForOneway:I = 0x3

.field static final TRANSACTION_handleGameBoosterForSync:I = 0x4

.field static final TRANSACTION_predictAppBucketLevel:I = 0x5

.field static final TRANSACTION_predictAppsBucketLevel:I = 0x6

.field static final TRANSACTION_registerGameEngineListener:I = 0x1

.field static final TRANSACTION_unRegisterGameEngineListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.xiaomi.joyose.IJoyoseInterface"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/joyose/IJoyoseInterface;
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
    const-string/jumbo v1, "com.xiaomi.joyose.IJoyoseInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/xiaomi/joyose/IJoyoseInterface;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/xiaomi/joyose/IJoyoseInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 14
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 120
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v13

    return v13

    .line 42
    :sswitch_0
    const-string/jumbo v13, "com.xiaomi.joyose.IJoyoseInterface"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v13, 0x1

    return v13

    .line 47
    :sswitch_1
    const-string/jumbo v13, "com.xiaomi.joyose.IJoyoseInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lcom/xiaomi/joyose/IGameEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/joyose/IGameEngineCallback;

    move-result-object v7

    .line 52
    .local v7, "_arg1":Lcom/xiaomi/joyose/IGameEngineCallback;
    invoke-virtual {p0, v1, v7}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->registerGameEngineListener(ILcom/xiaomi/joyose/IGameEngineCallback;)V

    .line 53
    const/4 v13, 0x1

    return v13

    .line 57
    .end local v1    # "_arg0":I
    .end local v7    # "_arg1":Lcom/xiaomi/joyose/IGameEngineCallback;
    :sswitch_2
    const-string/jumbo v13, "com.xiaomi.joyose.IJoyoseInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lcom/xiaomi/joyose/IGameEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/joyose/IGameEngineCallback;

    move-result-object v2

    .line 60
    .local v2, "_arg0":Lcom/xiaomi/joyose/IGameEngineCallback;
    invoke-virtual {p0, v2}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->unRegisterGameEngineListener(Lcom/xiaomi/joyose/IGameEngineCallback;)V

    .line 61
    const/4 v13, 0x1

    return v13

    .line 65
    .end local v2    # "_arg0":Lcom/xiaomi/joyose/IGameEngineCallback;
    :sswitch_3
    const-string/jumbo v13, "com.xiaomi.joyose.IJoyoseInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 69
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 70
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v8}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->handleGameBoosterForOneway(ILjava/lang/String;)V

    .line 71
    const/4 v13, 0x1

    return v13

    .line 75
    .end local v1    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v13, "com.xiaomi.joyose.IJoyoseInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 79
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 80
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v8}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->handleGameBoosterForSync(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 81
    .local v11, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    const/4 v13, 0x1

    return v13

    .line 87
    .end local v1    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v13, "com.xiaomi.joyose.IJoyoseInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->predictAppBucketLevel(Ljava/lang/String;)V

    .line 91
    const/4 v13, 0x1

    return v13

    .line 95
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v13, "com.xiaomi.joyose.IJoyoseInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 99
    .local v4, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 100
    .local v6, "_arg1":I
    invoke-virtual {p0, v4, v6}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->predictAppsBucketLevel(Ljava/util/List;I)V

    .line 101
    const/4 v13, 0x1

    return v13

    .line 105
    .end local v4    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "_arg1":I
    :sswitch_7
    const-string/jumbo v13, "com.xiaomi.joyose.IJoyoseInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 109
    .local v5, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 111
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v9

    .line 113
    .local v9, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 114
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v5, v8, v9, v10}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->getAllSteps([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 115
    .local v12, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/joyose/Step;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 117
    const/4 v13, 0x1

    return v13

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
