.class public abstract Lcom/android/internal/app/IPerfShielder$Stub;
.super Landroid/os/Binder;
.source "IPerfShielder.java"

# interfaces
.implements Lcom/android/internal/app/IPerfShielder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IPerfShielder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IPerfShielder$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IPerfShielder"

.field static final TRANSACTION_abortMatchingScenario:I = 0x1e

.field static final TRANSACTION_abortSpecificScenario:I = 0x1f

.field static final TRANSACTION_addActivityLaunchTime:I = 0x2

.field static final TRANSACTION_addCallingPkgHookRule:I = 0x1a

.field static final TRANSACTION_addTimeConsumingIntent:I = 0x10

.field static final TRANSACTION_beginScenario:I = 0x1d

.field static final TRANSACTION_clearTimeConsumingIntent:I = 0x12

.field static final TRANSACTION_closeCheckPriority:I = 0xd

.field static final TRANSACTION_deletePackageInfo:I = 0x17

.field static final TRANSACTION_deleteRedirectRule:I = 0x15

.field static final TRANSACTION_finishMatchingScenario:I = 0x20

.field static final TRANSACTION_finishSpecificScenario:I = 0x21

.field static final TRANSACTION_getAllRunningProcessMemInfos:I = 0x7

.field static final TRANSACTION_getFreeMemory:I = 0x18

.field static final TRANSACTION_getMemoryTrimLevel:I = 0x13

.field static final TRANSACTION_getPackageNameByPid:I = 0x5

.field static final TRANSACTION_getPerfEventSocketFd:I = 0x1c

.field static final TRANSACTION_insertPackageInfo:I = 0x16

.field static final TRANSACTION_insertRedirectRule:I = 0x14

.field static final TRANSACTION_killUnusedApp:I = 0x4

.field static final TRANSACTION_removeCallingPkgHookRule:I = 0x1b

.field static final TRANSACTION_removeServicePriority:I = 0xc

.field static final TRANSACTION_removeTimeConsumingIntent:I = 0x11

.field static final TRANSACTION_reportAnr:I = 0x19

.field static final TRANSACTION_reportExcessiveCpuUsageRecords:I = 0x22

.field static final TRANSACTION_reportPerceptibleJank:I = 0x1

.field static final TRANSACTION_setForkedProcessGroup:I = 0x6

.field static final TRANSACTION_setMiuiBroadcastDispatchEnable:I = 0xf

.field static final TRANSACTION_setMiuiContentProviderControl:I = 0xe

.field static final TRANSACTION_setSchedFgPid:I = 0x3

.field static final TRANSACTION_setServicePriority:I = 0xa

.field static final TRANSACTION_setServicePriorityWithNoProc:I = 0xb

.field static final TRANSACTION_updateProcessFullMemInfoByPids:I = 0x8

