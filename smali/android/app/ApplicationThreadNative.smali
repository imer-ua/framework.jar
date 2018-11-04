.class public abstract Landroid/app/ApplicationThreadNative;
.super Landroid/os/Binder;
.source "ApplicationThreadNative.java"

# interfaces
.implements Landroid/app/IApplicationThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 73
    const-string/jumbo v0, "android.app.IApplicationThread"

    invoke-virtual {p0, p0, v0}, Landroid/app/ApplicationThreadNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 60
    if-nez p0, :cond_0

    .line 61
    return-object v1

    .line 64
    :cond_0
    const-string/jumbo v1, "android.app.IApplicationThread"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IApplicationThread;

    .line 65
    .local v0, "in":Landroid/app/IApplicationThread;
    if-eqz v0, :cond_1

    .line 66
    return-object v0

    .line 69
    :cond_1
    new-instance v1, Landroid/app/ApplicationThreadProxy;

    invoke-direct {v1, p0}, Landroid/app/ApplicationThreadProxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 793
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 135
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
    .line 79
    sparse-switch p1, :sswitch_data_0

    .line 788
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 82
    :sswitch_0
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 84
    .local v7, "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v8, 0x1

    .line 85
    .local v8, "finished":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v9, 0x1

    .line 86
    .local v9, "userLeaving":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 87
    .local v10, "configChanges":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    const/4 v11, 0x1

    .local v11, "dontReport":Z
    :goto_2
    move-object/from16 v6, p0

    .line 88
    invoke-virtual/range {v6 .. v11}, Landroid/app/ApplicationThreadNative;->schedulePauseActivity(Landroid/os/IBinder;ZZIZ)V

    .line 89
    const/4 v6, 0x1

    return v6

    .line 84
    .end local v8    # "finished":Z
    .end local v9    # "userLeaving":Z
    .end local v10    # "configChanges":I
    .end local v11    # "dontReport":Z
    :cond_0
    const/4 v8, 0x0

    .restart local v8    # "finished":Z
    goto :goto_0

    .line 85
    :cond_1
    const/4 v9, 0x0

    .restart local v9    # "userLeaving":Z
    goto :goto_1

    .line 87
    .restart local v10    # "configChanges":I
    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    .line 94
    .end local v7    # "b":Landroid/os/IBinder;
    .end local v8    # "finished":Z
    .end local v9    # "userLeaving":Z
    .end local v10    # "configChanges":I
    :sswitch_1
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 96
    .restart local v7    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    const/16 v128, 0x1

    .line 97
    .local v128, "show":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 98
    .restart local v10    # "configChanges":I
    move-object/from16 v0, p0

    move/from16 v1, v128

    invoke-virtual {v0, v7, v1, v10}, Landroid/app/ApplicationThreadNative;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    .line 99
    const/4 v6, 0x1

    return v6

    .line 96
    .end local v10    # "configChanges":I
    .end local v128    # "show":Z
    :cond_3
    const/16 v128, 0x0

    .restart local v128    # "show":Z
    goto :goto_3

    .line 104
    .end local v7    # "b":Landroid/os/IBinder;
    .end local v128    # "show":Z
    :sswitch_2
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 106
    .restart local v7    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    const/16 v128, 0x1

    .line 107
    .local v128, "show":Z
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v128

    invoke-virtual {v0, v7, v1}, Landroid/app/ApplicationThreadNative;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    .line 108
    const/4 v6, 0x1

    return v6

    .line 106
    .end local v128    # "show":Z
    :cond_4
    const/16 v128, 0x0

    goto :goto_4

    .line 113
    .end local v7    # "b":Landroid/os/IBinder;
    :sswitch_3
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 115
    .restart local v7    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    const/16 v129, 0x1

    .line 116
    .local v129, "sleeping":Z
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v129

    invoke-virtual {v0, v7, v1}, Landroid/app/ApplicationThreadNative;->scheduleSleeping(Landroid/os/IBinder;Z)V

    .line 117
    const/4 v6, 0x1

    return v6

    .line 115
    .end local v129    # "sleeping":Z
    :cond_5
    const/16 v129, 0x0

    goto :goto_5

    .line 122
    .end local v7    # "b":Landroid/os/IBinder;
    :sswitch_4
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 124
    .restart local v7    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 125
    .local v22, "procState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    const/16 v28, 0x1

    .line 126
    .local v28, "isForward":Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v124

    .line 127
    .local v124, "resumeArgs":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v28

    move-object/from16 v3, v124

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleResumeActivity(Landroid/os/IBinder;IZLandroid/os/Bundle;)V

    .line 128
    const/4 v6, 0x1

    return v6

    .line 125
    .end local v28    # "isForward":Z
    .end local v124    # "resumeArgs":Landroid/os/Bundle;
    :cond_6
    const/16 v28, 0x0

    .restart local v28    # "isForward":Z
    goto :goto_6

    .line 133
    .end local v7    # "b":Landroid/os/IBinder;
    .end local v22    # "procState":I
    .end local v28    # "isForward":Z
    :sswitch_5
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 135
    .restart local v7    # "b":Landroid/os/IBinder;
    sget-object v6, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    .line 136
    .local v25, "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v7, v1}, Landroid/app/ApplicationThreadNative;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 137
    const/4 v6, 0x1

    return v6

    .line 142
    .end local v7    # "b":Landroid/os/IBinder;
    .end local v25    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    :sswitch_6
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Intent;

    .line 144
    .local v13, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 145
    .restart local v7    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 146
    .local v15, "ident":I
    sget-object v6, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ActivityInfo;

    .line 147
    .local v16, "info":Landroid/content/pm/ActivityInfo;
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/res/Configuration;

    .line 148
    .local v17, "curConfig":Landroid/content/res/Configuration;
    const/16 v18, 0x0

    .line 149
    .local v18, "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    .line 150
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "overrideConfig":Landroid/content/res/Configuration;
    check-cast v18, Landroid/content/res/Configuration;

    .line 152
    :cond_7
    sget-object v6, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/res/CompatibilityInfo;

    .line 153
    .local v19, "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 155
    .local v20, "referrer":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 154
    invoke-static {v6}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v21

    .line 156
    .local v21, "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 157
    .restart local v22    # "procState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v23

    .line 158
    .local v23, "state":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v24

    .line 159
    .local v24, "persistentState":Landroid/os/PersistableBundle;
    sget-object v6, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    .line 160
    .restart local v25    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v6, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v26

    .line 161
    .local v26, "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    const/16 v27, 0x1

    .line 162
    .local v27, "notResumed":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    const/16 v28, 0x1

    .line 163
    .restart local v28    # "isForward":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    .line 164
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object/from16 v29, v6

    .local v29, "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_9
    move-object/from16 v12, p0

    move-object v14, v7

    .line 165
    invoke-virtual/range {v12 .. v29}, Landroid/app/ApplicationThreadNative;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZZLandroid/app/ProfilerInfo;)V

    .line 168
    const/4 v6, 0x1

    return v6

    .line 161
    .end local v27    # "notResumed":Z
    .end local v28    # "isForward":Z
    .end local v29    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_8
    const/16 v27, 0x0

    .restart local v27    # "notResumed":Z
    goto :goto_7

    .line 162
    :cond_9
    const/16 v28, 0x0

    .restart local v28    # "isForward":Z
    goto :goto_8

    .line 164
    :cond_a
    const/16 v29, 0x0

    goto :goto_9

    .line 173
    .end local v7    # "b":Landroid/os/IBinder;
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v15    # "ident":I
    .end local v16    # "info":Landroid/content/pm/ActivityInfo;
    .end local v17    # "curConfig":Landroid/content/res/Configuration;
    .end local v19    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v20    # "referrer":Ljava/lang/String;
    .end local v21    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    .end local v22    # "procState":I
    .end local v23    # "state":Landroid/os/Bundle;
    .end local v24    # "persistentState":Landroid/os/PersistableBundle;
    .end local v25    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v26    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local v27    # "notResumed":Z
    .end local v28    # "isForward":Z
    :sswitch_7
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 175
    .restart local v7    # "b":Landroid/os/IBinder;
    sget-object v6, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    .line 176
    .restart local v25    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v6, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v26

    .line 177
    .restart local v26    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 178
    .restart local v10    # "configChanges":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    const/16 v27, 0x1

    .line 179
    .restart local v27    # "notResumed":Z
    :goto_a
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/content/res/Configuration;

    .line 180
    .local v36, "config":Landroid/content/res/Configuration;
    const/16 v18, 0x0

    .line 181
    .restart local v18    # "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    .line 182
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "overrideConfig":Landroid/content/res/Configuration;
    check-cast v18, Landroid/content/res/Configuration;

    .line 184
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/4 v12, 0x1

    if-ne v6, v12, :cond_d

    const/16 v38, 0x1

    .local v38, "preserveWindows":Z
    :goto_b
    move-object/from16 v30, p0

    move-object/from16 v31, v7

    move-object/from16 v32, v25

    move-object/from16 v33, v26

    move/from16 v34, v10

    move/from16 v35, v27

    move-object/from16 v37, v18

    .line 185
    invoke-virtual/range {v30 .. v38}, Landroid/app/ApplicationThreadNative;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;Z)V

    .line 187
    const/4 v6, 0x1

    return v6

    .line 178
    .end local v27    # "notResumed":Z
    .end local v36    # "config":Landroid/content/res/Configuration;
    .end local v38    # "preserveWindows":Z
    :cond_c
    const/16 v27, 0x0

    .restart local v27    # "notResumed":Z
    goto :goto_a

    .line 184
    .restart local v36    # "config":Landroid/content/res/Configuration;
    :cond_d
    const/16 v38, 0x0

    goto :goto_b

    .line 192
    .end local v7    # "b":Landroid/os/IBinder;
    .end local v10    # "configChanges":I
    .end local v25    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v26    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local v27    # "notResumed":Z
    .end local v36    # "config":Landroid/content/res/Configuration;
    :sswitch_8
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    sget-object v6, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v26

    .line 194
    .restart local v26    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 195
    .restart local v7    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/4 v12, 0x1

    if-ne v6, v12, :cond_e

    const/16 v86, 0x1

    .line 196
    .local v86, "andPause":Z
    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v86

    invoke-virtual {v0, v1, v7, v2}, Landroid/app/ApplicationThreadNative;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;Z)V

    .line 197
    const/4 v6, 0x1

    return v6

    .line 195
    .end local v86    # "andPause":Z
    :cond_e
    const/16 v86, 0x0

    goto :goto_c

    .line 202
    .end local v7    # "b":Landroid/os/IBinder;
    .end local v26    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :sswitch_9
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 204
    .restart local v7    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f

    const/16 v97, 0x1

    .line 205
    .local v97, "finishing":Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 206
    .restart local v10    # "configChanges":I
    move-object/from16 v0, p0

    move/from16 v1, v97

    invoke-virtual {v0, v7, v1, v10}, Landroid/app/ApplicationThreadNative;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V

    .line 207
    const/4 v6, 0x1

    return v6

    .line 204
    .end local v10    # "configChanges":I
    .end local v97    # "finishing":Z
    :cond_f
    const/16 v97, 0x0

    .restart local v97    # "finishing":Z
    goto :goto_d

    .line 212
    .end local v7    # "b":Landroid/os/IBinder;
    .end local v97    # "finishing":Z
    :sswitch_a
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Intent;

    .line 214
    .restart local v13    # "intent":Landroid/content/Intent;
    sget-object v6, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ActivityInfo;

    .line 215
    .restart local v16    # "info":Landroid/content/pm/ActivityInfo;
    sget-object v6, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/res/CompatibilityInfo;

    .line 216
    .restart local v19    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 217
    .local v43, "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v44

    .line 218
    .local v44, "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v45

    .line 219
    .local v45, "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10

    const/16 v46, 0x1

    .line 220
    .local v46, "sync":Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v47

    .line 221
    .local v47, "sendingUser":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v48

    .local v48, "processState":I
    move-object/from16 v39, p0

    move-object/from16 v40, v13

    move-object/from16 v41, v16

    move-object/from16 v42, v19

    .line 222
    invoke-virtual/range {v39 .. v48}, Landroid/app/ApplicationThreadNative;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V

    .line 224
    const/4 v6, 0x1

    return v6

    .line 219
    .end local v46    # "sync":Z
    .end local v47    # "sendingUser":I
    .end local v48    # "processState":I
    :cond_10
    const/16 v46, 0x0

    .restart local v46    # "sync":Z
    goto :goto_e

    .line 228
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v16    # "info":Landroid/content/pm/ActivityInfo;
    .end local v19    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v43    # "resultCode":I
    .end local v44    # "resultData":Ljava/lang/String;
    .end local v45    # "resultExtras":Landroid/os/Bundle;
    .end local v46    # "sync":Z
    :sswitch_b
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v31

    .line 230
    .local v31, "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v104

    check-cast v104, Landroid/content/pm/ServiceInfo;

    .line 231
    .local v104, "info":Landroid/content/pm/ServiceInfo;
    sget-object v6, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/res/CompatibilityInfo;

    .line 232
    .restart local v19    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v48

    .line 233
    .restart local v48    # "processState":I
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v104

    move-object/from16 v3, v19

    move/from16 v4, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 234
    const/4 v6, 0x1

    return v6

    .line 238
    .end local v19    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v31    # "token":Landroid/os/IBinder;
    .end local v48    # "processState":I
    .end local v104    # "info":Landroid/content/pm/ServiceInfo;
    :sswitch_c
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v31

    .line 240
    .restart local v31    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Intent;

    .line 241
    .restart local v13    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_11

    const/16 v120, 0x1

    .line 242
    .local v120, "rebind":Z
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v48

    .line 243
    .restart local v48    # "processState":I
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v120

    move/from16 v3, v48

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    .line 244
    const/4 v6, 0x1

    return v6

    .line 241
    .end local v48    # "processState":I
    .end local v120    # "rebind":Z
    :cond_11
    const/16 v120, 0x0

    .restart local v120    # "rebind":Z
    goto :goto_f

    .line 248
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v31    # "token":Landroid/os/IBinder;
    .end local v120    # "rebind":Z
    :sswitch_d
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v31

    .line 250
    .restart local v31    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Intent;

    .line 251
    .restart local v13    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v13}, Landroid/app/ApplicationThreadNative;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V

    .line 252
    const/4 v6, 0x1

    return v6

    .line 257
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v31    # "token":Landroid/os/IBinder;
    :sswitch_e
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v31

    .line 259
    .restart local v31    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12

    const/16 v32, 0x1

    .line 260
    .local v32, "taskRemoved":Z
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .line 261
    .local v33, "startId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .line 263
    .local v34, "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_13

    .line 264
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/Intent;

    :goto_11
    move-object/from16 v30, p0

    .line 268
    invoke-virtual/range {v30 .. v35}, Landroid/app/ApplicationThreadNative;->scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V

    .line 269
    const/4 v6, 0x1

    return v6

    .line 259
    .end local v32    # "taskRemoved":Z
    .end local v33    # "startId":I
    .end local v34    # "fl":I
    :cond_12
    const/16 v32, 0x0

    .restart local v32    # "taskRemoved":Z
    goto :goto_10

    .line 266
    .restart local v33    # "startId":I
    .restart local v34    # "fl":I
    :cond_13
    const/16 v35, 0x0

    .local v35, "args":Landroid/content/Intent;
    goto :goto_11

    .line 274
    .end local v31    # "token":Landroid/os/IBinder;
    .end local v32    # "taskRemoved":Z
    .end local v33    # "startId":I
    .end local v34    # "fl":I
    .end local v35    # "args":Landroid/content/Intent;
    :sswitch_f
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v31

    .line 276
    .restart local v31    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleStopService(Landroid/os/IBinder;)V

    .line 277
    const/4 v6, 0x1

    return v6

    .line 282
    .end local v31    # "token":Landroid/os/IBinder;
    :sswitch_10
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v50

    .line 285
    .local v50, "packageName":Ljava/lang/String;
    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/content/pm/ApplicationInfo;

    .line 287
    .local v51, "info":Landroid/content/pm/ApplicationInfo;
    sget-object v6, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v52

    .line 288
    .local v52, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_14

    .line 289
    new-instance v53, Landroid/content/ComponentName;

    move-object/from16 v0, v53

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    .line 290
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_15

    .line 291
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/app/ProfilerInfo;

    .line 292
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v55

    .line 293
    .local v55, "testArgs":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v89

    .line 294
    .local v89, "binder":Landroid/os/IBinder;
    invoke-static/range {v89 .. v89}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v56

    .line 295
    .local v56, "testWatcher":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v89

    .line 297
    invoke-static/range {v89 .. v89}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v57

    .line 298
    .local v57, "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 299
    .local v58, "testMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_16

    const/16 v59, 0x1

    .line 300
    .local v59, "enableBinderTracking":Z
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_17

    const/16 v60, 0x1

    .line 301
    .local v60, "trackAllocation":Z
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_18

    const/16 v61, 0x1

    .line 302
    .local v61, "restrictedBackupMode":Z
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_19

    const/16 v62, 0x1

    .line 303
    .local v62, "persistent":Z
    :goto_17
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/content/res/Configuration;

    .line 304
    .restart local v36    # "config":Landroid/content/res/Configuration;
    sget-object v6, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/res/CompatibilityInfo;

    .line 305
    .restart local v19    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v65

    .line 306
    .local v65, "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v66

    .local v66, "coreSettings":Landroid/os/Bundle;
    move-object/from16 v49, p0

    move-object/from16 v54, v29

    move-object/from16 v63, v36

    move-object/from16 v64, v19

    .line 307
    invoke-virtual/range {v49 .. v66}, Landroid/app/ApplicationThreadNative;->bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;)V

    .line 311
    const/4 v6, 0x1

    return v6

    .line 289
    .end local v19    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v36    # "config":Landroid/content/res/Configuration;
    .end local v55    # "testArgs":Landroid/os/Bundle;
    .end local v56    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .end local v57    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .end local v58    # "testMode":I
    .end local v59    # "enableBinderTracking":Z
    .end local v60    # "trackAllocation":Z
    .end local v61    # "restrictedBackupMode":Z
    .end local v62    # "persistent":Z
    .end local v65    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    .end local v66    # "coreSettings":Landroid/os/Bundle;
    .end local v89    # "binder":Landroid/os/IBinder;
    :cond_14
    const/16 v53, 0x0

    .local v53, "testName":Landroid/content/ComponentName;
    goto :goto_12

    .line 291
    .end local v53    # "testName":Landroid/content/ComponentName;
    :cond_15
    const/16 v29, 0x0

    .local v29, "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_13

    .line 299
    .end local v29    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v55    # "testArgs":Landroid/os/Bundle;
    .restart local v56    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .restart local v57    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .restart local v58    # "testMode":I
    .restart local v89    # "binder":Landroid/os/IBinder;
    :cond_16
    const/16 v59, 0x0

    .restart local v59    # "enableBinderTracking":Z
    goto :goto_14

    .line 300
    :cond_17
    const/16 v60, 0x0

    .restart local v60    # "trackAllocation":Z
    goto :goto_15

    .line 301
    :cond_18
    const/16 v61, 0x0

    .restart local v61    # "restrictedBackupMode":Z
    goto :goto_16

    .line 302
    :cond_19
    const/16 v62, 0x0

    .restart local v62    # "persistent":Z
    goto :goto_17

    .line 316
    .end local v50    # "packageName":Ljava/lang/String;
    .end local v51    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v52    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .end local v55    # "testArgs":Landroid/os/Bundle;
    .end local v56    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .end local v57    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .end local v58    # "testMode":I
    .end local v59    # "enableBinderTracking":Z
    .end local v60    # "trackAllocation":Z
    .end local v61    # "restrictedBackupMode":Z
    .end local v62    # "persistent":Z
    .end local v89    # "binder":Landroid/os/IBinder;
    :sswitch_11
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleExit()V

    .line 318
    const/4 v6, 0x1

    return v6

    .line 323
    :sswitch_12
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleSuicide()V

    .line 325
    const/4 v6, 0x1

    return v6

    .line 330
    :sswitch_13
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/content/res/Configuration;

    .line 332
    .restart local v36    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 333
    const/4 v6, 0x1

    return v6

    .line 337
    .end local v36    # "config":Landroid/content/res/Configuration;
    :sswitch_14
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->updateTimeZone()V

    .line 339
    const/4 v6, 0x1

    return v6

    .line 343
    :sswitch_15
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->clearDnsCache()V

    .line 345
    const/4 v6, 0x1

    return v6

    .line 349
    :sswitch_16
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v119

    .line 351
    .local v119, "proxy":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v114

    .line 352
    .local v114, "port":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v95

    .line 353
    .local v95, "exclList":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/net/Uri;

    .line 354
    .local v110, "pacFileUrl":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v119

    move-object/from16 v2, v114

    move-object/from16 v3, v95

    move-object/from16 v4, v110

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 355
    const/4 v6, 0x1

    return v6

    .line 359
    .end local v95    # "exclList":Ljava/lang/String;
    .end local v110    # "pacFileUrl":Landroid/net/Uri;
    .end local v114    # "port":Ljava/lang/String;
    .end local v119    # "proxy":Ljava/lang/String;
    :sswitch_17
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->processInBackground()V

    .line 361
    const/4 v6, 0x1

    return v6

    .line 365
    :sswitch_18
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v96

    .line 367
    .local v96, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v125

    .line 368
    .local v125, "service":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v83

    .line 369
    .local v83, "args":[Ljava/lang/String;
    if-eqz v96, :cond_1a

    .line 370
    invoke-virtual/range {v96 .. v96}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    move-object/from16 v2, v83

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 372
    :try_start_0
    invoke-virtual/range {v96 .. v96}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :cond_1a
    :goto_18
    const/4 v6, 0x1

    return v6

    .line 373
    :catch_0
    move-exception v93

    .local v93, "e":Ljava/io/IOException;
    goto :goto_18

    .line 380
    .end local v83    # "args":[Ljava/lang/String;
    .end local v93    # "e":Ljava/io/IOException;
    .end local v96    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v125    # "service":Landroid/os/IBinder;
    :sswitch_19
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v96

    .line 382
    .restart local v96    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v125

    .line 383
    .restart local v125    # "service":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v83

    .line 384
    .restart local v83    # "args":[Ljava/lang/String;
    if-eqz v96, :cond_1b

    .line 385
    invoke-virtual/range {v96 .. v96}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v125

    move-object/from16 v2, v83

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpProvider(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 387
    :try_start_1
    invoke-virtual/range {v96 .. v96}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 391
    :cond_1b
    :goto_19
    const/4 v6, 0x1

    return v6

    .line 388
    :catch_1
    move-exception v93

    .restart local v93    # "e":Ljava/io/IOException;
    goto :goto_19

    .line 395
    .end local v83    # "args":[Ljava/lang/String;
    .end local v93    # "e":Ljava/io/IOException;
    .end local v96    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v125    # "service":Landroid/os/IBinder;
    :sswitch_1a
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 396
    invoke-static {v6}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v68

    .line 398
    .local v68, "receiver":Landroid/content/IIntentReceiver;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Intent;

    .line 399
    .restart local v13    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 400
    .restart local v43    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v71

    .line 401
    .local v71, "dataStr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v72

    .line 402
    .local v72, "extras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1c

    const/16 v73, 0x1

    .line 403
    .local v73, "ordered":Z
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1d

    const/16 v74, 0x1

    .line 404
    .local v74, "sticky":Z
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v47

    .line 405
    .restart local v47    # "sendingUser":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v48

    .restart local v48    # "processState":I
    move-object/from16 v67, p0

    move-object/from16 v69, v13

    move/from16 v70, v43

    move/from16 v75, v47

    move/from16 v76, v48

    .line 406
    invoke-virtual/range {v67 .. v76}, Landroid/app/ApplicationThreadNative;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V

    .line 408
    const/4 v6, 0x1

    return v6

    .line 402
    .end local v47    # "sendingUser":I
    .end local v48    # "processState":I
    .end local v73    # "ordered":Z
    .end local v74    # "sticky":Z
    :cond_1c
    const/16 v73, 0x0

    .restart local v73    # "ordered":Z
    goto :goto_1a

    .line 403
    :cond_1d
    const/16 v74, 0x0

    .restart local v74    # "sticky":Z
    goto :goto_1b

    .line 413
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v43    # "resultCode":I
    .end local v68    # "receiver":Landroid/content/IIntentReceiver;
    .end local v71    # "dataStr":Ljava/lang/String;
    .end local v72    # "extras":Landroid/os/Bundle;
    .end local v73    # "ordered":Z
    .end local v74    # "sticky":Z
    :sswitch_1b
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleLowMemory()V

    .line 415
    const/4 v6, 0x1

    return v6

    .line 420
    :sswitch_1c
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 422
    .restart local v7    # "b":Landroid/os/IBinder;
    const/16 v18, 0x0

    .line 423
    .restart local v18    # "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1e

    .line 424
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "overrideConfig":Landroid/content/res/Configuration;
    check-cast v18, Landroid/content/res/Configuration;

    .line 426
    :cond_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/4 v12, 0x1

    if-ne v6, v12, :cond_1f

    const/16 v121, 0x1

    .line 427
    .local v121, "reportToActivity":Z
    :goto_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v121

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    .line 428
    const/4 v6, 0x1

    return v6

    .line 426
    .end local v121    # "reportToActivity":Z
    :cond_1f
    const/16 v121, 0x0

    goto :goto_1c

    .line 433
    .end local v7    # "b":Landroid/os/IBinder;
    :sswitch_1d
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v31

    .line 436
    .restart local v31    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 435
    invoke-static {v6}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v21

    .line 437
    .restart local v21    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 438
    const/4 v6, 0x1

    return v6

    .line 443
    .end local v21    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    .end local v31    # "token":Landroid/os/IBinder;
    :sswitch_1e
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_20

    const/16 v130, 0x1

    .line 445
    .local v130, "start":Z
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v116

    .line 446
    .local v116, "profileType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_21

    .line 447
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object/from16 v29, v6

    .line 448
    .local v29, "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_1e
    move-object/from16 v0, p0

    move/from16 v1, v130

    move-object/from16 v2, v29

    move/from16 v3, v116

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->profilerControl(ZLandroid/app/ProfilerInfo;I)V

    .line 449
    const/4 v6, 0x1

    return v6

    .line 444
    .end local v29    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v116    # "profileType":I
    .end local v130    # "start":Z
    :cond_20
    const/16 v130, 0x0

    .restart local v130    # "start":Z
    goto :goto_1d

    .line 447
    .restart local v116    # "profileType":I
    :cond_21
    const/16 v29, 0x0

    goto :goto_1e

    .line 454
    .end local v116    # "profileType":I
    .end local v130    # "start":Z
    :sswitch_1f
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v99

    .line 456
    .local v99, "group":I
    move-object/from16 v0, p0

    move/from16 v1, v99

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setSchedulingGroup(I)V

    .line 457
    const/4 v6, 0x1

    return v6

    .line 462
    .end local v99    # "group":I
    :sswitch_20
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Landroid/content/pm/ApplicationInfo;

    .line 464
    .local v87, "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v6, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/res/CompatibilityInfo;

    .line 465
    .restart local v19    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v88

    .line 466
    .local v88, "backupMode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v87

    move-object/from16 v2, v19

    move/from16 v3, v88

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 467
    const/4 v6, 0x1

    return v6

    .line 472
    .end local v19    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v87    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v88    # "backupMode":I
    :sswitch_21
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Landroid/content/pm/ApplicationInfo;

    .line 474
    .restart local v87    # "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v6, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/res/CompatibilityInfo;

    .line 475
    .restart local v19    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v87

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V

    .line 476
    const/4 v6, 0x1

    return v6

    .line 481
    .end local v19    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v87    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :sswitch_22
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v90

    .line 483
    .local v90, "cmd":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v111

    .line 484
    .local v111, "packages":[Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v90

    move-object/from16 v2, v111

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->dispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 485
    const/4 v6, 0x1

    return v6

    .line 490
    .end local v90    # "cmd":I
    .end local v111    # "packages":[Ljava/lang/String;
    :sswitch_23
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v108

    .line 492
    .local v108, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleCrash(Ljava/lang/String;)V

    .line 493
    const/4 v6, 0x1

    return v6

    .line 498
    .end local v108    # "msg":Ljava/lang/String;
    :sswitch_24
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_22

    const/16 v107, 0x1

    .line 500
    .local v107, "managed":Z
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v112

    .line 501
    .local v112, "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_23

    .line 502
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v96, v6

    .line 503
    .restart local v96    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_20
    move-object/from16 v0, p0

    move/from16 v1, v107

    move-object/from16 v2, v112

    move-object/from16 v3, v96

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 504
    const/4 v6, 0x1

    return v6

    .line 499
    .end local v96    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v107    # "managed":Z
    .end local v112    # "path":Ljava/lang/String;
    :cond_22
    const/16 v107, 0x0

    .restart local v107    # "managed":Z
    goto :goto_1f

    .line 502
    .restart local v112    # "path":Ljava/lang/String;
    :cond_23
    const/16 v96, 0x0

    goto :goto_20

    .line 508
    .end local v107    # "managed":Z
    .end local v112    # "path":Ljava/lang/String;
    :sswitch_25
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v96

    .line 510
    .restart local v96    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 511
    .local v84, "activity":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v115

    .line 512
    .local v115, "prefix":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v83

    .line 513
    .restart local v83    # "args":[Ljava/lang/String;
    if-eqz v96, :cond_24

    .line 514
    invoke-virtual/range {v96 .. v96}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    move-object/from16 v2, v115

    move-object/from16 v3, v83

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 516
    :try_start_2
    invoke-virtual/range {v96 .. v96}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 520
    :cond_24
    :goto_21
    const/4 v6, 0x1

    return v6

    .line 517
    :catch_2
    move-exception v93

    .restart local v93    # "e":Ljava/io/IOException;
    goto :goto_21

    .line 524
    .end local v83    # "args":[Ljava/lang/String;
    .end local v84    # "activity":Landroid/os/IBinder;
    .end local v93    # "e":Ljava/io/IOException;
    .end local v96    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v115    # "prefix":Ljava/lang/String;
    :sswitch_26
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v127

    .line 526
    .local v127, "settings":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setCoreSettings(Landroid/os/Bundle;)V

    .line 527
    const/4 v6, 0x1

    return v6

    .line 531
    .end local v127    # "settings":Landroid/os/Bundle;
    :sswitch_27
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v113

    .line 533
    .local v113, "pkg":Ljava/lang/String;
    sget-object v6, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v91

    check-cast v91, Landroid/content/res/CompatibilityInfo;

    .line 534
    .local v91, "compat":Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v113

    move-object/from16 v2, v91

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V

    .line 535
    const/4 v6, 0x1

    return v6

    .line 539
    .end local v91    # "compat":Landroid/content/res/CompatibilityInfo;
    .end local v113    # "pkg":Ljava/lang/String;
    :sswitch_28
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v106

    .line 541
    .local v106, "level":I
    move-object/from16 v0, p0

    move/from16 v1, v106

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleTrimMemory(I)V

    .line 542
    const/4 v6, 0x1

    return v6

    .line 547
    .end local v106    # "level":I
    :sswitch_29
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v96

    .line 549
    .restart local v96    # "fd":Landroid/os/ParcelFileDescriptor;
    sget-object v6, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Landroid/os/Debug$MemoryInfo;

    .line 550
    .local v77, "mi":Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_26

    const/16 v78, 0x1

    .line 551
    .local v78, "checkin":Z
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_27

    const/16 v79, 0x1

    .line 552
    .local v79, "dumpInfo":Z
    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_28

    const/16 v80, 0x1

    .line 553
    .local v80, "dumpDalvik":Z
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_29

    const/16 v81, 0x1

    .line 554
    .local v81, "dumpSummaryOnly":Z
    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2a

    const/16 v82, 0x1

    .line 555
    .local v82, "dumpUnreachable":Z
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v83

    .line 556
    .restart local v83    # "args":[Ljava/lang/String;
    if-eqz v96, :cond_25

    .line 558
    :try_start_3
    invoke-virtual/range {v96 .. v96}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v76

    move-object/from16 v75, p0

    invoke-virtual/range {v75 .. v83}, Landroid/app/ApplicationThreadNative;->dumpMemInfo(Ljava/io/FileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZZ[Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 562
    :try_start_4
    invoke-virtual/range {v96 .. v96}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 568
    :cond_25
    :goto_27
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    const/4 v6, 0x1

    return v6

    .line 550
    .end local v78    # "checkin":Z
    .end local v79    # "dumpInfo":Z
    .end local v80    # "dumpDalvik":Z
    .end local v81    # "dumpSummaryOnly":Z
    .end local v82    # "dumpUnreachable":Z
    .end local v83    # "args":[Ljava/lang/String;
    :cond_26
    const/16 v78, 0x0

    .restart local v78    # "checkin":Z
    goto :goto_22

    .line 551
    :cond_27
    const/16 v79, 0x0

    .restart local v79    # "dumpInfo":Z
    goto :goto_23

    .line 552
    :cond_28
    const/16 v80, 0x0

    .restart local v80    # "dumpDalvik":Z
    goto :goto_24

    .line 553
    :cond_29
    const/16 v81, 0x0

    .restart local v81    # "dumpSummaryOnly":Z
    goto :goto_25

    .line 554
    :cond_2a
    const/16 v82, 0x0

    .restart local v82    # "dumpUnreachable":Z
    goto :goto_26

    .line 563
    .restart local v83    # "args":[Ljava/lang/String;
    :catch_3
    move-exception v93

    .restart local v93    # "e":Ljava/io/IOException;
    goto :goto_27

    .line 560
    .end local v93    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 562
    :try_start_5
    invoke-virtual/range {v96 .. v96}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 560
    :goto_28
    throw v6

    .line 563
    :catch_4
    move-exception v93

    .restart local v93    # "e":Ljava/io/IOException;
    goto :goto_28

    .line 574
    .end local v77    # "mi":Landroid/os/Debug$MemoryInfo;
    .end local v78    # "checkin":Z
    .end local v79    # "dumpInfo":Z
    .end local v80    # "dumpDalvik":Z
    .end local v81    # "dumpSummaryOnly":Z
    .end local v82    # "dumpUnreachable":Z
    .end local v83    # "args":[Ljava/lang/String;
    .end local v93    # "e":Ljava/io/IOException;
    .end local v96    # "fd":Landroid/os/ParcelFileDescriptor;
    :sswitch_2a
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v96

    .line 576
    .restart local v96    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v83

    .line 577
    .restart local v83    # "args":[Ljava/lang/String;
    if-eqz v96, :cond_2b

    .line 579
    :try_start_6
    invoke-virtual/range {v96 .. v96}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 582
    :try_start_7
    invoke-virtual/range {v96 .. v96}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 588
    :cond_2b
    :goto_29
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    const/4 v6, 0x1

    return v6

    .line 583
    :catch_5
    move-exception v93

    .restart local v93    # "e":Ljava/io/IOException;
    goto :goto_29

    .line 580
    .end local v93    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    .line 582
    :try_start_8
    invoke-virtual/range {v96 .. v96}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 580
    :goto_2a
    throw v6

    .line 583
    :catch_6
    move-exception v93

    .restart local v93    # "e":Ljava/io/IOException;
    goto :goto_2a

    .line 594
    .end local v83    # "args":[Ljava/lang/String;
    .end local v93    # "e":Ljava/io/IOException;
    .end local v96    # "fd":Landroid/os/ParcelFileDescriptor;
    :sswitch_2b
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v96

    .line 596
    .restart local v96    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v83

    .line 597
    .restart local v83    # "args":[Ljava/lang/String;
    if-eqz v96, :cond_2c

    .line 599
    :try_start_9
    invoke-virtual/range {v96 .. v96}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->dumpDbInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 602
    :try_start_a
    invoke-virtual/range {v96 .. v96}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 608
    :cond_2c
    :goto_2b
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    const/4 v6, 0x1

    return v6

    .line 603
    :catch_7
    move-exception v93

    .restart local v93    # "e":Ljava/io/IOException;
    goto :goto_2b

    .line 600
    .end local v93    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v6

    .line 602
    :try_start_b
    invoke-virtual/range {v96 .. v96}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 600
    :goto_2c
    throw v6

    .line 603
    :catch_8
    move-exception v93

    .restart local v93    # "e":Ljava/io/IOException;
    goto :goto_2c

    .line 614
    .end local v83    # "args":[Ljava/lang/String;
    .end local v93    # "e":Ljava/io/IOException;
    .end local v96    # "fd":Landroid/os/ParcelFileDescriptor;
    :sswitch_2c
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v118

    .line 616
    .local v118, "provider":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v118

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 617
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    const/4 v6, 0x1

    return v6

    .line 623
    .end local v118    # "provider":Landroid/os/IBinder;
    :sswitch_2d
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v85

    .line 625
    .local v85, "activityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v122

    .line 626
    .local v122, "requestToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v123

    .line 627
    .local v123, "requestType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v126

    .line 628
    .local v126, "sessionId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v85

    move-object/from16 v2, v122

    move/from16 v3, v123

    move/from16 v4, v126

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;II)V

    .line 629
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    const/4 v6, 0x1

    return v6

    .line 635
    .end local v85    # "activityToken":Landroid/os/IBinder;
    .end local v122    # "requestToken":Landroid/os/IBinder;
    .end local v123    # "requestType":I
    .end local v126    # "sessionId":I
    :sswitch_2e
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v31

    .line 637
    .restart local v31    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/4 v12, 0x1

    if-ne v6, v12, :cond_2d

    const/16 v134, 0x1

    .line 638
    .local v134, "timeout":Z
    :goto_2d
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v134

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    .line 639
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    const/4 v6, 0x1

    return v6

    .line 637
    .end local v134    # "timeout":Z
    :cond_2d
    const/16 v134, 0x0

    goto :goto_2d

    .line 645
    .end local v31    # "token":Landroid/os/IBinder;
    :sswitch_2f
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v31

    .line 647
    .restart local v31    # "token":Landroid/os/IBinder;
    new-instance v109, Landroid/app/ActivityOptions;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v6

    move-object/from16 v0, v109

    invoke-direct {v0, v6}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .line 648
    .local v109, "options":Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v109

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V

    .line 649
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    const/4 v6, 0x1

    return v6

    .line 655
    .end local v31    # "token":Landroid/os/IBinder;
    .end local v109    # "options":Landroid/app/ActivityOptions;
    :sswitch_30
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 656
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v131

    .line 657
    .local v131, "state":I
    move-object/from16 v0, p0

    move/from16 v1, v131

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setProcessState(I)V

    .line 658
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    const/4 v6, 0x1

    return v6

    .line 664
    .end local v131    # "state":I
    :sswitch_31
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 665
    sget-object v6, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v117

    check-cast v117, Landroid/content/pm/ProviderInfo;

    .line 666
    .local v117, "provider":Landroid/content/pm/ProviderInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    .line 667
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    const/4 v6, 0x1

    return v6

    .line 673
    .end local v117    # "provider":Landroid/content/pm/ProviderInfo;
    :sswitch_32
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 674
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v105

    .line 675
    .local v105, "is24Hour":B
    const/4 v6, 0x1

    move/from16 v0, v105

    if-ne v0, v6, :cond_2e

    const/4 v6, 0x1

    :goto_2e
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ApplicationThreadNative;->updateTimePrefs(Z)V

    .line 676
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    const/4 v6, 0x1

    return v6

    .line 675
    :cond_2e
    const/4 v6, 0x0

    goto :goto_2e

    .line 682
    .end local v105    # "is24Hour":B
    :sswitch_33
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 683
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v31

    .line 684
    .restart local v31    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleCancelVisibleBehind(Landroid/os/IBinder;)V

    .line 685
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    const/4 v6, 0x1

    return v6

    .line 691
    .end local v31    # "token":Landroid/os/IBinder;
    :sswitch_34
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 692
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v31

    .line 693
    .restart local v31    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-lez v6, :cond_2f

    const/16 v94, 0x1

    .line 694
    .local v94, "enabled":Z
    :goto_2f
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v94

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V

    .line 695
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    const/4 v6, 0x1

    return v6

    .line 693
    .end local v94    # "enabled":Z
    :cond_2f
    const/16 v94, 0x0

    goto :goto_2f

    .line 701
    .end local v31    # "token":Landroid/os/IBinder;
    :sswitch_35
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 702
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v31

    .line 703
    .restart local v31    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 704
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    const/4 v6, 0x1

    return v6

    .line 710
    .end local v31    # "token":Landroid/os/IBinder;
    :sswitch_36
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 711
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v98

    .line 712
    .local v98, "firstPacket":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->notifyCleartextNetwork([B)V

    .line 713
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    const/4 v6, 0x1

    return v6

    .line 719
    .end local v98    # "firstPacket":[B
    :sswitch_37
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->startBinderTracking()V

    .line 721
    const/4 v6, 0x1

    return v6

    .line 726
    :sswitch_38
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v96

    .line 728
    .restart local v96    # "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v96, :cond_30

    .line 729
    invoke-virtual/range {v96 .. v96}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ApplicationThreadNative;->stopBinderTrackingAndDump(Ljava/io/FileDescriptor;)V

    .line 731
    :try_start_c
    invoke-virtual/range {v96 .. v96}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 735
    :cond_30
    :goto_30
    const/4 v6, 0x1

    return v6

    .line 732
    :catch_9
    move-exception v93

    .restart local v93    # "e":Ljava/io/IOException;
    goto :goto_30

    .line 740
    .end local v93    # "e":Ljava/io/IOException;
    .end local v96    # "fd":Landroid/os/ParcelFileDescriptor;
    :sswitch_39
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 741
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 742
    .restart local v7    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_31

    const/16 v102, 0x1

    .line 743
    .local v102, "inMultiWindow":Z
    :goto_31
    move-object/from16 v0, p0

    move/from16 v1, v102

    invoke-virtual {v0, v7, v1}, Landroid/app/ApplicationThreadNative;->scheduleMultiWindowModeChanged(Landroid/os/IBinder;Z)V

    .line 744
    const/4 v6, 0x1

    return v6

    .line 742
    .end local v102    # "inMultiWindow":Z
    :cond_31
    const/16 v102, 0x0

    goto :goto_31

    .line 749
    .end local v7    # "b":Landroid/os/IBinder;
    :sswitch_3a
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 750
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 751
    .restart local v7    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_32

    const/16 v103, 0x1

    .line 752
    .local v103, "inPip":Z
    :goto_32
    move-object/from16 v0, p0

    move/from16 v1, v103

    invoke-virtual {v0, v7, v1}, Landroid/app/ApplicationThreadNative;->schedulePictureInPictureModeChanged(Landroid/os/IBinder;Z)V

    .line 753
    const/4 v6, 0x1

    return v6

    .line 751
    .end local v103    # "inPip":Z
    :cond_32
    const/16 v103, 0x0

    goto :goto_32

    .line 759
    .end local v7    # "b":Landroid/os/IBinder;
    :sswitch_3b
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 760
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->dumpMessage()Ljava/lang/String;

    move-result-object v92

    .line 761
    .local v92, "dumpResult":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    move-object/from16 v0, p3

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 763
    const/4 v6, 0x1

    return v6

    .line 768
    .end local v92    # "dumpResult":Ljava/lang/String;
    :sswitch_3c
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 769
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v132

    .line 770
    .local v132, "threadId":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_34

    const/16 v100, 0x1

    .line 771
    .local v100, "haveContentProviderHolder":Z
    :goto_33
    const/16 v101, 0x0

    .line 772
    .local v101, "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    if-eqz v100, :cond_33

    .line 773
    sget-object v6, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v101

    .end local v101    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    check-cast v101, Landroid/app/IActivityManager$ContentProviderHolder;

    .line 775
    :cond_33
    move-object/from16 v0, p0

    move-wide/from16 v1, v132

    move-object/from16 v3, v101

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->notifyProviderReady(JLandroid/app/IActivityManager$ContentProviderHolder;)V

    .line 776
    const/4 v6, 0x1

    return v6

    .line 770
    .end local v100    # "haveContentProviderHolder":Z
    :cond_34
    const/16 v100, 0x0

    goto :goto_33

    .line 781
    .end local v132    # "threadId":J
    :sswitch_3d
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 782
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->notifyPackageForeground()V

    .line 783
    const/4 v6, 0x1

    return v6

    .line 79
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_f
        0xd -> :sswitch_10
        0xe -> :sswitch_11
        0x10 -> :sswitch_13
        0x11 -> :sswitch_e
        0x12 -> :sswitch_14
        0x13 -> :sswitch_17
        0x14 -> :sswitch_c
        0x15 -> :sswitch_d
        0x16 -> :sswitch_18
        0x17 -> :sswitch_1a
        0x18 -> :sswitch_1b
        0x19 -> :sswitch_1c
        0x1a -> :sswitch_7
        0x1b -> :sswitch_3
        0x1c -> :sswitch_1e
        0x1d -> :sswitch_1f
        0x1e -> :sswitch_20
        0x1f -> :sswitch_21
        0x20 -> :sswitch_2f
        0x21 -> :sswitch_12
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_15
        0x27 -> :sswitch_16
        0x28 -> :sswitch_26
        0x29 -> :sswitch_27
        0x2a -> :sswitch_28
        0x2b -> :sswitch_29
        0x2c -> :sswitch_2a
        0x2d -> :sswitch_19
        0x2e -> :sswitch_2b
        0x2f -> :sswitch_2c
        0x30 -> :sswitch_2d
        0x31 -> :sswitch_2e
        0x32 -> :sswitch_30
        0x33 -> :sswitch_31
        0x34 -> :sswitch_32
        0x35 -> :sswitch_33
        0x36 -> :sswitch_34
        0x37 -> :sswitch_35
        0x38 -> :sswitch_36
        0x39 -> :sswitch_37
        0x3a -> :sswitch_38
        0x3b -> :sswitch_39
        0x3c -> :sswitch_3a
        0x3d -> :sswitch_1d
        0x3ea -> :sswitch_3b
        0x3eb -> :sswitch_3c
        0x3ec -> :sswitch_3d
    .end sparse-switch
.end method
