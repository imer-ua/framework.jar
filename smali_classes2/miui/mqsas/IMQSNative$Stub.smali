.class public abstract Lmiui/mqsas/IMQSNative$Stub;
.super Landroid/os/Binder;
.source "IMQSNative.java"

# interfaces
.implements Lmiui/mqsas/IMQSNative;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/mqsas/IMQSNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/mqsas/IMQSNative$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.mqsas.IMQSNative"

.field static final TRANSACTION_attachSockFilter:I = 0x2

.field static final TRANSACTION_captureLog:I = 0x1

.field static final TRANSACTION_getFreeFragStats:I = 0x5

.field static final TRANSACTION_runCommand:I = 0x4

.field static final TRANSACTION_setCoreFilter:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "miui.mqsas.IMQSNative"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/mqsas/IMQSNative;
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
    const-string/jumbo v1, "miui.mqsas.IMQSNative"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/mqsas/IMQSNative;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lmiui/mqsas/IMQSNative;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lmiui/mqsas/IMQSNative$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/mqsas/IMQSNative$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 29
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 142
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 46
    :sswitch_0
    const-string/jumbo v3, "miui.mqsas.IMQSNative"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v3, 0x1

    return v3

    .line 51
    :sswitch_1
    const-string/jumbo v3, "miui.mqsas.IMQSNative"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 57
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 59
    .local v6, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 61
    .local v7, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v8, 0x1

    .line 63
    .local v8, "_arg4":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 65
    .local v9, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v10, 0x1

    .line 67
    .local v10, "_arg6":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 69
    .local v11, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v12

    .local v12, "_arg8":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v3, p0

    .line 70
    invoke-virtual/range {v3 .. v12}, Lmiui/mqsas/IMQSNative$Stub;->captureLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZIZLjava/lang/String;Ljava/util/List;)V

    .line 71
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    const/4 v3, 0x1

    return v3

    .line 61
    .end local v8    # "_arg4":Z
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":Z
    .end local v11    # "_arg7":Ljava/lang/String;
    .end local v12    # "_arg8":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/4 v8, 0x0

    .restart local v8    # "_arg4":Z
    goto :goto_0

    .line 65
    .restart local v9    # "_arg5":I
    :cond_1
    const/4 v10, 0x0

    .restart local v10    # "_arg6":Z
    goto :goto_1

    .line 76
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "_arg4":Z
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":Z
    :sswitch_2
    const-string/jumbo v3, "miui.mqsas.IMQSNative"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 80
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 82
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 84
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 86
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 88
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 90
    .restart local v9    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 92
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v21

    .line 94
    .local v21, "_arg7":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 96
    .local v22, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .local v23, "_arg9":Ljava/lang/String;
    move-object/from16 v13, p0

    move-object v14, v4

    move-object v15, v5

    move/from16 v19, v9

    .line 97
    invoke-virtual/range {v13 .. v23}, Lmiui/mqsas/IMQSNative$Stub;->attachSockFilter(Ljava/lang/String;Ljava/lang/String;IIIII[BILjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v27

    .line 98
    .local v27, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v27, :cond_2

    .line 100
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    const/4 v3, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 106
    :goto_2
    const/4 v3, 0x1

    return v3

    .line 104
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 110
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg5":I
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":I
    .end local v20    # "_arg6":I
    .end local v21    # "_arg7":[B
    .end local v22    # "_arg8":I
    .end local v23    # "_arg9":Ljava/lang/String;
    .end local v27    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_3
    const-string/jumbo v3, "miui.mqsas.IMQSNative"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 114
    .local v24, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    const/16 v25, 0x1

    .line 115
    .local v25, "_arg1":Z
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lmiui/mqsas/IMQSNative$Stub;->setCoreFilter(IZ)V

    .line 116
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    const/4 v3, 0x1

    return v3

    .line 114
    .end local v25    # "_arg1":Z
    :cond_3
    const/16 v25, 0x0

    goto :goto_3

    .line 121
    .end local v24    # "_arg0":I
    :sswitch_4
    const-string/jumbo v3, "miui.mqsas.IMQSNative"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 125
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 127
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 128
    .restart local v16    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v4, v5, v1}, Lmiui/mqsas/IMQSNative$Stub;->runCommand(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v26

    .line 129
    .local v26, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    const/4 v3, 0x1

    return v3

    .line 135
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":I
    .end local v26    # "_result":I
    :sswitch_5
    const-string/jumbo v3, "miui.mqsas.IMQSNative"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p0 .. p0}, Lmiui/mqsas/IMQSNative$Stub;->getFreeFragStats()Ljava/lang/String;

    move-result-object v28

    .line 137
    .local v28, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    const/4 v3, 0x1

    return v3

    .line 42
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
