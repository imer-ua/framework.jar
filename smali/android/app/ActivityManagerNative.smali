.class public abstract Landroid/app/ActivityManagerNative;
.super Landroid/os/Binder;
.source "ActivityManagerNative.java"

# interfaces
.implements Landroid/app/IActivityManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManagerNative$1;
    }
.end annotation


# static fields
.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Landroid/app/IActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field static volatile sSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 3125
    new-instance v0, Landroid/app/ActivityManagerNative$1;

    invoke-direct {v0}, Landroid/app/ActivityManagerNative$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 145
    const-string/jumbo v0, "android.app.IActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ActivityManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 73
    if-nez p0, :cond_0

    .line 74
    return-object v1

    .line 77
    :cond_0
    const-string/jumbo v1, "android.app.IActivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    .line 78
    .local v0, "in":Landroid/app/IActivityManager;
    if-eqz v0, :cond_1

    .line 79
    return-object v0

    .line 82
    :cond_1
    new-instance v1, Landroid/app/ActivityManagerProxy;

    invoke-direct {v1, p0}, Landroid/app/ActivityManagerProxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 104
    const/4 v0, -0x1

    invoke-static {p0, p1, v0, p2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;II)V

    .line 103
    return-void
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;II)V
    .locals 15
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "appOp"    # I
    .param p3, "userId"    # I

    .prologue
    .line 114
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 115
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 116
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v2, p0

    move/from16 v9, p2

    move/from16 v13, p3

    .line 114
    invoke-interface/range {v0 .. v13}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v14

    .local v14, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static getDefault()Landroid/app/IActivityManager;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    return-object v0
.end method

.method public static isSystemReady()Z
    .locals 1

    .prologue
    .line 96
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    if-nez v0, :cond_0

    .line 97
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->testIsSystemReady()Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 99
    :cond_0
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    return v0
.end method

