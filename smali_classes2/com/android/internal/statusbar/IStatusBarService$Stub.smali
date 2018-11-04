.class public abstract Lcom/android/internal/statusbar/IStatusBarService$Stub;
.super Landroid/os/Binder;
.source "IStatusBarService.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBarService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBarService"

.field static final TRANSACTION_addTile:I = 0x19

.field static final TRANSACTION_clearNotificationEffects:I = 0x10

.field static final TRANSACTION_clickTile:I = 0x1b

.field static final TRANSACTION_collapsePanels:I = 0x3

.field static final TRANSACTION_disable:I = 0x4

.field static final TRANSACTION_disable2:I = 0x6

.field static final TRANSACTION_disable2ForUser:I = 0x7

.field static final TRANSACTION_disableForUser:I = 0x5

.field static final TRANSACTION_expandNotificationsPanel:I = 0x2

.field static final TRANSACTION_expandSettingsPanel:I = 0xc

.field static final TRANSACTION_handleSystemNavigationKey:I = 0x1c

.field static final TRANSACTION_onClearAllNotifications:I = 0x14

.field static final TRANSACTION_onNotificationActionClick:I = 0x12

.field static final TRANSACTION_onNotificationClear:I = 0x15

.field static final TRANSACTION_onNotificationClick:I = 0x11

.field static final TRANSACTION_onNotificationError:I = 0x13

.field static final TRANSACTION_onNotificationExpansionChanged:I = 0x17

.field static final TRANSACTION_onNotificationVisibilityChanged:I = 0x16

.field static final TRANSACTION_onPanelHidden:I = 0xf

.field static final TRANSACTION_onPanelRevealed:I = 0xe

.field static final TRANSACTION_registerStatusBar:I = 0xd

.field static final TRANSACTION_remTile:I = 0x1a

.field static final TRANSACTION_removeIcon:I = 0xa

.field static final TRANSACTION_setIcon:I = 0x8

.field static final TRANSACTION_setIconVisibility:I = 0x9

.field static final TRANSACTION_setImeWindowStatus:I = 0xb

.field static final TRANSACTION_setStatus:I = 0x1