.field static final TRANSACTION_updateProcessPartialMemInfoByPids:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.android.internal.app.IPerfShielder"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IPerfShielder;
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
    const-string/jumbo v1, "com.android.internal.app.IPerfShielder"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/app/IPerfShielder;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/android/internal/app/IPerfShielder;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 71
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

    .line 512
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 45
    :sswitch_0
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v4, 0x1

    return v4

    .line 50
    :sswitch_1
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 54
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 56
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 58
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 60
    .local v8, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 62
    .local v10, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 64
    .local v12, "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 66
    .local v14, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .local v15, "_arg7":J
    move-object/from16 v4, p0

    .line 67
    invoke-virtual/range {v4 .. v16}, Lcom/android/internal/app/IPerfShielder$Stub;->reportPerceptibleJank(IILjava/lang/String;JJJIJ)V

    .line 68
    const/4 v4, 0x1

    return v4

    .line 72
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":J
    .end local v10    # "_arg4":J
    .end local v12    # "_arg5":J
    .end local v14    # "_arg6":I
    .end local v15    # "_arg7":J
    :sswitch_2
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 76
    .local v18, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 78
    .local v19, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 80
    .local v20, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 82
    .restart local v8    # "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    const/16 v24, 0x1

    .line 84
    .local v24, "_arg4":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v25, 0x1

    .local v25, "_arg5":Z
    :goto_1
    move-object/from16 v17, p0

    move-wide/from16 v22, v8

    .line 85
    invoke-virtual/range {v17 .. v25}, Lcom/android/internal/app/IPerfShielder$Stub;->addActivityLaunchTime(Ljava/lang/String;Ljava/lang/String;JJZZ)V

    .line 86
    const/4 v4, 0x1

    return v4

    .line 82
    .end local v24    # "_arg4":Z
    .end local v25    # "_arg5":Z
    :cond_0
    const/16 v24, 0x0

    .restart local v24    # "_arg4":Z
    goto :goto_0

    .line 84
    :cond_1
    const/16 v25, 0x0

    goto :goto_1

    .line 90
    .end local v8    # "_arg3":J
    .end local v18    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v20    # "_arg2":J
    .end local v24    # "_arg4":Z
    :sswitch_3
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 93
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/app/IPerfShielder$Stub;->setSchedFgPid(I)V

    .line 94
    const/4 v4, 0x1

    return v4

    .line 98
    .end local v5    # "_arg0":I
    :sswitch_4
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 102
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 103
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/app/IPerfShielder$Stub;->killUnusedApp(II)V

    .line 104
    const/4 v4, 0x1

    return v4

    .line 108
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_5
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 111
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/app/IPerfShielder$Stub;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v68

    .line 112
    .local v68, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    move-object/from16 v0, p3

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    const/4 v4, 0x1

    return v4

    .line 118
    .end local v5    # "_arg0":I
    .end local v68    # "_result":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 122
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 124
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .line 126
    .local v29, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v62

    .line 127
    .local v62, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v62

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/android/internal/app/IPerfShielder$Stub;->setForkedProcessGroup(IIILjava/lang/String;)V

    .line 128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    const/4 v4, 0x1

    return v4

    .line 133
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v29    # "_arg2":I
    .end local v62    # "_arg3":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IPerfShielder$Stub;->getAllRunningProcessMemInfos()Ljava/util/List;

    move-result-object v69

    .line 135
    .local v69, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    move-object/from16 v0, p3

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 137
    const/4 v4, 0x1

    return v4

    .line 141
    .end local v69    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :sswitch_8
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v56

    .line 144
    .local v56, "_arg0":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IPerfShielder$Stub;->updateProcessFullMemInfoByPids([I)Ljava/util/List;

    move-result-object v69

    .line 145
    .restart local v69    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    move-object/from16 v0, p3

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 147
    const/4 v4, 0x1

    return v4

    .line 151
    .end local v56    # "_arg0":[I
    .end local v69    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :sswitch_9
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v56

    .line 154
    .restart local v56    # "_arg0":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IPerfShielder$Stub;->updateProcessPartialMemInfoByPids([I)Ljava/util/List;

    move-result-object v69

    .line 155
    .restart local v69    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    move-object/from16 v0, p3

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 157
    const/4 v4, 0x1

    return v4

    .line 161
    .end local v56    # "_arg0":[I
    .end local v69    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :sswitch_a
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    sget-object v4, Lcom/android/internal/app/MiuiServicePriority;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v54

    .line 164
    .local v54, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MiuiServicePriority;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IPerfShielder$Stub;->setServicePriority(Ljava/util/List;)V

    .line 165
    const/4 v4, 0x1

    return v4

    .line 169
    .end local v54    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MiuiServicePriority;>;"
    :sswitch_b
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    sget-object v4, Lcom/android/internal/app/MiuiServicePriority;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v54

    .line 173
    .restart local v54    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MiuiServicePriority;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v58

    .line 174
    .local v58, "_arg1":J
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move-wide/from16 v2, v58

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/IPerfShielder$Stub;->setServicePriorityWithNoProc(Ljava/util/List;J)V

    .line 175
    const/4 v4, 0x1

    return v4

    .line 179
    .end local v54    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MiuiServicePriority;>;"
    .end local v58    # "_arg1":J
    :sswitch_c
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 182
    sget-object v4, Lcom/android/internal/app/MiuiServicePriority;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/android/internal/app/MiuiServicePriority;

    .line 188
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    const/16 v60, 0x1

    .line 189
    .local v60, "_arg1":Z
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IPerfShielder$Stub;->removeServicePriority(Lcom/android/internal/app/MiuiServicePriority;Z)V

    .line 190
    const/4 v4, 0x1

    return v4

    .line 185
    .end local v60    # "_arg1":Z
    :cond_2
    const/16 v52, 0x0

    .local v52, "_arg0":Lcom/android/internal/app/MiuiServicePriority;
    goto :goto_2

    .line 188
    .end local v52    # "_arg0":Lcom/android/internal/app/MiuiServicePriority;
    :cond_3
    const/16 v60, 0x0

    goto :goto_3

    .line 194
    :sswitch_d
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IPerfShielder$Stub;->closeCheckPriority()V

    .line 196
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    const/4 v4, 0x1

    return v4

    .line 201
    :sswitch_e
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    const/16 v55, 0x1

    .line 204
    .local v55, "_arg0":Z
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IPerfShielder$Stub;->setMiuiContentProviderControl(Z)V

    .line 205
    const/4 v4, 0x1

    return v4

    .line 203
    .end local v55    # "_arg0":Z
    :cond_4
    const/16 v55, 0x0

    goto :goto_4

    .line 209
    :sswitch_f
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    const/16 v55, 0x1

    .line 212
    .restart local v55    # "_arg0":Z
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IPerfShielder$Stub;->setMiuiBroadcastDispatchEnable(Z)V

    .line 213
    const/4 v4, 0x1

    return v4

    .line 211
    .end local v55    # "_arg0":Z
    :cond_5
    const/16 v55, 0x0

    goto :goto_5

    .line 217
    :sswitch_10
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v57

    .line 220
    .local v57, "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IPerfShielder$Stub;->addTimeConsumingIntent([Ljava/lang/String;)V

    .line 221
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    const/4 v4, 0x1

    return v4

    .line 226
    .end local v57    # "_arg0":[Ljava/lang/String;
    :sswitch_11
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v57

    .line 229
    .restart local v57    # "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IPerfShielder$Stub;->removeTimeConsumingIntent([Ljava/lang/String;)V

    .line 230
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    const/4 v4, 0x1

    return v4

    .line 235
    .end local v57    # "_arg0":[Ljava/lang/String;
    :sswitch_12
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IPerfShielder$Stub;->clearTimeConsumingIntent()V

    .line 237
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    const/4 v4, 0x1

    return v4

    .line 242
    :sswitch_13
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IPerfShielder$Stub;->getMemoryTrimLevel()I

    move-result v63

    .line 244
    .local v63, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    move-object/from16 v0, p3

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    const/4 v4, 0x1

    return v4

    .line 250
    .end local v63    # "_result":I
    :sswitch_14
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 254
    .restart local v18    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 256
    .restart local v19    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 258
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 259
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Landroid/os/Bundle;

    .line 264
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v61

    invoke-virtual {v0, v1, v2, v7, v3}, Lcom/android/internal/app/IPerfShielder$Stub;->insertRedirectRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v70

    .line 265
    .local v70, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    if-eqz v70, :cond_7

    const/4 v4, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    const/4 v4, 0x1

    return v4

    .line 262
    .end local v70    # "_result":Z
    :cond_6
    const/16 v61, 0x0

    .local v61, "_arg3":Landroid/os/Bundle;
    goto :goto_6

    .line 266
    .end local v61    # "_arg3":Landroid/os/Bundle;
    .restart local v70    # "_result":Z
    :cond_7
    const/4 v4, 0x0

    goto :goto_7

    .line 271
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_15
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 275
    .restart local v18    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 276
    .restart local v19    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IPerfShielder$Stub;->deleteRedirectRule(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v70

    .line 277
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    if-eqz v70, :cond_8

    const/4 v4, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    const/4 v4, 0x1

    return v4

    .line 278
    :cond_8
    const/4 v4, 0x0

    goto :goto_8

    .line 283
    .end local v18    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_16
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    .line 286
    sget-object v4, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/pm/PackageInfo;

    .line 291
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IPerfShielder$Stub;->insertPackageInfo(Landroid/content/pm/PackageInfo;)Z

    move-result v70

    .line 292
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    if-eqz v70, :cond_a

    const/4 v4, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    const/4 v4, 0x1

    return v4

    .line 289
    .end local v70    # "_result":Z
    :cond_9
    const/16 v35, 0x0

    .local v35, "_arg0":Landroid/content/pm/PackageInfo;
    goto :goto_9

    .line 293
    .end local v35    # "_arg0":Landroid/content/pm/PackageInfo;
    .restart local v70    # "_result":Z
    :cond_a
    const/4 v4, 0x0

    goto :goto_a

    .line 298
    .end local v70    # "_result":Z
    :sswitch_17
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 301
    .restart local v18    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IPerfShielder$Stub;->deletePackageInfo(Ljava/lang/String;)Z

    move-result v70

    .line 302
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    if-eqz v70, :cond_b

    const/4 v4, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    const/4 v4, 0x1

    return v4

    .line 303
    :cond_b
    const/4 v4, 0x0

    goto :goto_b

    .line 308
    .end local v18    # "_arg0":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_18
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IPerfShielder$Stub;->getFreeMemory()J

    move-result-wide v64

    .line 310
    .local v64, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    move-object/from16 v0, p3

    move-wide/from16 v1, v64

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 312
    const/4 v4, 0x1

    return v4

    .line 316
    .end local v64    # "_result":J
    :sswitch_19
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 320
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 322
    .restart local v19    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 324
    .restart local v20    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 326
    .restart local v8    # "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v34

    .local v34, "_arg4":Ljava/lang/String;
    move-object/from16 v27, p0

    move/from16 v28, v5

    move-object/from16 v29, v19

    move-wide/from16 v30, v20

    move-wide/from16 v32, v8

    .line 327
    invoke-virtual/range {v27 .. v34}, Lcom/android/internal/app/IPerfShielder$Stub;->reportAnr(ILjava/lang/String;JJLjava/lang/String;)V

    .line 328
    const/4 v4, 0x1

    return v4

    .line 332
    .end local v5    # "_arg0":I
    .end local v8    # "_arg3":J
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v20    # "_arg2":J
    .end local v34    # "_arg4":Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 336
    .restart local v18    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 338
    .restart local v19    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 339
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/internal/app/IPerfShielder$Stub;->addCallingPkgHookRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v70

    .line 340
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    if-eqz v70, :cond_c

    const/4 v4, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    const/4 v4, 0x1

    return v4

    .line 341
    :cond_c
    const/4 v4, 0x0

    goto :goto_c

    .line 346
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_1b
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 350
    .restart local v18    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 351
    .restart local v19    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IPerfShielder$Stub;->removeCallingPkgHookRule(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v70

    .line 352
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    if-eqz v70, :cond_d

    const/4 v4, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    const/4 v4, 0x1

    return v4

    .line 353
    :cond_d
    const/4 v4, 0x0

    goto :goto_d

    .line 358
    .end local v18    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_1c
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IPerfShielder$Stub;->getPerfEventSocketFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v67

    .line 360
    .local v67, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    if-eqz v67, :cond_e

    .line 362
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    const/4 v4, 0x1

    move-object/from16 v0, v67

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 368
    :goto_e
    const/4 v4, 0x1

    return v4

    .line 366
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 372
    .end local v67    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_1d
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    .line 375
    sget-object v4, Landroid/os/statistics/E2EScenario;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/os/statistics/E2EScenario;

    .line 381
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10

    .line 382
    sget-object v4, Landroid/os/statistics/E2EScenarioSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/os/statistics/E2EScenarioSettings;

    .line 388
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 390
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11

    .line 391
    sget-object v4, Landroid/os/statistics/E2EScenarioPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/os/statistics/E2EScenarioPayload;

    .line 397
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 399
    .local v41, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 401
    .restart local v12    # "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    const/16 v44, 0x1

    .local v44, "_arg6":Z
    :goto_12
    move-object/from16 v36, p0

    move-object/from16 v39, v7

    move-wide/from16 v42, v12

    .line 402
    invoke-virtual/range {v36 .. v44}, Lcom/android/internal/app/IPerfShielder$Stub;->beginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;IJZ)Landroid/os/Bundle;

    move-result-object v66

    .line 403
    .local v66, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    if-eqz v66, :cond_13

    .line 405
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    const/4 v4, 0x1

    move-object/from16 v0, v66

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 411
    :goto_13
    const/4 v4, 0x1

    return v4

    .line 378
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v12    # "_arg5":J
    .end local v41    # "_arg4":I
    .end local v44    # "_arg6":Z
    .end local v66    # "_result":Landroid/os/Bundle;
    :cond_f
    const/16 v37, 0x0

    .local v37, "_arg0":Landroid/os/statistics/E2EScenario;
    goto :goto_f

    .line 385
    .end local v37    # "_arg0":Landroid/os/statistics/E2EScenario;
    :cond_10
    const/16 v38, 0x0

    .local v38, "_arg1":Landroid/os/statistics/E2EScenarioSettings;
    goto :goto_10

    .line 394
    .end local v38    # "_arg1":Landroid/os/statistics/E2EScenarioSettings;
    .restart local v7    # "_arg2":Ljava/lang/String;
    :cond_11
    const/16 v40, 0x0

    .local v40, "_arg3":Landroid/os/statistics/E2EScenarioPayload;
    goto :goto_11

    .line 401
    .end local v40    # "_arg3":Landroid/os/statistics/E2EScenarioPayload;
    .restart local v12    # "_arg5":J
    .restart local v41    # "_arg4":I
    :cond_12
    const/16 v44, 0x0

    goto :goto_12

    .line 409
    .restart local v44    # "_arg6":Z
    .restart local v66    # "_result":Landroid/os/Bundle;
    :cond_13
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13

    .line 415
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v12    # "_arg5":J
    .end local v41    # "_arg4":I
    .end local v44    # "_arg6":Z
    .end local v66    # "_result":Landroid/os/Bundle;
    :sswitch_1e
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14

    .line 418
    sget-object v4, Landroid/os/statistics/E2EScenario;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/os/statistics/E2EScenario;

    .line 424
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 426
    .restart local v19    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .line 428
    .restart local v29    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .restart local v8    # "_arg3":J
    move-object/from16 v26, p0

    move-object/from16 v27, v37

    move-object/from16 v28, v19

    move-wide/from16 v30, v8

    .line 429
    invoke-virtual/range {v26 .. v31}, Lcom/android/internal/app/IPerfShielder$Stub;->abortMatchingScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;IJ)V

    .line 430
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    const/4 v4, 0x1

    return v4

    .line 421
    .end local v8    # "_arg3":J
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v29    # "_arg2":I
    :cond_14
    const/16 v37, 0x0

    .restart local v37    # "_arg0":Landroid/os/statistics/E2EScenario;
    goto :goto_14

    .line 435
    .end local v37    # "_arg0":Landroid/os/statistics/E2EScenario;
    :sswitch_1f
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15

    .line 438
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/os/Bundle;

    .line 444
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 446
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 447
    .restart local v20    # "_arg2":J
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/android/internal/app/IPerfShielder$Stub;->abortSpecificScenario(Landroid/os/Bundle;IJ)V

    .line 448
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    const/4 v4, 0x1

    return v4

    .line 441
    .end local v6    # "_arg1":I
    .end local v20    # "_arg2":J
    :cond_15
    const/16 v27, 0x0

    .local v27, "_arg0":Landroid/os/Bundle;
    goto :goto_15

    .line 453
    .end local v27    # "_arg0":Landroid/os/Bundle;
    :sswitch_20
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16

    .line 456
    sget-object v4, Landroid/os/statistics/E2EScenario;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/os/statistics/E2EScenario;

    .line 462
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 464
    .restart local v19    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17

    .line 465
    sget-object v4, Landroid/os/statistics/E2EScenarioPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/os/statistics/E2EScenarioPayload;

    .line 471
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v49

    .line 473
    .local v49, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .restart local v10    # "_arg4":J
    move-object/from16 v45, p0

    move-object/from16 v46, v37

    move-object/from16 v47, v19

    move-wide/from16 v50, v10

    .line 474
    invoke-virtual/range {v45 .. v51}, Lcom/android/internal/app/IPerfShielder$Stub;->finishMatchingScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;IJ)V

    .line 475
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    const/4 v4, 0x1

    return v4

    .line 459
    .end local v10    # "_arg4":J
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v49    # "_arg3":I
    :cond_16
    const/16 v37, 0x0

    .restart local v37    # "_arg0":Landroid/os/statistics/E2EScenario;
    goto :goto_16

    .line 468
    .end local v37    # "_arg0":Landroid/os/statistics/E2EScenario;
    .restart local v19    # "_arg1":Ljava/lang/String;
    :cond_17
    const/16 v48, 0x0

    .local v48, "_arg2":Landroid/os/statistics/E2EScenarioPayload;
    goto :goto_17

    .line 480
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v48    # "_arg2":Landroid/os/statistics/E2EScenarioPayload;
    :sswitch_21
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_18

    .line 483
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/os/Bundle;

    .line 489
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19

    .line 490
    sget-object v4, Landroid/os/statistics/E2EScenarioPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/os/statistics/E2EScenarioPayload;

    .line 496
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .line 498
    .restart local v29    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .restart local v8    # "_arg3":J
    move-object/from16 v26, p0

    move-wide/from16 v30, v8

    .line 499
    invoke-virtual/range {v26 .. v31}, Lcom/android/internal/app/IPerfShielder$Stub;->finishSpecificScenario(Landroid/os/Bundle;Landroid/os/statistics/E2EScenarioPayload;IJ)V

    .line 500
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    const/4 v4, 0x1

    return v4

    .line 486
    .end local v8    # "_arg3":J
    .end local v29    # "_arg2":I
    :cond_18
    const/16 v27, 0x0

    .restart local v27    # "_arg0":Landroid/os/Bundle;
    goto :goto_18

    .line 493
    .end local v27    # "_arg0":Landroid/os/Bundle;
    :cond_19
    const/16 v28, 0x0

    .local v28, "_arg1":Landroid/os/statistics/E2EScenarioPayload;
    goto :goto_19

    .line 505
    .end local v28    # "_arg1":Landroid/os/statistics/E2EScenarioPayload;
    :sswitch_22
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v53

    .line 508
    .local v53, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IPerfShielder$Stub;->reportExcessiveCpuUsageRecords(Ljava/util/List;)V

    .line 509
    const/4 v4, 0x1

    return v4

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
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