.method public static noteAlarmFinish(Landroid/app/PendingIntent;ILjava/lang/String;)V
    .locals 3
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "sourceUid"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 139
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    :cond_0
    invoke-interface {v2, v1, p1, p2}, Landroid/app/IActivityManager;->noteAlarmFinish(Landroid/content/IIntentSender;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static noteAlarmStart(Landroid/app/PendingIntent;ILjava/lang/String;)V
    .locals 3
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "sourceUid"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 132
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    :cond_0
    invoke-interface {v2, v1, p1, p2}, Landroid/app/IActivityManager;->noteAlarmStart(Landroid/content/IIntentSender;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static noteWakeupAlarm(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "sourceUid"    # I
    .param p2, "sourcePkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 124
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    :cond_0
    invoke-interface {v2, v1, p1, p2, p3}, Landroid/app/IActivityManager;->noteWakeupAlarm(Landroid/content/IIntentSender;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private readIntArray(Landroid/os/Parcel;)[I
    .locals 2
    .param p1, "data"    # Landroid/os/Parcel;

    .prologue
    .line 3112
    const/4 v0, 0x0

    .line 3113
    .local v0, "smallest":[I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3114
    .local v1, "smallestSize":I
    if-lez v1, :cond_0

    .line 3115
    new-array v0, v1, [I

    .line 3116
    .local v0, "smallest":[I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 3118
    .end local v0    # "smallest":[I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 3122
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 386
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
    .line 151
    move/from16 v0, p1

    sparse-switch v0, :sswitch_data_0

    .line 3108
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 154
    :sswitch_0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v220

    .line 156
    .local v220, "b":Landroid/os/IBinder;
    invoke-static/range {v220 .. v220}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 157
    .local v7, "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 158
    .local v8, "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 159
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 160
    .local v10, "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 161
    .local v11, "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 162
    .local v12, "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 163
    .local v13, "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 164
    .local v14, "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    .line 165
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    .line 166
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    .line 167
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .local v16, "options":Landroid/os/Bundle;
    :goto_1
    move-object/from16 v6, p0

    .line 168
    invoke-virtual/range {v6 .. v16}, Landroid/app/ActivityManagerNative;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v0

    move/16 v343, v0

    .line 170
    .local v343, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    move-object/from16 v0, p3

    move/from16 v1, v343

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    const/4 v6, 0x1

    return v6

    .line 165
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v343    # "result":I
    :cond_0
    const/4 v15, 0x0

    .local v15, "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_0

    .line 167
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_1
    const/16 v16, 0x0

    goto :goto_1

    .line 177
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v220    # "b":Landroid/os/IBinder;
    :sswitch_1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v220

    .line 179
    .restart local v220    # "b":Landroid/os/IBinder;
    invoke-static/range {v220 .. v220}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 180
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 181
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 182
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 183
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 184
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 185
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 186
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 187
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    .line 188
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    .line 189
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    .line 190
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 191
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .local v17, "userId":I
    move-object/from16 v6, p0

    .line 192
    invoke-virtual/range {v6 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    move/16 v343, v0

    .line 194
    .restart local v343    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    move-object/from16 v0, p3

    move/from16 v1, v343

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    const/4 v6, 0x1

    return v6

    .line 188
    .end local v17    # "userId":I
    .end local v343    # "result":I
    :cond_2
    const/4 v15, 0x0

    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_2

    .line 190
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_3
    const/16 v16, 0x0

    .local v16, "options":Landroid/os/Bundle;
    goto :goto_3

    .line 201
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v220    # "b":Landroid/os/IBinder;
    :sswitch_2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v220

    .line 203
    .restart local v220    # "b":Landroid/os/IBinder;
    invoke-static/range {v220 .. v220}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 204
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 205
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 206
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 207
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 208
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 209
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 210
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 211
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    .line 212
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    .line 213
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    .line 214
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 215
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    const/16 v29, 0x1

    .line 216
    .local v29, "ignoreTargetSecurity":Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v18, p0

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v25, v13

    move/from16 v26, v14

    move-object/from16 v27, v15

    move-object/from16 v28, v16

    move/from16 v30, v17

    .line 217
    invoke-virtual/range {v18 .. v30}, Landroid/app/ActivityManagerNative;->startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I

    move-result v0

    move/16 v343, v0

    .line 220
    .restart local v343    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    move-object/from16 v0, p3

    move/from16 v1, v343

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    const/4 v6, 0x1

    return v6

    .line 212
    .end local v17    # "userId":I
    .end local v29    # "ignoreTargetSecurity":Z
    .end local v343    # "result":I
    :cond_4
    const/4 v15, 0x0

    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_4

    .line 214
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_5
    const/16 v16, 0x0

    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_5

    .line 215
    .end local v16    # "options":Landroid/os/Bundle;
    :cond_6
    const/16 v29, 0x0

    .restart local v29    # "ignoreTargetSecurity":Z
    goto :goto_6

    .line 227
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v29    # "ignoreTargetSecurity":Z
    .end local v220    # "b":Landroid/os/IBinder;
    :sswitch_3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v220

    .line 229
    .restart local v220    # "b":Landroid/os/IBinder;
    invoke-static/range {v220 .. v220}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 230
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 231
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 232
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 233
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 234
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 235
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 236
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 237
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    .line 238
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    .line 239
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    .line 240
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 241
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v6, p0

    .line 242
    invoke-virtual/range {v6 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/IActivityManager$WaitResult;

    move-result-object v0

    move-object/16 v344, v0

    .line 244
    .local v344, "result":Landroid/app/IActivityManager$WaitResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    const/4 v6, 0x0

    move-object/from16 v0, v344

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$WaitResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 246
    const/4 v6, 0x1

    return v6

    .line 238
    .end local v17    # "userId":I
    .end local v344    # "result":Landroid/app/IActivityManager$WaitResult;
    :cond_7
    const/4 v15, 0x0

    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_7

    .line 240
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_8
    const/16 v16, 0x0

    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_8

    .line 251
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v220    # "b":Landroid/os/IBinder;
    :sswitch_4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v220

    .line 253
    .restart local v220    # "b":Landroid/os/IBinder;
    invoke-static/range {v220 .. v220}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 254
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 255
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 256
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 257
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 258
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 259
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 260
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 261
    .restart local v14    # "startFlags":I
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/res/Configuration;

    .line 262
    .local v39, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    .line 263
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 264
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v30, p0

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v34, v10

    move-object/from16 v35, v11

    move-object/from16 v36, v12

    move/from16 v37, v13

    move/from16 v38, v14

    move-object/from16 v40, v16

    move/from16 v41, v17

    .line 265
    invoke-virtual/range {v30 .. v41}, Landroid/app/ActivityManagerNative;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v0

    move/16 v343, v0

    .line 267
    .restart local v343    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    move-object/from16 v0, p3

    move/from16 v1, v343

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    const/4 v6, 0x1

    return v6

    .line 263
    .end local v17    # "userId":I
    .end local v343    # "result":I
    :cond_9
    const/16 v16, 0x0

    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_9

    .line 274
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v39    # "config":Landroid/content/res/Configuration;
    .end local v220    # "b":Landroid/os/IBinder;
    :sswitch_5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v220

    .line 276
    .restart local v220    # "b":Landroid/os/IBinder;
    invoke-static/range {v220 .. v220}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 277
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/IntentSender;

    .line 278
    .local v20, "intent":Landroid/content/IntentSender;
    const/16 v21, 0x0

    .line 279
    .local v21, "fillInIntent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    .line 280
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "fillInIntent":Landroid/content/Intent;
    check-cast v21, Landroid/content/Intent;

    .line 282
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 283
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 284
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 285
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 286
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 287
    .local v26, "flagsMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 288
    .local v27, "flagsValues":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    .line 289
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .local v16, "options":Landroid/os/Bundle;
    :goto_a
    move-object/from16 v18, p0

    move-object/from16 v19, v7

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v25, v13

    move-object/from16 v28, v16

    .line 290
    invoke-virtual/range {v18 .. v28}, Landroid/app/ActivityManagerNative;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v0

    move/16 v343, v0

    .line 293
    .restart local v343    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    move-object/from16 v0, p3

    move/from16 v1, v343

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    const/4 v6, 0x1

    return v6

    .line 289
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v343    # "result":I
    :cond_b
    const/16 v16, 0x0

    goto :goto_a

    .line 300
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v20    # "intent":Landroid/content/IntentSender;
    .end local v26    # "flagsMask":I
    .end local v27    # "flagsValues":I
    .end local v220    # "b":Landroid/os/IBinder;
    :sswitch_6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 302
    .restart local v8    # "callingPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 303
    .local v42, "callingPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 304
    .local v43, "callingUid":I
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 305
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 307
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 306
    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v46

    .line 309
    .local v46, "session":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 308
    invoke-static {v6}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v47

    .line 310
    .local v47, "interactor":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 311
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    .line 312
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    .line 313
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    .line 314
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 315
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v40, p0

    move-object/from16 v41, v8

    move-object/from16 v44, v9

    move-object/from16 v45, v10

    move/from16 v48, v14

    move-object/from16 v49, v15

    move-object/from16 v50, v16

    move/from16 v51, v17

    .line 316
    invoke-virtual/range {v40 .. v51}, Landroid/app/ActivityManagerNative;->startVoiceActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    move/16 v343, v0

    .line 318
    .restart local v343    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    move-object/from16 v0, p3

    move/from16 v1, v343

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    const/4 v6, 0x1

    return v6

    .line 312
    .end local v17    # "userId":I
    .end local v343    # "result":I
    :cond_c
    const/4 v15, 0x0

    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_b

    .line 314
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_d
    const/16 v16, 0x0

    .local v16, "options":Landroid/os/Bundle;
    goto :goto_c

    .line 325
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v14    # "startFlags":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v42    # "callingPid":I
    .end local v43    # "callingUid":I
    .end local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    .end local v47    # "interactor":Lcom/android/internal/app/IVoiceInteractor;
    :sswitch_7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 327
    .local v101, "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v16

    .line 328
    .local v16, "options":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 329
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    const/4 v6, 0x1

    return v6

    .line 335
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v101    # "token":Landroid/os/IBinder;
    :sswitch_8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 337
    .restart local v101    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->stopLocalVoiceInteraction(Landroid/os/IBinder;)V

    .line 338
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    const/4 v6, 0x1

    return v6

    .line 344
    .end local v101    # "token":Landroid/os/IBinder;
    :sswitch_9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->supportsLocalVoiceInteraction()Z

    move-result v0

    move/16 v345, v0

    .line 346
    .local v345, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    move/from16 v0, v345

    if-eqz v0, :cond_e

    const/4 v6, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    const/4 v6, 0x1

    return v6

    .line 347
    :cond_e
    const/4 v6, 0x0

    goto :goto_d

    .line 353
    .end local v345    # "result":Z
    :sswitch_a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v228

    .line 355
    .local v228, "callingActivity":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 356
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f

    .line 357
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 358
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v228

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v0

    move/16 v345, v0

    .line 359
    .restart local v345    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    move/from16 v0, v345

    if-eqz v0, :cond_10

    const/4 v6, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    const/4 v6, 0x1

    return v6

    .line 357
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v345    # "result":Z
    :cond_f
    const/16 v16, 0x0

    goto :goto_e

    .line 360
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v345    # "result":Z
    :cond_10
    const/4 v6, 0x0

    goto :goto_f

    .line 366
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v228    # "callingActivity":Landroid/os/IBinder;
    .end local v345    # "result":Z
    :sswitch_b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 369
    .local v69, "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_11

    const/16 v16, 0x0

    .line 370
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_10
    move-object/from16 v0, p0

    move/from16 v1, v69

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->startActivityFromRecents(ILandroid/os/Bundle;)I

    move-result v0

    move/16 v343, v0

    .line 371
    .restart local v343    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    move-object/from16 v0, p3

    move/from16 v1, v343

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    const/4 v6, 0x1

    return v6

    .line 369
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v343    # "result":I
    :cond_11
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    goto :goto_10

    .line 377
    .end local v69    # "taskId":I
    :sswitch_c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 379
    .restart local v101    # "token":Landroid/os/IBinder;
    const/4 v0, 0x0

    move-object/16 v347, v0

    .line 380
    .local v347, "resultData":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 381
    .local v53, "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12

    .line 382
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v347, v0

    .end local v347    # "resultData":Landroid/content/Intent;
    move-object/from16 v0, v347

    check-cast v0, Landroid/content/Intent;

    move-object/16 v347, v0

    .line 384
    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v245

    .line 385
    .local v245, "finishTask":I
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move/from16 v2, v53

    move-object/from16 v3, v347

    move/from16 v4, v245

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    move-result v0

    move/16 v339, v0

    .line 386
    .local v339, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    move/from16 v0, v339

    if-eqz v0, :cond_13

    const/4 v6, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    const/4 v6, 0x1

    return v6

    .line 387
    :cond_13
    const/4 v6, 0x0

    goto :goto_11

    .line 392
    .end local v53    # "resultCode":I
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v245    # "finishTask":I
    .end local v339    # "res":Z
    :sswitch_d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 394
    .restart local v101    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 395
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 396
    .restart local v13    # "requestCode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1, v12, v13}, Landroid/app/ActivityManagerNative;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    const/4 v6, 0x1

    return v6

    .line 402
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v101    # "token":Landroid/os/IBinder;
    :sswitch_e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 404
    .restart local v101    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v339, v0

    .line 405
    .restart local v339    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    move/from16 v0, v339

    if-eqz v0, :cond_14

    const/4 v6, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    const/4 v6, 0x1

    return v6

    .line 406
    :cond_14
    const/4 v6, 0x0

    goto :goto_12

    .line 411
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v339    # "res":Z
    :sswitch_f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 412
    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v46

    .line 414
    .restart local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 415
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    const/4 v6, 0x1

    return v6

    .line 420
    .end local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    :sswitch_10
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 422
    .restart local v101    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->releaseActivityInstance(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v339, v0

    .line 423
    .restart local v339    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    move/from16 v0, v339

    if-eqz v0, :cond_15

    const/4 v6, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    const/4 v6, 0x1

    return v6

    .line 424
    :cond_15
    const/4 v6, 0x0

    goto :goto_13

    .line 429
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v339    # "res":Z
    :sswitch_11
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 431
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/ActivityManagerNative;->releaseSomeActivities(Landroid/app/IApplicationThread;)V

    .line 432
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    const/4 v6, 0x1

    return v6

    .line 437
    .end local v7    # "app":Landroid/app/IApplicationThread;
    :sswitch_12
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 439
    .restart local v101    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v339, v0

    .line 440
    .restart local v339    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    move/from16 v0, v339

    if-eqz v0, :cond_16

    const/4 v6, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    const/4 v6, 0x1

    return v6

    .line 441
    :cond_16
    const/4 v6, 0x0

    goto :goto_14

    .line 447
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v339    # "res":Z
    :sswitch_13
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v220

    .line 450
    .restart local v220    # "b":Landroid/os/IBinder;
    if-eqz v220, :cond_17

    invoke-static/range {v220 .. v220}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 451
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 452
    .local v32, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v220

    .line 454
    if-eqz v220, :cond_18

    invoke-static/range {v220 .. v220}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v33

    .line 455
    :goto_16
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/IntentFilter;

    .line 456
    .local v34, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 457
    .local v35, "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v30, p0

    move-object/from16 v31, v7

    move/from16 v36, v17

    .line 458
    invoke-virtual/range {v30 .. v36}, Landroid/app/ActivityManagerNative;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v9

    .line 459
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    if-eqz v9, :cond_19

    .line 461
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 466
    :goto_17
    const/4 v6, 0x1

    return v6

    .line 450
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v34    # "filter":Landroid/content/IntentFilter;
    .end local v35    # "perm":Ljava/lang/String;
    :cond_17
    const/4 v7, 0x0

    .local v7, "app":Landroid/app/IApplicationThread;
    goto :goto_15

    .line 454
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .restart local v32    # "packageName":Ljava/lang/String;
    :cond_18
    const/16 v33, 0x0

    .local v33, "rec":Landroid/content/IIntentReceiver;
    goto :goto_16

    .line 464
    .end local v33    # "rec":Landroid/content/IIntentReceiver;
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v17    # "userId":I
    .restart local v34    # "filter":Landroid/content/IntentFilter;
    .restart local v35    # "perm":Ljava/lang/String;
    :cond_19
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .line 471
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v34    # "filter":Landroid/content/IntentFilter;
    .end local v35    # "perm":Ljava/lang/String;
    .end local v220    # "b":Landroid/os/IBinder;
    :sswitch_14
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v220

    .line 473
    .restart local v220    # "b":Landroid/os/IBinder;
    if-nez v220, :cond_1a

    .line 474
    const/4 v6, 0x1

    return v6

    .line 476
    :cond_1a
    invoke-static/range {v220 .. v220}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v33

    .line 477
    .local v33, "rec":Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 478
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    const/4 v6, 0x1

    return v6

    .line 484
    .end local v33    # "rec":Landroid/content/IIntentReceiver;
    .end local v220    # "b":Landroid/os/IBinder;
    :sswitch_15
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v220

    .line 487
    .restart local v220    # "b":Landroid/os/IBinder;
    if-eqz v220, :cond_1b

    invoke-static/range {v220 .. v220}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 488
    :goto_18
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 489
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 490
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v220

    .line 492
    if-eqz v220, :cond_1c

    invoke-static/range {v220 .. v220}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v52

    .line 493
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 494
    .restart local v53    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v54

    .line 495
    .local v54, "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v55

    .line 496
    .local v55, "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v56

    .line 497
    .local v56, "perms":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v57

    .line 498
    .local v57, "appOp":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v16

    .line 499
    .restart local v16    # "options":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1d

    const/16 v59, 0x1

    .line 500
    .local v59, "serialized":Z
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1e

    const/16 v60, 0x1

    .line 501
    .local v60, "sticky":Z
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v48, p0

    move-object/from16 v49, v7

    move-object/from16 v50, v9

    move-object/from16 v51, v10

    move-object/from16 v58, v16

    move/from16 v61, v17

    .line 502
    invoke-virtual/range {v48 .. v61}, Landroid/app/ActivityManagerNative;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    move-result v0

    move/16 v333, v0

    .line 505
    .local v333, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    move-object/from16 v0, p3

    move/from16 v1, v333

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    const/4 v6, 0x1

    return v6

    .line 487
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Ljava/lang/String;
    .end local v55    # "resultExtras":Landroid/os/Bundle;
    .end local v56    # "perms":[Ljava/lang/String;
    .end local v57    # "appOp":I
    .end local v59    # "serialized":Z
    .end local v60    # "sticky":Z
    .end local v333    # "res":I
    :cond_1b
    const/4 v7, 0x0

    .restart local v7    # "app":Landroid/app/IApplicationThread;
    goto :goto_18

    .line 492
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v10    # "resolvedType":Ljava/lang/String;
    :cond_1c
    const/16 v52, 0x0

    .local v52, "resultTo":Landroid/content/IIntentReceiver;
    goto :goto_19

    .line 499
    .end local v52    # "resultTo":Landroid/content/IIntentReceiver;
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v53    # "resultCode":I
    .restart local v54    # "resultData":Ljava/lang/String;
    .restart local v55    # "resultExtras":Landroid/os/Bundle;
    .restart local v56    # "perms":[Ljava/lang/String;
    .restart local v57    # "appOp":I
    :cond_1d
    const/16 v59, 0x0

    .restart local v59    # "serialized":Z
    goto :goto_1a

    .line 500
    :cond_1e
    const/16 v60, 0x0

    .restart local v60    # "sticky":Z
    goto :goto_1b

    .line 512
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Ljava/lang/String;
    .end local v55    # "resultExtras":Landroid/os/Bundle;
    .end local v56    # "perms":[Ljava/lang/String;
    .end local v57    # "appOp":I
    .end local v59    # "serialized":Z
    .end local v60    # "sticky":Z
    .end local v220    # "b":Landroid/os/IBinder;
    :sswitch_16
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v220

    .line 514
    .restart local v220    # "b":Landroid/os/IBinder;
    if-eqz v220, :cond_1f

    invoke-static/range {v220 .. v220}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 515
    :goto_1c
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 516
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 517
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v7, v9, v1}, Landroid/app/ActivityManagerNative;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V

    .line 518
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    const/4 v6, 0x1

    return v6

    .line 514
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    :cond_1f
    const/4 v7, 0x0

    .restart local v7    # "app":Landroid/app/IApplicationThread;
    goto :goto_1c

    .line 523
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v220    # "b":Landroid/os/IBinder;
    :sswitch_17
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v62

    .line 525
    .local v62, "who":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 526
    .restart local v53    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v54

    .line 527
    .restart local v54    # "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v55

    .line 528
    .restart local v55    # "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_21

    const/16 v66, 0x1

    .line 529
    .local v66, "resultAbort":Z
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v67

    .line 530
    .local v67, "intentFlags":I
    if-eqz v62, :cond_20

    move-object/from16 v61, p0

    move/from16 v63, v53

    move-object/from16 v64, v54

    move-object/from16 v65, v55

    .line 531
    invoke-virtual/range {v61 .. v67}, Landroid/app/ActivityManagerNative;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V

    .line 533
    :cond_20
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    const/4 v6, 0x1

    return v6

    .line 528
    .end local v66    # "resultAbort":Z
    .end local v67    # "intentFlags":I
    :cond_21
    const/16 v66, 0x0

    .restart local v66    # "resultAbort":Z
    goto :goto_1d

    .line 538
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Ljava/lang/String;
    .end local v55    # "resultExtras":Landroid/os/Bundle;
    .end local v62    # "who":Landroid/os/IBinder;
    .end local v66    # "resultAbort":Z
    :sswitch_18
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 539
    invoke-static {v6}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 541
    .local v7, "app":Landroid/app/IApplicationThread;
    if-eqz v7, :cond_22

    .line 542
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/ActivityManagerNative;->attachApplication(Landroid/app/IApplicationThread;)V

    .line 544
    :cond_22
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    const/4 v6, 0x1

    return v6

    .line 549
    .end local v7    # "app":Landroid/app/IApplicationThread;
    :sswitch_19
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 550
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 551
    .restart local v101    # "token":Landroid/os/IBinder;
    const/16 v39, 0x0

    .line 552
    .local v39, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_23

    .line 553
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    .end local v39    # "config":Landroid/content/res/Configuration;
    check-cast v39, Landroid/content/res/Configuration;

    .line 555
    :cond_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_25

    const/4 v0, 0x1

    move/16 v360, v0

    .line 556
    .local v360, "stopProfiling":Z
    :goto_1e
    if-eqz v101, :cond_24

    .line 557
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move-object/from16 v2, v39

    move/from16 v3, v360

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    .line 559
    :cond_24
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    const/4 v6, 0x1

    return v6

    .line 555
    .end local v360    # "stopProfiling":Z
    :cond_25
    const/4 v0, 0x0

    move/16 v360, v0

    .restart local v360    # "stopProfiling":Z
    goto :goto_1e

    .line 564
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v360    # "stopProfiling":Z
    :sswitch_1a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 566
    .restart local v101    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityResumed(Landroid/os/IBinder;)V

    .line 567
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    const/4 v6, 0x1

    return v6

    .line 572
    .end local v101    # "token":Landroid/os/IBinder;
    :sswitch_1b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 574
    .restart local v101    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityPaused(Landroid/os/IBinder;)V

    .line 575
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    const/4 v6, 0x1

    return v6

    .line 580
    .end local v101    # "token":Landroid/os/IBinder;
    :sswitch_1c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 581
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 582
    .restart local v101    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    move-object/16 v295, v0

    .line 583
    .local v295, "map":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    move-object/16 v318, v0

    .line 584
    .local v318, "persistentState":Landroid/os/PersistableBundle;
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v236

    check-cast v236, Ljava/lang/CharSequence;

    .line 585
    .local v236, "description":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move-object/from16 v2, v295

    move-object/from16 v3, v318

    move-object/from16 v4, v236

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

    .line 586
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    const/4 v6, 0x1

    return v6

    .line 591
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v236    # "description":Ljava/lang/CharSequence;
    .end local v295    # "map":Landroid/os/Bundle;
    .end local v318    # "persistentState":Landroid/os/PersistableBundle;
    :sswitch_1d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 593
    .restart local v101    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activitySlept(Landroid/os/IBinder;)V

    .line 594
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    const/4 v6, 0x1

    return v6

    .line 599
    .end local v101    # "token":Landroid/os/IBinder;
    :sswitch_1e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 601
    .restart local v101    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityDestroyed(Landroid/os/IBinder;)V

    .line 602
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    const/4 v6, 0x1

    return v6

    .line 607
    .end local v101    # "token":Landroid/os/IBinder;
    :sswitch_1f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 609
    .restart local v101    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityRelaunched(Landroid/os/IBinder;)V

    .line 610
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    const/4 v6, 0x1

    return v6

    .line 615
    .end local v101    # "token":Landroid/os/IBinder;
    :sswitch_20
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 617
    .restart local v101    # "token":Landroid/os/IBinder;
    if-eqz v101, :cond_26

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    move-object/16 v338, v0

    .line 618
    :goto_1f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    move-object/from16 v0, p3

    move-object/from16 v1, v338

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 620
    const/4 v6, 0x1

    return v6

    .line 617
    :cond_26
    const/4 v0, 0x0

    move-object/16 v338, v0

    .local v338, "res":Ljava/lang/String;
    goto :goto_1f

    .line 624
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v338    # "res":Ljava/lang/String;
    :sswitch_21
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 626
    .restart local v101    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v230

    .line 627
    .local v230, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    move-object/from16 v0, v230

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 629
    const/4 v6, 0x1

    return v6

    .line 633
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v230    # "cn":Landroid/content/ComponentName;
    :sswitch_22
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 635
    .restart local v8    # "callingPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/app/ActivityManagerNative;->getAppTasks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move-object/16 v291, v0

    .line 636
    .local v291, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    move-object/from16 v0, v291

    if-eqz v0, :cond_27

    invoke-interface/range {v291 .. v291}, Ljava/util/List;->size()I

    move-result v88

    .line 638
    .local v88, "N":I
    :goto_20
    move-object/from16 v0, p3

    move/from16 v1, v88

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 640
    const/4 v0, 0x0

    move/16 v259, v0

    .local v259, "i":I
    :goto_21
    move/from16 v0, v259

    move/from16 v1, v88

    if-ge v0, v1, :cond_28

    .line 641
    move-object/from16 v0, v291

    move/from16 v1, v259

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v367, v0

    move-object/from16 v0, v367

    check-cast v0, Landroid/app/IAppTask;

    move-object/16 v367, v0

    .line 642
    .local v367, "task":Landroid/app/IAppTask;
    invoke-interface/range {v367 .. v367}, Landroid/app/IAppTask;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 640
    move/from16 v0, v259

    add-int/lit8 v0, v0, 0x1

    move/16 v259, v0

    goto :goto_21

    .line 637
    .end local v88    # "N":I
    .end local v259    # "i":I
    .end local v367    # "task":Landroid/app/IAppTask;
    :cond_27
    const/16 v88, -0x1

    goto :goto_20

    .line 644
    .restart local v88    # "N":I
    .restart local v259    # "i":I
    :cond_28
    const/4 v6, 0x1

    return v6

    .line 648
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v88    # "N":I
    .end local v259    # "i":I
    .end local v291    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    :sswitch_23
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v181

    .line 650
    .local v181, "activityToken":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 652
    .restart local v9    # "intent":Landroid/content/Intent;
    sget-object v6, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v235

    check-cast v235, Landroid/app/ActivityManager$TaskDescription;

    .line 653
    .local v235, "descr":Landroid/app/ActivityManager$TaskDescription;
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v370, v0

    move-object/from16 v0, v370

    check-cast v0, Landroid/graphics/Bitmap;

    move-object/16 v370, v0

    .line 654
    .local v370, "thumbnail":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    move-object/from16 v1, v181

    move-object/from16 v2, v235

    move-object/from16 v3, v370

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/app/ActivityManagerNative;->addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I

    move-result v0

    move/16 v333, v0

    .line 655
    .restart local v333    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    move-object/from16 v0, p3

    move/from16 v1, v333

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 657
    const/4 v6, 0x1

    return v6

    .line 661
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v181    # "activityToken":Landroid/os/IBinder;
    .end local v235    # "descr":Landroid/app/ActivityManager$TaskDescription;
    .end local v333    # "res":I
    .end local v370    # "thumbnail":Landroid/graphics/Bitmap;
    :sswitch_24
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 662
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getAppTaskThumbnailSize()Landroid/graphics/Point;

    move-result-object v0

    move-object/16 v354, v0

    .line 663
    .local v354, "size":Landroid/graphics/Point;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    const/4 v6, 0x0

    move-object/from16 v0, v354

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 665
    const/4 v6, 0x1

    return v6

    .line 669
    .end local v354    # "size":Landroid/graphics/Point;
    :sswitch_25
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 670
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v297, v0

    .line 671
    .local v297, "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v111

    .line 672
    .local v111, "fl":I
    move-object/from16 v0, p0

    move/from16 v1, v297

    move/from16 v2, v111

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTasks(II)Ljava/util/List;

    move-result-object v0

    move-object/16 v289, v0

    .line 673
    .local v289, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 674
    move-object/from16 v0, v289

    if-eqz v0, :cond_29

    invoke-interface/range {v289 .. v289}, Ljava/util/List;->size()I

    move-result v88

    .line 675
    .restart local v88    # "N":I
    :goto_22
    move-object/from16 v0, p3

    move/from16 v1, v88

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 677
    const/4 v0, 0x0

    move/16 v259, v0

    .restart local v259    # "i":I
    :goto_23
    move/from16 v0, v259

    move/from16 v1, v88

    if-ge v0, v1, :cond_2a

    .line 678
    move-object/from16 v0, v289

    move/from16 v1, v259

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v268, v0

    move-object/from16 v0, v268

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/16 v268, v0

    .line 679
    .local v268, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v6, 0x0

    move-object/from16 v0, v268

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 677
    move/from16 v0, v259

    add-int/lit8 v0, v0, 0x1

    move/16 v259, v0

    goto :goto_23

    .line 674
    .end local v88    # "N":I
    .end local v259    # "i":I
    .end local v268    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_29
    const/16 v88, -0x1

    goto :goto_22

    .line 681
    .restart local v88    # "N":I
    .restart local v259    # "i":I
    :cond_2a
    const/4 v6, 0x1

    return v6

    .line 685
    .end local v88    # "N":I
    .end local v111    # "fl":I
    .end local v259    # "i":I
    .end local v289    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v297    # "maxNum":I
    :sswitch_26
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v297, v0

    .line 687
    .restart local v297    # "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v111

    .line 688
    .restart local v111    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 689
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v297

    move/from16 v2, v111

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    move-object/16 v285, v0

    .line 691
    .local v285, "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    const/4 v6, 0x1

    move-object/from16 v0, v285

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 693
    const/4 v6, 0x1

    return v6

    .line 697
    .end local v17    # "userId":I
    .end local v111    # "fl":I
    .end local v285    # "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v297    # "maxNum":I
    :sswitch_27
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v102

    .line 699
    .local v102, "id":I
    move-object/from16 v0, p0

    move/from16 v1, v102

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;

    move-result-object v0

    move-object/16 v368, v0

    .line 700
    .local v368, "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    move-object/from16 v0, v368

    if-eqz v0, :cond_2b

    .line 702
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 703
    const/4 v6, 0x1

    move-object/from16 v0, v368

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$TaskThumbnail;->writeToParcel(Landroid/os/Parcel;I)V

    .line 707
    :goto_24
    const/4 v6, 0x1

    return v6

    .line 705
    :cond_2b
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_24

    .line 711
    .end local v102    # "id":I
    .end local v368    # "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    :sswitch_28
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 712
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v297, v0

    .line 713
    .restart local v297    # "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v111

    .line 714
    .restart local v111    # "fl":I
    move-object/from16 v0, p0

    move/from16 v1, v297

    move/from16 v2, v111

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getServices(II)Ljava/util/List;

    move-result-object v0

    move-object/16 v288, v0

    .line 715
    .local v288, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    move-object/from16 v0, v288

    if-eqz v0, :cond_2c

    invoke-interface/range {v288 .. v288}, Ljava/util/List;->size()I

    move-result v88

    .line 717
    .restart local v88    # "N":I
    :goto_25
    move-object/from16 v0, p3

    move/from16 v1, v88

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 719
    const/4 v0, 0x0

    move/16 v259, v0

    .restart local v259    # "i":I
    :goto_26
    move/from16 v0, v259

    move/from16 v1, v88

    if-ge v0, v1, :cond_2d

    .line 720
    move-object/from16 v0, v288

    move/from16 v1, v259

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v267, v0

    move-object/from16 v0, v267

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/16 v267, v0

    .line 721
    .local v267, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    const/4 v6, 0x0

    move-object/from16 v0, v267

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 719
    move/from16 v0, v259

    add-int/lit8 v0, v0, 0x1

    move/16 v259, v0

    goto :goto_26

    .line 716
    .end local v88    # "N":I
    .end local v259    # "i":I
    .end local v267    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2c
    const/16 v88, -0x1

    goto :goto_25

    .line 723
    .restart local v88    # "N":I
    .restart local v259    # "i":I
    :cond_2d
    const/4 v6, 0x1

    return v6

    .line 727
    .end local v88    # "N":I
    .end local v111    # "fl":I
    .end local v259    # "i":I
    .end local v288    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v297    # "maxNum":I
    :sswitch_29
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v0

    move-object/16 v286, v0

    .line 729
    .local v286, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    move-object/from16 v0, p3

    move-object/from16 v1, v286

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 731
    const/4 v6, 0x1

    return v6

    .line 735
    .end local v286    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    :sswitch_2a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    move-object/16 v287, v0

    .line 737
    .local v287, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 738
    move-object/from16 v0, p3

    move-object/from16 v1, v287

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 739
    const/4 v6, 0x1

    return v6

    .line 743
    .end local v287    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :sswitch_2b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 744
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v0

    move-object/16 v292, v0

    .line 745
    .local v292, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 746
    move-object/from16 v0, p3

    move-object/from16 v1, v292

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 747
    const/4 v6, 0x1

    return v6

    .line 751
    .end local v292    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :sswitch_2c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 752
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v366, v0

    .line 753
    .local v366, "task":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v111

    .line 754
    .restart local v111    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2e

    .line 755
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 756
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_27
    move-object/from16 v0, p0

    move/from16 v1, v366

    move/from16 v2, v111

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 757
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 758
    const/4 v6, 0x1

    return v6

    .line 755
    .end local v16    # "options":Landroid/os/Bundle;
    :cond_2e
    const/16 v16, 0x0

    goto :goto_27

    .line 762
    .end local v111    # "fl":I
    .end local v366    # "task":I
    :sswitch_2d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 763
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 764
    .restart local v101    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2f

    const/4 v0, 0x1

    move/16 v302, v0

    .line 765
    .local v302, "nonRoot":Z
    :goto_28
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move/from16 v2, v302

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v0

    move/16 v339, v0

    .line 766
    .restart local v339    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    move/from16 v0, v339

    if-eqz v0, :cond_30

    const/4 v6, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    const/4 v6, 0x1

    return v6

    .line 764
    .end local v302    # "nonRoot":Z
    .end local v339    # "res":Z
    :cond_2f
    const/4 v0, 0x0

    move/16 v302, v0

    goto :goto_28

    .line 767
    .restart local v302    # "nonRoot":Z
    .restart local v339    # "res":Z
    :cond_30
    const/4 v6, 0x0

    goto :goto_29

    .line 772
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v302    # "nonRoot":Z
    .end local v339    # "res":Z
    :sswitch_2e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 773
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v366, v0

    .line 774
    .restart local v366    # "task":I
    move-object/from16 v0, p0

    move/from16 v1, v366

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskBackwards(I)V

    .line 775
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 776
    const/4 v6, 0x1

    return v6

    .line 780
    .end local v366    # "task":I
    :sswitch_2f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 781
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 782
    .restart local v69    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v76

    .line 783
    .local v76, "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_31

    const/16 v71, 0x1

    .line 784
    .local v71, "toTop":Z
    :goto_2a
    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v76

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->moveTaskToStack(IIZ)V

    .line 785
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    const/4 v6, 0x1

    return v6

    .line 783
    .end local v71    # "toTop":Z
    :cond_31
    const/16 v71, 0x0

    goto :goto_2a

    .line 790
    .end local v69    # "taskId":I
    .end local v76    # "stackId":I
    :sswitch_30
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 792
    .restart local v69    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 793
    .local v70, "createMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_33

    const/16 v71, 0x1

    .line 794
    .local v71, "toTop":Z
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_34

    const/16 v72, 0x1

    .line 795
    .local v72, "animate":Z
    :goto_2c
    const/16 v73, 0x0

    .line 796
    .local v73, "bounds":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_35

    const/16 v249, 0x1

    .line 797
    .local v249, "hasBounds":Z
    :goto_2d
    if-eqz v249, :cond_32

    .line 798
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v73

    .end local v73    # "bounds":Landroid/graphics/Rect;
    check-cast v73, Landroid/graphics/Rect;

    .line 800
    :cond_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_36

    const/16 v74, 0x1

    .local v74, "moveHomeStackFront":Z
    :goto_2e
    move-object/from16 v68, p0

    .line 801
    invoke-virtual/range {v68 .. v74}, Landroid/app/ActivityManagerNative;->moveTaskToDockedStack(IIZZLandroid/graphics/Rect;Z)Z

    move-result v0

    move/16 v339, v0

    .line 803
    .restart local v339    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    move/from16 v0, v339

    if-eqz v0, :cond_37

    const/4 v6, 0x1

    :goto_2f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 805
    const/4 v6, 0x1

    return v6

    .line 793
    .end local v71    # "toTop":Z
    .end local v72    # "animate":Z
    .end local v74    # "moveHomeStackFront":Z
    .end local v249    # "hasBounds":Z
    .end local v339    # "res":Z
    :cond_33
    const/16 v71, 0x0

    .restart local v71    # "toTop":Z
    goto :goto_2b

    .line 794
    :cond_34
    const/16 v72, 0x0

    .restart local v72    # "animate":Z
    goto :goto_2c

    .line 796
    .restart local v73    # "bounds":Landroid/graphics/Rect;
    :cond_35
    const/16 v249, 0x0

    goto :goto_2d

    .line 800
    .end local v73    # "bounds":Landroid/graphics/Rect;
    .restart local v249    # "hasBounds":Z
    :cond_36
    const/16 v74, 0x0

    goto :goto_2e

    .line 804
    .restart local v74    # "moveHomeStackFront":Z
    .restart local v339    # "res":Z
    :cond_37
    const/4 v6, 0x0

    goto :goto_2f

    .line 809
    .end local v69    # "taskId":I
    .end local v70    # "createMode":I
    .end local v71    # "toTop":Z
    .end local v72    # "animate":Z
    .end local v74    # "moveHomeStackFront":Z
    .end local v249    # "hasBounds":Z
    .end local v339    # "res":Z
    :sswitch_31
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 810
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v76

    .line 811
    .restart local v76    # "stackId":I
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Landroid/graphics/Rect;

    .line 812
    .local v77, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move/from16 v1, v76

    move-object/from16 v2, v77

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveTopActivityToPinnedStack(ILandroid/graphics/Rect;)Z

    move-result v0

    move/16 v339, v0

    .line 813
    .restart local v339    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    move/from16 v0, v339

    if-eqz v0, :cond_38

    const/4 v6, 0x1

    :goto_30
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    const/4 v6, 0x1

    return v6

    .line 814
    :cond_38
    const/4 v6, 0x0

    goto :goto_30

    .line 819
    .end local v76    # "stackId":I
    .end local v77    # "r":Landroid/graphics/Rect;
    .end local v339    # "res":Z
    :sswitch_32
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 820
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v76

    .line 821
    .restart local v76    # "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3a

    const/16 v250, 0x1

    .line 822
    .local v250, "hasRect":Z
    :goto_31
    const/16 v77, 0x0

    .line 823
    .local v77, "r":Landroid/graphics/Rect;
    if-eqz v250, :cond_39

    .line 824
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v77

    .end local v77    # "r":Landroid/graphics/Rect;
    check-cast v77, Landroid/graphics/Rect;

    .line 826
    :cond_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_3b

    const/16 v78, 0x1

    .line 827
    .local v78, "allowResizeInDockedMode":Z
    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_3c

    const/16 v79, 0x1

    .line 828
    .local v79, "preserveWindows":Z
    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_3d

    const/16 v72, 0x1

    .line 829
    .restart local v72    # "animate":Z
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v81

    .local v81, "animationDuration":I
    move-object/from16 v75, p0

    move/from16 v80, v72

    .line 830
    invoke-virtual/range {v75 .. v81}, Landroid/app/ActivityManagerNative;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    .line 832
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 833
    const/4 v6, 0x1

    return v6

    .line 821
    .end local v72    # "animate":Z
    .end local v78    # "allowResizeInDockedMode":Z
    .end local v79    # "preserveWindows":Z
    .end local v81    # "animationDuration":I
    .end local v250    # "hasRect":Z
    :cond_3a
    const/16 v250, 0x0

    goto :goto_31

    .line 826
    .restart local v250    # "hasRect":Z
    :cond_3b
    const/16 v78, 0x0

    .restart local v78    # "allowResizeInDockedMode":Z
    goto :goto_32

    .line 827
    :cond_3c
    const/16 v79, 0x0

    .restart local v79    # "preserveWindows":Z
    goto :goto_33

    .line 828
    :cond_3d
    const/16 v72, 0x0

    .restart local v72    # "animate":Z
    goto :goto_34

    .line 836
    .end local v72    # "animate":Z
    .end local v76    # "stackId":I
    .end local v78    # "allowResizeInDockedMode":Z
    .end local v79    # "preserveWindows":Z
    .end local v250    # "hasRect":Z
    :sswitch_33
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 837
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_40

    const/16 v249, 0x1

    .line 838
    .restart local v249    # "hasBounds":Z
    :goto_35
    const/16 v73, 0x0

    .line 839
    .restart local v73    # "bounds":Landroid/graphics/Rect;
    if-eqz v249, :cond_3e

    .line 840
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v73

    .end local v73    # "bounds":Landroid/graphics/Rect;
    check-cast v73, Landroid/graphics/Rect;

    .line 842
    :cond_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_41

    const/16 v255, 0x1

    .line 843
    .local v255, "hasTempPinnedTaskBounds":Z
    :goto_36
    const/4 v0, 0x0

    move-object/16 v369, v0

    .line 844
    .local v369, "tempPinnedTaskBounds":Landroid/graphics/Rect;
    if-eqz v255, :cond_3f

    .line 845
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v369, v0

    .end local v369    # "tempPinnedTaskBounds":Landroid/graphics/Rect;
    move-object/from16 v0, v369

    check-cast v0, Landroid/graphics/Rect;

    move-object/16 v369, v0

    .line 847
    :cond_3f
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v369

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->resizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 848
    const/4 v6, 0x1

    return v6

    .line 837
    .end local v249    # "hasBounds":Z
    .end local v255    # "hasTempPinnedTaskBounds":Z
    :cond_40
    const/16 v249, 0x0

    goto :goto_35

    .line 842
    .restart local v249    # "hasBounds":Z
    :cond_41
    const/16 v255, 0x0

    goto :goto_36

    .line 851
    .end local v249    # "hasBounds":Z
    :sswitch_34
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->swapDockedAndFullscreenStack()V

    .line 853
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    const/4 v6, 0x1

    return v6

    .line 857
    :sswitch_35
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 858
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_47

    const/16 v249, 0x1

    .line 859
    .restart local v249    # "hasBounds":Z
    :goto_37
    const/16 v73, 0x0

    .line 860
    .restart local v73    # "bounds":Landroid/graphics/Rect;
    if-eqz v249, :cond_42

    .line 861
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v73

    .end local v73    # "bounds":Landroid/graphics/Rect;
    check-cast v73, Landroid/graphics/Rect;

    .line 863
    :cond_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_48

    const/16 v251, 0x1

    .line 864
    .local v251, "hasTempDockedTaskBounds":Z
    :goto_38
    const/16 v84, 0x0

    .line 865
    .local v84, "tempDockedTaskBounds":Landroid/graphics/Rect;
    if-eqz v251, :cond_43

    .line 866
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v84

    .end local v84    # "tempDockedTaskBounds":Landroid/graphics/Rect;
    check-cast v84, Landroid/graphics/Rect;

    .line 868
    :cond_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_49

    const/16 v252, 0x1

    .line 869
    .local v252, "hasTempDockedTaskInsetBounds":Z
    :goto_39
    const/16 v85, 0x0

    .line 870
    .local v85, "tempDockedTaskInsetBounds":Landroid/graphics/Rect;
    if-eqz v252, :cond_44

    .line 871
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v85

    .end local v85    # "tempDockedTaskInsetBounds":Landroid/graphics/Rect;
    check-cast v85, Landroid/graphics/Rect;

    .line 873
    :cond_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4a

    const/16 v253, 0x1

    .line 874
    .local v253, "hasTempOtherTaskBounds":Z
    :goto_3a
    const/16 v86, 0x0

    .line 875
    .local v86, "tempOtherTaskBounds":Landroid/graphics/Rect;
    if-eqz v253, :cond_45

    .line 876
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v86

    .end local v86    # "tempOtherTaskBounds":Landroid/graphics/Rect;
    check-cast v86, Landroid/graphics/Rect;

    .line 878
    :cond_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4b

    const/16 v254, 0x1

    .line 879
    .local v254, "hasTempOtherTaskInsetBounds":Z
    :goto_3b
    const/16 v87, 0x0

    .line 880
    .local v87, "tempOtherTaskInsetBounds":Landroid/graphics/Rect;
    if-eqz v254, :cond_46

    .line 881
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v87

    .end local v87    # "tempOtherTaskInsetBounds":Landroid/graphics/Rect;
    check-cast v87, Landroid/graphics/Rect;

    :cond_46
    move-object/from16 v82, p0

    move-object/from16 v83, v73

    .line 883
    invoke-virtual/range {v82 .. v87}, Landroid/app/ActivityManagerNative;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 885
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    const/4 v6, 0x1

    return v6

    .line 858
    .end local v249    # "hasBounds":Z
    .end local v251    # "hasTempDockedTaskBounds":Z
    .end local v252    # "hasTempDockedTaskInsetBounds":Z
    .end local v253    # "hasTempOtherTaskBounds":Z
    .end local v254    # "hasTempOtherTaskInsetBounds":Z
    :cond_47
    const/16 v249, 0x0

    goto :goto_37

    .line 863
    .restart local v249    # "hasBounds":Z
    :cond_48
    const/16 v251, 0x0

    goto :goto_38

    .line 868
    .restart local v251    # "hasTempDockedTaskBounds":Z
    :cond_49
    const/16 v252, 0x0

    goto :goto_39

    .line 873
    .restart local v252    # "hasTempDockedTaskInsetBounds":Z
    :cond_4a
    const/16 v253, 0x0

    goto :goto_3a

    .line 878
    .restart local v253    # "hasTempOtherTaskBounds":Z
    :cond_4b
    const/16 v254, 0x0

    goto :goto_3b

    .line 890
    .end local v249    # "hasBounds":Z
    .end local v251    # "hasTempDockedTaskBounds":Z
    .end local v252    # "hasTempDockedTaskInsetBounds":Z
    .end local v253    # "hasTempOtherTaskBounds":Z
    :sswitch_36
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 891
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 892
    .restart local v69    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v76

    .line 893
    .restart local v76    # "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v324, v0

    .line 894
    .local v324, "position":I
    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v76

    move/from16 v3, v324

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->positionTaskInStack(III)V

    .line 895
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    const/4 v6, 0x1

    return v6

    .line 900
    .end local v69    # "taskId":I
    .end local v76    # "stackId":I
    .end local v324    # "position":I
    :sswitch_37
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 901
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getAllStackInfos()Ljava/util/List;

    move-result-object v0

    move-object/16 v290, v0

    .line 902
    .local v290, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 903
    move-object/from16 v0, p3

    move-object/from16 v1, v290

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 904
    const/4 v6, 0x1

    return v6

    .line 908
    .end local v290    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    :sswitch_38
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 909
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v76

    .line 910
    .restart local v76    # "stackId":I
    move-object/from16 v0, p0

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    move-object/16 v269, v0

    .line 911
    .local v269, "info":Landroid/app/ActivityManager$StackInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    move-object/from16 v0, v269

    if-eqz v0, :cond_4c

    .line 913
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 914
    const/4 v6, 0x0

    move-object/from16 v0, v269

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$StackInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 918
    :goto_3c
    const/4 v6, 0x1

    return v6

    .line 916
    :cond_4c
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3c

    .line 922
    .end local v76    # "stackId":I
    .end local v269    # "info":Landroid/app/ActivityManager$StackInfo;
    :sswitch_39
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 923
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 924
    .restart local v69    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isInHomeStack(I)Z

    move-result v0

    move/16 v276, v0

    .line 925
    .local v276, "isInHomeStack":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    move/from16 v0, v276

    if-eqz v0, :cond_4d

    const/4 v6, 0x1

    :goto_3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 927
    const/4 v6, 0x1

    return v6

    .line 926
    :cond_4d
    const/4 v6, 0x0

    goto :goto_3d

    .line 931
    .end local v69    # "taskId":I
    .end local v276    # "isInHomeStack":Z
    :sswitch_3a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v76

    .line 933
    .restart local v76    # "stackId":I
    move-object/from16 v0, p0

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFocusedStack(I)V

    .line 934
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 935
    const/4 v6, 0x1

    return v6

    .line 939
    .end local v76    # "stackId":I
    :sswitch_3b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 940
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFocusedStackId()I

    move-result v247

    .line 941
    .local v247, "focusedStackId":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    move-object/from16 v0, p3

    move/from16 v1, v247

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 943
    const/4 v6, 0x1

    return v6

    .line 947
    .end local v247    # "focusedStackId":I
    :sswitch_3c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 948
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 949
    .restart local v69    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFocusedTask(I)V

    .line 950
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 951
    const/4 v6, 0x1

    return v6

    .line 955
    .end local v69    # "taskId":I
    :sswitch_3d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 956
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 957
    .restart local v101    # "token":Landroid/os/IBinder;
    invoke-static/range {v101 .. v101}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 958
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 959
    const/4 v6, 0x1

    return v6

    .line 963
    .end local v101    # "token":Landroid/os/IBinder;
    :sswitch_3e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 964
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 965
    .restart local v101    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4e

    const/4 v0, 0x1

    move/16 v310, v0

    .line 966
    .local v310, "onlyRoot":Z
    :goto_3e
    if-eqz v101, :cond_4f

    .line 967
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move/from16 v2, v310

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v0

    move/16 v333, v0

    .line 968
    .restart local v333    # "res":I
    :goto_3f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 969
    move-object/from16 v0, p3

    move/from16 v1, v333

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 970
    const/4 v6, 0x1

    return v6

    .line 965
    .end local v310    # "onlyRoot":Z
    .end local v333    # "res":I
    :cond_4e
    const/4 v0, 0x0

    move/16 v310, v0

    .restart local v310    # "onlyRoot":Z
    goto :goto_3e

    .line 967
    :cond_4f
    const/4 v0, -0x1

    move/16 v333, v0

    .restart local v333    # "res":I
    goto :goto_3f

    .line 974
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v310    # "onlyRoot":Z
    .end local v333    # "res":I
    :sswitch_3f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 975
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v220

    .line 976
    .restart local v220    # "b":Landroid/os/IBinder;
    invoke-static/range {v220 .. v220}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 977
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v91

    .line 978
    .local v91, "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 979
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_50

    const/16 v93, 0x1

    .line 982
    .local v93, "stable":Z
    :goto_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v94

    .local v94, "threadId":J
    move-object/from16 v89, p0

    move-object/from16 v90, v7

    move/from16 v92, v17

    .line 983
    invoke-virtual/range {v89 .. v95}, Landroid/app/ActivityManagerNative;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZJ)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v234

    .line 985
    .local v234, "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 986
    if-eqz v234, :cond_51

    .line 987
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 988
    const/4 v6, 0x0

    move-object/from16 v0, v234

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 992
    :goto_41
    const/4 v6, 0x1

    return v6

    .line 979
    .end local v93    # "stable":Z
    .end local v94    # "threadId":J
    .end local v234    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    :cond_50
    const/16 v93, 0x0

    .restart local v93    # "stable":Z
    goto :goto_40

    .line 990
    .restart local v94    # "threadId":J
    .restart local v234    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    :cond_51
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_41

    .line 996
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v91    # "name":Ljava/lang/String;
    .end local v93    # "stable":Z
    .end local v94    # "threadId":J
    .end local v220    # "b":Landroid/os/IBinder;
    .end local v234    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    :sswitch_40
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 997
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v91

    .line 998
    .restart local v91    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 999
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 1000
    .restart local v101    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v91

    move/from16 v2, v17

    move-object/from16 v3, v101

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v234

    .line 1001
    .restart local v234    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1002
    if-eqz v234, :cond_52

    .line 1003
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1004
    const/4 v6, 0x0

    move-object/from16 v0, v234

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1008
    :goto_42
    const/4 v6, 0x1

    return v6

    .line 1006
    :cond_52
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_42

    .line 1012
    .end local v17    # "userId":I
    .end local v91    # "name":Ljava/lang/String;
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v234    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    :sswitch_41
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1013
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v220

    .line 1014
    .restart local v220    # "b":Landroid/os/IBinder;
    invoke-static/range {v220 .. v220}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1016
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    move-object/16 v327, v0

    .line 1017
    .local v327, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v327

    invoke-virtual {v0, v7, v1}, Landroid/app/ActivityManagerNative;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    .line 1018
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1019
    const/4 v6, 0x1

    return v6

    .line 1023
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v220    # "b":Landroid/os/IBinder;
    .end local v327    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    :sswitch_42
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1024
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v220

    .line 1025
    .restart local v220    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v358, v0

    .line 1026
    .local v358, "stable":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v375, v0

    .line 1027
    .local v375, "unstable":I
    move-object/from16 v0, p0

    move-object/from16 v1, v220

    move/from16 v2, v358

    move/from16 v3, v375

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->refContentProvider(Landroid/os/IBinder;II)Z

    move-result v0

    move/16 v339, v0

    .line 1028
    .restart local v339    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1029
    move/from16 v0, v339

    if-eqz v0, :cond_53

    const/4 v6, 0x1

    :goto_43
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1030
    const/4 v6, 0x1

    return v6

    .line 1029
    :cond_53
    const/4 v6, 0x0

    goto :goto_43

    .line 1034
    .end local v220    # "b":Landroid/os/IBinder;
    .end local v339    # "res":Z
    .end local v358    # "stable":I
    .end local v375    # "unstable":I
    :sswitch_43
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1035
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v220

    .line 1036
    .restart local v220    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v220

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 1037
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1038
    const/4 v6, 0x1

    return v6

    .line 1042
    .end local v220    # "b":Landroid/os/IBinder;
    :sswitch_44
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1043
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v220

    .line 1044
    .restart local v220    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v220

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->appNotRespondingViaProvider(Landroid/os/IBinder;)V

    .line 1045
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    const/4 v6, 0x1

    return v6

    .line 1050
    .end local v220    # "b":Landroid/os/IBinder;
    :sswitch_45
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1051
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v220

    .line 1052
    .restart local v220    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_54

    const/16 v93, 0x1

    .line 1053
    .local v93, "stable":Z
    :goto_44
    move-object/from16 v0, p0

    move-object/from16 v1, v220

    move/from16 v2, v93

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProvider(Landroid/os/IBinder;Z)V

    .line 1054
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1055
    const/4 v6, 0x1

    return v6

    .line 1052
    .end local v93    # "stable":Z
    :cond_54
    const/16 v93, 0x0

    goto :goto_44

    .line 1059
    .end local v220    # "b":Landroid/os/IBinder;
    :sswitch_46
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1060
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v91

    .line 1061
    .restart local v91    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 1062
    .restart local v101    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v91

    move-object/from16 v2, v101

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1063
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1064
    const/4 v6, 0x1

    return v6

    .line 1068
    .end local v91    # "name":Ljava/lang/String;
    .end local v101    # "token":Landroid/os/IBinder;
    :sswitch_47
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1069
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v231

    check-cast v231, Landroid/content/ComponentName;

    .line 1070
    .local v231, "comp":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v231

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v0

    move-object/16 v320, v0

    .line 1071
    .local v320, "pi":Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1072
    move-object/from16 v0, v320

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 1073
    const/4 v6, 0x1

    return v6

    .line 1077
    .end local v231    # "comp":Landroid/content/ComponentName;
    .end local v320    # "pi":Landroid/app/PendingIntent;
    :sswitch_48
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1078
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v220

    .line 1079
    .restart local v220    # "b":Landroid/os/IBinder;
    invoke-static/range {v220 .. v220}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1080
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v98

    check-cast v98, Landroid/content/Intent;

    .line 1081
    .local v98, "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1082
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1083
    .restart local v8    # "callingPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v96, p0

    move-object/from16 v97, v7

    move-object/from16 v99, v10

    move-object/from16 v100, v8

    move/from16 v101, v17

    .line 1084
    invoke-virtual/range {v96 .. v101}, Landroid/app/ActivityManagerNative;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v230

    .line 1085
    .restart local v230    # "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1086
    move-object/from16 v0, v230

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 1087
    const/4 v6, 0x1

    return v6

    .line 1091
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v98    # "service":Landroid/content/Intent;
    .end local v220    # "b":Landroid/os/IBinder;
    .end local v230    # "cn":Landroid/content/ComponentName;
    :sswitch_49
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1092
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v220

    .line 1093
    .restart local v220    # "b":Landroid/os/IBinder;
    invoke-static/range {v220 .. v220}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1094
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v98

    check-cast v98, Landroid/content/Intent;

    .line 1095
    .restart local v98    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1096
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1097
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v98

    move/from16 v2, v17

    invoke-virtual {v0, v7, v1, v10, v2}, Landroid/app/ActivityManagerNative;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    move/16 v333, v0

    .line 1098
    .restart local v333    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1099
    move-object/from16 v0, p3

    move/from16 v1, v333

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1100
    const/4 v6, 0x1

    return v6

    .line 1104
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v98    # "service":Landroid/content/Intent;
    .end local v220    # "b":Landroid/os/IBinder;
    .end local v333    # "res":I
    :sswitch_4a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1105
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v100

    .line 1106
    .local v100, "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 1107
    .restart local v101    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v359, v0

    .line 1108
    .local v359, "startId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v100

    move-object/from16 v2, v101

    move/from16 v3, v359

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v0

    move/16 v339, v0

    .line 1109
    .restart local v339    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1110
    move/from16 v0, v339

    if-eqz v0, :cond_55

    const/4 v6, 0x1

    :goto_45
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1111
    const/4 v6, 0x1

    return v6

    .line 1110
    :cond_55
    const/4 v6, 0x0

    goto :goto_45

    .line 1115
    .end local v100    # "className":Landroid/content/ComponentName;
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v339    # "res":Z
    .end local v359    # "startId":I
    :sswitch_4b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1116
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v100

    .line 1117
    .restart local v100    # "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 1118
    .restart local v101    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v102

    .line 1119
    .restart local v102    # "id":I
    const/16 v103, 0x0

    .line 1120
    .local v103, "notification":Landroid/app/Notification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_56

    .line 1121
    sget-object v6, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v103

    .end local v103    # "notification":Landroid/app/Notification;
    check-cast v103, Landroid/app/Notification;

    .line 1123
    :cond_56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v104

    .local v104, "sflags":I
    move-object/from16 v99, p0

    .line 1124
    invoke-virtual/range {v99 .. v104}, Landroid/app/ActivityManagerNative;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;I)V

    .line 1125
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1126
    const/4 v6, 0x1

    return v6

    .line 1130
    .end local v100    # "className":Landroid/content/ComponentName;
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v102    # "id":I
    .end local v104    # "sflags":I
    :sswitch_4c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v220

    .line 1132
    .restart local v220    # "b":Landroid/os/IBinder;
    invoke-static/range {v220 .. v220}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1133
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 1134
    .restart local v101    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v98

    check-cast v98, Landroid/content/Intent;

    .line 1135
    .restart local v98    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1136
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v220

    .line 1137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v111

    .line 1138
    .restart local v111    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1139
    .restart local v8    # "callingPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1140
    .restart local v17    # "userId":I
    invoke-static/range {v220 .. v220}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v110

    .local v110, "conn":Landroid/app/IServiceConnection;
    move-object/from16 v105, p0

    move-object/from16 v106, v7

    move-object/from16 v107, v101

    move-object/from16 v108, v98

    move-object/from16 v109, v10

    move-object/from16 v112, v8

    move/from16 v113, v17

    .line 1141
    invoke-virtual/range {v105 .. v113}, Landroid/app/ActivityManagerNative;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I

    move-result v0

    move/16 v333, v0

    .line 1143
    .restart local v333    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1144
    move-object/from16 v0, p3

    move/from16 v1, v333

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1145
    const/4 v6, 0x1

    return v6

    .line 1149
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v98    # "service":Landroid/content/Intent;
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v110    # "conn":Landroid/app/IServiceConnection;
    .end local v111    # "fl":I
    .end local v220    # "b":Landroid/os/IBinder;
    .end local v333    # "res":I
    :sswitch_4d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v220

    .line 1151
    .restart local v220    # "b":Landroid/os/IBinder;
    invoke-static/range {v220 .. v220}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v110

    .line 1152
    .restart local v110    # "conn":Landroid/app/IServiceConnection;
    move-object/from16 v0, p0

    move-object/from16 v1, v110

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v0

    move/16 v339, v0

    .line 1153
    .restart local v339    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1154
    move/from16 v0, v339

    if-eqz v0, :cond_57

    const/4 v6, 0x1

    :goto_46
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1155
    const/4 v6, 0x1

    return v6

    .line 1154
    :cond_57
    const/4 v6, 0x0

    goto :goto_46

    .line 1159
    .end local v110    # "conn":Landroid/app/IServiceConnection;
    .end local v220    # "b":Landroid/os/IBinder;
    .end local v339    # "res":Z
    :sswitch_4e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 1161
    .restart local v101    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 1162
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object/16 v351, v0

    .line 1163
    .local v351, "service":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move-object/from16 v2, v351

    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 1164
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1165
    const/4 v6, 0x1

    return v6

    .line 1169
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v351    # "service":Landroid/os/IBinder;
    :sswitch_4f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 1171
    .restart local v101    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 1172
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_58

    const/16 v239, 0x1

    .line 1173
    .local v239, "doRebind":Z
    :goto_47
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move/from16 v2, v239

    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 1174
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1175
    const/4 v6, 0x1

    return v6

    .line 1172
    .end local v239    # "doRebind":Z
    :cond_58
    const/16 v239, 0x0

    goto :goto_47

    .line 1179
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v101    # "token":Landroid/os/IBinder;
    :sswitch_50
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 1181
    .restart local v101    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v122

    .line 1182
    .local v122, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v359, v0

    .line 1183
    .restart local v359    # "startId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v333, v0

    .line 1184
    .restart local v333    # "res":I
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move/from16 v2, v122

    move/from16 v3, v359

    move/from16 v4, v333

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    .line 1185
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1186
    const/4 v6, 0x1

    return v6

    .line 1190
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v122    # "type":I
    .end local v333    # "res":I
    .end local v359    # "startId":I
    :sswitch_51
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1191
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v100

    .line 1192
    .restart local v100    # "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v114

    .line 1193
    .local v114, "profileFile":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v111

    .line 1194
    .restart local v111    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v116

    .line 1195
    .local v116, "arguments":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v220

    .line 1196
    .restart local v220    # "b":Landroid/os/IBinder;
    invoke-static/range {v220 .. v220}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v117

    .line 1197
    .local v117, "w":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v220

    .line 1198
    invoke-static/range {v220 .. v220}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v118

    .line 1199
    .local v118, "c":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1200
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v120

    .local v120, "abiOverride":Ljava/lang/String;
    move-object/from16 v112, p0

    move-object/from16 v113, v100

    move/from16 v115, v111

    move/from16 v119, v17

    .line 1201
    invoke-virtual/range {v112 .. v120}, Landroid/app/ActivityManagerNative;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z

    move-result v0

    move/16 v339, v0

    .line 1203
    .restart local v339    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1204
    move/from16 v0, v339

    if-eqz v0, :cond_59

    const/4 v6, 0x1

    :goto_48
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1205
    const/4 v6, 0x1

    return v6

    .line 1204
    :cond_59
    const/4 v6, 0x0

    goto :goto_48

    .line 1210
    .end local v17    # "userId":I
    .end local v100    # "className":Landroid/content/ComponentName;
    .end local v111    # "fl":I
    .end local v114    # "profileFile":Ljava/lang/String;
    .end local v116    # "arguments":Landroid/os/Bundle;
    .end local v117    # "w":Landroid/app/IInstrumentationWatcher;
    .end local v118    # "c":Landroid/app/IUiAutomationConnection;
    .end local v120    # "abiOverride":Ljava/lang/String;
    .end local v220    # "b":Landroid/os/IBinder;
    .end local v339    # "res":Z
    :sswitch_52
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v220

    .line 1212
    .restart local v220    # "b":Landroid/os/IBinder;
    invoke-static/range {v220 .. v220}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1213
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 1214
    .restart local v53    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    move-object/16 v348, v0

    .line 1215
    .local v348, "results":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move/from16 v1, v53

    move-object/from16 v2, v348

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/ActivityManagerNative;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    .line 1216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1217
    const/4 v6, 0x1

    return v6

    .line 1221
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v53    # "resultCode":I
    .end local v220    # "b":Landroid/os/IBinder;
    .end local v348    # "results":Landroid/os/Bundle;
    :sswitch_53
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1222
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v39

    .line 1223
    .local v39, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1224
    const/4 v6, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1225
    const/4 v6, 0x1

    return v6

    .line 1229
    .end local v39    # "config":Landroid/content/res/Configuration;
    :sswitch_54
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1230
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/res/Configuration;

    .line 1231
    .restart local v39    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 1232
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1233
    const/4 v6, 0x1

    return v6

    .line 1237
    .end local v39    # "config":Landroid/content/res/Configuration;
    :sswitch_55
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1238
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 1239
    .restart local v101    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v332, v0

    .line 1240
    .local v332, "requestedOrientation":I
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move/from16 v2, v332

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 1241
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1242
    const/4 v6, 0x1

    return v6

    .line 1246
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v332    # "requestedOrientation":I
    :sswitch_56
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 1248
    .restart local v101    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v0

    move/16 v331, v0

    .line 1249
    .local v331, "req":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1250
    move-object/from16 v0, p3

    move/from16 v1, v331

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1251
    const/4 v6, 0x1

    return v6

    .line 1255
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v331    # "req":I
    :sswitch_57
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 1257
    .restart local v101    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v230

    .line 1258
    .restart local v230    # "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1259
    move-object/from16 v0, v230

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 1260
    const/4 v6, 0x1

    return v6

    .line 1264
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v230    # "cn":Landroid/content/ComponentName;
    :sswitch_58
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 1266
    .restart local v101    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1267
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1268
    const/4 v6, 0x1

    return v6

    .line 1272
    .end local v101    # "token":Landroid/os/IBinder;
    :sswitch_59
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v122

    .line 1274
    .restart local v122    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1275
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 1276
    .restart local v101    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1277
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1280
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5a

    .line 1281
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v127

    check-cast v127, [Landroid/content/Intent;

    .line 1282
    .local v127, "requestIntents":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v128

    .line 1287
    .end local v127    # "requestIntents":[Landroid/content/Intent;
    :goto_49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v111

    .line 1288
    .restart local v111    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5b

    .line 1289
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 1290
    :goto_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v121, p0

    move-object/from16 v123, v32

    move-object/from16 v124, v101

    move-object/from16 v125, v12

    move/from16 v126, v13

    move/from16 v129, v111

    move-object/from16 v130, v16

    move/from16 v131, v17

    .line 1291
    invoke-virtual/range {v121 .. v131}, Landroid/app/ActivityManagerNative;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v336, v0

    .line 1294
    .local v336, "res":Landroid/content/IIntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1295
    move-object/from16 v0, v336

    if-eqz v0, :cond_5c

    invoke-interface/range {v336 .. v336}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_4b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1296
    const/4 v6, 0x1

    return v6

    .line 1284
    .end local v17    # "userId":I
    .end local v111    # "fl":I
    .end local v336    # "res":Landroid/content/IIntentSender;
    :cond_5a
    const/16 v127, 0x0

    .line 1285
    .local v127, "requestIntents":[Landroid/content/Intent;
    const/16 v128, 0x0

    .local v128, "requestResolvedTypes":[Ljava/lang/String;
    goto :goto_49

    .line 1289
    .end local v127    # "requestIntents":[Landroid/content/Intent;
    .end local v128    # "requestResolvedTypes":[Ljava/lang/String;
    .restart local v111    # "fl":I
    :cond_5b
    const/16 v16, 0x0

    .local v16, "options":Landroid/os/Bundle;
    goto :goto_4a

    .line 1295
    .end local v16    # "options":Landroid/os/Bundle;
    .restart local v17    # "userId":I
    .restart local v336    # "res":Landroid/content/IIntentSender;
    :cond_5c
    const/4 v6, 0x0

    goto :goto_4b

    .line 1300
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v111    # "fl":I
    .end local v122    # "type":I
    .end local v336    # "res":Landroid/content/IIntentSender;
    :sswitch_5a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1301
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v329, v0

    .line 1303
    .local v329, "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v329

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->cancelIntentSender(Landroid/content/IIntentSender;)V

    .line 1304
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1305
    const/4 v6, 0x1

    return v6

    .line 1309
    .end local v329    # "r":Landroid/content/IIntentSender;
    :sswitch_5b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1310
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v329, v0

    .line 1312
    .restart local v329    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v329

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    move-result-object v0

    move-object/16 v338, v0

    .line 1313
    .local v338, "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1314
    move-object/from16 v0, p3

    move-object/from16 v1, v338

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1315
    const/4 v6, 0x1

    return v6

    .line 1319
    .end local v329    # "r":Landroid/content/IIntentSender;
    .end local v338    # "res":Ljava/lang/String;
    :sswitch_5c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1320
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v329, v0

    .line 1322
    .restart local v329    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v329

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v0

    move/16 v333, v0

    .line 1323
    .restart local v333    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1324
    move-object/from16 v0, p3

    move/from16 v1, v333

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1325
    const/4 v6, 0x1

    return v6

    .line 1329
    .end local v329    # "r":Landroid/content/IIntentSender;
    .end local v333    # "res":I
    :sswitch_5d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 1331
    .restart local v42    # "callingPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 1332
    .restart local v43    # "callingUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1333
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5d

    const/16 v133, 0x1

    .line 1334
    .local v133, "allowAll":Z
    :goto_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5e

    const/16 v134, 0x1

    .line 1335
    .local v134, "requireFull":Z
    :goto_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v91

    .line 1336
    .restart local v91    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v136

    .local v136, "callerPackage":Ljava/lang/String;
    move-object/from16 v129, p0

    move/from16 v130, v42

    move/from16 v131, v43

    move/from16 v132, v17

    move-object/from16 v135, v91

    .line 1337
    invoke-virtual/range {v129 .. v136}, Landroid/app/ActivityManagerNative;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    move/16 v333, v0

    .line 1339
    .restart local v333    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1340
    move-object/from16 v0, p3

    move/from16 v1, v333

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1341
    const/4 v6, 0x1

    return v6

    .line 1333
    .end local v91    # "name":Ljava/lang/String;
    .end local v133    # "allowAll":Z
    .end local v134    # "requireFull":Z
    .end local v136    # "callerPackage":Ljava/lang/String;
    .end local v333    # "res":I
    :cond_5d
    const/16 v133, 0x0

    .restart local v133    # "allowAll":Z
    goto :goto_4c

    .line 1334
    :cond_5e
    const/16 v134, 0x0

    .restart local v134    # "requireFull":Z
    goto :goto_4d

    .line 1345
    .end local v17    # "userId":I
    .end local v42    # "callingPid":I
    .end local v43    # "callingUid":I
    .end local v133    # "allowAll":Z
    .end local v134    # "requireFull":Z
    :sswitch_5e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1346
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v296, v0

    .line 1347
    .local v296, "max":I
    move-object/from16 v0, p0

    move/from16 v1, v296

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setProcessLimit(I)V

    .line 1348
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1349
    const/4 v6, 0x1

    return v6

    .line 1353
    .end local v296    # "max":I
    :sswitch_5f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1354
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessLimit()I

    move-result v0

    move/16 v284, v0

    .line 1355
    .local v284, "limit":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1356
    move-object/from16 v0, p3

    move/from16 v1, v284

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1357
    const/4 v6, 0x1

    return v6

    .line 1361
    .end local v284    # "limit":I
    :sswitch_60
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 1363
    .restart local v101    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v139

    .line 1364
    .local v139, "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5f

    const/4 v0, 0x1

    move/16 v275, v0

    .line 1365
    .local v275, "isForeground":Z
    :goto_4e
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move/from16 v2, v139

    move/from16 v3, v275

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 1366
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1367
    const/4 v6, 0x1

    return v6

    .line 1364
    .end local v275    # "isForeground":Z
    :cond_5f
    const/4 v0, 0x0

    move/16 v275, v0

    goto :goto_4e

    .line 1371
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v139    # "pid":I
    :sswitch_61
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 1373
    .restart local v35    # "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v139

    .line 1374
    .restart local v139    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v140

    .line 1375
    .local v140, "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v139

    move/from16 v3, v140

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    move/16 v333, v0

    .line 1376
    .restart local v333    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1377
    move-object/from16 v0, p3

    move/from16 v1, v333

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1378
    const/4 v6, 0x1

    return v6

    .line 1382
    .end local v35    # "perm":Ljava/lang/String;
    .end local v139    # "pid":I
    .end local v140    # "uid":I
    .end local v333    # "res":I
    :sswitch_62
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 1384
    .restart local v35    # "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v139

    .line 1385
    .restart local v139    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v140

    .line 1386
    .restart local v140    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 1387
    .restart local v101    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v139

    move/from16 v3, v140

    move-object/from16 v4, v101

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkPermissionWithToken(Ljava/lang/String;IILandroid/os/IBinder;)I

    move-result v0

    move/16 v333, v0

    .line 1388
    .restart local v333    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1389
    move-object/from16 v0, p3

    move/from16 v1, v333

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1390
    const/4 v6, 0x1

    return v6

    .line 1394
    .end local v35    # "perm":Ljava/lang/String;
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v139    # "pid":I
    .end local v140    # "uid":I
    .end local v333    # "res":I
    :sswitch_63
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1395
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v138

    check-cast v138, Landroid/net/Uri;

    .line 1396
    .local v138, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v139

    .line 1397
    .restart local v139    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v140

    .line 1398
    .restart local v140    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v141

    .line 1399
    .local v141, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1400
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v143

    .local v143, "callerToken":Landroid/os/IBinder;
    move-object/from16 v137, p0

    move/from16 v142, v17

    .line 1401
    invoke-virtual/range {v137 .. v143}, Landroid/app/ActivityManagerNative;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    move-result v0

    move/16 v333, v0

    .line 1402
    .restart local v333    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1403
    move-object/from16 v0, p3

    move/from16 v1, v333

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1404
    const/4 v6, 0x1

    return v6

    .line 1408
    .end local v17    # "userId":I
    .end local v138    # "uri":Landroid/net/Uri;
    .end local v139    # "pid":I
    .end local v140    # "uid":I
    .end local v141    # "mode":I
    .end local v143    # "callerToken":Landroid/os/IBinder;
    .end local v333    # "res":I
    :sswitch_64
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1411
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1410
    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v0

    move-object/16 v307, v0

    .line 1412
    .local v307, "observer":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1413
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v307

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z

    move-result v0

    move/16 v339, v0

    .line 1414
    .restart local v339    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1415
    move/from16 v0, v339

    if-eqz v0, :cond_60

    const/4 v6, 0x1

    :goto_4f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1416
    const/4 v6, 0x1

    return v6

    .line 1415
    :cond_60
    const/4 v6, 0x0

    goto :goto_4f

    .line 1420
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v307    # "observer":Landroid/content/pm/IPackageDataObserver;
    .end local v339    # "res":Z
    :sswitch_65
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v220

    .line 1422
    .restart local v220    # "b":Landroid/os/IBinder;
    invoke-static/range {v220 .. v220}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1423
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v146

    .line 1424
    .local v146, "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v138

    check-cast v138, Landroid/net/Uri;

    .line 1425
    .restart local v138    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v141

    .line 1426
    .restart local v141    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v144, p0

    move-object/from16 v145, v7

    move-object/from16 v147, v138

    move/from16 v148, v141

    move/from16 v149, v17

    .line 1427
    invoke-virtual/range {v144 .. v149}, Landroid/app/ActivityManagerNative;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 1428
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1429
    const/4 v6, 0x1

    return v6

    .line 1433
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v138    # "uri":Landroid/net/Uri;
    .end local v141    # "mode":I
    .end local v146    # "targetPkg":Ljava/lang/String;
    .end local v220    # "b":Landroid/os/IBinder;
    :sswitch_66
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1434
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v220

    .line 1435
    .restart local v220    # "b":Landroid/os/IBinder;
    invoke-static/range {v220 .. v220}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1436
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v138

    check-cast v138, Landroid/net/Uri;

    .line 1437
    .restart local v138    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v141

    .line 1438
    .restart local v141    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1439
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v138

    move/from16 v2, v141

    move/from16 v3, v17

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ActivityManagerNative;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;II)V

    .line 1440
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1441
    const/4 v6, 0x1

    return v6

    .line 1445
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v138    # "uri":Landroid/net/Uri;
    .end local v141    # "mode":I
    .end local v220    # "b":Landroid/os/IBinder;
    :sswitch_67
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1446
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v138

    check-cast v138, Landroid/net/Uri;

    .line 1447
    .restart local v138    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v141

    .line 1448
    .restart local v141    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1449
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v138

    move/from16 v2, v141

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->takePersistableUriPermission(Landroid/net/Uri;II)V

    .line 1450
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1451
    const/4 v6, 0x1

    return v6

    .line 1455
    .end local v17    # "userId":I
    .end local v138    # "uri":Landroid/net/Uri;
    .end local v141    # "mode":I
    :sswitch_68
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1456
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v138

    check-cast v138, Landroid/net/Uri;

    .line 1457
    .restart local v138    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v141

    .line 1458
    .restart local v141    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1459
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v138

    move/from16 v2, v141

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->releasePersistableUriPermission(Landroid/net/Uri;II)V

    .line 1460
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1461
    const/4 v6, 0x1

    return v6

    .line 1465
    .end local v17    # "userId":I
    .end local v138    # "uri":Landroid/net/Uri;
    .end local v141    # "mode":I
    :sswitch_69
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1466
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1467
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_61

    const/4 v0, 0x1

    move/16 v265, v0

    .line 1468
    .local v265, "incoming":Z
    :goto_50
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v265

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getPersistedUriPermissions(Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    move-object/16 v317, v0

    .line 1470
    .local v317, "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1471
    const/4 v6, 0x1

    move-object/from16 v0, v317

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1472
    const/4 v6, 0x1

    return v6

    .line 1467
    .end local v265    # "incoming":Z
    .end local v317    # "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    :cond_61
    const/4 v0, 0x0

    move/16 v265, v0

    goto :goto_50

    .line 1476
    .end local v32    # "packageName":Ljava/lang/String;
    :sswitch_6a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1477
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1478
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1479
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getGrantedUriPermissions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    move-object/16 v317, v0

    .line 1481
    .restart local v317    # "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1482
    const/4 v6, 0x1

    move-object/from16 v0, v317

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1483
    const/4 v6, 0x1

    return v6

    .line 1487
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v317    # "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    :sswitch_6b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1489
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1490
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->clearGrantedUriPermissions(Ljava/lang/String;I)V

    .line 1491
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1492
    const/4 v6, 0x1

    return v6

    .line 1496
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :sswitch_6c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1497
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v220

    .line 1498
    .restart local v220    # "b":Landroid/os/IBinder;
    invoke-static/range {v220 .. v220}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1499
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_62

    const/4 v0, 0x1

    move/16 v381, v0

    .line 1500
    .local v381, "waiting":Z
    :goto_51
    move-object/from16 v0, p0

    move/from16 v1, v381

    invoke-virtual {v0, v7, v1}, Landroid/app/ActivityManagerNative;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    .line 1501
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1502
    const/4 v6, 0x1

    return v6

    .line 1499
    .end local v381    # "waiting":Z
    :cond_62
    const/4 v0, 0x0

    move/16 v381, v0

    goto :goto_51

    .line 1506
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v220    # "b":Landroid/os/IBinder;
    :sswitch_6d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1507
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    move-object/16 v299, v0

    invoke-direct/range {v299 .. v299}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1508
    .local v299, "mi":Landroid/app/ActivityManager$MemoryInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v299

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1509
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1510
    const/4 v6, 0x0

    move-object/from16 v0, v299

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1511
    const/4 v6, 0x1

    return v6

    .line 1515
    .end local v299    # "mi":Landroid/app/ActivityManager$MemoryInfo;
    :sswitch_6e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1516
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->unhandledBack()V

    .line 1517
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1518
    const/4 v6, 0x1

    return v6

    .line 1522
    :sswitch_6f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1523
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v138

    .line 1524
    .restart local v138    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v138

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->openContentUri(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    move-object/16 v319, v0

    .line 1525
    .local v319, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1526
    move-object/from16 v0, v319

    if-eqz v0, :cond_63

    .line 1527
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1528
    const/4 v6, 0x1

    move-object/from16 v0, v319

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1532
    :goto_52
    const/4 v6, 0x1

    return v6

    .line 1530
    :cond_63
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_52

    .line 1536
    .end local v138    # "uri":Landroid/net/Uri;
    .end local v319    # "pfd":Landroid/os/ParcelFileDescriptor;
    :sswitch_70
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1537
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_64

    const/4 v0, 0x1

    move/16 v352, v0

    .line 1538
    .local v352, "showing":Z
    :goto_53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_65

    const/4 v0, 0x1

    move/16 v308, v0

    .line 1539
    .local v308, "occluded":Z
    :goto_54
    move-object/from16 v0, p0

    move/from16 v1, v352

    move/from16 v2, v308

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setLockScreenShown(ZZ)V

    .line 1540
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1541
    const/4 v6, 0x1

    return v6

    .line 1537
    .end local v308    # "occluded":Z
    .end local v352    # "showing":Z
    :cond_64
    const/4 v0, 0x0

    move/16 v352, v0

    .restart local v352    # "showing":Z
    goto :goto_53

    .line 1538
    :cond_65
    const/4 v0, 0x0

    move/16 v308, v0

    goto :goto_54

    .line 1545
    .end local v352    # "showing":Z
    :sswitch_71
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v323, v0

    .line 1547
    .local v323, "pn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_66

    const/4 v0, 0x1

    move/16 v383, v0

    .line 1548
    .local v383, "wfd":Z
    :goto_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_67

    const/4 v0, 0x1

    move/16 v315, v0

    .line 1549
    .local v315, "per":Z
    :goto_56
    move-object/from16 v0, p0

    move-object/from16 v1, v323

    move/from16 v2, v383

    move/from16 v3, v315

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 1550
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1551
    const/4 v6, 0x1

    return v6

    .line 1547
    .end local v315    # "per":Z
    .end local v383    # "wfd":Z
    :cond_66
    const/4 v0, 0x0

    move/16 v383, v0

    .restart local v383    # "wfd":Z
    goto :goto_55

    .line 1548
    :cond_67
    const/4 v0, 0x0

    move/16 v315, v0

    goto :goto_56

    .line 1555
    .end local v323    # "pn":Ljava/lang/String;
    .end local v383    # "wfd":Z
    :sswitch_72
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1556
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_68

    const/16 v241, 0x1

    .line 1557
    .local v241, "enabled":Z
    :goto_57
    move-object/from16 v0, p0

    move/from16 v1, v241

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setAlwaysFinish(Z)V

    .line 1558
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1559
    const/4 v6, 0x1

    return v6

    .line 1556
    .end local v241    # "enabled":Z
    :cond_68
    const/16 v241, 0x0

    goto :goto_57

    .line 1563
    :sswitch_73
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1564
    invoke-static {v6}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v0

    move-object/16 v382, v0

    .line 1566
    .local v382, "watcher":Landroid/app/IActivityController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_69

    const/4 v0, 0x1

    move/16 v261, v0

    .line 1567
    .local v261, "imAMonkey":Z
    :goto_58
    move-object/from16 v0, p0

    move-object/from16 v1, v382

    move/from16 v2, v261

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setActivityController(Landroid/app/IActivityController;Z)V

    .line 1568
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1569
    const/4 v6, 0x1

    return v6

    .line 1566
    .end local v261    # "imAMonkey":Z
    :cond_69
    const/4 v0, 0x0

    move/16 v261, v0

    goto :goto_58

    .line 1573
    .end local v382    # "watcher":Landroid/app/IActivityController;
    :sswitch_74
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1574
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6a

    const/16 v241, 0x1

    .line 1575
    .restart local v241    # "enabled":Z
    :goto_59
    move-object/from16 v0, p0

    move/from16 v1, v241

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setLenientBackgroundCheck(Z)V

    .line 1576
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1577
    const/4 v6, 0x1

    return v6

    .line 1574
    .end local v241    # "enabled":Z
    :cond_6a
    const/16 v241, 0x0

    goto :goto_59

    .line 1581
    :sswitch_75
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1582
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getMemoryTrimLevel()I

    move-result v0

    move/16 v283, v0

    .line 1583
    .local v283, "level":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1584
    move-object/from16 v0, p3

    move/from16 v1, v283

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1585
    const/4 v6, 0x1

    return v6

    .line 1589
    .end local v283    # "level":I
    :sswitch_76
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1590
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->enterSafeMode()V

    .line 1591
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1592
    const/4 v6, 0x1

    return v6

    .line 1596
    :sswitch_77
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1598
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1597
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v274, v0

    .line 1599
    .local v274, "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v357, v0

    .line 1600
    .local v357, "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v356, v0

    .line 1601
    .local v356, "sourcePkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v364, v0

    .line 1602
    .local v364, "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v274

    move/from16 v2, v357

    move-object/from16 v3, v356

    move-object/from16 v4, v364

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/content/IIntentSender;ILjava/lang/String;Ljava/lang/String;)V

    .line 1603
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1604
    const/4 v6, 0x1

    return v6

    .line 1608
    .end local v274    # "is":Landroid/content/IIntentSender;
    .end local v356    # "sourcePkg":Ljava/lang/String;
    .end local v357    # "sourceUid":I
    .end local v364    # "tag":Ljava/lang/String;
    :sswitch_78
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1610
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1609
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v274, v0

    .line 1611
    .restart local v274    # "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v357, v0

    .line 1612
    .restart local v357    # "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v364, v0

    .line 1613
    .restart local v364    # "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v274

    move/from16 v2, v357

    move-object/from16 v3, v364

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->noteAlarmStart(Landroid/content/IIntentSender;ILjava/lang/String;)V

    .line 1614
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1615
    const/4 v6, 0x1

    return v6

    .line 1619
    .end local v274    # "is":Landroid/content/IIntentSender;
    .end local v357    # "sourceUid":I
    .end local v364    # "tag":Ljava/lang/String;
    :sswitch_79
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1621
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1620
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v274, v0

    .line 1622
    .restart local v274    # "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v357, v0

    .line 1623
    .restart local v357    # "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v364, v0

    .line 1624
    .restart local v364    # "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v274

    move/from16 v2, v357

    move-object/from16 v3, v364

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->noteAlarmFinish(Landroid/content/IIntentSender;ILjava/lang/String;)V

    .line 1625
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1626
    const/4 v6, 0x1

    return v6

    .line 1630
    .end local v274    # "is":Landroid/content/IIntentSender;
    .end local v357    # "sourceUid":I
    .end local v364    # "tag":Ljava/lang/String;
    :sswitch_7a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1631
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    move-object/16 v321, v0

    .line 1632
    .local v321, "pids":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v330, v0

    .line 1633
    .local v330, "reason":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6b

    const/4 v0, 0x1

    move/16 v350, v0

    .line 1634
    .local v350, "secure":Z
    :goto_5a
    move-object/from16 v0, p0

    move-object/from16 v1, v321

    move-object/from16 v2, v330

    move/from16 v3, v350

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killPids([ILjava/lang/String;Z)Z

    move-result v0

    move/16 v339, v0

    .line 1635
    .restart local v339    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1636
    move/from16 v0, v339

    if-eqz v0, :cond_6c

    const/4 v6, 0x1

    :goto_5b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1637
    const/4 v6, 0x1

    return v6

    .line 1633
    .end local v339    # "res":Z
    .end local v350    # "secure":Z
    :cond_6b
    const/4 v0, 0x0

    move/16 v350, v0

    goto :goto_5a

    .line 1636
    .restart local v339    # "res":Z
    .restart local v350    # "secure":Z
    :cond_6c
    const/4 v6, 0x0

    goto :goto_5b

    .line 1641
    .end local v321    # "pids":[I
    .end local v330    # "reason":Ljava/lang/String;
    .end local v339    # "res":Z
    .end local v350    # "secure":Z
    :sswitch_7b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1642
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v330, v0

    .line 1643
    .restart local v330    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v330

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->killProcessesBelowForeground(Ljava/lang/String;)Z

    move-result v0

    move/16 v339, v0

    .line 1644
    .restart local v339    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1645
    move/from16 v0, v339

    if-eqz v0, :cond_6d

    const/4 v6, 0x1

    :goto_5c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1646
    const/4 v6, 0x1

    return v6

    .line 1645
    :cond_6d
    const/4 v6, 0x0

    goto :goto_5c

    .line 1650
    .end local v330    # "reason":Ljava/lang/String;
    .end local v339    # "res":Z
    :sswitch_7c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v216

    .line 1652
    .local v216, "app":Landroid/os/IBinder;
    new-instance v229, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v229

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1653
    .local v229, "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v216

    move-object/from16 v2, v229

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1654
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1655
    const/4 v6, 0x1

    return v6

    .line 1659
    .end local v216    # "app":Landroid/os/IBinder;
    .end local v229    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    :sswitch_7d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1660
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v216

    .line 1661
    .restart local v216    # "app":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v364, v0

    .line 1662
    .restart local v364    # "tag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6e

    const/4 v0, 0x1

    move/16 v363, v0

    .line 1663
    .local v363, "system":Z
    :goto_5d
    new-instance v229, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v229

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1664
    .restart local v229    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v216

    move-object/from16 v2, v364

    move/from16 v3, v363

    move-object/from16 v4, v229

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$CrashInfo;)Z

    move-result v0

    move/16 v339, v0

    .line 1665
    .restart local v339    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1666
    move/from16 v0, v339

    if-eqz v0, :cond_6f

    const/4 v6, 0x1

    :goto_5e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1667
    const/4 v6, 0x1

    return v6

    .line 1662
    .end local v229    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v339    # "res":Z
    .end local v363    # "system":Z
    :cond_6e
    const/4 v0, 0x0

    move/16 v363, v0

    .restart local v363    # "system":Z
    goto :goto_5d

    .line 1666
    .restart local v229    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .restart local v339    # "res":Z
    :cond_6f
    const/4 v6, 0x0

    goto :goto_5e

    .line 1671
    .end local v216    # "app":Landroid/os/IBinder;
    .end local v229    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v339    # "res":Z
    .end local v363    # "system":Z
    .end local v364    # "tag":Ljava/lang/String;
    :sswitch_7e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1672
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v216

    .line 1673
    .restart local v216    # "app":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v380, v0

    .line 1674
    .local v380, "violationMask":I
    new-instance v0, Landroid/os/StrictMode$ViolationInfo;

    move-object/16 v271, v0

    move-object/from16 v0, v271

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;)V

    .line 1675
    .local v271, "info":Landroid/os/StrictMode$ViolationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v216

    move/from16 v2, v380

    move-object/from16 v3, v271

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    .line 1676
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1677
    const/4 v6, 0x1

    return v6

    .line 1681
    .end local v216    # "app":Landroid/os/IBinder;
    .end local v271    # "info":Landroid/os/StrictMode$ViolationInfo;
    .end local v380    # "violationMask":I
    :sswitch_7f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1682
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v353, v0

    .line 1683
    .local v353, "sig":I
    move-object/from16 v0, p0

    move/from16 v1, v353

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->signalPersistentProcesses(I)V

    .line 1684
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1685
    const/4 v6, 0x1

    return v6

    .line 1689
    .end local v353    # "sig":I
    :sswitch_80
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1690
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1691
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1692
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killBackgroundProcesses(Ljava/lang/String;I)V

    .line 1693
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1694
    const/4 v6, 0x1

    return v6

    .line 1698
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :sswitch_81
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1699
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->killAllBackgroundProcesses()V

    .line 1700
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1701
    const/4 v6, 0x1

    return v6

    .line 1705
    :sswitch_82
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1706
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1707
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1708
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killPackageDependents(Ljava/lang/String;I)V

    .line 1709
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1710
    const/4 v6, 0x1

    return v6

    .line 1714
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :sswitch_83
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1715
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1716
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1717
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->forceStopPackage(Ljava/lang/String;I)V

    .line 1718
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1719
    const/4 v6, 0x1

    return v6

    .line 1723
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :sswitch_84
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1725
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/16 v266, v0

    invoke-direct/range {v266 .. v266}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 1726
    .local v266, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v266

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 1727
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1728
    const/4 v6, 0x0

    move-object/from16 v0, v266

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningAppProcessInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1729
    const/4 v6, 0x1

    return v6

    .line 1733
    .end local v266    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :sswitch_85
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1734
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v232

    .line 1735
    .local v232, "config":Landroid/content/pm/ConfigurationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1736
    const/4 v6, 0x0

    move-object/from16 v0, v232

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ConfigurationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1737
    const/4 v6, 0x1

    return v6

    .line 1741
    .end local v232    # "config":Landroid/content/pm/ConfigurationInfo;
    :sswitch_86
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1742
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v148

    .line 1743
    .local v148, "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1744
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_70

    const/16 v150, 0x1

    .line 1745
    .local v150, "start":Z
    :goto_5f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v152

    .line 1746
    .local v152, "profileType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_71

    .line 1747
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .local v15, "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_60
    move-object/from16 v147, p0

    move/from16 v149, v17

    move-object/from16 v151, v15

    .line 1748
    invoke-virtual/range {v147 .. v152}, Landroid/app/ActivityManagerNative;->profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z

    move-result v0

    move/16 v339, v0

    .line 1749
    .restart local v339    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1750
    move/from16 v0, v339

    if-eqz v0, :cond_72

    const/4 v6, 0x1

    :goto_61
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1751
    const/4 v6, 0x1

    return v6

    .line 1744
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v150    # "start":Z
    .end local v152    # "profileType":I
    .end local v339    # "res":Z
    :cond_70
    const/16 v150, 0x0

    .restart local v150    # "start":Z
    goto :goto_5f

    .line 1747
    .restart local v152    # "profileType":I
    :cond_71
    const/4 v15, 0x0

    goto :goto_60

    .line 1750
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v339    # "res":Z
    :cond_72
    const/4 v6, 0x0

    goto :goto_61

    .line 1755
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v17    # "userId":I
    .end local v148    # "process":Ljava/lang/String;
    .end local v150    # "start":Z
    .end local v152    # "profileType":I
    .end local v339    # "res":Z
    :sswitch_87
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1756
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->shutdown(I)Z

    move-result v0

    move/16 v339, v0

    .line 1757
    .restart local v339    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1758
    move/from16 v0, v339

    if-eqz v0, :cond_73

    const/4 v6, 0x1

    :goto_62
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1759
    const/4 v6, 0x1

    return v6

    .line 1758
    :cond_73
    const/4 v6, 0x0

    goto :goto_62

    .line 1763
    .end local v339    # "res":Z
    :sswitch_88
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1764
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopAppSwitches()V

    .line 1765
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1766
    const/4 v6, 0x1

    return v6

    .line 1770
    :sswitch_89
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1771
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->resumeAppSwitches()V

    .line 1772
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1773
    const/4 v6, 0x1

    return v6

    .line 1777
    :sswitch_8a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1778
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v98

    check-cast v98, Landroid/content/Intent;

    .line 1779
    .restart local v98    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1780
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1781
    .restart local v8    # "callingPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v1, v10, v8}, Landroid/app/ActivityManagerNative;->peekService(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v222

    .line 1782
    .local v222, "binder":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1783
    move-object/from16 v0, p3

    move-object/from16 v1, v222

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1784
    const/4 v6, 0x1

    return v6

    .line 1788
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v98    # "service":Landroid/content/Intent;
    .end local v222    # "binder":Landroid/os/IBinder;
    :sswitch_8b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1789
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1790
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v221

    .line 1791
    .local v221, "backupRestoreMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1792
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v221

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->bindBackupAgent(Ljava/lang/String;II)Z

    move-result v0

    move/16 v361, v0

    .line 1793
    .local v361, "success":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1794
    move/from16 v0, v361

    if-eqz v0, :cond_74

    const/4 v6, 0x1

    :goto_63
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1795
    const/4 v6, 0x1

    return v6

    .line 1794
    :cond_74
    const/4 v6, 0x0

    goto :goto_63

    .line 1799
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v221    # "backupRestoreMode":I
    .end local v361    # "success":Z
    :sswitch_8c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1800
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1801
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v213

    .line 1802
    .local v213, "agent":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v213

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1803
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1804
    const/4 v6, 0x1

    return v6

    .line 1808
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v213    # "agent":Landroid/os/IBinder;
    :sswitch_8d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1809
    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v270, v0

    move-object/from16 v0, v270

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    move-object/16 v270, v0

    .line 1810
    .local v270, "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v270

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1811
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1812
    const/4 v6, 0x1

    return v6

    .line 1816
    .end local v270    # "info":Landroid/content/pm/ApplicationInfo;
    :sswitch_8e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1817
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1818
    .restart local v32    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->addPackageDependency(Ljava/lang/String;)V

    .line 1819
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1820
    const/4 v6, 0x1

    return v6

    .line 1824
    .end local v32    # "packageName":Ljava/lang/String;
    :sswitch_8f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1825
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v322, v0

    .line 1826
    .local v322, "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v217

    .line 1827
    .local v217, "appId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1828
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v330, v0

    .line 1829
    .restart local v330    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v322

    move/from16 v2, v217

    move/from16 v3, v17

    move-object/from16 v4, v330

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->killApplication(Ljava/lang/String;IILjava/lang/String;)V

    .line 1830
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1831
    const/4 v6, 0x1

    return v6

    .line 1835
    .end local v17    # "userId":I
    .end local v217    # "appId":I
    .end local v322    # "pkg":Ljava/lang/String;
    .end local v330    # "reason":Ljava/lang/String;
    :sswitch_90
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1836
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v330, v0

    .line 1837
    .restart local v330    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v330

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->closeSystemDialogs(Ljava/lang/String;)V

    .line 1838
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1839
    const/4 v6, 0x1

    return v6

    .line 1843
    .end local v330    # "reason":Ljava/lang/String;
    :sswitch_91
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1844
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    move-object/16 v321, v0

    .line 1845
    .restart local v321    # "pids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v321

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    move-object/16 v340, v0

    .line 1846
    .local v340, "res":[Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1847
    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v340

    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1848
    const/4 v6, 0x1

    return v6

    .line 1852
    .end local v321    # "pids":[I
    .end local v340    # "res":[Landroid/os/Debug$MemoryInfo;
    :sswitch_92
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1853
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v326, v0

    .line 1854
    .local v326, "processName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v140

    .line 1855
    .restart local v140    # "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v326

    move/from16 v2, v140

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationProcess(Ljava/lang/String;I)V

    .line 1856
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1857
    const/4 v6, 0x1

    return v6

    .line 1861
    .end local v140    # "uid":I
    .end local v326    # "processName":Ljava/lang/String;
    :sswitch_93
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1862
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 1863
    .restart local v101    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1864
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v242

    .line 1865
    .local v242, "enterAnim":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v243

    .line 1866
    .local v243, "exitAnim":I
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move-object/from16 v2, v32

    move/from16 v3, v242

    move/from16 v4, v243

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 1867
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1868
    const/4 v6, 0x1

    return v6

    .line 1872
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v242    # "enterAnim":I
    .end local v243    # "exitAnim":I
    :sswitch_94
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1873
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isUserAMonkey()Z

    move-result v218

    .line 1874
    .local v218, "areThey":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1875
    if-eqz v218, :cond_75

    const/4 v6, 0x1

    :goto_64
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1876
    const/4 v6, 0x1

    return v6

    .line 1875
    :cond_75
    const/4 v6, 0x0

    goto :goto_64

    .line 1880
    .end local v218    # "areThey":Z
    :sswitch_95
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1881
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_76

    const/4 v0, 0x1

    move/16 v300, v0

    .line 1882
    .local v300, "monkey":Z
    :goto_65
    move-object/from16 v0, p0

    move/from16 v1, v300

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setUserIsMonkey(Z)V

    .line 1883
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1884
    const/4 v6, 0x1

    return v6

    .line 1881
    .end local v300    # "monkey":Z
    :cond_76
    const/4 v0, 0x0

    move/16 v300, v0

    goto :goto_65

    .line 1888
    :sswitch_96
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1889
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->finishHeavyWeightApp()V

    .line 1890
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1891
    const/4 v6, 0x1

    return v6

    .line 1895
    :sswitch_97
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1896
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 1897
    .restart local v101    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isImmersive(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v279, v0

    .line 1898
    .local v279, "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1899
    move/from16 v0, v279

    if-eqz v0, :cond_77

    const/4 v6, 0x1

    :goto_66
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1900
    const/4 v6, 0x1

    return v6

    .line 1899
    :cond_77
    const/4 v6, 0x0

    goto :goto_66

    .line 1904
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v279    # "isit":Z
    :sswitch_98
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1905
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 1906
    .restart local v101    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v278, v0

    .line 1907
    .local v278, "isTopOfTask":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1908
    move/from16 v0, v278

    if-eqz v0, :cond_78

    const/4 v6, 0x1

    :goto_67
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1909
    const/4 v6, 0x1

    return v6

    .line 1908
    :cond_78
    const/4 v6, 0x0

    goto :goto_67

    .line 1913
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v278    # "isTopOfTask":Z
    :sswitch_99
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1914
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 1915
    .restart local v101    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v233

    .line 1916
    .local v233, "converted":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1917
    if-eqz v233, :cond_79

    const/4 v6, 0x1

    :goto_68
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1918
    const/4 v6, 0x1

    return v6

    .line 1917
    :cond_79
    const/4 v6, 0x0

    goto :goto_68

    .line 1922
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v233    # "converted":Z
    :sswitch_9a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1923
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 1925
    .restart local v101    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_7a

    .line 1926
    const/16 v225, 0x0

    .line 1930
    :goto_69
    invoke-static/range {v225 .. v225}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v0

    move-object/16 v311, v0

    .line 1931
    .local v311, "options":Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move-object/from16 v2, v311

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->convertToTranslucent(Landroid/os/IBinder;Landroid/app/ActivityOptions;)Z

    move-result v233

    .line 1932
    .restart local v233    # "converted":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1933
    if-eqz v233, :cond_7b

    const/4 v6, 0x1

    :goto_6a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1934
    const/4 v6, 0x1

    return v6

    .line 1928
    .end local v233    # "converted":Z
    .end local v311    # "options":Landroid/app/ActivityOptions;
    :cond_7a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v225

    .local v225, "bundle":Landroid/os/Bundle;
    goto :goto_69

    .line 1933
    .end local v225    # "bundle":Landroid/os/Bundle;
    .restart local v233    # "converted":Z
    .restart local v311    # "options":Landroid/app/ActivityOptions;
    :cond_7b
    const/4 v6, 0x0

    goto :goto_6a

    .line 1938
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v233    # "converted":Z
    .end local v311    # "options":Landroid/app/ActivityOptions;
    :sswitch_9b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1939
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 1940
    .restart local v101    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityOptions(Landroid/os/IBinder;)Landroid/app/ActivityOptions;

    move-result-object v0

    move-object/16 v311, v0

    .line 1941
    .restart local v311    # "options":Landroid/app/ActivityOptions;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1942
    move-object/from16 v0, v311

    if-nez v0, :cond_7c

    const/4 v6, 0x0

    :goto_6b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1943
    const/4 v6, 0x1

    return v6

    .line 1942
    :cond_7c
    invoke-virtual/range {v311 .. v311}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    goto :goto_6b

    .line 1947
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v311    # "options":Landroid/app/ActivityOptions;
    :sswitch_9c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1948
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 1949
    .restart local v101    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_7d

    const/4 v0, 0x1

    move/16 v262, v0

    .line 1950
    .local v262, "imm":Z
    :goto_6c
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move/from16 v2, v262

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setImmersive(Landroid/os/IBinder;Z)V

    .line 1951
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1952
    const/4 v6, 0x1

    return v6

    .line 1949
    .end local v262    # "imm":Z
    :cond_7d
    const/4 v0, 0x0

    move/16 v262, v0

    goto :goto_6c

    .line 1956
    .end local v101    # "token":Landroid/os/IBinder;
    :sswitch_9d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1957
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isTopActivityImmersive()Z

    move-result v0

    move/16 v279, v0

    .line 1958
    .restart local v279    # "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1959
    move/from16 v0, v279

    if-eqz v0, :cond_7e

    const/4 v6, 0x1

    :goto_6d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1960
    const/4 v6, 0x1

    return v6

    .line 1959
    :cond_7e
    const/4 v6, 0x0

    goto :goto_6d

    .line 1964
    .end local v279    # "isit":Z
    :sswitch_9e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1965
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v140

    .line 1966
    .restart local v140    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v272, v0

    .line 1967
    .local v272, "initialPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1968
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v298, v0

    .line 1969
    .local v298, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v140

    move/from16 v2, v272

    move-object/from16 v3, v32

    move-object/from16 v4, v298

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V

    .line 1970
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1971
    const/4 v6, 0x1

    return v6

    .line 1975
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v140    # "uid":I
    .end local v272    # "initialPid":I
    .end local v298    # "message":Ljava/lang/String;
    :sswitch_9f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1976
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v138

    check-cast v138, Landroid/net/Uri;

    .line 1977
    .restart local v138    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1978
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v138

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    move-object/16 v374, v0

    .line 1979
    .local v374, "type":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1980
    move-object/from16 v0, p3

    move-object/from16 v1, v374

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1981
    const/4 v6, 0x1

    return v6

    .line 1985
    .end local v17    # "userId":I
    .end local v138    # "uri":Landroid/net/Uri;
    .end local v374    # "type":Ljava/lang/String;
    :sswitch_a0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1986
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v91

    .line 1987
    .restart local v91    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    move-object/16 v316, v0

    .line 1988
    .local v316, "perm":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1989
    move-object/from16 v0, p3

    move-object/from16 v1, v316

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1990
    const/4 v6, 0x1

    return v6

    .line 1994
    .end local v91    # "name":Ljava/lang/String;
    .end local v316    # "perm":Landroid/os/IBinder;
    :sswitch_a1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1995
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v181

    .line 1996
    .restart local v181    # "activityToken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v181

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getUriPermissionOwnerForActivity(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    move-object/16 v316, v0

    .line 1997
    .restart local v316    # "perm":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1998
    move-object/from16 v0, p3

    move-object/from16 v1, v316

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1999
    const/4 v6, 0x1

    return v6

    .line 2003
    .end local v181    # "activityToken":Landroid/os/IBinder;
    .end local v316    # "perm":Landroid/os/IBinder;
    :sswitch_a2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2004
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v154

    .line 2005
    .local v154, "owner":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v155

    .line 2006
    .local v155, "fromUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v146

    .line 2007
    .restart local v146    # "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v138

    check-cast v138, Landroid/net/Uri;

    .line 2008
    .restart local v138    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v141

    .line 2009
    .restart local v141    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v159

    .line 2010
    .local v159, "sourceUserId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v160

    .local v160, "targetUserId":I
    move-object/from16 v153, p0

    move-object/from16 v156, v146

    move-object/from16 v157, v138

    move/from16 v158, v141

    .line 2011
    invoke-virtual/range {v153 .. v160}, Landroid/app/ActivityManagerNative;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V

    .line 2013
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2014
    const/4 v6, 0x1

    return v6

    .line 2018
    .end local v138    # "uri":Landroid/net/Uri;
    .end local v141    # "mode":I
    .end local v146    # "targetPkg":Ljava/lang/String;
    .end local v154    # "owner":Landroid/os/IBinder;
    .end local v155    # "fromUid":I
    .end local v159    # "sourceUserId":I
    .end local v160    # "targetUserId":I
    :sswitch_a3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2019
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v154

    .line 2020
    .restart local v154    # "owner":Landroid/os/IBinder;
    const/16 v138, 0x0

    .line 2021
    .local v138, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7f

    .line 2022
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v138

    .end local v138    # "uri":Landroid/net/Uri;
    check-cast v138, Landroid/net/Uri;

    .line 2024
    :cond_7f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v141

    .line 2025
    .restart local v141    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2026
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v154

    move-object/from16 v2, v138

    move/from16 v3, v141

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    .line 2027
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2028
    const/4 v6, 0x1

    return v6

    .line 2032
    .end local v17    # "userId":I
    .end local v141    # "mode":I
    .end local v154    # "owner":Landroid/os/IBinder;
    :sswitch_a4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2033
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 2034
    .restart local v43    # "callingUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v146

    .line 2035
    .restart local v146    # "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v138

    check-cast v138, Landroid/net/Uri;

    .line 2036
    .local v138, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v165

    .line 2037
    .local v165, "modeFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v161, p0

    move/from16 v162, v43

    move-object/from16 v163, v146

    move-object/from16 v164, v138

    move/from16 v166, v17

    .line 2038
    invoke-virtual/range {v161 .. v166}, Landroid/app/ActivityManagerNative;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    move-result v0

    move/16 v333, v0

    .line 2039
    .restart local v333    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2040
    move-object/from16 v0, p3

    move/from16 v1, v333

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2041
    const/4 v6, 0x1

    return v6

    .line 2045
    .end local v17    # "userId":I
    .end local v43    # "callingUid":I
    .end local v138    # "uri":Landroid/net/Uri;
    .end local v146    # "targetPkg":Ljava/lang/String;
    .end local v165    # "modeFlags":I
    .end local v333    # "res":I
    :sswitch_a5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2046
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v148

    .line 2047
    .restart local v148    # "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2048
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_80

    const/16 v169, 0x1

    .line 2049
    .local v169, "managed":Z
    :goto_6e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v170

    .line 2050
    .local v170, "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_81

    .line 2051
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v171, v6

    .local v171, "fd":Landroid/os/ParcelFileDescriptor;
    :goto_6f
    move-object/from16 v166, p0

    move-object/from16 v167, v148

    move/from16 v168, v17

    .line 2052
    invoke-virtual/range {v166 .. v171}, Landroid/app/ActivityManagerNative;->dumpHeap(Ljava/lang/String;IZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v0

    move/16 v339, v0

    .line 2053
    .restart local v339    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2054
    move/from16 v0, v339

    if-eqz v0, :cond_82

    const/4 v6, 0x1

    :goto_70
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2055
    const/4 v6, 0x1

    return v6

    .line 2048
    .end local v169    # "managed":Z
    .end local v170    # "path":Ljava/lang/String;
    .end local v171    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v339    # "res":Z
    :cond_80
    const/16 v169, 0x0

    .restart local v169    # "managed":Z
    goto :goto_6e

    .line 2051
    .restart local v170    # "path":Ljava/lang/String;
    :cond_81
    const/16 v171, 0x0

    goto :goto_6f

    .line 2054
    .restart local v171    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v339    # "res":Z
    :cond_82
    const/4 v6, 0x0

    goto :goto_70

    .line 2060
    .end local v17    # "userId":I
    .end local v148    # "process":Ljava/lang/String;
    .end local v169    # "managed":Z
    .end local v170    # "path":Ljava/lang/String;
    .end local v171    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v339    # "res":Z
    :sswitch_a6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2061
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v220

    .line 2062
    .restart local v220    # "b":Landroid/os/IBinder;
    invoke-static/range {v220 .. v220}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 2063
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2064
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v175

    check-cast v175, [Landroid/content/Intent;

    .line 2065
    .local v175, "intents":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v176

    .line 2066
    .local v176, "resolvedTypes":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 2067
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_83

    .line 2068
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 2069
    :goto_71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v172, p0

    move-object/from16 v173, v7

    move-object/from16 v174, v8

    move-object/from16 v177, v11

    move-object/from16 v178, v16

    move/from16 v179, v17

    .line 2070
    invoke-virtual/range {v172 .. v179}, Landroid/app/ActivityManagerNative;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v0

    move/16 v343, v0

    .line 2072
    .restart local v343    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2073
    move-object/from16 v0, p3

    move/from16 v1, v343

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2074
    const/4 v6, 0x1

    return v6

    .line 2068
    .end local v17    # "userId":I
    .end local v343    # "result":I
    :cond_83
    const/16 v16, 0x0

    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_71

    .line 2079
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v175    # "intents":[Landroid/content/Intent;
    .end local v176    # "resolvedTypes":[Ljava/lang/String;
    .end local v220    # "b":Landroid/os/IBinder;
    :sswitch_a7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2080
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFrontActivityScreenCompatMode()I

    move-result v141

    .line 2081
    .restart local v141    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2082
    move-object/from16 v0, p3

    move/from16 v1, v141

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2083
    const/4 v6, 0x1

    return v6

    .line 2088
    .end local v141    # "mode":I
    :sswitch_a8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2089
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v141

    .line 2090
    .restart local v141    # "mode":I
    move-object/from16 v0, p0

    move/from16 v1, v141

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFrontActivityScreenCompatMode(I)V

    .line 2091
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2092
    move-object/from16 v0, p3

    move/from16 v1, v141

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2093
    const/4 v6, 0x1

    return v6

    .line 2098
    .end local v141    # "mode":I
    :sswitch_a9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2099
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v322, v0

    .line 2100
    .restart local v322    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v322

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v141

    .line 2101
    .restart local v141    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2102
    move-object/from16 v0, p3

    move/from16 v1, v141

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2103
    const/4 v6, 0x1

    return v6

    .line 2108
    .end local v141    # "mode":I
    .end local v322    # "pkg":Ljava/lang/String;
    :sswitch_aa
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v322, v0

    .line 2110
    .restart local v322    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v141

    .line 2111
    .restart local v141    # "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v322

    move/from16 v2, v141

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 2112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2113
    const/4 v6, 0x1

    return v6

    .line 2117
    .end local v141    # "mode":I
    .end local v322    # "pkg":Ljava/lang/String;
    :sswitch_ab
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v377, v0

    .line 2119
    .local v377, "userid":I
    move-object/from16 v0, p0

    move/from16 v1, v377

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->switchUser(I)Z

    move-result v0

    move/16 v345, v0

    .line 2120
    .restart local v345    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2121
    move/from16 v0, v345

    if-eqz v0, :cond_84

    const/4 v6, 0x1

    :goto_72
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2122
    const/4 v6, 0x1

    return v6

    .line 2121
    :cond_84
    const/4 v6, 0x0

    goto :goto_72

    .line 2126
    .end local v345    # "result":Z
    .end local v377    # "userid":I
    :sswitch_ac
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v377, v0

    .line 2128
    .restart local v377    # "userid":I
    move-object/from16 v0, p0

    move/from16 v1, v377

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startUserInBackground(I)Z

    move-result v0

    move/16 v345, v0

    .line 2129
    .restart local v345    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2130
    move/from16 v0, v345

    if-eqz v0, :cond_85

    const/4 v6, 0x1

    :goto_73
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2131
    const/4 v6, 0x1

    return v6

    .line 2130
    :cond_85
    const/4 v6, 0x0

    goto :goto_73

    .line 2135
    .end local v345    # "result":Z
    .end local v377    # "userid":I
    :sswitch_ad
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2137
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    move-object/16 v372, v0

    .line 2138
    .local v372, "token":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    move-object/16 v349, v0

    .line 2140
    .local v349, "secret":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2139
    invoke-static {v6}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v0

    move-object/16 v293, v0

    .line 2141
    .local v293, "listener":Landroid/os/IProgressListener;
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v372

    move-object/from16 v3, v349

    move-object/from16 v4, v293

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z

    move-result v0

    move/16 v345, v0

    .line 2142
    .restart local v345    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2143
    move/from16 v0, v345

    if-eqz v0, :cond_86

    const/4 v6, 0x1

    :goto_74
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2144
    const/4 v6, 0x1

    return v6

    .line 2143
    :cond_86
    const/4 v6, 0x0

    goto :goto_74

    .line 2148
    .end local v17    # "userId":I
    .end local v293    # "listener":Landroid/os/IProgressListener;
    .end local v345    # "result":Z
    .end local v349    # "secret":[B
    .end local v372    # "token":[B
    :sswitch_ae
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v377, v0

    .line 2150
    .restart local v377    # "userid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_87

    const/16 v248, 0x1

    .line 2152
    .local v248, "force":Z
    :goto_75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2151
    invoke-static {v6}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v227

    .line 2153
    .local v227, "callback":Landroid/app/IStopUserCallback;
    move-object/from16 v0, p0

    move/from16 v1, v377

    move/from16 v2, v248

    move-object/from16 v3, v227

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopUser(IZLandroid/app/IStopUserCallback;)I

    move-result v0

    move/16 v343, v0

    .line 2154
    .restart local v343    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2155
    move-object/from16 v0, p3

    move/from16 v1, v343

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2156
    const/4 v6, 0x1

    return v6

    .line 2150
    .end local v227    # "callback":Landroid/app/IStopUserCallback;
    .end local v248    # "force":Z
    .end local v343    # "result":I
    :cond_87
    const/16 v248, 0x0

    .restart local v248    # "force":Z
    goto :goto_75

    .line 2160
    .end local v248    # "force":Z
    .end local v377    # "userid":I
    :sswitch_af
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2161
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    move-object/16 v376, v0

    .line 2162
    .local v376, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2163
    const/4 v6, 0x0

    move-object/from16 v0, v376

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2164
    const/4 v6, 0x1

    return v6

    .line 2168
    .end local v376    # "userInfo":Landroid/content/pm/UserInfo;
    :sswitch_b0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v377, v0

    .line 2170
    .restart local v377    # "userid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v196

    .line 2171
    .local v196, "_flags":I
    move-object/from16 v0, p0

    move/from16 v1, v377

    move/from16 v2, v196

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->isUserRunning(II)Z

    move-result v0

    move/16 v345, v0

    .line 2172
    .restart local v345    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2173
    move/from16 v0, v345

    if-eqz v0, :cond_88

    const/4 v6, 0x1

    :goto_76
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2174
    const/4 v6, 0x1

    return v6

    .line 2173
    :cond_88
    const/4 v6, 0x0

    goto :goto_76

    .line 2178
    .end local v196    # "_flags":I
    .end local v345    # "result":Z
    .end local v377    # "userid":I
    :sswitch_b1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2179
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningUserIds()[I

    move-result-object v0

    move-object/16 v346, v0

    .line 2180
    .local v346, "result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2181
    move-object/from16 v0, p3

    move-object/from16 v1, v346

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2182
    const/4 v6, 0x1

    return v6

    .line 2187
    .end local v346    # "result":[I
    :sswitch_b2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 2189
    .restart local v69    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->removeTask(I)Z

    move-result v0

    move/16 v345, v0

    .line 2190
    .restart local v345    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2191
    move/from16 v0, v345

    if-eqz v0, :cond_89

    const/4 v6, 0x1

    :goto_77
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2192
    const/4 v6, 0x1

    return v6

    .line 2191
    :cond_89
    const/4 v6, 0x0

    goto :goto_77

    .line 2196
    .end local v69    # "taskId":I
    .end local v345    # "result":Z
    :sswitch_b3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2197
    invoke-static {v6}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v0

    move-object/16 v304, v0

    .line 2199
    .local v304, "observer":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v304

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 2200
    const/4 v6, 0x1

    return v6

    .line 2204
    .end local v304    # "observer":Landroid/app/IProcessObserver;
    :sswitch_b4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2205
    invoke-static {v6}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v0

    move-object/16 v304, v0

    .line 2207
    .restart local v304    # "observer":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v304

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 2208
    const/4 v6, 0x1

    return v6

    .line 2212
    .end local v304    # "observer":Landroid/app/IProcessObserver;
    :sswitch_b5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2213
    invoke-static {v6}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v0

    move-object/16 v305, v0

    .line 2215
    .local v305, "observer":Landroid/app/IUidObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v384, v0

    .line 2216
    .local v384, "which":I
    move-object/from16 v0, p0

    move-object/from16 v1, v305

    move/from16 v2, v384

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->registerUidObserver(Landroid/app/IUidObserver;I)V

    .line 2217
    const/4 v6, 0x1

    return v6

    .line 2221
    .end local v305    # "observer":Landroid/app/IUidObserver;
    .end local v384    # "which":I
    :sswitch_b6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2222
    invoke-static {v6}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v0

    move-object/16 v305, v0

    .line 2224
    .restart local v305    # "observer":Landroid/app/IUidObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v305

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    .line 2225
    const/4 v6, 0x1

    return v6

    .line 2230
    .end local v305    # "observer":Landroid/app/IUidObserver;
    :sswitch_b7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v322, v0

    .line 2232
    .restart local v322    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v322

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v219

    .line 2233
    .local v219, "ask":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2234
    if-eqz v219, :cond_8a

    const/4 v6, 0x1

    :goto_78
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2235
    const/4 v6, 0x1

    return v6

    .line 2234
    :cond_8a
    const/4 v6, 0x0

    goto :goto_78

    .line 2240
    .end local v219    # "ask":Z
    .end local v322    # "pkg":Ljava/lang/String;
    :sswitch_b8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v322, v0

    .line 2242
    .restart local v322    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8b

    const/16 v219, 0x1

    .line 2243
    .restart local v219    # "ask":Z
    :goto_79
    move-object/from16 v0, p0

    move-object/from16 v1, v322

    move/from16 v2, v219

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 2244
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2245
    const/4 v6, 0x1

    return v6

    .line 2242
    .end local v219    # "ask":Z
    :cond_8b
    const/16 v219, 0x0

    goto :goto_79

    .line 2249
    .end local v322    # "pkg":Ljava/lang/String;
    :sswitch_b9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2250
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v329, v0

    .line 2252
    .restart local v329    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v329

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    move-result v0

    move/16 v339, v0

    .line 2253
    .restart local v339    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2254
    move/from16 v0, v339

    if-eqz v0, :cond_8c

    const/4 v6, 0x1

    :goto_7a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2255
    const/4 v6, 0x1

    return v6

    .line 2254
    :cond_8c
    const/4 v6, 0x0

    goto :goto_7a

    .line 2259
    .end local v329    # "r":Landroid/content/IIntentSender;
    .end local v339    # "res":Z
    :sswitch_ba
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2260
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v329, v0

    .line 2262
    .restart local v329    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v329

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    move-result v0

    move/16 v339, v0

    .line 2263
    .restart local v339    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2264
    move/from16 v0, v339

    if-eqz v0, :cond_8d

    const/4 v6, 0x1

    :goto_7b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2265
    const/4 v6, 0x1

    return v6

    .line 2264
    :cond_8d
    const/4 v6, 0x0

    goto :goto_7b

    .line 2269
    .end local v329    # "r":Landroid/content/IIntentSender;
    .end local v339    # "res":Z
    :sswitch_bb
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2270
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v329, v0

    .line 2272
    .restart local v329    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v329

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v9

    .line 2273
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2274
    if-eqz v9, :cond_8e

    .line 2275
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2276
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2280
    :goto_7c
    const/4 v6, 0x1

    return v6

    .line 2278
    :cond_8e
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7c

    .line 2284
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v329    # "r":Landroid/content/IIntentSender;
    :sswitch_bc
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2285
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v329, v0

    .line 2287
    .restart local v329    # "r":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v325, v0

    .line 2288
    .local v325, "prefix":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v329

    move-object/from16 v2, v325

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/16 v364, v0

    .line 2289
    .restart local v364    # "tag":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2290
    move-object/from16 v0, p3

    move-object/from16 v1, v364

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2291
    const/4 v6, 0x1

    return v6

    .line 2295
    .end local v325    # "prefix":Ljava/lang/String;
    .end local v329    # "r":Landroid/content/IIntentSender;
    .end local v364    # "tag":Ljava/lang/String;
    :sswitch_bd
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2296
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/res/Configuration;

    .line 2297
    .restart local v39    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 2298
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2299
    const/4 v6, 0x1

    return v6

    .line 2303
    .end local v39    # "config":Landroid/content/res/Configuration;
    :sswitch_be
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    move-object/16 v321, v0

    .line 2305
    .restart local v321    # "pids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v321

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessPss([I)[J

    move-result-object v0

    move-object/16 v328, v0

    .line 2306
    .local v328, "pss":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2307
    move-object/from16 v0, p3

    move-object/from16 v1, v328

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 2308
    const/4 v6, 0x1

    return v6

    .line 2312
    .end local v321    # "pids":[I
    .end local v328    # "pss":[J
    :sswitch_bf
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2313
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v301, v0

    move-object/from16 v0, v301

    check-cast v0, Ljava/lang/CharSequence;

    move-object/16 v301, v0

    .line 2314
    .local v301, "msg":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8f

    const/16 v215, 0x1

    .line 2315
    .local v215, "always":Z
    :goto_7d
    move-object/from16 v0, p0

    move-object/from16 v1, v301

    move/from16 v2, v215

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 2316
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2317
    const/4 v6, 0x1

    return v6

    .line 2314
    .end local v215    # "always":Z
    :cond_8f
    const/16 v215, 0x0

    goto :goto_7d

    .line 2321
    .end local v301    # "msg":Ljava/lang/CharSequence;
    :sswitch_c0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2322
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->keyguardWaitingForActivityDrawn()V

    .line 2323
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2324
    const/4 v6, 0x1

    return v6

    .line 2328
    :sswitch_c1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->keyguardGoingAway(I)V

    .line 2330
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2331
    const/4 v6, 0x1

    return v6

    .line 2335
    :sswitch_c2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 2337
    .restart local v101    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v237

    .line 2338
    .local v237, "destAffinity":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move-object/from16 v2, v237

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    move/16 v339, v0

    .line 2339
    .restart local v339    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2340
    move/from16 v0, v339

    if-eqz v0, :cond_90

    const/4 v6, 0x1

    :goto_7e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2341
    const/4 v6, 0x1

    return v6

    .line 2340
    :cond_90
    const/4 v6, 0x0

    goto :goto_7e

    .line 2345
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v237    # "destAffinity":Ljava/lang/String;
    .end local v339    # "res":Z
    :sswitch_c3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2346
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 2347
    .restart local v101    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v365, v0

    move-object/from16 v0, v365

    check-cast v0, Landroid/content/Intent;

    move-object/16 v365, v0

    .line 2348
    .local v365, "target":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 2349
    .restart local v53    # "resultCode":I
    const/4 v0, 0x0

    move-object/16 v347, v0

    .line 2350
    .restart local v347    # "resultData":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_91

    .line 2351
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v347, v0

    .end local v347    # "resultData":Landroid/content/Intent;
    move-object/from16 v0, v347

    check-cast v0, Landroid/content/Intent;

    move-object/16 v347, v0

    .line 2353
    :cond_91
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move-object/from16 v2, v365

    move/from16 v3, v53

    move-object/from16 v4, v347

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z

    move-result v0

    move/16 v339, v0

    .line 2354
    .restart local v339    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2355
    move/from16 v0, v339

    if-eqz v0, :cond_92

    const/4 v6, 0x1

    :goto_7f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2356
    const/4 v6, 0x1

    return v6

    .line 2355
    :cond_92
    const/4 v6, 0x0

    goto :goto_7f

    .line 2360
    .end local v53    # "resultCode":I
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v339    # "res":Z
    .end local v365    # "target":Landroid/content/Intent;
    :sswitch_c4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 2362
    .restart local v101    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v0

    move/16 v333, v0

    .line 2363
    .restart local v333    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2364
    move-object/from16 v0, p3

    move/from16 v1, v333

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2365
    const/4 v6, 0x1

    return v6

    .line 2369
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v333    # "res":I
    :sswitch_c5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 2371
    .restart local v101    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    move-object/16 v338, v0

    .line 2372
    .restart local v338    # "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2373
    move-object/from16 v0, p3

    move-object/from16 v1, v338

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2374
    const/4 v6, 0x1

    return v6

    .line 2378
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v338    # "res":Ljava/lang/String;
    :sswitch_c6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2379
    invoke-static {v6}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v0

    move-object/16 v306, v0

    .line 2381
    .local v306, "observer":Landroid/app/IUserSwitchObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v91

    .line 2382
    .restart local v91    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v306

    move-object/from16 v2, v91

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    .line 2383
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2384
    const/4 v6, 0x1

    return v6

    .line 2388
    .end local v91    # "name":Ljava/lang/String;
    .end local v306    # "observer":Landroid/app/IUserSwitchObserver;
    :sswitch_c7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2389
    invoke-static {v6}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v0

    move-object/16 v306, v0

    .line 2391
    .restart local v306    # "observer":Landroid/app/IUserSwitchObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v306

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 2392
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2393
    const/4 v6, 0x1

    return v6

    .line 2397
    .end local v306    # "observer":Landroid/app/IUserSwitchObserver;
    :sswitch_c8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v224

    .line 2399
    .local v224, "bugreportType":I
    move-object/from16 v0, p0

    move/from16 v1, v224

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->requestBugReport(I)V

    .line 2400
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2401
    const/4 v6, 0x1

    return v6

    .line 2405
    .end local v224    # "bugreportType":I
    :sswitch_c9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v139

    .line 2407
    .restart local v139    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_93

    const/16 v211, 0x1

    .line 2408
    .local v211, "aboveSystem":Z
    :goto_80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v330, v0

    .line 2409
    .restart local v330    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v139

    move/from16 v2, v211

    move-object/from16 v3, v330

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide v0

    move-wide/16 v334, v0

    .line 2410
    .local v334, "res":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2411
    move-object/from16 v0, p3

    move-wide/from16 v1, v334

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2412
    const/4 v6, 0x1

    return v6

    .line 2407
    .end local v211    # "aboveSystem":Z
    .end local v330    # "reason":Ljava/lang/String;
    .end local v334    # "res":J
    :cond_93
    const/16 v211, 0x0

    .restart local v211    # "aboveSystem":Z
    goto :goto_80

    .line 2416
    .end local v139    # "pid":I
    .end local v211    # "aboveSystem":Z
    :sswitch_ca
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v178

    .line 2418
    .local v178, "requestType":I
    move-object/from16 v0, p0

    move/from16 v1, v178

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getAssistContextExtras(I)Landroid/os/Bundle;

    move-result-object v0

    move-object/16 v337, v0

    .line 2419
    .local v337, "res":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2420
    move-object/from16 v0, p3

    move-object/from16 v1, v337

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2421
    const/4 v6, 0x1

    return v6

    .line 2425
    .end local v178    # "requestType":I
    .end local v337    # "res":Landroid/os/Bundle;
    :sswitch_cb
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v178

    .line 2427
    .restart local v178    # "requestType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v179

    .line 2428
    .local v179, "receiver":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v180

    .line 2429
    .local v180, "receiverExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v181

    .line 2430
    .restart local v181    # "activityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_94

    const/16 v182, 0x1

    .line 2431
    .local v182, "focused":Z
    :goto_81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_95

    const/16 v183, 0x1

    .local v183, "newSessionId":Z
    :goto_82
    move-object/from16 v177, p0

    .line 2432
    invoke-virtual/range {v177 .. v183}, Landroid/app/ActivityManagerNative;->requestAssistContextExtras(ILcom/android/internal/os/IResultReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z

    move-result v0

    move/16 v339, v0

    .line 2434
    .restart local v339    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2435
    move/from16 v0, v339

    if-eqz v0, :cond_96

    const/4 v6, 0x1

    :goto_83
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2436
    const/4 v6, 0x1

    return v6

    .line 2430
    .end local v182    # "focused":Z
    .end local v183    # "newSessionId":Z
    .end local v339    # "res":Z
    :cond_94
    const/16 v182, 0x0

    .restart local v182    # "focused":Z
    goto :goto_81

    .line 2431
    :cond_95
    const/16 v183, 0x0

    goto :goto_82

    .line 2435
    .restart local v183    # "newSessionId":Z
    .restart local v339    # "res":Z
    :cond_96
    const/4 v6, 0x0

    goto :goto_83

    .line 2440
    .end local v178    # "requestType":I
    .end local v179    # "receiver":Lcom/android/internal/os/IResultReceiver;
    .end local v180    # "receiverExtras":Landroid/os/Bundle;
    .end local v181    # "activityToken":Landroid/os/IBinder;
    .end local v182    # "focused":Z
    .end local v183    # "newSessionId":Z
    .end local v339    # "res":Z
    :sswitch_cc
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 2442
    .restart local v101    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v186

    .line 2443
    .local v186, "extras":Landroid/os/Bundle;
    sget-object v6, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v187

    check-cast v187, Landroid/app/assist/AssistStructure;

    .line 2444
    .local v187, "structure":Landroid/app/assist/AssistStructure;
    sget-object v6, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v188

    check-cast v188, Landroid/app/assist/AssistContent;

    .line 2445
    .local v188, "content":Landroid/app/assist/AssistContent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_97

    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    move-object/from16 v189, v6

    .local v189, "referrer":Landroid/net/Uri;
    :goto_84
    move-object/from16 v184, p0

    move-object/from16 v185, v101

    .line 2446
    invoke-virtual/range {v184 .. v189}, Landroid/app/ActivityManagerNative;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V

    .line 2447
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2448
    const/4 v6, 0x1

    return v6

    .line 2445
    .end local v189    # "referrer":Landroid/net/Uri;
    :cond_97
    const/16 v189, 0x0

    goto :goto_84

    .line 2452
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v186    # "extras":Landroid/os/Bundle;
    .end local v187    # "structure":Landroid/app/assist/AssistStructure;
    .end local v188    # "content":Landroid/app/assist/AssistContent;
    :sswitch_cd
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2453
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 2454
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v178

    .line 2455
    .restart local v178    # "requestType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v193

    .line 2456
    .local v193, "hint":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v194

    .line 2457
    .local v194, "userHandle":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v195

    .local v195, "args":Landroid/os/Bundle;
    move-object/from16 v190, p0

    move-object/from16 v191, v9

    move/from16 v192, v178

    .line 2458
    invoke-virtual/range {v190 .. v195}, Landroid/app/ActivityManagerNative;->launchAssistIntent(Landroid/content/Intent;ILjava/lang/String;ILandroid/os/Bundle;)Z

    move-result v0

    move/16 v339, v0

    .line 2459
    .restart local v339    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2460
    move/from16 v0, v339

    if-eqz v0, :cond_98

    const/4 v6, 0x1

    :goto_85
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2461
    const/4 v6, 0x1

    return v6

    .line 2460
    :cond_98
    const/4 v6, 0x0

    goto :goto_85

    .line 2465
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v178    # "requestType":I
    .end local v193    # "hint":Ljava/lang/String;
    .end local v194    # "userHandle":I
    .end local v195    # "args":Landroid/os/Bundle;
    .end local v339    # "res":Z
    :sswitch_ce
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2466
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isAssistDataAllowedOnCurrentActivity()Z

    move-result v0

    move/16 v339, v0

    .line 2467
    .restart local v339    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2468
    move/from16 v0, v339

    if-eqz v0, :cond_99

    const/4 v6, 0x1

    :goto_86
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2469
    const/4 v6, 0x1

    return v6

    .line 2468
    :cond_99
    const/4 v6, 0x0

    goto :goto_86

    .line 2473
    .end local v339    # "res":Z
    :sswitch_cf
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 2475
    .restart local v101    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v195

    .line 2476
    .restart local v195    # "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move-object/from16 v2, v195

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v0

    move/16 v339, v0

    .line 2477
    .restart local v339    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2478
    move/from16 v0, v339

    if-eqz v0, :cond_9a

    const/4 v6, 0x1

    :goto_87
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2479
    const/4 v6, 0x1

    return v6

    .line 2478
    :cond_9a
    const/4 v6, 0x0

    goto :goto_87

    .line 2483
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v195    # "args":Landroid/os/Bundle;
    .end local v339    # "res":Z
    :sswitch_d0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2484
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v217

    .line 2485
    .restart local v217    # "appId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2486
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v330, v0

    .line 2487
    .restart local v330    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v217

    move/from16 v2, v17

    move-object/from16 v3, v330

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killUid(IILjava/lang/String;)V

    .line 2488
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2489
    const/4 v6, 0x1

    return v6

    .line 2493
    .end local v17    # "userId":I
    .end local v217    # "appId":I
    .end local v330    # "reason":Ljava/lang/String;
    :sswitch_d1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2494
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v62

    .line 2495
    .restart local v62    # "who":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9b

    const/16 v214, 0x1

    .line 2496
    .local v214, "allowRestart":Z
    :goto_88
    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move/from16 v2, v214

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->hang(Landroid/os/IBinder;Z)V

    .line 2497
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2498
    const/4 v6, 0x1

    return v6

    .line 2495
    .end local v214    # "allowRestart":Z
    :cond_9b
    const/16 v214, 0x0

    goto :goto_88

    .line 2502
    .end local v62    # "who":Landroid/os/IBinder;
    :sswitch_d2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2503
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 2504
    .restart local v101    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->reportActivityFullyDrawn(Landroid/os/IBinder;)V

    .line 2505
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2506
    const/4 v6, 0x1

    return v6

    .line 2510
    .end local v101    # "token":Landroid/os/IBinder;
    :sswitch_d3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2511
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 2512
    .restart local v101    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyActivityDrawn(Landroid/os/IBinder;)V

    .line 2513
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2514
    const/4 v6, 0x1

    return v6

    .line 2518
    .end local v101    # "token":Landroid/os/IBinder;
    :sswitch_d4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2519
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->restart()V

    .line 2520
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2521
    const/4 v6, 0x1

    return v6

    .line 2525
    :sswitch_d5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2526
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->performIdleMaintenance()V

    .line 2527
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2528
    const/4 v6, 0x1

    return v6

    .line 2532
    :sswitch_d6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object/16 v314, v0

    .line 2535
    .local v314, "parentActivityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IActivityContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainerCallback;

    move-result-object v226

    .line 2537
    .local v226, "callback":Landroid/app/IActivityContainerCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v314

    move-object/from16 v2, v226

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->createVirtualActivityContainer(Landroid/os/IBinder;Landroid/app/IActivityContainerCallback;)Landroid/app/IActivityContainer;

    move-result-object v212

    .line 2538
    .local v212, "activityContainer":Landroid/app/IActivityContainer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2539
    if-eqz v212, :cond_9c

    .line 2540
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2541
    invoke-interface/range {v212 .. v212}, Landroid/app/IActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2545
    :goto_89
    const/4 v6, 0x1

    return v6

    .line 2543
    :cond_9c
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_89

    .line 2549
    .end local v212    # "activityContainer":Landroid/app/IActivityContainer;
    .end local v226    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v314    # "parentActivityToken":Landroid/os/IBinder;
    :sswitch_d7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IActivityContainer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainer;

    move-result-object v212

    .line 2552
    .restart local v212    # "activityContainer":Landroid/app/IActivityContainer;
    move-object/from16 v0, p0

    move-object/from16 v1, v212

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->deleteActivityContainer(Landroid/app/IActivityContainer;)V

    .line 2553
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2554
    const/4 v6, 0x1

    return v6

    .line 2558
    .end local v212    # "activityContainer":Landroid/app/IActivityContainer;
    :sswitch_d8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2559
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v238

    .line 2560
    .local v238, "displayId":I
    move-object/from16 v0, p0

    move/from16 v1, v238

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->createStackOnDisplay(I)Landroid/app/IActivityContainer;

    move-result-object v212

    .line 2561
    .restart local v212    # "activityContainer":Landroid/app/IActivityContainer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2562
    if-eqz v212, :cond_9d

    .line 2563
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2564
    invoke-interface/range {v212 .. v212}, Landroid/app/IActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2568
    :goto_8a
    const/4 v6, 0x1

    return v6

    .line 2566
    :cond_9d
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8a

    .line 2572
    .end local v212    # "activityContainer":Landroid/app/IActivityContainer;
    .end local v238    # "displayId":I
    :sswitch_d9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2573
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v181

    .line 2574
    .restart local v181    # "activityToken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v181

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityDisplayId(Landroid/os/IBinder;)I

    move-result v238

    .line 2575
    .restart local v238    # "displayId":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2576
    move-object/from16 v0, p3

    move/from16 v1, v238

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2577
    const/4 v6, 0x1

    return v6

    .line 2581
    .end local v181    # "activityToken":Landroid/os/IBinder;
    .end local v238    # "displayId":I
    :sswitch_da
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 2583
    .restart local v69    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startLockTaskMode(I)V

    .line 2584
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2585
    const/4 v6, 0x1

    return v6

    .line 2589
    .end local v69    # "taskId":I
    :sswitch_db
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2590
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 2591
    .restart local v101    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startLockTaskMode(Landroid/os/IBinder;)V

    .line 2592
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2593
    const/4 v6, 0x1

    return v6

    .line 2597
    .end local v101    # "token":Landroid/os/IBinder;
    :sswitch_dc
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2598
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 2599
    .restart local v69    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startSystemLockTaskMode(I)V

    .line 2600
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2601
    const/4 v6, 0x1

    return v6

    .line 2605
    .end local v69    # "taskId":I
    :sswitch_dd
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2606
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopLockTaskMode()V

    .line 2607
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2608
    const/4 v6, 0x1

    return v6

    .line 2612
    :sswitch_de
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2613
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopSystemLockTaskMode()V

    .line 2614
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2615
    const/4 v6, 0x1

    return v6

    .line 2619
    :sswitch_df
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2620
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isInLockTaskMode()Z

    move-result v0

    move/16 v277, v0

    .line 2621
    .local v277, "isInLockTaskMode":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2622
    move/from16 v0, v277

    if-eqz v0, :cond_9e

    const/4 v6, 0x1

    :goto_8b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2623
    const/4 v6, 0x1

    return v6

    .line 2622
    :cond_9e
    const/4 v6, 0x0

    goto :goto_8b

    .line 2627
    .end local v277    # "isInLockTaskMode":Z
    :sswitch_e0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2628
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getLockTaskModeState()I

    move-result v0

    move/16 v294, v0

    .line 2629
    .local v294, "lockTaskModeState":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2630
    move-object/from16 v0, p3

    move/from16 v1, v294

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2631
    const/4 v6, 0x1

    return v6

    .line 2635
    .end local v294    # "lockTaskModeState":I
    :sswitch_e1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2636
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 2637
    .restart local v101    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V

    .line 2638
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2639
    const/4 v6, 0x1

    return v6

    .line 2643
    .end local v101    # "token":Landroid/os/IBinder;
    :sswitch_e2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2644
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 2646
    .restart local v101    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v378, v0

    move-object/from16 v0, v378

    check-cast v0, Landroid/app/ActivityManager$TaskDescription;

    move-object/16 v378, v0

    .line 2647
    .local v378, "values":Landroid/app/ActivityManager$TaskDescription;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move-object/from16 v2, v378

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V

    .line 2648
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2649
    const/4 v6, 0x1

    return v6

    .line 2653
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v378    # "values":Landroid/app/ActivityManager$TaskDescription;
    :sswitch_e3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2654
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 2655
    .restart local v69    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v342, v0

    .line 2656
    .local v342, "resizeableMode":I
    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v342

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setTaskResizeable(II)V

    .line 2657
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2658
    const/4 v6, 0x1

    return v6

    .line 2662
    .end local v69    # "taskId":I
    .end local v342    # "resizeableMode":I
    :sswitch_e4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2663
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 2664
    .restart local v69    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v341, v0

    .line 2665
    .local v341, "resizeMode":I
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Landroid/graphics/Rect;

    .line 2666
    .local v77, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move/from16 v1, v69

    move-object/from16 v2, v77

    move/from16 v3, v341

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 2667
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2668
    const/4 v6, 0x1

    return v6

    .line 2672
    .end local v69    # "taskId":I
    .end local v77    # "r":Landroid/graphics/Rect;
    .end local v341    # "resizeMode":I
    :sswitch_e5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 2674
    .restart local v69    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v77

    .line 2675
    .restart local v77    # "r":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2676
    const/4 v6, 0x0

    move-object/from16 v0, v77

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2677
    const/4 v6, 0x1

    return v6

    .line 2681
    .end local v69    # "taskId":I
    .end local v77    # "r":Landroid/graphics/Rect;
    :sswitch_e6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2682
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v244

    .line 2683
    .local v244, "filename":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2684
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v244

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object/16 v260, v0

    .line 2685
    .local v260, "icon":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2686
    move-object/from16 v0, v260

    if-nez v0, :cond_9f

    .line 2687
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2692
    :goto_8c
    const/4 v6, 0x1

    return v6

    .line 2689
    :cond_9f
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2690
    const/4 v6, 0x0

    move-object/from16 v0, v260

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8c

    .line 2696
    .end local v17    # "userId":I
    .end local v244    # "filename":Ljava/lang/String;
    .end local v260    # "icon":Landroid/graphics/Bitmap;
    :sswitch_e7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_a0

    .line 2699
    const/16 v225, 0x0

    .line 2703
    :goto_8d
    invoke-static/range {v225 .. v225}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v0

    move-object/16 v311, v0

    .line 2704
    .restart local v311    # "options":Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    move-object/from16 v1, v311

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    .line 2705
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2706
    const/4 v6, 0x1

    return v6

    .line 2701
    .end local v311    # "options":Landroid/app/ActivityOptions;
    :cond_a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v225

    .restart local v225    # "bundle":Landroid/os/Bundle;
    goto :goto_8d

    .line 2710
    .end local v225    # "bundle":Landroid/os/Bundle;
    :sswitch_e8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2711
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 2712
    .restart local v101    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-lez v6, :cond_a1

    const/16 v240, 0x1

    .line 2713
    .local v240, "enable":Z
    :goto_8e
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move/from16 v2, v240

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->requestVisibleBehind(Landroid/os/IBinder;Z)Z

    move-result v0

    move/16 v361, v0

    .line 2714
    .restart local v361    # "success":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2715
    move/from16 v0, v361

    if-eqz v0, :cond_a2

    const/4 v6, 0x1

    :goto_8f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2716
    const/4 v6, 0x1

    return v6

    .line 2712
    .end local v240    # "enable":Z
    .end local v361    # "success":Z
    :cond_a1
    const/16 v240, 0x0

    goto :goto_8e

    .line 2715
    .restart local v240    # "enable":Z
    .restart local v361    # "success":Z
    :cond_a2
    const/4 v6, 0x0

    goto :goto_8f

    .line 2720
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v240    # "enable":Z
    .end local v361    # "success":Z
    :sswitch_e9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2721
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 2722
    .restart local v101    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isBackgroundVisibleBehind(Landroid/os/IBinder;)Z

    move-result v241

    .line 2723
    .restart local v241    # "enabled":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2724
    if-eqz v241, :cond_a3

    const/4 v6, 0x1

    :goto_90
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2725
    const/4 v6, 0x1

    return v6

    .line 2724
    :cond_a3
    const/4 v6, 0x0

    goto :goto_90

    .line 2729
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v241    # "enabled":Z
    :sswitch_ea
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2730
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 2731
    .restart local v101    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->backgroundResourcesReleased(Landroid/os/IBinder;)V

    .line 2732
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2733
    const/4 v6, 0x1

    return v6

    .line 2737
    .end local v101    # "token":Landroid/os/IBinder;
    :sswitch_eb
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2738
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 2739
    .restart local v101    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyLaunchTaskBehindComplete(Landroid/os/IBinder;)V

    .line 2740
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2741
    const/4 v6, 0x1

    return v6

    .line 2745
    .end local v101    # "token":Landroid/os/IBinder;
    :sswitch_ec
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2746
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 2747
    .restart local v101    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 2748
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2749
    const/4 v6, 0x1

    return v6

    .line 2753
    .end local v101    # "token":Landroid/os/IBinder;
    :sswitch_ed
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2754
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->bootAnimationComplete()V

    .line 2755
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2756
    const/4 v6, 0x1

    return v6

    .line 2760
    :sswitch_ee
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2761
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v140

    .line 2762
    .restart local v140    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v246

    .line 2763
    .local v246, "firstPacket":[B
    move-object/from16 v0, p0

    move/from16 v1, v140

    move-object/from16 v2, v246

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->notifyCleartextNetwork(I[B)V

    .line 2764
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2765
    const/4 v6, 0x1

    return v6

    .line 2769
    .end local v140    # "uid":I
    .end local v246    # "firstPacket":[B
    :sswitch_ef
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2770
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v198

    .line 2771
    .local v198, "procName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v140

    .line 2772
    .restart local v140    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v200

    .line 2773
    .local v200, "maxMemSize":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v202

    .local v202, "reportPackage":Ljava/lang/String;
    move-object/from16 v197, p0

    move/from16 v199, v140

    .line 2774
    invoke-virtual/range {v197 .. v202}, Landroid/app/ActivityManagerNative;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    .line 2775
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2776
    const/4 v6, 0x1

    return v6

    .line 2780
    .end local v140    # "uid":I
    .end local v198    # "procName":Ljava/lang/String;
    .end local v200    # "maxMemSize":J
    .end local v202    # "reportPackage":Ljava/lang/String;
    :sswitch_f0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2781
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v170

    .line 2782
    .restart local v170    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v170

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->dumpHeapFinished(Ljava/lang/String;)V

    .line 2783
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2784
    const/4 v6, 0x1

    return v6

    .line 2788
    .end local v170    # "path":Ljava/lang/String;
    :sswitch_f1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2790
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2789
    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v46

    .line 2791
    .restart local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a4

    const/4 v0, 0x1

    move/16 v280, v0

    .line 2792
    .local v280, "keepAwake":Z
    :goto_91
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v280

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V

    .line 2793
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2794
    const/4 v6, 0x1

    return v6

    .line 2791
    .end local v280    # "keepAwake":Z
    :cond_a4
    const/4 v0, 0x0

    move/16 v280, v0

    goto :goto_91

    .line 2798
    .end local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    :sswitch_f2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2799
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2800
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    move-object/16 v313, v0

    .line 2801
    .local v313, "packages":[Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v313

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->updateLockTaskPackages(I[Ljava/lang/String;)V

    .line 2802
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2803
    const/4 v6, 0x1

    return v6

    .line 2807
    .end local v17    # "userId":I
    .end local v313    # "packages":[Ljava/lang/String;
    :sswitch_f3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2808
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 2809
    .restart local v32    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateDeviceOwner(Ljava/lang/String;)V

    .line 2810
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2811
    const/4 v6, 0x1

    return v6

    .line 2815
    .end local v32    # "packageName":Ljava/lang/String;
    :sswitch_f4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2816
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v322, v0

    .line 2817
    .restart local v322    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2818
    .restart local v8    # "callingPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v322

    invoke-virtual {v0, v1, v8}, Landroid/app/ActivityManagerNative;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move/16 v333, v0

    .line 2819
    .restart local v333    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2820
    move-object/from16 v0, p3

    move/from16 v1, v333

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2821
    const/4 v6, 0x1

    return v6

    .line 2825
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v322    # "pkg":Ljava/lang/String;
    .end local v333    # "res":I
    :sswitch_f5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2826
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v148

    .line 2827
    .restart local v148    # "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2828
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v283, v0

    .line 2829
    .restart local v283    # "level":I
    move-object/from16 v0, p0

    move-object/from16 v1, v148

    move/from16 v2, v17

    move/from16 v3, v283

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z

    move-result v0

    move/16 v339, v0

    .line 2830
    .restart local v339    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2831
    move/from16 v0, v339

    if-eqz v0, :cond_a5

    const/4 v6, 0x1

    :goto_92
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2832
    const/4 v6, 0x1

    return v6

    .line 2831
    :cond_a5
    const/4 v6, 0x0

    goto :goto_92

    .line 2836
    .end local v17    # "userId":I
    .end local v148    # "process":Ljava/lang/String;
    .end local v283    # "level":I
    .end local v339    # "res":Z
    :sswitch_f6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2837
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 2838
    .restart local v101    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isRootVoiceInteraction(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v339, v0

    .line 2839
    .restart local v339    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2840
    move/from16 v0, v339

    if-eqz v0, :cond_a6

    const/4 v6, 0x1

    :goto_93
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2841
    const/4 v6, 0x1

    return v6

    .line 2840
    :cond_a6
    const/4 v6, 0x0

    goto :goto_93

    .line 2845
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v339    # "res":Z
    :sswitch_f7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2846
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->startBinderTracking()Z

    move-result v0

    move/16 v339, v0

    .line 2847
    .restart local v339    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2848
    move/from16 v0, v339

    if-eqz v0, :cond_a7

    const/4 v6, 0x1

    :goto_94
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2849
    const/4 v6, 0x1

    return v6

    .line 2848
    :cond_a7
    const/4 v6, 0x0

    goto :goto_94

    .line 2853
    .end local v339    # "res":Z
    :sswitch_f8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2854
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a8

    .line 2855
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v171, v6

    .line 2856
    .restart local v171    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_95
    move-object/from16 v0, p0

    move-object/from16 v1, v171

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)Z

    move-result v0

    move/16 v339, v0

    .line 2857
    .restart local v339    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2858
    move/from16 v0, v339

    if-eqz v0, :cond_a9

    const/4 v6, 0x1

    :goto_96
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2859
    const/4 v6, 0x1

    return v6

    .line 2855
    .end local v171    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v339    # "res":Z
    :cond_a8
    const/16 v171, 0x0

    goto :goto_95

    .line 2858
    .restart local v171    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v339    # "res":Z
    :cond_a9
    const/4 v6, 0x0

    goto :goto_96

    .line 2862
    .end local v171    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v339    # "res":Z
    :sswitch_f9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2863
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 2864
    .restart local v101    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityStackId(Landroid/os/IBinder;)I

    move-result v76

    .line 2865
    .restart local v76    # "stackId":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2866
    move-object/from16 v0, p3

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2867
    const/4 v6, 0x1

    return v6

    .line 2870
    .end local v76    # "stackId":I
    .end local v101    # "token":Landroid/os/IBinder;
    :sswitch_fa
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2871
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 2872
    .restart local v101    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->exitFreeformMode(Landroid/os/IBinder;)V

    .line 2873
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2874
    const/4 v6, 0x1

    return v6

    .line 2877
    .end local v101    # "token":Landroid/os/IBinder;
    :sswitch_fb
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2878
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 2879
    .restart local v101    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ActivityManagerNative;->readIntArray(Landroid/os/Parcel;)[I

    move-result-object v0

    move-object/16 v258, v0

    .line 2880
    .local v258, "horizontal":[I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ActivityManagerNative;->readIntArray(Landroid/os/Parcel;)[I

    move-result-object v0

    move-object/16 v379, v0

    .line 2881
    .local v379, "vertical":[I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ActivityManagerNative;->readIntArray(Landroid/os/Parcel;)[I

    move-result-object v0

    move-object/16 v355, v0

    .line 2882
    .local v355, "smallest":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move-object/from16 v2, v258

    move-object/from16 v3, v379

    move-object/from16 v4, v355

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->reportSizeConfigurations(Landroid/os/IBinder;[I[I[I)V

    .line 2883
    const/4 v6, 0x1

    return v6

    .line 2886
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v258    # "horizontal":[I
    .end local v355    # "smallest":[I
    .end local v379    # "vertical":[I
    :sswitch_fc
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2887
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_aa

    const/4 v0, 0x1

    move/16 v362, v0

    .line 2888
    .local v362, "suppress":Z
    :goto_97
    move-object/from16 v0, p0

    move/from16 v1, v362

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->suppressResizeConfigChanges(Z)V

    .line 2889
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2890
    const/4 v6, 0x1

    return v6

    .line 2887
    .end local v362    # "suppress":Z
    :cond_aa
    const/4 v0, 0x0

    move/16 v362, v0

    goto :goto_97

    .line 2893
    :sswitch_fd
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2894
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v76

    .line 2895
    .restart local v76    # "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_ab

    const/4 v0, 0x1

    move/16 v309, v0

    .line 2896
    .local v309, "onTop":Z
    :goto_98
    move-object/from16 v0, p0

    move/from16 v1, v76

    move/from16 v2, v309

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveTasksToFullscreenStack(IZ)V

    .line 2897
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2898
    const/4 v6, 0x1

    return v6

    .line 2895
    .end local v309    # "onTop":Z
    :cond_ab
    const/4 v0, 0x0

    move/16 v309, v0

    goto :goto_98

    .line 2901
    .end local v76    # "stackId":I
    :sswitch_fe
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2902
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v140

    .line 2903
    .restart local v140    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v322, v0

    .line 2904
    .restart local v322    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v140

    move-object/from16 v2, v322

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getAppStartMode(ILjava/lang/String;)I

    move-result v0

    move/16 v333, v0

    .line 2905
    .restart local v333    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2906
    move-object/from16 v0, p3

    move/from16 v1, v333

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2907
    const/4 v6, 0x1

    return v6

    .line 2910
    .end local v140    # "uid":I
    .end local v322    # "pkg":Ljava/lang/String;
    .end local v333    # "res":I
    :sswitch_ff
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2911
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 2912
    .restart local v101    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isInMultiWindowMode(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v263, v0

    .line 2913
    .local v263, "inMultiWindow":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2914
    move/from16 v0, v263

    if-eqz v0, :cond_ac

    const/4 v6, 0x1

    :goto_99
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2915
    const/4 v6, 0x1

    return v6

    .line 2914
    :cond_ac
    const/4 v6, 0x0

    goto :goto_99

    .line 2918
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v263    # "inMultiWindow":Z
    :sswitch_100
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2919
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 2920
    .restart local v101    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isInPictureInPictureMode(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v264, v0

    .line 2921
    .local v264, "inPip":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2922
    move/from16 v0, v264

    if-eqz v0, :cond_ad

    const/4 v6, 0x1

    :goto_9a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2923
    const/4 v6, 0x1

    return v6

    .line 2922
    :cond_ad
    const/4 v6, 0x0

    goto :goto_9a

    .line 2926
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v264    # "inPip":Z
    :sswitch_101
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2927
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 2928
    .restart local v101    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->enterPictureInPictureMode(Landroid/os/IBinder;)V

    .line 2929
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2930
    const/4 v6, 0x1

    return v6

    .line 2933
    .end local v101    # "token":Landroid/os/IBinder;
    :sswitch_102
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2934
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 2935
    .restart local v101    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_ae

    const/16 v240, 0x1

    .line 2936
    .local v240, "enable":Z
    :goto_9b
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v312, v0

    move-object/from16 v0, v312

    check-cast v0, Landroid/content/ComponentName;

    move-object/16 v312, v0

    .line 2937
    .local v312, "packageName":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move/from16 v2, v240

    move-object/from16 v3, v312

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I

    move-result v0

    move/16 v333, v0

    .line 2938
    .restart local v333    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2939
    move-object/from16 v0, p3

    move/from16 v1, v333

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2940
    const/4 v6, 0x1

    return v6

    .line 2935
    .end local v240    # "enable":Z
    .end local v312    # "packageName":Landroid/content/ComponentName;
    .end local v333    # "res":I
    :cond_ae
    const/16 v240, 0x0

    .restart local v240    # "enable":Z
    goto :goto_9b

    .line 2943
    .end local v101    # "token":Landroid/os/IBinder;
    .end local v240    # "enable":Z
    :sswitch_103
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2944
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v312, v0

    move-object/from16 v0, v312

    check-cast v0, Landroid/content/ComponentName;

    move-object/16 v312, v0

    .line 2945
    .restart local v312    # "packageName":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v312

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isVrModePackageEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    move/16 v339, v0

    .line 2946
    .restart local v339    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2947
    move/from16 v0, v339

    if-eqz v0, :cond_af

    const/4 v6, 0x1

    :goto_9c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2948
    const/4 v6, 0x1

    return v6

    .line 2947
    :cond_af
    const/4 v6, 0x0

    goto :goto_9c

    .line 2951
    .end local v312    # "packageName":Landroid/content/ComponentName;
    .end local v339    # "res":Z
    :sswitch_104
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2952
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v194

    .line 2953
    .restart local v194    # "userHandle":I
    move-object/from16 v0, p0

    move/from16 v1, v194

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isAppForeground(I)Z

    move-result v0

    move/16 v275, v0

    .line 2954
    .restart local v275    # "isForeground":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2955
    move/from16 v0, v275

    if-eqz v0, :cond_b0

    const/4 v6, 0x1

    :goto_9d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2956
    const/4 v6, 0x1

    return v6

    .line 2955
    :cond_b0
    const/4 v6, 0x0

    goto :goto_9d

    .line 2959
    .end local v194    # "userHandle":I
    .end local v275    # "isForeground":Z
    :sswitch_105
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2960
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2961
    const/4 v6, 0x1

    return v6

    .line 2964
    :sswitch_106
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2965
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v76

    .line 2966
    .restart local v76    # "stackId":I
    move-object/from16 v0, p0

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->removeStack(I)V

    .line 2967
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2968
    const/4 v6, 0x1

    return v6

    .line 2971
    .end local v76    # "stackId":I
    :sswitch_107
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2972
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2973
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyLockedProfile(I)V

    .line 2974
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2975
    const/4 v6, 0x1

    return v6

    .line 2978
    .end local v17    # "userId":I
    :sswitch_108
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2979
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 2980
    .restart local v9    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/app/ActivityManagerNative;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;)V

    .line 2981
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2982
    const/4 v6, 0x1

    return v6

    .line 2985
    .end local v9    # "intent":Landroid/content/Intent;
    :sswitch_109
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2986
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->sendIdleJobTrigger()V

    .line 2987
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2988
    const/4 v6, 0x1

    return v6

    .line 2991
    :sswitch_10a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2992
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v204

    .line 2993
    .local v204, "sender":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v205

    .line 2994
    .local v205, "scode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b1

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 2995
    :goto_9e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 2997
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2996
    invoke-static {v6}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v208

    .line 2998
    .local v208, "finishedReceiver":Landroid/content/IIntentReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v209

    .line 2999
    .local v209, "requiredPermission":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b2

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .local v16, "options":Landroid/os/Bundle;
    :goto_9f
    move-object/from16 v203, p0

    move-object/from16 v206, v9

    move-object/from16 v207, v10

    move-object/from16 v210, v16

    .line 3000
    invoke-virtual/range {v203 .. v210}, Landroid/app/ActivityManagerNative;->sendIntentSender(Landroid/content/IIntentSender;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    move/16 v343, v0

    .line 3002
    .restart local v343    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3003
    move-object/from16 v0, p3

    move/from16 v1, v343

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3004
    const/4 v6, 0x1

    return v6

    .line 2994
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v208    # "finishedReceiver":Landroid/content/IIntentReceiver;
    .end local v209    # "requiredPermission":Ljava/lang/String;
    .end local v343    # "result":I
    :cond_b1
    const/4 v9, 0x0

    .local v9, "intent":Landroid/content/Intent;
    goto :goto_9e

    .line 2999
    .end local v9    # "intent":Landroid/content/Intent;
    .restart local v10    # "resolvedType":Ljava/lang/String;
    .restart local v208    # "finishedReceiver":Landroid/content/IIntentReceiver;
    .restart local v209    # "requiredPermission":Ljava/lang/String;
    :cond_b2
    const/16 v16, 0x0

    goto :goto_9f

    .line 3007
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v204    # "sender":Landroid/content/IIntentSender;
    .end local v205    # "scode":I
    .end local v208    # "finishedReceiver":Landroid/content/IIntentReceiver;
    .end local v209    # "requiredPermission":Ljava/lang/String;
    :sswitch_10b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3008
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v371, v0

    .line 3009
    .local v371, "tid":I
    move-object/from16 v0, p0

    move/from16 v1, v371

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setVrThread(I)V

    .line 3010
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3011
    const/4 v6, 0x1

    return v6

    .line 3014
    .end local v371    # "tid":I
    :sswitch_10c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3015
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v371, v0

    .line 3016
    .restart local v371    # "tid":I
    move-object/from16 v0, p0

    move/from16 v1, v371

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setRenderThread(I)V

    .line 3017
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3018
    const/4 v6, 0x1

    return v6

    .line 3021
    .end local v371    # "tid":I
    :sswitch_10d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3022
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b3

    const/4 v0, 0x1

    move/16 v256, v0

    .line 3023
    .local v256, "hasTopUi":Z
    :goto_a0
    move-object/from16 v0, p0

    move/from16 v1, v256

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setHasTopUi(Z)V

    .line 3024
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3025
    const/4 v6, 0x1

    return v6

    .line 3022
    .end local v256    # "hasTopUi":Z
    :cond_b3
    const/4 v0, 0x0

    move/16 v256, v0

    goto :goto_a0

    .line 3028
    :sswitch_10e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3029
    sget-object v6, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v273, v0

    move-object/from16 v0, v273

    check-cast v0, Landroid/app/PendingIntent;

    move-object/16 v273, v0

    .line 3030
    .local v273, "intent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    move-object/from16 v1, v273

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->canBypassWorkChallenge(Landroid/app/PendingIntent;)Z

    move-result v0

    move/16 v345, v0

    .line 3031
    .restart local v345    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3032
    move/from16 v0, v345

    if-eqz v0, :cond_b4

    const/4 v6, 0x1

    :goto_a1
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3033
    const/4 v6, 0x1

    return v6

    .line 3032
    :cond_b4
    const/4 v6, 0x0

    goto :goto_a1

    .line 3038
    .end local v273    # "intent":Landroid/app/PendingIntent;
    .end local v345    # "result":Z
    :sswitch_10f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3040
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 3039
    invoke-static {v6}, Landroid/app/IMiuiActivityObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IMiuiActivityObserver;

    move-result-object v0

    move-object/16 v303, v0

    .line 3041
    .local v303, "observer":Landroid/app/IMiuiActivityObserver;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 3042
    .local v9, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v303

    invoke-virtual {v0, v1, v9}, Landroid/app/ActivityManagerNative;->registerActivityObserver(Landroid/app/IMiuiActivityObserver;Landroid/content/Intent;)V

    .line 3043
    const/4 v6, 0x1

    return v6

    .line 3047
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v303    # "observer":Landroid/app/IMiuiActivityObserver;
    :sswitch_110
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3049
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 3048
    invoke-static {v6}, Landroid/app/IMiuiActivityObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IMiuiActivityObserver;

    move-result-object v0

    move-object/16 v303, v0

    .line 3050
    .restart local v303    # "observer":Landroid/app/IMiuiActivityObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v303

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterActivityObserver(Landroid/app/IMiuiActivityObserver;)V

    .line 3051
    const/4 v6, 0x1

    return v6

    .line 3055
    .end local v303    # "observer":Landroid/app/IMiuiActivityObserver;
    :sswitch_111
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3057
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    move-result-object v0

    move-object/16 v257, v0

    .line 3058
    .local v257, "helper":Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;
    move-object/from16 v0, p0

    move-object/from16 v1, v257

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerMiuiAppTransitionAnimationHelper(Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V

    .line 3059
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3060
    const/4 v6, 0x1

    return v6

    .line 3064
    .end local v257    # "helper":Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;
    :sswitch_112
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3065
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->unregisterMiuiAppTransitionAnimationHelper()V

    .line 3066
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3067
    const/4 v6, 0x1

    return v6

    .line 3071
    :sswitch_113
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3072
    new-instance v0, Ljava/util/ArrayList;

    move-object/16 v385, v0

    invoke-direct/range {v385 .. v385}, Ljava/util/ArrayList;-><init>()V

    .line 3073
    .local v385, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, v385

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 3074
    move-object/from16 v0, p0

    move-object/from16 v1, v385

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setResizeWhiteList(Ljava/util/List;)V

    .line 3075
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3076
    const/4 v6, 0x1

    return v6

    .line 3080
    .end local v385    # "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_114
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3081
    new-instance v223, Ljava/util/ArrayList;

    invoke-direct/range {v223 .. v223}, Ljava/util/ArrayList;-><init>()V

    .line 3082
    .local v223, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, v223

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 3083
    move-object/from16 v0, p0

    move-object/from16 v1, v223

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setResizeBlackList(Ljava/util/List;)V

    .line 3084
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3085
    const/4 v6, 0x1

    return v6

    .line 3089
    .end local v223    # "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_115
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3090
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v282, v0

    .line 3091
    .local v282, "killerPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v281, v0

    .line 3092
    .local v281, "killedPid":I
    move-object/from16 v0, p0

    move/from16 v1, v282

    move/from16 v2, v281

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->reportKillProcessEvent(II)V

    .line 3093
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3094
    const/4 v6, 0x1

    return v6

    .line 3098
    .end local v281    # "killedPid":I
    .end local v282    # "killerPid":I
    :sswitch_116
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3099
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 3100
    .restart local v101    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_b5

    const/4 v0, 0x1

    move/16 v373, v0

    .line 3101
    .local v373, "translucent":Z
    :goto_a2
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move/from16 v2, v373

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setDummyTranslucent(Landroid/os/IBinder;Z)V

    .line 3102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3103
    const/4 v6, 0x1

    return v6

    .line 3100
    .end local v373    # "translucent":Z
    :cond_b5
    const/4 v0, 0x0

    move/16 v373, v0

    goto :goto_a2

    .line 151
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_7c
        0x3 -> :sswitch_0
        0x4 -> :sswitch_6e
        0x5 -> :sswitch_6f
        0xb -> :sswitch_c
        0xc -> :sswitch_13
        0xd -> :sswitch_14
        0xe -> :sswitch_15
        0xf -> :sswitch_16
        0x10 -> :sswitch_17
        0x11 -> :sswitch_18
        0x12 -> :sswitch_19
        0x13 -> :sswitch_1b
        0x14 -> :sswitch_1c
        0x15 -> :sswitch_20
        0x16 -> :sswitch_21
        0x17 -> :sswitch_25
        0x18 -> :sswitch_2c
        0x1a -> :sswitch_2e
        0x1b -> :sswitch_3e
        0x1d -> :sswitch_3f
        0x1e -> :sswitch_41
        0x1f -> :sswitch_42
        0x20 -> :sswitch_d
        0x21 -> :sswitch_47
        0x22 -> :sswitch_48
        0x23 -> :sswitch_49
        0x24 -> :sswitch_4c
        0x25 -> :sswitch_4d
        0x26 -> :sswitch_4e
        0x27 -> :sswitch_1a
        0x2a -> :sswitch_71
        0x2b -> :sswitch_72
        0x2c -> :sswitch_51
        0x2d -> :sswitch_52
        0x2e -> :sswitch_53
        0x2f -> :sswitch_54
        0x30 -> :sswitch_4a
        0x31 -> :sswitch_57
        0x32 -> :sswitch_58
        0x33 -> :sswitch_5e
        0x34 -> :sswitch_5f
        0x35 -> :sswitch_61
        0x36 -> :sswitch_63
        0x37 -> :sswitch_65
        0x38 -> :sswitch_66
        0x39 -> :sswitch_73
        0x3a -> :sswitch_6c
        0x3b -> :sswitch_7f
        0x3c -> :sswitch_26
        0x3d -> :sswitch_50
        0x3e -> :sswitch_1e
        0x3f -> :sswitch_59
        0x40 -> :sswitch_5a
        0x41 -> :sswitch_5b
        0x42 -> :sswitch_76
        0x43 -> :sswitch_a
        0x44 -> :sswitch_77
        0x45 -> :sswitch_45
        0x46 -> :sswitch_55
        0x47 -> :sswitch_56
        0x48 -> :sswitch_4f
        0x49 -> :sswitch_60
        0x4a -> :sswitch_4b
        0x4b -> :sswitch_2d
        0x4c -> :sswitch_6d
        0x4d -> :sswitch_29
        0x4e -> :sswitch_64
        0x4f -> :sswitch_83
        0x50 -> :sswitch_7a
        0x51 -> :sswitch_28
        0x52 -> :sswitch_27
        0x53 -> :sswitch_2a
        0x54 -> :sswitch_85
        0x55 -> :sswitch_8a
        0x56 -> :sswitch_86
        0x57 -> :sswitch_87
        0x58 -> :sswitch_88
        0x59 -> :sswitch_89
        0x5a -> :sswitch_8b
        0x5b -> :sswitch_8c
        0x5c -> :sswitch_8d
        0x5d -> :sswitch_5c
        0x5e -> :sswitch_5d
        0x5f -> :sswitch_8e
        0x60 -> :sswitch_8f
        0x61 -> :sswitch_90
        0x62 -> :sswitch_91
        0x63 -> :sswitch_92
        0x64 -> :sswitch_5
        0x65 -> :sswitch_93
        0x66 -> :sswitch_7d
        0x67 -> :sswitch_80
        0x68 -> :sswitch_94
        0x69 -> :sswitch_3
        0x6a -> :sswitch_12
        0x6b -> :sswitch_4
        0x6c -> :sswitch_2b
        0x6d -> :sswitch_96
        0x6e -> :sswitch_7e
        0x6f -> :sswitch_97
        0x70 -> :sswitch_9c
        0x71 -> :sswitch_9d
        0x72 -> :sswitch_9e
        0x73 -> :sswitch_9f
        0x74 -> :sswitch_a0
        0x75 -> :sswitch_a2
        0x76 -> :sswitch_a3
        0x77 -> :sswitch_a4
        0x78 -> :sswitch_a5
        0x79 -> :sswitch_a6
        0x7a -> :sswitch_b0
        0x7b -> :sswitch_1d
        0x7c -> :sswitch_a7
        0x7d -> :sswitch_a8
        0x7e -> :sswitch_a9
        0x7f -> :sswitch_aa
        0x80 -> :sswitch_b7
        0x81 -> :sswitch_b8
        0x82 -> :sswitch_ab
        0x83 -> :sswitch_3c
        0x84 -> :sswitch_b2
        0x85 -> :sswitch_b3
        0x86 -> :sswitch_b4
        0x87 -> :sswitch_b9
        0x88 -> :sswitch_bd
        0x89 -> :sswitch_be
        0x8a -> :sswitch_bf
        0x8c -> :sswitch_81
        0x8d -> :sswitch_40
        0x8e -> :sswitch_46
        0x8f -> :sswitch_84
        0x90 -> :sswitch_7b
        0x91 -> :sswitch_af
        0x92 -> :sswitch_c2
        0x93 -> :sswitch_c3
        0x94 -> :sswitch_70
        0x95 -> :sswitch_e
        0x96 -> :sswitch_c4
        0x97 -> :sswitch_43
        0x98 -> :sswitch_ba
        0x99 -> :sswitch_1
        0x9a -> :sswitch_ae
        0x9b -> :sswitch_c6
        0x9c -> :sswitch_c7
        0x9d -> :sswitch_b1
        0x9e -> :sswitch_c8
        0x9f -> :sswitch_c9
        0xa1 -> :sswitch_bb
        0xa2 -> :sswitch_ca
        0xa3 -> :sswitch_cc
        0xa4 -> :sswitch_c5
        0xa5 -> :sswitch_d0
        0xa6 -> :sswitch_95
        0xa7 -> :sswitch_d1
        0xa8 -> :sswitch_d6
        0xa9 -> :sswitch_2f
        0xaa -> :sswitch_32
        0xab -> :sswitch_37
        0xac -> :sswitch_3a
        0xad -> :sswitch_38
        0xae -> :sswitch_99
        0xaf -> :sswitch_9a
        0xb0 -> :sswitch_d3
        0xb1 -> :sswitch_d2
        0xb2 -> :sswitch_d4
        0xb3 -> :sswitch_d5
        0xb4 -> :sswitch_67
        0xb5 -> :sswitch_68
        0xb6 -> :sswitch_69
        0xb7 -> :sswitch_44
        0xb8 -> :sswitch_e5
        0xb9 -> :sswitch_d9
        0xba -> :sswitch_d7
        0xbb -> :sswitch_f5
        0xd3 -> :sswitch_bc
        0xd4 -> :sswitch_ac
        0xd5 -> :sswitch_39
        0xd6 -> :sswitch_da
        0xd7 -> :sswitch_db
        0xd8 -> :sswitch_dd
        0xd9 -> :sswitch_df
        0xda -> :sswitch_e2
        0xdb -> :sswitch_6
        0xdc -> :sswitch_9b
        0xdd -> :sswitch_22
        0xde -> :sswitch_dc
        0xdf -> :sswitch_de
        0xe0 -> :sswitch_f
        0xe1 -> :sswitch_98
        0xe2 -> :sswitch_e8
        0xe3 -> :sswitch_e9
        0xe4 -> :sswitch_ea
        0xe5 -> :sswitch_eb
        0xe6 -> :sswitch_b
        0xe7 -> :sswitch_ec
        0xe8 -> :sswitch_c0
        0xe9 -> :sswitch_2
        0xea -> :sswitch_23
        0xeb -> :sswitch_24
        0xec -> :sswitch_10
        0xed -> :sswitch_11
        0xee -> :sswitch_ed
        0xef -> :sswitch_e6
        0xf0 -> :sswitch_cd
        0xf1 -> :sswitch_e7
        0xf2 -> :sswitch_62
        0xf3 -> :sswitch_3d
        0x119 -> :sswitch_ee
        0x11a -> :sswitch_d8
        0x11b -> :sswitch_3b
        0x11c -> :sswitch_e3
        0x11d -> :sswitch_cb
        0x11e -> :sswitch_e4
        0x11f -> :sswitch_e0
        0x120 -> :sswitch_ef
        0x121 -> :sswitch_f0
        0x122 -> :sswitch_f1
        0x123 -> :sswitch_f2
        0x124 -> :sswitch_78
        0x125 -> :sswitch_79
        0x126 -> :sswitch_f4
        0x127 -> :sswitch_e1
        0x128 -> :sswitch_f3
        0x129 -> :sswitch_c1
        0x12a -> :sswitch_b5
        0x12b -> :sswitch_b6
        0x12c -> :sswitch_ce
        0x12d -> :sswitch_cf
        0x12e -> :sswitch_f6
        0x155 -> :sswitch_f7
        0x156 -> :sswitch_f8
        0x157 -> :sswitch_36
        0x158 -> :sswitch_f9
        0x159 -> :sswitch_fa
        0x15a -> :sswitch_fb
        0x15b -> :sswitch_30
        0x15c -> :sswitch_fc
        0x15d -> :sswitch_fd
        0x15e -> :sswitch_31
        0x15f -> :sswitch_fe
        0x160 -> :sswitch_ad
        0x161 -> :sswitch_ff
        0x162 -> :sswitch_100
        0x163 -> :sswitch_82
        0x164 -> :sswitch_101
        0x165 -> :sswitch_1f
        0x166 -> :sswitch_a1
        0x167 -> :sswitch_35
        0x168 -> :sswitch_102
        0x169 -> :sswitch_6a
        0x16a -> :sswitch_6b
        0x16b -> :sswitch_104
        0x16c -> :sswitch_7
        0x16d -> :sswitch_8
        0x16e -> :sswitch_9
        0x16f -> :sswitch_105
        0x170 -> :sswitch_106
        0x171 -> :sswitch_74
        0x172 -> :sswitch_75
        0x173 -> :sswitch_33
        0x174 -> :sswitch_103
        0x175 -> :sswitch_34
        0x176 -> :sswitch_107
        0x177 -> :sswitch_108
        0x178 -> :sswitch_109
        0x179 -> :sswitch_10a
        0x17a -> :sswitch_10b
        0x17b -> :sswitch_10c
        0x17c -> :sswitch_10d
        0x17d -> :sswitch_10e
        0x3e9 -> :sswitch_10f
        0x3ea -> :sswitch_110
        0x3ed -> :sswitch_111
        0x3ee -> :sswitch_113
        0x3ef -> :sswitch_112
        0x3f1 -> :sswitch_115
        0x3f2 -> :sswitch_116
        0x3f3 -> :sswitch_114
    .end sparse-switch
.end method
