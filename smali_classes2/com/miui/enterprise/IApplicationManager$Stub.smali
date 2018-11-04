.class public abstract Lcom/miui/enterprise/IApplicationManager$Stub;
.super Landroid/os/Binder;
.source "IApplicationManager.java"

# interfaces
.implements Lcom/miui/enterprise/IApplicationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/enterprise/IApplicationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/enterprise/IApplicationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.enterprise.IApplicationManager"

.field static final TRANSACTION_addTrustedAppStore:I = 0x14

.field static final TRANSACTION_clearApplicationCache:I = 0x13

.field static final TRANSACTION_clearApplicationUserData:I = 0x12

.field static final TRANSACTION_deletePackage:I = 0x3

.field static final TRANSACTION_enableAccessibilityService:I = 0x11

.field static final TRANSACTION_enableTrustedAppStore:I = 0x16

.field static final TRANSACTION_getApplicationBlackList:I = 0x9

.field static final TRANSACTION_getApplicationRestriction:I = 0xd

.field static final TRANSACTION_getApplicationSettings:I = 0x5

.field static final TRANSACTION_getApplicationWhiteList:I = 0xb

.field static final TRANSACTION_getDisallowedRunningAppList:I = 0xf

.field static final TRANSACTION_getTrustedAppStore:I = 0x15

.field static final TRANSACTION_installPackage:I = 0x1

.field static final TRANSACTION_installPackageWithPendingIntent:I = 0x2

.field static final TRANSACTION_isTrustedAppStoreEnabled:I = 0x17

.field static final TRANSACTION_killProcess:I = 0x10

.field static final TRANSACTION_removeDeviceAdmin:I = 0x7

.field static final TRANSACTION_setApplicationBlackList:I = 0x8

.field static final TRANSACTION_setApplicationEnabled:I = 0x18

.field static final TRANSACTION_setApplicationRestriction:I = 0xc

.field static final TRANSACTION_setApplicationSettings:I = 0x4

.field static final TRANSACTION_setApplicationWhiteList:I = 0xa

.field static final TRANSACTION_setDeviceAdmin:I = 0x6

