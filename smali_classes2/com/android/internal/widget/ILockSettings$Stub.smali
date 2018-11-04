.class public abstract Lcom/android/internal/widget/ILockSettings$Stub;
.super Landroid/os/Binder;
.source "ILockSettings.java"

# interfaces
.implements Lcom/android/internal/widget/ILockSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ILockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ILockSettings$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.widget.ILockSettings"

.field static final TRANSACTION_checkPassword:I = 0xd

.field static final TRANSACTION_checkPattern:I = 0xa

.field static final TRANSACTION_checkPrivacyPasswordPattern:I = 0x1e

.field static final TRANSACTION_checkVoldPassword:I = 0x10

.field static final TRANSACTION_getBoolean:I = 0x5

.field static final TRANSACTION_getLong:I = 0x6

.field static final TRANSACTION_getPassword:I = 0x1c

.field static final TRANSACTION_getSeparateProfileChallengeEnabled:I = 0x14

.field static final TRANSACTION_getString:I = 0x7

.field static final TRANSACTION_getStrongAuthForUser:I = 0x1a

.field static final TRANSACTION_havePassword:I = 0x12

.field static final TRANSACTION_havePattern:I = 0x11

.field static final TRANSACTION_registerStrongAuthTracker:I = 0x15

.field static final TRANSACTION_requireStrongAuth:I = 0x17

.field static final TRANSACTION_resetKeyStore:I = 0x9

.field static final TRANSACTION_sanitizePassword:I = 0x1b

.field static final TRANSACTION_savePrivacyPasswordPattern:I = 0x1d

.field static final TRANSACTION_setBoolean:I = 0x2

.field static final TRANSACTION_setLockPassword:I = 0xc

.field static final TRANSACTION_setLockPattern:I = 0x8

.field static final TRANSACTION_setLong:I = 0x3

.field static final TRANSACTION_setRawLockPassword:I = 0x1

.field static final TRANSACTION_setSeparateProfileChallengeEnabled:I = 0x13

.field static final TRANSACTION_setString:I = 0x4

.field static final TRANSACTION_systemReady:I = 0x18

.field static final TRANSACTION_unregisterStrongAuthTracker:I = 0x16

.field static final TRANSACTION_userPresent:I = 0x19

.field static final TRANSACTION_verifyPassword:I = 0xe

.field static final TRANSACTION_verifyPattern:I = 0xb

