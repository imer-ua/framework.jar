.class public abstract Lcom/android/internal/statusbar/IStatusBar$Stub;
.super Landroid/os/Binder;
.source "IStatusBar.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBar"

.field static final TRANSACTION_addQsTile:I = 0x20

.field static final TRANSACTION_animateCollapsePanels:I = 0x7

.field static final TRANSACTION_animateExpandNotificationsPanel:I = 0x5

.field static final TRANSACTION_animateExpandSettingsPanel:I = 0x6

.field static final TRANSACTION_appTransitionCancelled:I = 0x19

.field static final TRANSACTION_appTransitionFinished:I = 0x1b

.field static final TRANSACTION_appTransitionPending:I = 0x18

.field static final TRANSACTION_appTransitionStarting:I = 0x1a

.field static final TRANSACTION_buzzBeepBlinked:I = 0xc

.field static final TRANSACTION_cancelPreloadRecentApps:I = 0x14

.field static final TRANSACTION_clickQsTile:I = 0x22

.field static final TRANSACTION_disable:I = 0x4

.field static final TRANSACTION_dismissKeyboardShortcutsMenu:I = 0x16

.field static final TRANSACTION_handleSystemNavigationKey:I = 0x23

.field static final TRANSACTION_hideRecentApps:I = 0x10

.field static final TRANSACTION_notificationLightOff:I = 0xd

.field static final TRANSACTION_notificationLightPulse:I = 0xe

.field static final TRANSACTION_onCameraLaunchGestureDetected:I = 0x1e

.field static final TRANSACTION_preloadRecentApps:I = 0x13

.field static final TRANSACTION_remQsTile:I = 0x21

.field static final TRANSACTION_removeIcon:I = 0x3

.field static final TRANSACTION_setIcon:I = 0x2

.field static final TRANSACTION_setImeWindowStatus:I = 0xa

.field static final TRANSACTION_setStatus:I = 0x1

.field static final TRANSACTION_setSystemUiVisibility:I = 0x8

.field static final TRANSACTION_setWindowState:I = 0xb

.field static final TRANSACTION_showAssistDisclosure:I = 0x1c

.field static final TRANSACTION_showRecentApps:I = 0xf

.field static final TRANSACTION_showScreenPinningRequest:I = 0x15

.field static final TRANSACTION_showTvPictureInPictureMenu:I = 0x1f

.field static final TRANSACTION_startAssist:I = 0x1d

.field static final TRANSACTION_toggleKeyboardShortcutsMenu:I = 0x17

.field static final TRANSACTION_toggleRecentApps:I = 0x11

.field static final TRANSACTION_toggleSplitScreen:I = 0x12