.field static final TRANSACTION_setDisallowedRunningAppList:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.miui.enterprise.IApplicationManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/enterprise/IApplicationManager;
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
    const-string/jumbo v1, "com.miui.enterprise.IApplicationManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/enterprise/IApplicationManager;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/miui/enterprise/IApplicationManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/miui/enterprise/IApplicationManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/enterprise/IApplicationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 18
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

    .line 344
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v17

    return v17

    .line 45
    :sswitch_0
    const-string/jumbo v17, "com.miui.enterprise.IApplicationManager"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/16 v17, 0x1

    return v17

    .line 50
    :sswitch_1
    const-string/jumbo v17, "com.miui.enterprise.IApplicationManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 56
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/content/pm/IPackageInstallObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v12

    .line 58
    .local v12, "_arg2":Landroid/content/pm/IPackageInstallObserver2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 59
    .local v13, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7, v12, v13}, Lcom/miui/enterprise/IApplicationManager$Stub;->installPackage(Ljava/lang/String;ILandroid/content/pm/IPackageInstallObserver2;I)V

    .line 60
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    const/16 v17, 0x1

    return v17

    .line 65
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v12    # "_arg2":Landroid/content/pm/IPackageInstallObserver2;
    .end local v13    # "_arg3":I
    :sswitch_2
    const-string/jumbo v17, "com.miui.enterprise.IApplicationManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 69
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_0

    .line 70
    sget-object v17, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .line 76
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 77
    .local v10, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v10}, Lcom/miui/enterprise/IApplicationManager$Stub;->installPackageWithPendingIntent(Ljava/lang/String;Landroid/app/PendingIntent;I)V

    .line 78
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    const/16 v17, 0x1

    return v17

    .line 73
    .end local v10    # "_arg2":I
    :cond_0
    const/4 v8, 0x0

    .local v8, "_arg1":Landroid/app/PendingIntent;
    goto :goto_0

    .line 83
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_3
    const-string/jumbo v17, "com.miui.enterprise.IApplicationManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 87
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 89
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/content/pm/IPackageDeleteObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver;

    move-result-object v11

    .line 91
    .local v11, "_arg2":Landroid/content/pm/IPackageDeleteObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 92
    .restart local v13    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7, v11, v13}, Lcom/miui/enterprise/IApplicationManager$Stub;->deletePackage(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;I)V

    .line 93
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    const/16 v17, 0x1

    return v17

    .line 98
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v11    # "_arg2":Landroid/content/pm/IPackageDeleteObserver;
    .end local v13    # "_arg3":I
    :sswitch_4
    const-string/jumbo v17, "com.miui.enterprise.IApplicationManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 102
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 104
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 105
    .restart local v10    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7, v10}, Lcom/miui/enterprise/IApplicationManager$Stub;->setApplicationSettings(Ljava/lang/String;II)V

    .line 106
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    const/16 v17, 0x1

    return v17

    .line 111
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v10    # "_arg2":I
    :sswitch_5
    const-string/jumbo v17, "com.miui.enterprise.IApplicationManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 115
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 116
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/miui/enterprise/IApplicationManager$Stub;->getApplicationSettings(Ljava/lang/String;I)I

    move-result v14

    .line 117
    .local v14, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    const/16 v17, 0x1

    return v17

    .line 123
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v14    # "_result":I
    :sswitch_6
    const-string/jumbo v17, "com.miui.enterprise.IApplicationManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_1

    .line 126
    sget-object v17, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 132
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 133
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v7}, Lcom/miui/enterprise/IApplicationManager$Stub;->setDeviceAdmin(Landroid/content/ComponentName;I)Z

    move-result v16

    .line 134
    .local v16, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    if-eqz v16, :cond_2

    const/16 v17, 0x1

    :goto_2
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    const/16 v17, 0x1

    return v17

    .line 129
    .end local v7    # "_arg1":I
    .end local v16    # "_result":Z
    :cond_1
    const/4 v3, 0x0

    .local v3, "_arg0":Landroid/content/ComponentName;
    goto :goto_1

    .line 135
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    .restart local v7    # "_arg1":I
    .restart local v16    # "_result":Z
    :cond_2
    const/16 v17, 0x0

    goto :goto_2

    .line 140
    .end local v7    # "_arg1":I
    .end local v16    # "_result":Z
    :sswitch_7
    const-string/jumbo v17, "com.miui.enterprise.IApplicationManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_3

    .line 143
    sget-object v17, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 149
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 150
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v7}, Lcom/miui/enterprise/IApplicationManager$Stub;->removeDeviceAdmin(Landroid/content/ComponentName;I)Z

    move-result v16

    .line 151
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    if-eqz v16, :cond_4

    const/16 v17, 0x1

    :goto_4
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    const/16 v17, 0x1

    return v17

    .line 146
    .end local v7    # "_arg1":I
    .end local v16    # "_result":Z
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3

    .line 152
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    .restart local v7    # "_arg1":I
    .restart local v16    # "_result":Z
    :cond_4
    const/16 v17, 0x0

    goto :goto_4

    .line 157
    .end local v7    # "_arg1":I
    .end local v16    # "_result":Z
    :sswitch_8
    const-string/jumbo v17, "com.miui.enterprise.IApplicationManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 161
    .local v5, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 162
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Lcom/miui/enterprise/IApplicationManager$Stub;->setApplicationBlackList(Ljava/util/List;I)V

    .line 163
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    const/16 v17, 0x1

    return v17

    .line 168
    .end local v5    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "_arg1":I
    :sswitch_9
    const-string/jumbo v17, "com.miui.enterprise.IApplicationManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 171
    .local v2, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/enterprise/IApplicationManager$Stub;->getApplicationBlackList(I)Ljava/util/List;

    move-result-object v15

    .line 172
    .local v15, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 174
    const/16 v17, 0x1

    return v17

    .line 178
    .end local v2    # "_arg0":I
    .end local v15    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_a
    const-string/jumbo v17, "com.miui.enterprise.IApplicationManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 182
    .restart local v5    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 183
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Lcom/miui/enterprise/IApplicationManager$Stub;->setApplicationWhiteList(Ljava/util/List;I)V

    .line 184
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    const/16 v17, 0x1

    return v17

    .line 189
    .end local v5    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "_arg1":I
    :sswitch_b
    const-string/jumbo v17, "com.miui.enterprise.IApplicationManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 192
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/enterprise/IApplicationManager$Stub;->getApplicationWhiteList(I)Ljava/util/List;

    move-result-object v15

    .line 193
    .restart local v15    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 195
    const/16 v17, 0x1

    return v17

    .line 199
    .end local v2    # "_arg0":I
    .end local v15    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_c
    const-string/jumbo v17, "com.miui.enterprise.IApplicationManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 203
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 204
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/miui/enterprise/IApplicationManager$Stub;->setApplicationRestriction(II)V

    .line 205
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    const/16 v17, 0x1

    return v17

    .line 210
    .end local v2    # "_arg0":I
    .end local v7    # "_arg1":I
    :sswitch_d
    const-string/jumbo v17, "com.miui.enterprise.IApplicationManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 213
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/enterprise/IApplicationManager$Stub;->getApplicationRestriction(I)I

    move-result v14

    .line 214
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    const/16 v17, 0x1

    return v17

    .line 220
    .end local v2    # "_arg0":I
    .end local v14    # "_result":I
    :sswitch_e
    const-string/jumbo v17, "com.miui.enterprise.IApplicationManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 224
    .restart local v5    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 225
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Lcom/miui/enterprise/IApplicationManager$Stub;->setDisallowedRunningAppList(Ljava/util/List;I)V

    .line 226
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    const/16 v17, 0x1

    return v17

    .line 231
    .end local v5    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "_arg1":I
    :sswitch_f
    const-string/jumbo v17, "com.miui.enterprise.IApplicationManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 234
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/enterprise/IApplicationManager$Stub;->getDisallowedRunningAppList(I)Ljava/util/List;

    move-result-object v15

    .line 235
    .restart local v15    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 237
    const/16 v17, 0x1

    return v17

    .line 241
    .end local v2    # "_arg0":I
    .end local v15    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_10
    const-string/jumbo v17, "com.miui.enterprise.IApplicationManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 245
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 246
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/miui/enterprise/IApplicationManager$Stub;->killProcess(Ljava/lang/String;I)V

    .line 247
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    const/16 v17, 0x1

    return v17

    .line 252
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    :sswitch_11
    const-string/jumbo v17, "com.miui.enterprise.IApplicationManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_5

    .line 255
    sget-object v17, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 261
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_6

    const/4 v9, 0x1

    .line 262
    .local v9, "_arg1":Z
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9}, Lcom/miui/enterprise/IApplicationManager$Stub;->enableAccessibilityService(Landroid/content/ComponentName;Z)V

    .line 263
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    const/16 v17, 0x1

    return v17

    .line 258
    .end local v9    # "_arg1":Z
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5

    .line 261
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    :cond_6
    const/4 v9, 0x0

    goto :goto_6

    .line 268
    :sswitch_12
    const-string/jumbo v17, "com.miui.enterprise.IApplicationManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 272
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 273
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/miui/enterprise/IApplicationManager$Stub;->clearApplicationUserData(Ljava/lang/String;I)V

    .line 274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    const/16 v17, 0x1

    return v17

    .line 279
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    :sswitch_13
    const-string/jumbo v17, "com.miui.enterprise.IApplicationManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 283
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 284
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/miui/enterprise/IApplicationManager$Stub;->clearApplicationCache(Ljava/lang/String;I)V

    .line 285
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    const/16 v17, 0x1

    return v17

    .line 290
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    :sswitch_14
    const-string/jumbo v17, "com.miui.enterprise.IApplicationManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 294
    .restart local v5    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 295
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Lcom/miui/enterprise/IApplicationManager$Stub;->addTrustedAppStore(Ljava/util/List;I)V

    .line 296
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    const/16 v17, 0x1

    return v17

    .line 301
    .end local v5    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "_arg1":I
    :sswitch_15
    const-string/jumbo v17, "com.miui.enterprise.IApplicationManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 304
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/enterprise/IApplicationManager$Stub;->getTrustedAppStore(I)Ljava/util/List;

    move-result-object v15

    .line 305
    .restart local v15    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 307
    const/16 v17, 0x1

    return v17

    .line 311
    .end local v2    # "_arg0":I
    .end local v15    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_16
    const-string/jumbo v17, "com.miui.enterprise.IApplicationManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_7

    const/4 v6, 0x1

    .line 315
    .local v6, "_arg0":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 316
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/miui/enterprise/IApplicationManager$Stub;->enableTrustedAppStore(ZI)V

    .line 317
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    const/16 v17, 0x1

    return v17

    .line 313
    .end local v6    # "_arg0":Z
    .end local v7    # "_arg1":I
    :cond_7
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Z
    goto :goto_7

    .line 322
    .end local v6    # "_arg0":Z
    :sswitch_17
    const-string/jumbo v17, "com.miui.enterprise.IApplicationManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 325
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/enterprise/IApplicationManager$Stub;->isTrustedAppStoreEnabled(I)Z

    move-result v16

    .line 326
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    if-eqz v16, :cond_8

    const/16 v17, 0x1

    :goto_8
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    const/16 v17, 0x1

    return v17

    .line 327
    :cond_8
    const/16 v17, 0x0

    goto :goto_8

    .line 332
    .end local v2    # "_arg0":I
    .end local v16    # "_result":Z
    :sswitch_18
    const-string/jumbo v17, "com.miui.enterprise.IApplicationManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 336
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_9

    const/4 v9, 0x1

    .line 338
    .local v9, "_arg1":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 339
    .restart local v10    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9, v10}, Lcom/miui/enterprise/IApplicationManager$Stub;->setApplicationEnabled(Ljava/lang/String;ZI)V

    .line 340
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    const/16 v17, 0x1

    return v17

    .line 336
    .end local v9    # "_arg1":Z
    .end local v10    # "_arg2":I
    :cond_9
    const/4 v9, 0x0

    .restart local v9    # "_arg1":Z
    goto :goto_9

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