.field static final TRANSACTION_verifyTiedProfileChallenge:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    const-string/jumbo v1, "com.android.internal.widget.ILockSettings"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/widget/ILockSettings;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/android/internal/widget/ILockSettings;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 26
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 426
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 43
    :sswitch_0
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v5, 0x1

    return v5

    .line 48
    :sswitch_1
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v12

    .line 52
    .local v12, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 53
    .local v13, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/widget/ILockSettings$Stub;->setRawLockPassword([BI)V

    .line 54
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    const/4 v5, 0x1

    return v5

    .line 59
    .end local v12    # "_arg0":[B
    .end local v13    # "_arg1":I
    :sswitch_2
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 63
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v7, 0x1

    .line 65
    .local v7, "_arg1":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 66
    .local v17, "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v6, v7, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setBoolean(Ljava/lang/String;ZI)V

    .line 67
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    const/4 v5, 0x1

    return v5

    .line 63
    .end local v7    # "_arg1":Z
    .end local v17    # "_arg2":I
    :cond_0
    const/4 v7, 0x0

    .restart local v7    # "_arg1":Z
    goto :goto_0

    .line 72
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Z
    :sswitch_3
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 76
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 78
    .local v14, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 79
    .restart local v17    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v6, v14, v15, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setLong(Ljava/lang/String;JI)V

    .line 80
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    const/4 v5, 0x1

    return v5

    .line 85
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":J
    .end local v17    # "_arg2":I
    :sswitch_4
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 89
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 91
    .local v16, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 92
    .restart local v17    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    const/4 v5, 0x1

    return v5

    .line 98
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":I
    :sswitch_5
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 102
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v7, 0x1

    .line 104
    .restart local v7    # "_arg1":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 105
    .restart local v17    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v6, v7, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v25

    .line 106
    .local v25, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v25, :cond_2

    const/4 v5, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    const/4 v5, 0x1

    return v5

    .line 102
    .end local v7    # "_arg1":Z
    .end local v17    # "_arg2":I
    .end local v25    # "_result":Z
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "_arg1":Z
    goto :goto_1

    .line 107
    .restart local v17    # "_arg2":I
    .restart local v25    # "_result":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 112
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Z
    .end local v17    # "_arg2":I
    .end local v25    # "_result":Z
    :sswitch_6
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 116
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 118
    .restart local v14    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 119
    .restart local v17    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v6, v14, v15, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->getLong(Ljava/lang/String;JI)J

    move-result-wide v22

    .line 120
    .local v22, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    move-object/from16 v0, p3

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 122
    const/4 v5, 0x1

    return v5

    .line 126
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":J
    .end local v17    # "_arg2":I
    .end local v22    # "_result":J
    :sswitch_7
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 130
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 132
    .restart local v16    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 133
    .restart local v17    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    .line 134
    .local v24, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    const/4 v5, 0x1

    return v5

    .line 140
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":I
    .end local v24    # "_result":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 144
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 146
    .restart local v16    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 147
    .restart local v17    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V

    .line 148
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    const/4 v5, 0x1

    return v5

    .line 153
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":I
    :sswitch_9
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 156
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->resetKeyStore(I)V

    .line 157
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    const/4 v5, 0x1

    return v5

    .line 162
    .end local v4    # "_arg0":I
    :sswitch_a
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 166
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 168
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/widget/ICheckCredentialProgressCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ICheckCredentialProgressCallback;

    move-result-object v18

    .line 169
    .local v18, "_arg2":Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v6, v13, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->checkPattern(Ljava/lang/String;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v21

    .line 170
    .local v21, "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    if-eqz v21, :cond_3

    .line 172
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    const/4 v5, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 178
    :goto_3
    const/4 v5, 0x1

    return v5

    .line 176
    :cond_3
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 182
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v18    # "_arg2":Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .end local v21    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_b
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 186
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 188
    .restart local v14    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 189
    .restart local v17    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v6, v14, v15, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->verifyPattern(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v21

    .line 190
    .restart local v21    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    if-eqz v21, :cond_4

    .line 192
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    const/4 v5, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 198
    :goto_4
    const/4 v5, 0x1

    return v5

    .line 196
    :cond_4
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 202
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":J
    .end local v17    # "_arg2":I
    .end local v21    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_c
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 206
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 208
    .restart local v16    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 209
    .restart local v17    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockPassword(Ljava/lang/String;Ljava/lang/String;I)V

    .line 210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    const/4 v5, 0x1

    return v5

    .line 215
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":I
    :sswitch_d
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 219
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 221
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/widget/ICheckCredentialProgressCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ICheckCredentialProgressCallback;

    move-result-object v18

    .line 222
    .restart local v18    # "_arg2":Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v6, v13, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->checkPassword(Ljava/lang/String;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v21

    .line 223
    .restart local v21    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    if-eqz v21, :cond_5

    .line 225
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    const/4 v5, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 231
    :goto_5
    const/4 v5, 0x1

    return v5

    .line 229
    :cond_5
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 235
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v18    # "_arg2":Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .end local v21    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_e
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 239
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 241
    .restart local v14    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 242
    .restart local v17    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v6, v14, v15, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->verifyPassword(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v21

    .line 243
    .restart local v21    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    if-eqz v21, :cond_6

    .line 245
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    const/4 v5, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 251
    :goto_6
    const/4 v5, 0x1

    return v5

    .line 249
    :cond_6
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 255
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":J
    .end local v17    # "_arg2":I
    .end local v21    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_f
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 259
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    const/4 v7, 0x1

    .line 261
    .restart local v7    # "_arg1":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 263
    .local v8, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, "_arg3":I
    move-object/from16 v5, p0

    .line 264
    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/widget/ILockSettings$Stub;->verifyTiedProfileChallenge(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v21

    .line 265
    .restart local v21    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    if-eqz v21, :cond_8

    .line 267
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    const/4 v5, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 273
    :goto_8
    const/4 v5, 0x1

    return v5

    .line 259
    .end local v7    # "_arg1":Z
    .end local v8    # "_arg2":J
    .end local v10    # "_arg3":I
    .end local v21    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_7
    const/4 v7, 0x0

    .restart local v7    # "_arg1":Z
    goto :goto_7

    .line 271
    .restart local v8    # "_arg2":J
    .restart local v10    # "_arg3":I
    .restart local v21    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_8
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 277
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Z
    .end local v8    # "_arg2":J
    .end local v10    # "_arg3":I
    .end local v21    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_10
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 280
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->checkVoldPassword(I)Z

    move-result v25

    .line 281
    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    if-eqz v25, :cond_9

    const/4 v5, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    const/4 v5, 0x1

    return v5

    .line 282
    :cond_9
    const/4 v5, 0x0

    goto :goto_9

    .line 287
    .end local v4    # "_arg0":I
    .end local v25    # "_result":Z
    :sswitch_11
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 290
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->havePattern(I)Z

    move-result v25

    .line 291
    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    if-eqz v25, :cond_a

    const/4 v5, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    const/4 v5, 0x1

    return v5

    .line 292
    :cond_a
    const/4 v5, 0x0

    goto :goto_a

    .line 297
    .end local v4    # "_arg0":I
    .end local v25    # "_result":Z
    :sswitch_12
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 300
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->havePassword(I)Z

    move-result v25

    .line 301
    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    if-eqz v25, :cond_b

    const/4 v5, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    const/4 v5, 0x1

    return v5

    .line 302
    :cond_b
    const/4 v5, 0x0

    goto :goto_b

    .line 307
    .end local v4    # "_arg0":I
    .end local v25    # "_result":Z
    :sswitch_13
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 311
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    const/4 v7, 0x1

    .line 313
    .restart local v7    # "_arg1":Z
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 314
    .local v19, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v7, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    .line 315
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    const/4 v5, 0x1

    return v5

    .line 311
    .end local v7    # "_arg1":Z
    .end local v19    # "_arg2":Ljava/lang/String;
    :cond_c
    const/4 v7, 0x0

    .restart local v7    # "_arg1":Z
    goto :goto_c

    .line 320
    .end local v4    # "_arg0":I
    .end local v7    # "_arg1":Z
    :sswitch_14
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 323
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->getSeparateProfileChallengeEnabled(I)Z

    move-result v25

    .line 324
    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    if-eqz v25, :cond_d

    const/4 v5, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    const/4 v5, 0x1

    return v5

    .line 325
    :cond_d
    const/4 v5, 0x0

    goto :goto_d

    .line 330
    .end local v4    # "_arg0":I
    .end local v25    # "_result":Z
    :sswitch_15
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/trust/IStrongAuthTracker$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/IStrongAuthTracker;

    move-result-object v11

    .line 333
    .local v11, "_arg0":Landroid/app/trust/IStrongAuthTracker;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/widget/ILockSettings$Stub;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 334
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    const/4 v5, 0x1

    return v5

    .line 339
    .end local v11    # "_arg0":Landroid/app/trust/IStrongAuthTracker;
    :sswitch_16
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/trust/IStrongAuthTracker$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/IStrongAuthTracker;

    move-result-object v11

    .line 342
    .restart local v11    # "_arg0":Landroid/app/trust/IStrongAuthTracker;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/widget/ILockSettings$Stub;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 343
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    const/4 v5, 0x1

    return v5

    .line 348
    .end local v11    # "_arg0":Landroid/app/trust/IStrongAuthTracker;
    :sswitch_17
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 352
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 353
    .restart local v13    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v13}, Lcom/android/internal/widget/ILockSettings$Stub;->requireStrongAuth(II)V

    .line 354
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    const/4 v5, 0x1

    return v5

    .line 359
    .end local v4    # "_arg0":I
    .end local v13    # "_arg1":I
    :sswitch_18
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ILockSettings$Stub;->systemReady()V

    .line 361
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    const/4 v5, 0x1

    return v5

    .line 366
    :sswitch_19
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 369
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->userPresent(I)V

    .line 370
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    const/4 v5, 0x1

    return v5

    .line 375
    .end local v4    # "_arg0":I
    :sswitch_1a
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 378
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->getStrongAuthForUser(I)I

    move-result v20

    .line 379
    .local v20, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    const/4 v5, 0x1

    return v5

    .line 385
    .end local v4    # "_arg0":I
    .end local v20    # "_result":I
    :sswitch_1b
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ILockSettings$Stub;->sanitizePassword()V

    .line 387
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    const/4 v5, 0x1

    return v5

    .line 392
    :sswitch_1c
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ILockSettings$Stub;->getPassword()Ljava/lang/String;

    move-result-object v24

    .line 394
    .restart local v24    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 396
    const/4 v5, 0x1

    return v5

    .line 400
    .end local v24    # "_result":Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 404
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 406
    .restart local v16    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 407
    .restart local v17    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->savePrivacyPasswordPattern(Ljava/lang/String;Ljava/lang/String;I)V

    .line 408
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    const/4 v5, 0x1

    return v5

    .line 413
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":I
    :sswitch_1e
    const-string/jumbo v5, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 417
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 419
    .restart local v16    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 420
    .restart local v17    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->checkPrivacyPasswordPattern(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v25

    .line 421
    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    if-eqz v25, :cond_e

    const/4 v5, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    const/4 v5, 0x1

    return v5

    .line 422
    :cond_e
    const/4 v5, 0x0

    goto :goto_e

    .line 39
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
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
