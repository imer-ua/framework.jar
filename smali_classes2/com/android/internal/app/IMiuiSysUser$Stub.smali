.class public abstract Lcom/android/internal/app/IMiuiSysUser$Stub;
.super Landroid/os/Binder;
.source "IMiuiSysUser.java"

# interfaces
.implements Lcom/android/internal/app/IMiuiSysUser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IMiuiSysUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IMiuiSysUser$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IMiuiSysUser"

.field static final TRANSACTION_notifyAMCreateActivity:I = 0x7

.field static final TRANSACTION_notifyAMDestroyActivity:I = 0x3

.field static final TRANSACTION_notifyAMPauseActivity:I = 0x4

.field static final TRANSACTION_notifyAMProcDied:I = 0x2

.field static final TRANSACTION_notifyAMProcStart:I = 0x1

.field static final TRANSACTION_notifyAMRestartActivity:I = 0x6

.field static final TRANSACTION_notifyAMResumeActivity:I = 0x5

.field static final TRANSACTION_notifyEvent:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.android.internal.app.IMiuiSysUser"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IMiuiSysUser;
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
    const-string/jumbo v1, "com.android.internal.app.IMiuiSysUser"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/app/IMiuiSysUser;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/android/internal/app/IMiuiSysUser;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/app/IMiuiSysUser$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IMiuiSysUser$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 15
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

    .line 168
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 45
    :sswitch_0
    const-string/jumbo v3, "com.android.internal.app.IMiuiSysUser"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v3, 0x1

    return v3

    .line 50
    :sswitch_1
    const-string/jumbo v3, "com.android.internal.app.IMiuiSysUser"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 54
    .local v4, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 56
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 58
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 60
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    .line 67
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, "_arg5":Ljava/lang/String;
    move-object v3, p0

    .line 68
    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/app/IMiuiSysUser$Stub;->notifyAMProcStart(JIILjava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 69
    const/4 v3, 0x1

    return v3

    .line 64
    .end local v10    # "_arg5":Ljava/lang/String;
    :cond_0
    const/4 v9, 0x0

    .local v9, "_arg4":Landroid/content/ComponentName;
    goto :goto_0

    .line 73
    .end local v4    # "_arg0":J
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Landroid/content/ComponentName;
    :sswitch_2
    const-string/jumbo v3, "com.android.internal.app.IMiuiSysUser"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 77
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 78
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v14}, Lcom/android/internal/app/IMiuiSysUser$Stub;->notifyAMProcDied(ILjava/lang/String;)V

    .line 79
    const/4 v3, 0x1

    return v3

    .line 83
    .end local v2    # "_arg0":I
    .end local v14    # "_arg1":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v3, "com.android.internal.app.IMiuiSysUser"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 87
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 88
    .restart local v6    # "_arg1":I
    invoke-virtual {p0, v2, v6}, Lcom/android/internal/app/IMiuiSysUser$Stub;->notifyAMDestroyActivity(II)V

    .line 89
    const/4 v3, 0x1

    return v3

    .line 93
    .end local v2    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_4
    const-string/jumbo v3, "com.android.internal.app.IMiuiSysUser"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 97
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 98
    .restart local v6    # "_arg1":I
    invoke-virtual {p0, v2, v6}, Lcom/android/internal/app/IMiuiSysUser$Stub;->notifyAMPauseActivity(II)V

    .line 99
    const/4 v3, 0x1

    return v3

    .line 103
    .end local v2    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_5
    const-string/jumbo v3, "com.android.internal.app.IMiuiSysUser"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 106
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    .line 112
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 114
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 115
    .restart local v7    # "_arg2":I
    invoke-virtual {p0, v11, v6, v7}, Lcom/android/internal/app/IMiuiSysUser$Stub;->notifyAMResumeActivity(Landroid/content/ComponentName;II)V

    .line 116
    const/4 v3, 0x1

    return v3

    .line 109
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :cond_1
    const/4 v11, 0x0

    .local v11, "_arg0":Landroid/content/ComponentName;
    goto :goto_1

    .line 120
    .end local v11    # "_arg0":Landroid/content/ComponentName;
    :sswitch_6
    const-string/jumbo v3, "com.android.internal.app.IMiuiSysUser"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    .line 129
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 131
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 132
    .restart local v7    # "_arg2":I
    invoke-virtual {p0, v11, v6, v7}, Lcom/android/internal/app/IMiuiSysUser$Stub;->notifyAMRestartActivity(Landroid/content/ComponentName;II)V

    .line 133
    const/4 v3, 0x1

    return v3

    .line 126
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :cond_2
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2

    .line 137
    .end local v11    # "_arg0":Landroid/content/ComponentName;
    :sswitch_7
    const-string/jumbo v3, "com.android.internal.app.IMiuiSysUser"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 140
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    .line 146
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 148
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 149
    .restart local v7    # "_arg2":I
    invoke-virtual {p0, v11, v6, v7}, Lcom/android/internal/app/IMiuiSysUser$Stub;->notifyAMCreateActivity(Landroid/content/ComponentName;II)V

    .line 150
    const/4 v3, 0x1

    return v3

    .line 143
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :cond_3
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3

    .line 154
    .end local v11    # "_arg0":Landroid/content/ComponentName;
    :sswitch_8
    const-string/jumbo v3, "com.android.internal.app.IMiuiSysUser"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 158
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 159
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Bundle;

    .line 164
    :goto_4
    invoke-virtual {p0, v12, v13}, Lcom/android/internal/app/IMiuiSysUser$Stub;->notifyEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 165
    const/4 v3, 0x1

    return v3

    .line 162
    :cond_4
    const/4 v13, 0x0

    .local v13, "_arg1":Landroid/os/Bundle;
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
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