.field static final TRANSACTION_topAppWindowChanged:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;
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
    const-string/jumbo v1, "com.android.internal.statusbar.IStatusBar"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/android/internal/statusbar/IStatusBar;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 25
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

    .line 375
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 43
    :sswitch_0
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v4, 0x1

    return v4

    .line 48
    :sswitch_1
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 52
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 54
    .local v21, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/Bundle;

    .line 60
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setStatus(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 61
    const/4 v4, 0x1

    return v4

    .line 58
    :cond_0
    const/16 v23, 0x0

    .local v23, "_arg2":Landroid/os/Bundle;
    goto :goto_0

    .line 65
    .end local v5    # "_arg0":I
    .end local v21    # "_arg1":Ljava/lang/String;
    .end local v23    # "_arg2":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 69
    .local v16, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 70
    sget-object v4, Lcom/android/internal/statusbar/StatusBarIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 75
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    .line 76
    const/4 v4, 0x1

    return v4

    .line 73
    :cond_1
    const/16 v20, 0x0

    .local v20, "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    goto :goto_1

    .line 80
    .end local v16    # "_arg0":Ljava/lang/String;
    .end local v20    # "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    :sswitch_3
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 83
    .restart local v16    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->removeIcon(Ljava/lang/String;)V

    .line 84
    const/4 v4, 0x1

    return v4

    .line 88
    .end local v16    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 92
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 93
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/statusbar/IStatusBar$Stub;->disable(II)V

    .line 94
    const/4 v4, 0x1

    return v4

    .line 98
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_5
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandNotificationsPanel()V

    .line 100
    const/4 v4, 0x1

    return v4

    .line 104
    :sswitch_6
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 107
    .restart local v16    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandSettingsPanel(Ljava/lang/String;)V

    .line 108
    const/4 v4, 0x1

    return v4

    .line 112
    .end local v16    # "_arg0":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateCollapsePanels()V

    .line 114
    const/4 v4, 0x1

    return v4

    .line 118
    :sswitch_8
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

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

    move-result v7

    .line 126
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 128
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 129
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .line 135
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 136
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    :goto_3
    move-object/from16 v4, p0

    .line 141
    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 142
    const/4 v4, 0x1

    return v4

    .line 132
    :cond_2
    const/4 v9, 0x0

    .local v9, "_arg4":Landroid/graphics/Rect;
    goto :goto_2

    .line 139
    .end local v9    # "_arg4":Landroid/graphics/Rect;
    :cond_3
    const/4 v10, 0x0

    .local v10, "_arg5":Landroid/graphics/Rect;
    goto :goto_3

    .line 146
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v10    # "_arg5":Landroid/graphics/Rect;
    :sswitch_9
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    const/16 v17, 0x1

    .line 149
    .local v17, "_arg0":Z
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->topAppWindowChanged(Z)V

    .line 150
    const/4 v4, 0x1

    return v4

    .line 148
    .end local v17    # "_arg0":Z
    :cond_4
    const/16 v17, 0x0

    goto :goto_4

    .line 154
    :sswitch_a
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    .line 158
    .local v15, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 160
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 162
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    const/16 v24, 0x1

    .line 163
    .local v24, "_arg3":Z
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v15, v6, v7, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    .line 164
    const/4 v4, 0x1

    return v4

    .line 162
    .end local v24    # "_arg3":Z
    :cond_5
    const/16 v24, 0x0

    goto :goto_5

    .line 168
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v15    # "_arg0":Landroid/os/IBinder;
    :sswitch_b
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 172
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 173
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setWindowState(II)V

    .line 174
    const/4 v4, 0x1

    return v4

    .line 178
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_c
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->buzzBeepBlinked()V

    .line 180
    const/4 v4, 0x1

    return v4

    .line 184
    :sswitch_d
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notificationLightOff()V

    .line 186
    const/4 v4, 0x1

    return v4

    .line 190
    :sswitch_e
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 194
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 196
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 197
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notificationLightPulse(III)V

    .line 198
    const/4 v4, 0x1

    return v4

    .line 202
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :sswitch_f
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    const/16 v17, 0x1

    .line 206
    .local v17, "_arg0":Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    const/16 v22, 0x1

    .line 207
    .local v22, "_arg1":Z
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showRecentApps(ZZ)V

    .line 208
    const/4 v4, 0x1

    return v4

    .line 204
    .end local v17    # "_arg0":Z
    .end local v22    # "_arg1":Z
    :cond_6
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Z
    goto :goto_6

    .line 206
    :cond_7
    const/16 v22, 0x0

    goto :goto_7

    .line 212
    .end local v17    # "_arg0":Z
    :sswitch_10
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    const/16 v17, 0x1

    .line 216
    .restart local v17    # "_arg0":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    const/16 v22, 0x1

    .line 217
    .restart local v22    # "_arg1":Z
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideRecentApps(ZZ)V

    .line 218
    const/4 v4, 0x1

    return v4

    .line 214
    .end local v17    # "_arg0":Z
    .end local v22    # "_arg1":Z
    :cond_8
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Z
    goto :goto_8

    .line 216
    :cond_9
    const/16 v22, 0x0

    goto :goto_9

    .line 222
    .end local v17    # "_arg0":Z
    :sswitch_11
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleRecentApps()V

    .line 224
    const/4 v4, 0x1

    return v4

    .line 228
    :sswitch_12
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleSplitScreen()V

    .line 230
    const/4 v4, 0x1

    return v4

    .line 234
    :sswitch_13
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->preloadRecentApps()V

    .line 236
    const/4 v4, 0x1

    return v4

    .line 240
    :sswitch_14
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->cancelPreloadRecentApps()V

    .line 242
    const/4 v4, 0x1

    return v4

    .line 246
    :sswitch_15
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 249
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showScreenPinningRequest(I)V

    .line 250
    const/4 v4, 0x1

    return v4

    .line 254
    .end local v5    # "_arg0":I
    :sswitch_16
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->dismissKeyboardShortcutsMenu()V

    .line 256
    const/4 v4, 0x1

    return v4

    .line 260
    :sswitch_17
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 263
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleKeyboardShortcutsMenu(I)V

    .line 264
    const/4 v4, 0x1

    return v4

    .line 268
    .end local v5    # "_arg0":I
    :sswitch_18
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionPending()V

    .line 270
    const/4 v4, 0x1

    return v4

    .line 274
    :sswitch_19
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionCancelled()V

    .line 276
    const/4 v4, 0x1

    return v4

    .line 280
    :sswitch_1a
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 284
    .local v12, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 285
    .local v18, "_arg1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v12, v13, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionStarting(JJ)V

    .line 286
    const/4 v4, 0x1

    return v4

    .line 290
    .end local v12    # "_arg0":J
    .end local v18    # "_arg1":J
    :sswitch_1b
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionFinished()V

    .line 292
    const/4 v4, 0x1

    return v4

    .line 296
    :sswitch_1c
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showAssistDisclosure()V

    .line 298
    const/4 v4, 0x1

    return v4

    .line 302
    :sswitch_1d
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    .line 305
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Bundle;

    .line 310
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/statusbar/IStatusBar$Stub;->startAssist(Landroid/os/Bundle;)V

    .line 311
    const/4 v4, 0x1

    return v4

    .line 308
    :cond_a
    const/4 v14, 0x0

    .local v14, "_arg0":Landroid/os/Bundle;
    goto :goto_a

    .line 315
    .end local v14    # "_arg0":Landroid/os/Bundle;
    :sswitch_1e
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 318
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onCameraLaunchGestureDetected(I)V

    .line 319
    const/4 v4, 0x1

    return v4

    .line 323
    .end local v5    # "_arg0":I
    :sswitch_1f
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showTvPictureInPictureMenu()V

    .line 325
    const/4 v4, 0x1

    return v4

    .line 329
    :sswitch_20
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    .line 332
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    .line 337
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/statusbar/IStatusBar$Stub;->addQsTile(Landroid/content/ComponentName;)V

    .line 338
    const/4 v4, 0x1

    return v4

    .line 335
    :cond_b
    const/4 v11, 0x0

    .local v11, "_arg0":Landroid/content/ComponentName;
    goto :goto_b

    .line 342
    .end local v11    # "_arg0":Landroid/content/ComponentName;
    :sswitch_21
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    .line 345
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    .line 350
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/statusbar/IStatusBar$Stub;->remQsTile(Landroid/content/ComponentName;)V

    .line 351
    const/4 v4, 0x1

    return v4

    .line 348
    :cond_c
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c

    .line 355
    .end local v11    # "_arg0":Landroid/content/ComponentName;
    :sswitch_22
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    .line 358
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    .line 363
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/statusbar/IStatusBar$Stub;->clickQsTile(Landroid/content/ComponentName;)V

    .line 364
    const/4 v4, 0x1

    return v4

    .line 361
    :cond_d
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d

    .line 368
    .end local v11    # "_arg0":Landroid/content/ComponentName;
    :sswitch_23
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 371
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->handleSystemNavigationKey(I)V

    .line 372
    const/4 v4, 0x1

    return v4

    .line 39
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
        0x23 -> :sswitch_23
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