.field static final TRANSACTION_setSystemUiVisibility:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;
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
    const-string/jumbo v1, "com.android.internal.statusbar.IStatusBarService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/android/internal/statusbar/IStatusBarService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 41
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

    .line 421
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 43
    :sswitch_0
    const-string/jumbo v5, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v5, 0x1

    return v5

    .line 48
    :sswitch_1
    const-string/jumbo v5, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 52
    .local v27, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v33

    .line 54
    .local v33, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .line 56
    .local v36, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 57
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/os/Bundle;

    .line 62
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v33

    move-object/from16 v3, v36

    move-object/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setStatus(ILandroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 63
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    const/4 v5, 0x1

    return v5

    .line 60
    :cond_0
    const/16 v38, 0x0

    .local v38, "_arg3":Landroid/os/Bundle;
    goto :goto_0

    .line 68
    .end local v27    # "_arg0":I
    .end local v33    # "_arg1":Landroid/os/IBinder;
    .end local v36    # "_arg2":Ljava/lang/String;
    .end local v38    # "_arg3":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v5, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->expandNotificationsPanel()V

    .line 70
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    const/4 v5, 0x1

    return v5

    .line 75
    :sswitch_3
    const-string/jumbo v5, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->collapsePanels()V

    .line 77
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    const/4 v5, 0x1

    return v5

    .line 82
    :sswitch_4
    const-string/jumbo v5, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 86
    .restart local v27    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v33

    .line 88
    .restart local v33    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .line 89
    .restart local v36    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v33

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    const/4 v5, 0x1

    return v5

    .line 95
    .end local v27    # "_arg0":I
    .end local v33    # "_arg1":Landroid/os/IBinder;
    .end local v36    # "_arg2":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v5, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 99
    .restart local v27    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v33

    .line 101
    .restart local v33    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .line 103
    .restart local v36    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 104
    .local v9, "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v33

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 105
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    const/4 v5, 0x1

    return v5

    .line 110
    .end local v9    # "_arg3":I
    .end local v27    # "_arg0":I
    .end local v33    # "_arg1":Landroid/os/IBinder;
    .end local v36    # "_arg2":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v5, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 114
    .restart local v27    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v33

    .line 116
    .restart local v33    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .line 117
    .restart local v36    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v33

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    const/4 v5, 0x1

    return v5

    .line 123
    .end local v27    # "_arg0":I
    .end local v33    # "_arg1":Landroid/os/IBinder;
    .end local v36    # "_arg2":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v5, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 127
    .restart local v27    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v33

    .line 129
    .restart local v33    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .line 131
    .restart local v36    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 132
    .restart local v9    # "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v33

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    const/4 v5, 0x1

    return v5

    .line 138
    .end local v9    # "_arg3":I
    .end local v27    # "_arg0":I
    .end local v33    # "_arg1":Landroid/os/IBinder;
    .end local v36    # "_arg2":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v5, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 142
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 144
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 146
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 148
    .restart local v9    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, "_arg4":Ljava/lang/String;
    move-object/from16 v5, p0

    .line 149
    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 150
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    const/4 v5, 0x1

    return v5

    .line 155
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v5, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 159
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/16 v34, 0x1

    .line 160
    .local v34, "_arg1":Z
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setIconVisibility(Ljava/lang/String;Z)V

    .line 161
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    const/4 v5, 0x1

    return v5

    .line 159
    .end local v34    # "_arg1":Z
    :cond_1
    const/16 v34, 0x0

    goto :goto_1

    .line 166
    .end local v6    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v5, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 169
    .restart local v6    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->removeIcon(Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    const/4 v5, 0x1

    return v5

    .line 175
    .end local v6    # "_arg0":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v5, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v29

    .line 179
    .local v29, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .line 181
    .local v32, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 183
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    const/16 v39, 0x1

    .line 184
    .local v39, "_arg3":Z
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v32

    move/from16 v3, v39

    invoke-virtual {v0, v1, v2, v8, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    .line 185
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    const/4 v5, 0x1

    return v5

    .line 183
    .end local v39    # "_arg3":Z
    :cond_2
    const/16 v39, 0x0

    goto :goto_2

    .line 190
    .end local v8    # "_arg2":I
    .end local v29    # "_arg0":Landroid/os/IBinder;
    .end local v32    # "_arg1":I
    :sswitch_c
    const-string/jumbo v5, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 193
    .restart local v6    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->expandSettingsPanel(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    const/4 v5, 0x1

    return v5

    .line 199
    .end local v6    # "_arg0":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v5, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v12

    .line 203
    .local v12, "_arg0":Lcom/android/internal/statusbar/IStatusBar;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v13, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v14, "_arg2":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 208
    .local v40, "_arg3_length":I
    if-gez v40, :cond_3

    .line 209
    const/4 v15, 0x0

    .line 215
    :goto_3
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v16, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 219
    .local v17, "_arg5":Landroid/graphics/Rect;
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .local v18, "_arg6":Landroid/graphics/Rect;
    move-object/from16 v11, p0

    .line 220
    invoke-virtual/range {v11 .. v18}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Ljava/util/List;Ljava/util/List;[ILjava/util/List;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 221
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 223
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 224
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 225
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 226
    if-eqz v17, :cond_4

    .line 227
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    const/4 v5, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 233
    :goto_4
    if-eqz v18, :cond_5

    .line 234
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 240
    :goto_5
    const/4 v5, 0x1

    return v5

    .line 212
    .end local v16    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v17    # "_arg5":Landroid/graphics/Rect;
    .end local v18    # "_arg6":Landroid/graphics/Rect;
    :cond_3
    move/from16 v0, v40

    new-array v15, v0, [I

    .local v15, "_arg3":[I
    goto :goto_3

    .line 231
    .end local v15    # "_arg3":[I
    .restart local v16    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .restart local v17    # "_arg5":Landroid/graphics/Rect;
    .restart local v18    # "_arg6":Landroid/graphics/Rect;
    :cond_4
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 238
    :cond_5
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 244
    .end local v12    # "_arg0":Lcom/android/internal/statusbar/IStatusBar;
    .end local v13    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "_arg2":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    .end local v16    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v17    # "_arg5":Landroid/graphics/Rect;
    .end local v18    # "_arg6":Landroid/graphics/Rect;
    .end local v40    # "_arg3_length":I
    :sswitch_e
    const-string/jumbo v5, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    const/16 v30, 0x1

    .line 248
    .local v30, "_arg0":Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .line 249
    .restart local v32    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onPanelRevealed(ZI)V

    .line 250
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    const/4 v5, 0x1

    return v5

    .line 246
    .end local v30    # "_arg0":Z
    .end local v32    # "_arg1":I
    :cond_6
    const/16 v30, 0x0

    .restart local v30    # "_arg0":Z
    goto :goto_6

    .line 255
    .end local v30    # "_arg0":Z
    :sswitch_f
    const-string/jumbo v5, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onPanelHidden()V

    .line 257
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    const/4 v5, 0x1

    return v5

    .line 262
    :sswitch_10
    const-string/jumbo v5, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->clearNotificationEffects()V

    .line 264
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    const/4 v5, 0x1

    return v5

    .line 269
    :sswitch_11
    const-string/jumbo v5, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 272
    .restart local v6    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationClick(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    const/4 v5, 0x1

    return v5

    .line 278
    .end local v6    # "_arg0":Ljava/lang/String;
    :sswitch_12
    const-string/jumbo v5, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 282
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .line 283
    .restart local v32    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationActionClick(Ljava/lang/String;I)V

    .line 284
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    const/4 v5, 0x1

    return v5

    .line 289
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v32    # "_arg1":I
    :sswitch_13
    const-string/jumbo v5, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 293
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 295
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 297
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 299
    .restart local v9    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 301
    .local v24, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 303
    .local v25, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .local v26, "_arg6":I
    move-object/from16 v19, p0

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v9

    .line 304
    invoke-virtual/range {v19 .. v26}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    .line 305
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    const/4 v5, 0x1

    return v5

    .line 310
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v24    # "_arg4":I
    .end local v25    # "_arg5":Ljava/lang/String;
    .end local v26    # "_arg6":I
    :sswitch_14
    const-string/jumbo v5, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 313
    .restart local v27    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onClearAllNotifications(I)V

    .line 314
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    const/4 v5, 0x1

    return v5

    .line 319
    .end local v27    # "_arg0":I
    :sswitch_15
    const-string/jumbo v5, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 323
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 325
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 327
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 328
    .restart local v9    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;II)V

    .line 329
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    const/4 v5, 0x1

    return v5

    .line 334
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    :sswitch_16
    const-string/jumbo v5, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    sget-object v5, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [Lcom/android/internal/statusbar/NotificationVisibility;

    .line 338
    .local v31, "_arg0":[Lcom/android/internal/statusbar/NotificationVisibility;
    sget-object v5, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v35

    check-cast v35, [Lcom/android/internal/statusbar/NotificationVisibility;

    .line 339
    .local v35, "_arg1":[Lcom/android/internal/statusbar/NotificationVisibility;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V

    .line 340
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    const/4 v5, 0x1

    return v5

    .line 345
    .end local v31    # "_arg0":[Lcom/android/internal/statusbar/NotificationVisibility;
    .end local v35    # "_arg1":[Lcom/android/internal/statusbar/NotificationVisibility;
    :sswitch_17
    const-string/jumbo v5, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 349
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    const/16 v34, 0x1

    .line 351
    .local v34, "_arg1":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    const/16 v37, 0x1

    .line 352
    .local v37, "_arg2":Z
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v37

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V

    .line 353
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    const/4 v5, 0x1

    return v5

    .line 349
    .end local v34    # "_arg1":Z
    .end local v37    # "_arg2":Z
    :cond_7
    const/16 v34, 0x0

    .restart local v34    # "_arg1":Z
    goto :goto_7

    .line 351
    :cond_8
    const/16 v37, 0x0

    goto :goto_8

    .line 358
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v34    # "_arg1":Z
    :sswitch_18
    const-string/jumbo v5, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 362
    .restart local v27    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .line 364
    .restart local v32    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .line 365
    .restart local v36    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v32

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setSystemUiVisibility(IILjava/lang/String;)V

    .line 366
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    const/4 v5, 0x1

    return v5

    .line 371
    .end local v27    # "_arg0":I
    .end local v32    # "_arg1":I
    .end local v36    # "_arg2":Ljava/lang/String;
    :sswitch_19
    const-string/jumbo v5, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    .line 374
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/ComponentName;

    .line 379
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->addTile(Landroid/content/ComponentName;)V

    .line 380
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    const/4 v5, 0x1

    return v5

    .line 377
    :cond_9
    const/16 v28, 0x0

    .local v28, "_arg0":Landroid/content/ComponentName;
    goto :goto_9

    .line 385
    .end local v28    # "_arg0":Landroid/content/ComponentName;
    :sswitch_1a
    const-string/jumbo v5, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    .line 388
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/ComponentName;

    .line 393
    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->remTile(Landroid/content/ComponentName;)V

    .line 394
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    const/4 v5, 0x1

    return v5

    .line 391
    :cond_a
    const/16 v28, 0x0

    .restart local v28    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a

    .line 399
    .end local v28    # "_arg0":Landroid/content/ComponentName;
    :sswitch_1b
    const-string/jumbo v5, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    .line 402
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/ComponentName;

    .line 407
    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->clickTile(Landroid/content/ComponentName;)V

    .line 408
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    const/4 v5, 0x1

    return v5

    .line 405
    :cond_b
    const/16 v28, 0x0

    .restart local v28    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b

    .line 413
    .end local v28    # "_arg0":Landroid/content/ComponentName;
    :sswitch_1c
    const-string/jumbo v5, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 416
    .restart local v27    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->handleSystemNavigationKey(I)V

    .line 417
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    const/4 v5, 0x1

    return v5

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
