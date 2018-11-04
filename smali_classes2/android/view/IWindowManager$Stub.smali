.class public abstract Landroid/view/IWindowManager$Stub;
.super Landroid/os/Binder;
.source "IWindowManager.java"

# interfaces
.implements Landroid/view/IWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowManager"

.field static final TRANSACTION_addAppToken:I = 0x15

.field static final TRANSACTION_addWindowToken:I = 0x13

.field static final TRANSACTION_cancelMiuiThumbnailAnimation:I = 0x21

.field static final TRANSACTION_cancelTaskThumbnailTransition:I = 0x49

.field static final TRANSACTION_cancelTaskWindowTransition:I = 0x48

.field static final TRANSACTION_clearForcedDisplayDensityForUser:I = 0xd

.field static final TRANSACTION_clearForcedDisplaySize:I = 0x9

.field static final TRANSACTION_clearWindowContentFrameStats:I = 0x5c

.field static final TRANSACTION_closeSystemDialogs:I = 0x3e

.field static final TRANSACTION_createWallpaperInputConsumer:I = 0x66

.field static final TRANSACTION_disableKeyguard:I = 0x36

.field static final TRANSACTION_dismissKeyguard:I = 0x3c

.field static final TRANSACTION_enableScreenIfNeeded:I = 0x5b

.field static final TRANSACTION_endProlongedAnimations:I = 0x30

.field static final TRANSACTION_executeAppTransition:I = 0x28

.field static final TRANSACTION_exitKeyguardSecurely:I = 0x38

.field static final TRANSACTION_freezeRotation:I = 0x4f

.field static final TRANSACTION_getAnimationScale:I = 0x3f

.field static final TRANSACTION_getAnimationScales:I = 0x40

.field static final TRANSACTION_getAppOrientation:I = 0x18

.field static final TRANSACTION_getBaseDisplayDensity:I = 0xb

.field static final TRANSACTION_getBaseDisplaySize:I = 0x7

.field static final TRANSACTION_getBoundsForNewConfiguration:I = 0x33

.field static final TRANSACTION_getCurrentAnimatorScale:I = 0x43

.field static final TRANSACTION_getDockedStackSide:I = 0x5e

.field static final TRANSACTION_getGestureStubListener:I = 0x22

.field static final TRANSACTION_getInitialDisplayDensity:I = 0xa

.field static final TRANSACTION_getInitialDisplaySize:I = 0x6

.field static final TRANSACTION_getPendingAppTransition:I = 0x1b

.field static final TRANSACTION_getPreferredOptionsPanelGravity:I = 0x4e

.field static final TRANSACTION_getRotation:I = 0x4b

.field static final TRANSACTION_getStableInsets:I = 0x64

.field static final TRANSACTION_getWindowContentFrameStats:I = 0x5d

.field static final TRANSACTION_hasNavigationBar:I = 0x58

.field static final TRANSACTION_inKeyguardRestrictedInputMode:I = 0x3b

.field static final TRANSACTION_inputMethodClientHasFocus:I = 0x5

.field static final TRANSACTION_isKeyguardLocked:I = 0x39

.field static final TRANSACTION_isKeyguardSecure:I = 0x3a

.field static final TRANSACTION_isRotationFrozen:I = 0x51

.field static final TRANSACTION_isSafeModeEnabled:I = 0x5a

.field static final TRANSACTION_isViewServerRunning:I = 0x3

.field static final TRANSACTION_keyguardGoingAway:I = 0x3d

.field static final TRANSACTION_lockNow:I = 0x59

.field static final TRANSACTION_notifyAppResumed:I = 0x2b

.field static final TRANSACTION_notifyAppStopped:I = 0x2c

.field static final TRANSACTION_openSession:I = 0x4

.field static final TRANSACTION_overrideMiuiAnimSupportWinInset:I = 0x20

.field static final TRANSACTION_overridePendingAppTransition:I = 0x1c

.field static final TRANSACTION_overridePendingAppTransitionAspectScaledThumb:I = 0x24

.field static final TRANSACTION_overridePendingAppTransitionClipReveal:I = 0x1e

.field static final TRANSACTION_overridePendingAppTransitionInPlace:I = 0x26

.field static final TRANSACTION_overridePendingAppTransitionLaunchFromHome:I = 0x1f

.field static final TRANSACTION_overridePendingAppTransitionMultiThumb:I = 0x25

.field static final TRANSACTION_overridePendingAppTransitionMultiThumbFuture:I = 0x27

.field static final TRANSACTION_overridePendingAppTransitionScaleUp:I = 0x1d

.field static final TRANSACTION_overridePendingAppTransitionThumb:I = 0x23

.field static final TRANSACTION_pauseKeyDispatching:I = 0x10

.field static final TRANSACTION_prepareAppTransition:I = 0x1a

.field static final TRANSACTION_reenableKeyguard:I = 0x37

.field static final TRANSACTION_registerDockedStackListener:I = 0x61

.field static final TRANSACTION_registerShortcutKey:I = 0x65

.field static final TRANSACTION_removeAppToken:I = 0x2f

.field static final TRANSACTION_removeRotationWatcher:I = 0x4d

.field static final TRANSACTION_removeWallpaperInputConsumer:I = 0x67

.field static final TRANSACTION_removeWindowToken:I = 0x14

.field static final TRANSACTION_requestAppKeyboardShortcuts:I = 0x63

.field static final TRANSACTION_requestAssistScreenshot:I = 0x53

.field static final TRANSACTION_resumeKeyDispatching:I = 0x11

.field static final TRANSACTION_screenshotApplications:I = 0x54

.field static final TRANSACTION_screenshotWallpaper:I = 0x52

.field static final TRANSACTION_setAnimationScale:I = 0x41

.field static final TRANSACTION_setAnimationScales:I = 0x42

.field static final TRANSACTION_setAppOrientation:I = 0x17

.field static final TRANSACTION_setAppStartingWindow:I = 0x29

.field static final TRANSACTION_setAppTask:I = 0x16

.field static final TRANSACTION_setAppVisibility:I = 0x2a

.field static final TRANSACTION_setDockedStackDividerTouchRegion:I = 0x60

.field static final TRANSACTION_setDockedStackResizing:I = 0x5f

.field static final TRANSACTION_setEventDispatching:I = 0x12

.field static final TRANSACTION_setFocusedApp:I = 0x19

.field static final TRANSACTION_setForcedDisplayDensityForUser:I = 0xc

.field static final TRANSACTION_setForcedDisplayScalingMode:I = 0xe

.field static final TRANSACTION_setForcedDisplaySize:I = 0x8

.field static final TRANSACTION_setInTouchMode:I = 0x44

.field static final TRANSACTION_setNewConfiguration:I = 0x32

.field static final TRANSACTION_setOverscan:I = 0xf

.field static final TRANSACTION_setRecentsVisibility:I = 0x56

.field static final TRANSACTION_setResizeDimLayer:I = 0x62

.field static final TRANSACTION_setScreenCaptureDisabled:I = 0x47

.field static final TRANSACTION_setStrictModeVisualIndicatorPreference:I = 0x46

.field static final TRANSACTION_setTvPipVisibility:I = 0x57

.field static final TRANSACTION_showStrictModeViolation:I = 0x45

.field static final TRANSACTION_startAppFreezingScreen:I = 0x2d

.field static final TRANSACTION_startFreezingScreen:I = 0x34

.field static final TRANSACTION_startViewServer:I = 0x1

.field static final TRANSACTION_statusBarVisibilityChanged:I = 0x55

.field static final TRANSACTION_stopAppFreezingScreen:I = 0x2e

.field static final TRANSACTION_stopFreezingScreen:I = 0x35

.field static final TRANSACTION_stopViewServer:I = 0x2

.field static final TRANSACTION_thawRotation:I = 0x50

.field static final TRANSACTION_updateOrientationFromAppTokens:I = 0x31

.field static final TRANSACTION_updateRotation:I = 0x4a

.field static final TRANSACTION_watchRotation:I = 0x4c


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.view.IWindowManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    return-object v1

    .line 31
    :cond_0
    const-string/jumbo v1, "android.view.IWindowManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IWindowManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/view/IWindowManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/view/IWindowManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindowManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 105
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 1278
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 47
    :sswitch_0
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v6, 0x1

    return v6

    .line 52
    :sswitch_1
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 55
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->startViewServer(I)Z

    move-result v102

    .line 56
    .local v102, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v102, :cond_0

    const/4 v6, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    const/4 v6, 0x1

    return v6

    .line 57
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 62
    .end local v7    # "_arg0":I
    .end local v102    # "_result":Z
    :sswitch_2
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->stopViewServer()Z

    move-result v102

    .line 64
    .restart local v102    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v102, :cond_1

    const/4 v6, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    const/4 v6, 0x1

    return v6

    .line 65
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 70
    .end local v102    # "_result":Z
    :sswitch_3
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isViewServerRunning()Z

    move-result v102

    .line 72
    .restart local v102    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v102, :cond_2

    const/4 v6, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    const/4 v6, 0x1

    return v6

    .line 73
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 78
    .end local v102    # "_result":Z
    :sswitch_4
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSessionCallback;

    move-result-object v73

    .line 82
    .local v73, "_arg0":Landroid/view/IWindowSessionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v87

    .line 84
    .local v87, "_arg1":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v91

    .line 85
    .local v91, "_arg2":Lcom/android/internal/view/IInputContext;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v87

    move-object/from16 v3, v91

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->openSession(Landroid/view/IWindowSessionCallback;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;

    move-result-object v100

    .line 86
    .local v100, "_result":Landroid/view/IWindowSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v100, :cond_3

    invoke-interface/range {v100 .. v100}, Landroid/view/IWindowSession;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 88
    const/4 v6, 0x1

    return v6

    .line 87
    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    .line 92
    .end local v73    # "_arg0":Landroid/view/IWindowSessionCallback;
    .end local v87    # "_arg1":Lcom/android/internal/view/IInputMethodClient;
    .end local v91    # "_arg2":Lcom/android/internal/view/IInputContext;
    .end local v100    # "_result":Landroid/view/IWindowSession;
    :sswitch_5
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v77

    .line 95
    .local v77, "_arg0":Lcom/android/internal/view/IInputMethodClient;
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v102

    .line 96
    .restart local v102    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v102, :cond_4

    const/4 v6, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    const/4 v6, 0x1

    return v6

    .line 97
    :cond_4
    const/4 v6, 0x0

    goto :goto_4

    .line 102
    .end local v77    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v102    # "_result":Z
    :sswitch_6
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 106
    .restart local v7    # "_arg0":I
    new-instance v83, Landroid/graphics/Point;

    invoke-direct/range {v83 .. v83}, Landroid/graphics/Point;-><init>()V

    .line 107
    .local v83, "_arg1":Landroid/graphics/Point;
    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Landroid/view/IWindowManager$Stub;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 108
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v83, :cond_5

    .line 110
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    const/4 v6, 0x1

    move-object/from16 v0, v83

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 116
    :goto_5
    const/4 v6, 0x1

    return v6

    .line 114
    :cond_5
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 120
    .end local v7    # "_arg0":I
    .end local v83    # "_arg1":Landroid/graphics/Point;
    :sswitch_7
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 124
    .restart local v7    # "_arg0":I
    new-instance v83, Landroid/graphics/Point;

    invoke-direct/range {v83 .. v83}, Landroid/graphics/Point;-><init>()V

    .line 125
    .restart local v83    # "_arg1":Landroid/graphics/Point;
    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Landroid/view/IWindowManager$Stub;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v83, :cond_6

    .line 128
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    const/4 v6, 0x1

    move-object/from16 v0, v83

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 134
    :goto_6
    const/4 v6, 0x1

    return v6

    .line 132
    :cond_6
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 138
    .end local v7    # "_arg0":I
    .end local v83    # "_arg1":Landroid/graphics/Point;
    :sswitch_8
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 142
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 144
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 145
    .local v9, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Landroid/view/IWindowManager$Stub;->setForcedDisplaySize(III)V

    .line 146
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    const/4 v6, 0x1

    return v6

    .line 151
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    :sswitch_9
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 154
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->clearForcedDisplaySize(I)V

    .line 155
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    const/4 v6, 0x1

    return v6

    .line 160
    .end local v7    # "_arg0":I
    :sswitch_a
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 163
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->getInitialDisplayDensity(I)I

    move-result v95

    .line 164
    .local v95, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    move-object/from16 v0, p3

    move/from16 v1, v95

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    const/4 v6, 0x1

    return v6

    .line 170
    .end local v7    # "_arg0":I
    .end local v95    # "_result":I
    :sswitch_b
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 173
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->getBaseDisplayDensity(I)I

    move-result v95

    .line 174
    .restart local v95    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    move-object/from16 v0, p3

    move/from16 v1, v95

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    const/4 v6, 0x1

    return v6

    .line 180
    .end local v7    # "_arg0":I
    .end local v95    # "_result":I
    :sswitch_c
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 184
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 186
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 187
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Landroid/view/IWindowManager$Stub;->setForcedDisplayDensityForUser(III)V

    .line 188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    const/4 v6, 0x1

    return v6

    .line 193
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    :sswitch_d
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 197
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 198
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/view/IWindowManager$Stub;->clearForcedDisplayDensityForUser(II)V

    .line 199
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    const/4 v6, 0x1

    return v6

    .line 204
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_e
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 208
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 209
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/view/IWindowManager$Stub;->setForcedDisplayScalingMode(II)V

    .line 210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    const/4 v6, 0x1

    return v6

    .line 215
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_f
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 219
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 221
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 223
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 225
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, "_arg4":I
    move-object/from16 v6, p0

    .line 226
    invoke-virtual/range {v6 .. v11}, Landroid/view/IWindowManager$Stub;->setOverscan(IIIII)V

    .line 227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    const/4 v6, 0x1

    return v6

    .line 232
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    :sswitch_10
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 235
    .local v32, "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->pauseKeyDispatching(Landroid/os/IBinder;)V

    .line 236
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    const/4 v6, 0x1

    return v6

    .line 241
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_11
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 244
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->resumeKeyDispatching(Landroid/os/IBinder;)V

    .line 245
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    const/4 v6, 0x1

    return v6

    .line 250
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_12
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    const/16 v79, 0x1

    .line 253
    .local v79, "_arg0":Z
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setEventDispatching(Z)V

    .line 254
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    const/4 v6, 0x1

    return v6

    .line 252
    .end local v79    # "_arg0":Z
    :cond_7
    const/16 v79, 0x0

    goto :goto_7

    .line 259
    :sswitch_13
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 263
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 264
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v8}, Landroid/view/IWindowManager$Stub;->addWindowToken(Landroid/os/IBinder;I)V

    .line 265
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    const/4 v6, 0x1

    return v6

    .line 270
    .end local v8    # "_arg1":I
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_14
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 273
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->removeWindowToken(Landroid/os/IBinder;)V

    .line 274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    const/4 v6, 0x1

    return v6

    .line 279
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_15
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 283
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v14

    .line 285
    .local v14, "_arg1":Landroid/view/IApplicationToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 287
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 289
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 291
    .restart local v11    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    const/16 v18, 0x1

    .line 293
    .local v18, "_arg5":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    const/16 v19, 0x1

    .line 295
    .local v19, "_arg6":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 297
    .local v20, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 299
    .local v21, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    const/16 v22, 0x1

    .line 301
    .local v22, "_arg9":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    const/16 v23, 0x1

    .line 303
    .local v23, "_arg10":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    .line 304
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/graphics/Rect;

    .line 310
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    .line 311
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/res/Configuration;

    .line 317
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 319
    .local v26, "_arg13":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e

    const/16 v27, 0x1

    .line 321
    .local v27, "_arg14":Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f

    const/16 v28, 0x1

    .line 323
    .local v28, "_arg15":Z
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .line 325
    .local v29, "_arg16":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .local v30, "_arg17":I
    move-object/from16 v12, p0

    move v13, v7

    move v15, v9

    move/from16 v16, v10

    move/from16 v17, v11

    .line 326
    invoke-virtual/range {v12 .. v30}, Landroid/view/IWindowManager$Stub;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZLandroid/graphics/Rect;Landroid/content/res/Configuration;IZZII)V

    .line 327
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    const/4 v6, 0x1

    return v6

    .line 291
    .end local v18    # "_arg5":Z
    .end local v19    # "_arg6":Z
    .end local v20    # "_arg7":I
    .end local v21    # "_arg8":I
    .end local v22    # "_arg9":Z
    .end local v23    # "_arg10":Z
    .end local v26    # "_arg13":I
    .end local v27    # "_arg14":Z
    .end local v28    # "_arg15":Z
    .end local v29    # "_arg16":I
    .end local v30    # "_arg17":I
    :cond_8
    const/16 v18, 0x0

    .restart local v18    # "_arg5":Z
    goto :goto_8

    .line 293
    :cond_9
    const/16 v19, 0x0

    .restart local v19    # "_arg6":Z
    goto :goto_9

    .line 299
    .restart local v20    # "_arg7":I
    .restart local v21    # "_arg8":I
    :cond_a
    const/16 v22, 0x0

    .restart local v22    # "_arg9":Z
    goto :goto_a

    .line 301
    :cond_b
    const/16 v23, 0x0

    .restart local v23    # "_arg10":Z
    goto :goto_b

    .line 307
    :cond_c
    const/16 v24, 0x0

    .local v24, "_arg11":Landroid/graphics/Rect;
    goto :goto_c

    .line 314
    .end local v24    # "_arg11":Landroid/graphics/Rect;
    :cond_d
    const/16 v25, 0x0

    .local v25, "_arg12":Landroid/content/res/Configuration;
    goto :goto_d

    .line 319
    .end local v25    # "_arg12":Landroid/content/res/Configuration;
    .restart local v26    # "_arg13":I
    :cond_e
    const/16 v27, 0x0

    .restart local v27    # "_arg14":Z
    goto :goto_e

    .line 321
    :cond_f
    const/16 v28, 0x0

    .restart local v28    # "_arg15":Z
    goto :goto_f

    .line 332
    .end local v7    # "_arg0":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    .end local v14    # "_arg1":Landroid/view/IApplicationToken;
    .end local v18    # "_arg5":Z
    .end local v19    # "_arg6":Z
    .end local v20    # "_arg7":I
    .end local v21    # "_arg8":I
    .end local v22    # "_arg9":Z
    .end local v23    # "_arg10":Z
    .end local v26    # "_arg13":I
    .end local v27    # "_arg14":Z
    .end local v28    # "_arg15":Z
    :sswitch_16
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 336
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 338
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 340
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10

    .line 341
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/graphics/Rect;

    .line 347
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_11

    .line 348
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/content/res/Configuration;

    .line 354
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 356
    .local v37, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12

    const/16 v19, 0x1

    .local v19, "_arg6":Z
    :goto_12
    move-object/from16 v31, p0

    move/from16 v33, v8

    move/from16 v34, v9

    move/from16 v38, v19

    .line 357
    invoke-virtual/range {v31 .. v38}, Landroid/view/IWindowManager$Stub;->setAppTask(Landroid/os/IBinder;IILandroid/graphics/Rect;Landroid/content/res/Configuration;IZ)V

    .line 358
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    const/4 v6, 0x1

    return v6

    .line 344
    .end local v19    # "_arg6":Z
    .end local v37    # "_arg5":I
    :cond_10
    const/16 v35, 0x0

    .local v35, "_arg3":Landroid/graphics/Rect;
    goto :goto_10

    .line 351
    .end local v35    # "_arg3":Landroid/graphics/Rect;
    :cond_11
    const/16 v36, 0x0

    .local v36, "_arg4":Landroid/content/res/Configuration;
    goto :goto_11

    .line 356
    .end local v36    # "_arg4":Landroid/content/res/Configuration;
    .restart local v37    # "_arg5":I
    :cond_12
    const/16 v19, 0x0

    goto :goto_12

    .line 363
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v32    # "_arg0":Landroid/os/IBinder;
    .end local v37    # "_arg5":I
    :sswitch_17
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v69

    .line 367
    .local v69, "_arg0":Landroid/view/IApplicationToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 368
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v1, v8}, Landroid/view/IWindowManager$Stub;->setAppOrientation(Landroid/view/IApplicationToken;I)V

    .line 369
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    const/4 v6, 0x1

    return v6

    .line 374
    .end local v8    # "_arg1":I
    .end local v69    # "_arg0":Landroid/view/IApplicationToken;
    :sswitch_18
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v69

    .line 377
    .restart local v69    # "_arg0":Landroid/view/IApplicationToken;
    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->getAppOrientation(Landroid/view/IApplicationToken;)I

    move-result v95

    .line 378
    .restart local v95    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    move-object/from16 v0, p3

    move/from16 v1, v95

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    const/4 v6, 0x1

    return v6

    .line 384
    .end local v69    # "_arg0":Landroid/view/IApplicationToken;
    .end local v95    # "_result":I
    :sswitch_19
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 388
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_13

    const/16 v88, 0x1

    .line 389
    .local v88, "_arg1":Z
    :goto_13
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->setFocusedApp(Landroid/os/IBinder;Z)V

    .line 390
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    const/4 v6, 0x1

    return v6

    .line 388
    .end local v88    # "_arg1":Z
    :cond_13
    const/16 v88, 0x0

    goto :goto_13

    .line 395
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_1a
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 399
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_14

    const/16 v88, 0x1

    .line 400
    .restart local v88    # "_arg1":Z
    :goto_14
    move-object/from16 v0, p0

    move/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Landroid/view/IWindowManager$Stub;->prepareAppTransition(IZ)V

    .line 401
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    const/4 v6, 0x1

    return v6

    .line 399
    .end local v88    # "_arg1":Z
    :cond_14
    const/16 v88, 0x0

    goto :goto_14

    .line 406
    .end local v7    # "_arg0":I
    :sswitch_1b
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getPendingAppTransition()I

    move-result v95

    .line 408
    .restart local v95    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    move-object/from16 v0, p3

    move/from16 v1, v95

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    const/4 v6, 0x1

    return v6

    .line 414
    .end local v95    # "_result":I
    :sswitch_1c
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v78

    .line 418
    .local v78, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 420
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 422
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v42

    .line 423
    .local v42, "_arg3":Landroid/os/IRemoteCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v8, v9, v2}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V

    .line 424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    const/4 v6, 0x1

    return v6

    .line 429
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v42    # "_arg3":Landroid/os/IRemoteCallback;
    .end local v78    # "_arg0":Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 433
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 435
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 437
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 438
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionScaleUp(IIII)V

    .line 439
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    const/4 v6, 0x1

    return v6

    .line 444
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    :sswitch_1e
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 448
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 450
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 452
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 453
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionClipReveal(IIII)V

    .line 454
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    const/4 v6, 0x1

    return v6

    .line 459
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    :sswitch_1f
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 463
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 465
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 467
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 468
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionLaunchFromHome(IIII)V

    .line 469
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    const/4 v6, 0x1

    return v6

    .line 474
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    :sswitch_20
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_15

    .line 477
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Landroid/graphics/Rect;

    .line 482
    :goto_15
    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->overrideMiuiAnimSupportWinInset(Landroid/graphics/Rect;)V

    .line 483
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    const/4 v6, 0x1

    return v6

    .line 480
    :cond_15
    const/16 v66, 0x0

    .local v66, "_arg0":Landroid/graphics/Rect;
    goto :goto_15

    .line 488
    .end local v66    # "_arg0":Landroid/graphics/Rect;
    :sswitch_21
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->cancelMiuiThumbnailAnimation()V

    .line 490
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    const/4 v6, 0x1

    return v6

    .line 495
    :sswitch_22
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getGestureStubListener()Landroid/view/IGestureStubListener;

    move-result-object v99

    .line 497
    .local v99, "_result":Landroid/view/IGestureStubListener;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    if-eqz v99, :cond_16

    invoke-interface/range {v99 .. v99}, Landroid/view/IGestureStubListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 499
    const/4 v6, 0x1

    return v6

    .line 498
    :cond_16
    const/4 v6, 0x0

    goto :goto_16

    .line 503
    .end local v99    # "_result":Landroid/view/IGestureStubListener;
    :sswitch_23
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_17

    .line 506
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/graphics/Bitmap;

    .line 512
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 514
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 516
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v42

    .line 518
    .restart local v42    # "_arg3":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_18

    const/16 v43, 0x1

    .local v43, "_arg4":Z
    :goto_18
    move-object/from16 v38, p0

    move/from16 v40, v8

    move/from16 v41, v9

    .line 519
    invoke-virtual/range {v38 .. v43}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Z)V

    .line 520
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    const/4 v6, 0x1

    return v6

    .line 509
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v42    # "_arg3":Landroid/os/IRemoteCallback;
    .end local v43    # "_arg4":Z
    :cond_17
    const/16 v39, 0x0

    .local v39, "_arg0":Landroid/graphics/Bitmap;
    goto :goto_17

    .line 518
    .end local v39    # "_arg0":Landroid/graphics/Bitmap;
    .restart local v8    # "_arg1":I
    .restart local v9    # "_arg2":I
    .restart local v42    # "_arg3":Landroid/os/IRemoteCallback;
    :cond_18
    const/16 v43, 0x0

    goto :goto_18

    .line 525
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v42    # "_arg3":Landroid/os/IRemoteCallback;
    :sswitch_24
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_19

    .line 528
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/graphics/Bitmap;

    .line 534
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 536
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 538
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 540
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 542
    .restart local v11    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v50

    .line 544
    .local v50, "_arg5":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1a

    const/16 v19, 0x1

    .restart local v19    # "_arg6":Z
    :goto_1a
    move-object/from16 v44, p0

    move-object/from16 v45, v39

    move/from16 v46, v8

    move/from16 v47, v9

    move/from16 v48, v10

    move/from16 v49, v11

    move/from16 v51, v19

    .line 545
    invoke-virtual/range {v44 .. v51}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/Bitmap;IIIILandroid/os/IRemoteCallback;Z)V

    .line 546
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    const/4 v6, 0x1

    return v6

    .line 531
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    .end local v19    # "_arg6":Z
    .end local v50    # "_arg5":Landroid/os/IRemoteCallback;
    :cond_19
    const/16 v39, 0x0

    .restart local v39    # "_arg0":Landroid/graphics/Bitmap;
    goto :goto_19

    .line 544
    .end local v39    # "_arg0":Landroid/graphics/Bitmap;
    .restart local v8    # "_arg1":I
    .restart local v9    # "_arg2":I
    .restart local v10    # "_arg3":I
    .restart local v11    # "_arg4":I
    .restart local v50    # "_arg5":Landroid/os/IRemoteCallback;
    :cond_1a
    const/16 v19, 0x0

    goto :goto_1a

    .line 551
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    .end local v50    # "_arg5":Landroid/os/IRemoteCallback;
    :sswitch_25
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    sget-object v6, Landroid/view/AppTransitionAnimationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v81

    check-cast v81, [Landroid/view/AppTransitionAnimationSpec;

    .line 555
    .local v81, "_arg0":[Landroid/view/AppTransitionAnimationSpec;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v85

    .line 557
    .local v85, "_arg1":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v90

    .line 559
    .local v90, "_arg2":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1b

    const/16 v93, 0x1

    .line 560
    .local v93, "_arg3":Z
    :goto_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v81

    move-object/from16 v2, v85

    move-object/from16 v3, v90

    move/from16 v4, v93

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    .line 561
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    const/4 v6, 0x1

    return v6

    .line 559
    .end local v93    # "_arg3":Z
    :cond_1b
    const/16 v93, 0x0

    goto :goto_1b

    .line 566
    .end local v81    # "_arg0":[Landroid/view/AppTransitionAnimationSpec;
    .end local v85    # "_arg1":Landroid/os/IRemoteCallback;
    .end local v90    # "_arg2":Landroid/os/IRemoteCallback;
    :sswitch_26
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v78

    .line 570
    .restart local v78    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 571
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1, v8}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionInPlace(Ljava/lang/String;I)V

    .line 572
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    const/4 v6, 0x1

    return v6

    .line 577
    .end local v8    # "_arg1":I
    .end local v78    # "_arg0":Ljava/lang/String;
    :sswitch_27
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v68

    .line 581
    .local v68, "_arg0":Landroid/view/IAppTransitionAnimationSpecsFuture;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v85

    .line 583
    .restart local v85    # "_arg1":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1c

    const/16 v92, 0x1

    .line 584
    .local v92, "_arg2":Z
    :goto_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v68

    move-object/from16 v2, v85

    move/from16 v3, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V

    .line 585
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    const/4 v6, 0x1

    return v6

    .line 583
    .end local v92    # "_arg2":Z
    :cond_1c
    const/16 v92, 0x0

    goto :goto_1c

    .line 590
    .end local v68    # "_arg0":Landroid/view/IAppTransitionAnimationSpecsFuture;
    .end local v85    # "_arg1":Landroid/os/IRemoteCallback;
    :sswitch_28
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->executeAppTransition()V

    .line 592
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    const/4 v6, 0x1

    return v6

    .line 597
    :sswitch_29
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 601
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .line 603
    .local v53, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 605
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1d

    .line 606
    sget-object v6, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/content/res/CompatibilityInfo;

    .line 612
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1e

    .line 613
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/lang/CharSequence;

    .line 619
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 621
    .restart local v37    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 623
    .local v58, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 625
    .restart local v20    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 627
    .restart local v21    # "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v61

    .line 629
    .local v61, "_arg9":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1f

    const/16 v23, 0x1

    .local v23, "_arg10":Z
    :goto_1f
    move-object/from16 v51, p0

    move-object/from16 v52, v32

    move/from16 v54, v9

    move/from16 v57, v37

    move/from16 v59, v20

    move/from16 v60, v21

    move/from16 v62, v23

    .line 630
    invoke-virtual/range {v51 .. v62}, Landroid/view/IWindowManager$Stub;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)Z

    move-result v102

    .line 631
    .restart local v102    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    if-eqz v102, :cond_20

    const/4 v6, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 633
    const/4 v6, 0x1

    return v6

    .line 609
    .end local v20    # "_arg7":I
    .end local v21    # "_arg8":I
    .end local v23    # "_arg10":Z
    .end local v37    # "_arg5":I
    .end local v58    # "_arg6":I
    .end local v61    # "_arg9":Landroid/os/IBinder;
    .end local v102    # "_result":Z
    :cond_1d
    const/16 v55, 0x0

    .local v55, "_arg3":Landroid/content/res/CompatibilityInfo;
    goto :goto_1d

    .line 616
    .end local v55    # "_arg3":Landroid/content/res/CompatibilityInfo;
    :cond_1e
    const/16 v56, 0x0

    .local v56, "_arg4":Ljava/lang/CharSequence;
    goto :goto_1e

    .line 629
    .end local v56    # "_arg4":Ljava/lang/CharSequence;
    .restart local v20    # "_arg7":I
    .restart local v21    # "_arg8":I
    .restart local v37    # "_arg5":I
    .restart local v58    # "_arg6":I
    .restart local v61    # "_arg9":Landroid/os/IBinder;
    :cond_1f
    const/16 v23, 0x0

    goto :goto_1f

    .line 632
    .restart local v23    # "_arg10":Z
    .restart local v102    # "_result":Z
    :cond_20
    const/4 v6, 0x0

    goto :goto_20

    .line 637
    .end local v9    # "_arg2":I
    .end local v20    # "_arg7":I
    .end local v21    # "_arg8":I
    .end local v23    # "_arg10":Z
    .end local v32    # "_arg0":Landroid/os/IBinder;
    .end local v37    # "_arg5":I
    .end local v53    # "_arg1":Ljava/lang/String;
    .end local v58    # "_arg6":I
    .end local v61    # "_arg9":Landroid/os/IBinder;
    .end local v102    # "_result":Z
    :sswitch_2a
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 641
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_21

    const/16 v88, 0x1

    .line 642
    .restart local v88    # "_arg1":Z
    :goto_21
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 643
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    const/4 v6, 0x1

    return v6

    .line 641
    .end local v88    # "_arg1":Z
    :cond_21
    const/16 v88, 0x0

    goto :goto_21

    .line 648
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_2b
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 652
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_22

    const/16 v88, 0x1

    .line 654
    .local v88, "_arg1":Z
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_23

    const/16 v92, 0x1

    .line 655
    .restart local v92    # "_arg2":Z
    :goto_23
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v88

    move/from16 v3, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->notifyAppResumed(Landroid/os/IBinder;ZZ)V

    .line 656
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    const/4 v6, 0x1

    return v6

    .line 652
    .end local v88    # "_arg1":Z
    .end local v92    # "_arg2":Z
    :cond_22
    const/16 v88, 0x0

    .restart local v88    # "_arg1":Z
    goto :goto_22

    .line 654
    :cond_23
    const/16 v92, 0x0

    goto :goto_23

    .line 661
    .end local v32    # "_arg0":Landroid/os/IBinder;
    .end local v88    # "_arg1":Z
    :sswitch_2c
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 663
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 664
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->notifyAppStopped(Landroid/os/IBinder;)V

    .line 665
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    const/4 v6, 0x1

    return v6

    .line 670
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_2d
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 674
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 675
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v8}, Landroid/view/IWindowManager$Stub;->startAppFreezingScreen(Landroid/os/IBinder;I)V

    .line 676
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    const/4 v6, 0x1

    return v6

    .line 681
    .end local v8    # "_arg1":I
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_2e
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 683
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 685
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_24

    const/16 v88, 0x1

    .line 686
    .local v88, "_arg1":Z
    :goto_24
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->stopAppFreezingScreen(Landroid/os/IBinder;Z)V

    .line 687
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    const/4 v6, 0x1

    return v6

    .line 685
    .end local v88    # "_arg1":Z
    :cond_24
    const/16 v88, 0x0

    goto :goto_24

    .line 692
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_2f
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 694
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 695
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->removeAppToken(Landroid/os/IBinder;)V

    .line 696
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    const/4 v6, 0x1

    return v6

    .line 701
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_30
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 702
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->endProlongedAnimations()V

    .line 703
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    const/4 v6, 0x1

    return v6

    .line 708
    :sswitch_31
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 710
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_25

    .line 711
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Landroid/content/res/Configuration;

    .line 717
    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 718
    .local v84, "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v84

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v96

    .line 719
    .local v96, "_result":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 720
    if-eqz v96, :cond_26

    .line 721
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 722
    const/4 v6, 0x1

    move-object/from16 v0, v96

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 727
    :goto_26
    const/4 v6, 0x1

    return v6

    .line 714
    .end local v84    # "_arg1":Landroid/os/IBinder;
    .end local v96    # "_result":Landroid/content/res/Configuration;
    :cond_25
    const/16 v63, 0x0

    .local v63, "_arg0":Landroid/content/res/Configuration;
    goto :goto_25

    .line 725
    .end local v63    # "_arg0":Landroid/content/res/Configuration;
    .restart local v84    # "_arg1":Landroid/os/IBinder;
    .restart local v96    # "_result":Landroid/content/res/Configuration;
    :cond_26
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    .line 731
    .end local v84    # "_arg1":Landroid/os/IBinder;
    .end local v96    # "_result":Landroid/content/res/Configuration;
    :sswitch_32
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 733
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_27

    .line 734
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Landroid/content/res/Configuration;

    .line 739
    :goto_27
    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setNewConfiguration(Landroid/content/res/Configuration;)[I

    move-result-object v104

    .line 740
    .local v104, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 741
    move-object/from16 v0, p3

    move-object/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 742
    const/4 v6, 0x1

    return v6

    .line 737
    .end local v104    # "_result":[I
    :cond_27
    const/16 v63, 0x0

    .restart local v63    # "_arg0":Landroid/content/res/Configuration;
    goto :goto_27

    .line 746
    .end local v63    # "_arg0":Landroid/content/res/Configuration;
    :sswitch_33
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 748
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 749
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->getBoundsForNewConfiguration(I)Landroid/graphics/Rect;

    move-result-object v98

    .line 750
    .local v98, "_result":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 751
    if-eqz v98, :cond_28

    .line 752
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 753
    const/4 v6, 0x1

    move-object/from16 v0, v98

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 758
    :goto_28
    const/4 v6, 0x1

    return v6

    .line 756
    :cond_28
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_28

    .line 762
    .end local v7    # "_arg0":I
    .end local v98    # "_result":Landroid/graphics/Rect;
    :sswitch_34
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 766
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 767
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/view/IWindowManager$Stub;->startFreezingScreen(II)V

    .line 768
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    const/4 v6, 0x1

    return v6

    .line 773
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_35
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 774
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->stopFreezingScreen()V

    .line 775
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 776
    const/4 v6, 0x1

    return v6

    .line 780
    :sswitch_36
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 782
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 784
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .line 785
    .restart local v53    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 786
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 787
    const/4 v6, 0x1

    return v6

    .line 791
    .end local v32    # "_arg0":Landroid/os/IBinder;
    .end local v53    # "_arg1":Ljava/lang/String;
    :sswitch_37
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 793
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 794
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->reenableKeyguard(Landroid/os/IBinder;)V

    .line 795
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    const/4 v6, 0x1

    return v6

    .line 800
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_38
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 802
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IOnKeyguardExitResult$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOnKeyguardExitResult;

    move-result-object v71

    .line 803
    .local v71, "_arg0":Landroid/view/IOnKeyguardExitResult;
    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V

    .line 804
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    const/4 v6, 0x1

    return v6

    .line 809
    .end local v71    # "_arg0":Landroid/view/IOnKeyguardExitResult;
    :sswitch_39
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 810
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isKeyguardLocked()Z

    move-result v102

    .line 811
    .restart local v102    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    if-eqz v102, :cond_29

    const/4 v6, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 813
    const/4 v6, 0x1

    return v6

    .line 812
    :cond_29
    const/4 v6, 0x0

    goto :goto_29

    .line 817
    .end local v102    # "_result":Z
    :sswitch_3a
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 818
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isKeyguardSecure()Z

    move-result v102

    .line 819
    .restart local v102    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    if-eqz v102, :cond_2a

    const/4 v6, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 821
    const/4 v6, 0x1

    return v6

    .line 820
    :cond_2a
    const/4 v6, 0x0

    goto :goto_2a

    .line 825
    .end local v102    # "_result":Z
    :sswitch_3b
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 826
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->inKeyguardRestrictedInputMode()Z

    move-result v102

    .line 827
    .restart local v102    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    if-eqz v102, :cond_2b

    const/4 v6, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    const/4 v6, 0x1

    return v6

    .line 828
    :cond_2b
    const/4 v6, 0x0

    goto :goto_2b

    .line 833
    .end local v102    # "_result":Z
    :sswitch_3c
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 834
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->dismissKeyguard()V

    .line 835
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    const/4 v6, 0x1

    return v6

    .line 840
    :sswitch_3d
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 843
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->keyguardGoingAway(I)V

    .line 844
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    const/4 v6, 0x1

    return v6

    .line 849
    .end local v7    # "_arg0":I
    :sswitch_3e
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 851
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v78

    .line 852
    .restart local v78    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 853
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    const/4 v6, 0x1

    return v6

    .line 858
    .end local v78    # "_arg0":Ljava/lang/String;
    :sswitch_3f
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 860
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 861
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->getAnimationScale(I)F

    move-result v94

    .line 862
    .local v94, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 863
    move-object/from16 v0, p3

    move/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 864
    const/4 v6, 0x1

    return v6

    .line 868
    .end local v7    # "_arg0":I
    .end local v94    # "_result":F
    :sswitch_40
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 869
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getAnimationScales()[F

    move-result-object v103

    .line 870
    .local v103, "_result":[F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 871
    move-object/from16 v0, p3

    move-object/from16 v1, v103

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 872
    const/4 v6, 0x1

    return v6

    .line 876
    .end local v103    # "_result":[F
    :sswitch_41
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 878
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 880
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v82

    .line 881
    .local v82, "_arg1":F
    move-object/from16 v0, p0

    move/from16 v1, v82

    invoke-virtual {v0, v7, v1}, Landroid/view/IWindowManager$Stub;->setAnimationScale(IF)V

    .line 882
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 883
    const/4 v6, 0x1

    return v6

    .line 887
    .end local v7    # "_arg0":I
    .end local v82    # "_arg1":F
    :sswitch_42
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 889
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v80

    .line 890
    .local v80, "_arg0":[F
    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setAnimationScales([F)V

    .line 891
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 892
    const/4 v6, 0x1

    return v6

    .line 896
    .end local v80    # "_arg0":[F
    :sswitch_43
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 897
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getCurrentAnimatorScale()F

    move-result v94

    .line 898
    .restart local v94    # "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    move-object/from16 v0, p3

    move/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 900
    const/4 v6, 0x1

    return v6

    .line 904
    .end local v94    # "_result":F
    :sswitch_44
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 906
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2c

    const/16 v79, 0x1

    .line 907
    .restart local v79    # "_arg0":Z
    :goto_2c
    move-object/from16 v0, p0

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setInTouchMode(Z)V

    .line 908
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 909
    const/4 v6, 0x1

    return v6

    .line 906
    .end local v79    # "_arg0":Z
    :cond_2c
    const/16 v79, 0x0

    goto :goto_2c

    .line 913
    :sswitch_45
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 915
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2d

    const/16 v79, 0x1

    .line 916
    .restart local v79    # "_arg0":Z
    :goto_2d
    move-object/from16 v0, p0

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->showStrictModeViolation(Z)V

    .line 917
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 918
    const/4 v6, 0x1

    return v6

    .line 915
    .end local v79    # "_arg0":Z
    :cond_2d
    const/16 v79, 0x0

    goto :goto_2d

    .line 922
    :sswitch_46
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 924
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v78

    .line 925
    .restart local v78    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 926
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 927
    const/4 v6, 0x1

    return v6

    .line 931
    .end local v78    # "_arg0":Ljava/lang/String;
    :sswitch_47
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 933
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 935
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2e

    const/16 v88, 0x1

    .line 936
    .restart local v88    # "_arg1":Z
    :goto_2e
    move-object/from16 v0, p0

    move/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Landroid/view/IWindowManager$Stub;->setScreenCaptureDisabled(IZ)V

    .line 937
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    const/4 v6, 0x1

    return v6

    .line 935
    .end local v88    # "_arg1":Z
    :cond_2e
    const/16 v88, 0x0

    goto :goto_2e

    .line 942
    .end local v7    # "_arg0":I
    :sswitch_48
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 944
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 945
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->cancelTaskWindowTransition(I)V

    .line 946
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 947
    const/4 v6, 0x1

    return v6

    .line 951
    .end local v7    # "_arg0":I
    :sswitch_49
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 953
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 954
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->cancelTaskThumbnailTransition(I)V

    .line 955
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 956
    const/4 v6, 0x1

    return v6

    .line 960
    .end local v7    # "_arg0":I
    :sswitch_4a
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 962
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2f

    const/16 v79, 0x1

    .line 964
    .local v79, "_arg0":Z
    :goto_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_30

    const/16 v88, 0x1

    .line 965
    .restart local v88    # "_arg1":Z
    :goto_30
    move-object/from16 v0, p0

    move/from16 v1, v79

    move/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->updateRotation(ZZ)V

    .line 966
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 967
    const/4 v6, 0x1

    return v6

    .line 962
    .end local v79    # "_arg0":Z
    .end local v88    # "_arg1":Z
    :cond_2f
    const/16 v79, 0x0

    .restart local v79    # "_arg0":Z
    goto :goto_2f

    .line 964
    :cond_30
    const/16 v88, 0x0

    goto :goto_30

    .line 971
    .end local v79    # "_arg0":Z
    :sswitch_4b
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 972
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getRotation()I

    move-result v95

    .line 973
    .restart local v95    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 974
    move-object/from16 v0, p3

    move/from16 v1, v95

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 975
    const/4 v6, 0x1

    return v6

    .line 979
    .end local v95    # "_result":I
    :sswitch_4c
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 981
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v72

    .line 982
    .local v72, "_arg0":Landroid/view/IRotationWatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v95

    .line 983
    .restart local v95    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    move-object/from16 v0, p3

    move/from16 v1, v95

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 985
    const/4 v6, 0x1

    return v6

    .line 989
    .end local v72    # "_arg0":Landroid/view/IRotationWatcher;
    .end local v95    # "_result":I
    :sswitch_4d
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 991
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v72

    .line 992
    .restart local v72    # "_arg0":Landroid/view/IRotationWatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 993
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 994
    const/4 v6, 0x1

    return v6

    .line 998
    .end local v72    # "_arg0":Landroid/view/IRotationWatcher;
    :sswitch_4e
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 999
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getPreferredOptionsPanelGravity()I

    move-result v95

    .line 1000
    .restart local v95    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    move-object/from16 v0, p3

    move/from16 v1, v95

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1002
    const/4 v6, 0x1

    return v6

    .line 1006
    .end local v95    # "_result":I
    :sswitch_4f
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1008
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1009
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->freezeRotation(I)V

    .line 1010
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1011
    const/4 v6, 0x1

    return v6

    .line 1015
    .end local v7    # "_arg0":I
    :sswitch_50
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1016
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->thawRotation()V

    .line 1017
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1018
    const/4 v6, 0x1

    return v6

    .line 1022
    :sswitch_51
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1023
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isRotationFrozen()Z

    move-result v102

    .line 1024
    .restart local v102    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1025
    if-eqz v102, :cond_31

    const/4 v6, 0x1

    :goto_31
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1026
    const/4 v6, 0x1

    return v6

    .line 1025
    :cond_31
    const/4 v6, 0x0

    goto :goto_31

    .line 1030
    .end local v102    # "_result":Z
    :sswitch_52
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1031
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->screenshotWallpaper()Landroid/graphics/Bitmap;

    move-result-object v97

    .line 1032
    .local v97, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1033
    if-eqz v97, :cond_32

    .line 1034
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1035
    const/4 v6, 0x1

    move-object/from16 v0, v97

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1040
    :goto_32
    const/4 v6, 0x1

    return v6

    .line 1038
    :cond_32
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_32

    .line 1044
    .end local v97    # "_result":Landroid/graphics/Bitmap;
    :sswitch_53
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1046
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/IAssistScreenshotReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAssistScreenshotReceiver;

    move-result-object v75

    .line 1047
    .local v75, "_arg0":Lcom/android/internal/app/IAssistScreenshotReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->requestAssistScreenshot(Lcom/android/internal/app/IAssistScreenshotReceiver;)Z

    move-result v102

    .line 1048
    .restart local v102    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1049
    if-eqz v102, :cond_33

    const/4 v6, 0x1

    :goto_33
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1050
    const/4 v6, 0x1

    return v6

    .line 1049
    :cond_33
    const/4 v6, 0x0

    goto :goto_33

    .line 1054
    .end local v75    # "_arg0":Lcom/android/internal/app/IAssistScreenshotReceiver;
    .end local v102    # "_result":Z
    :sswitch_54
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1056
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 1058
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1060
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1062
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1064
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v49

    .local v49, "_arg4":F
    move-object/from16 v44, p0

    move-object/from16 v45, v32

    move/from16 v46, v8

    move/from16 v47, v9

    move/from16 v48, v10

    .line 1065
    invoke-virtual/range {v44 .. v49}, Landroid/view/IWindowManager$Stub;->screenshotApplications(Landroid/os/IBinder;IIIF)Landroid/graphics/Bitmap;

    move-result-object v97

    .line 1066
    .restart local v97    # "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1067
    if-eqz v97, :cond_34

    .line 1068
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1069
    const/4 v6, 0x1

    move-object/from16 v0, v97

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1074
    :goto_34
    const/4 v6, 0x1

    return v6

    .line 1072
    :cond_34
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_34

    .line 1078
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v32    # "_arg0":Landroid/os/IBinder;
    .end local v49    # "_arg4":F
    .end local v97    # "_result":Landroid/graphics/Bitmap;
    :sswitch_55
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1080
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1081
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->statusBarVisibilityChanged(I)V

    .line 1082
    const/4 v6, 0x1

    return v6

    .line 1086
    .end local v7    # "_arg0":I
    :sswitch_56
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1088
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_35

    const/16 v79, 0x1

    .line 1089
    .local v79, "_arg0":Z
    :goto_35
    move-object/from16 v0, p0

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setRecentsVisibility(Z)V

    .line 1090
    const/4 v6, 0x1

    return v6

    .line 1088
    .end local v79    # "_arg0":Z
    :cond_35
    const/16 v79, 0x0

    goto :goto_35

    .line 1094
    :sswitch_57
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1096
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_36

    const/16 v79, 0x1

    .line 1097
    .restart local v79    # "_arg0":Z
    :goto_36
    move-object/from16 v0, p0

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setTvPipVisibility(Z)V

    .line 1098
    const/4 v6, 0x1

    return v6

    .line 1096
    .end local v79    # "_arg0":Z
    :cond_36
    const/16 v79, 0x0

    goto :goto_36

    .line 1102
    :sswitch_58
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1103
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->hasNavigationBar()Z

    move-result v102

    .line 1104
    .restart local v102    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1105
    if-eqz v102, :cond_37

    const/4 v6, 0x1

    :goto_37
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1106
    const/4 v6, 0x1

    return v6

    .line 1105
    :cond_37
    const/4 v6, 0x0

    goto :goto_37

    .line 1110
    .end local v102    # "_result":Z
    :sswitch_59
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_38

    .line 1113
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/os/Bundle;

    .line 1118
    :goto_38
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->lockNow(Landroid/os/Bundle;)V

    .line 1119
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1120
    const/4 v6, 0x1

    return v6

    .line 1116
    :cond_38
    const/16 v67, 0x0

    .local v67, "_arg0":Landroid/os/Bundle;
    goto :goto_38

    .line 1124
    .end local v67    # "_arg0":Landroid/os/Bundle;
    :sswitch_5a
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1125
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isSafeModeEnabled()Z

    move-result v102

    .line 1126
    .restart local v102    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1127
    if-eqz v102, :cond_39

    const/4 v6, 0x1

    :goto_39
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1128
    const/4 v6, 0x1

    return v6

    .line 1127
    :cond_39
    const/4 v6, 0x0

    goto :goto_39

    .line 1132
    .end local v102    # "_result":Z
    :sswitch_5b
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1133
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->enableScreenIfNeeded()V

    .line 1134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    const/4 v6, 0x1

    return v6

    .line 1139
    :sswitch_5c
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 1142
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->clearWindowContentFrameStats(Landroid/os/IBinder;)Z

    move-result v102

    .line 1143
    .restart local v102    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1144
    if-eqz v102, :cond_3a

    const/4 v6, 0x1

    :goto_3a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1145
    const/4 v6, 0x1

    return v6

    .line 1144
    :cond_3a
    const/4 v6, 0x0

    goto :goto_3a

    .line 1149
    .end local v32    # "_arg0":Landroid/os/IBinder;
    .end local v102    # "_result":Z
    :sswitch_5d
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 1152
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;

    move-result-object v101

    .line 1153
    .local v101, "_result":Landroid/view/WindowContentFrameStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1154
    if-eqz v101, :cond_3b

    .line 1155
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1156
    const/4 v6, 0x1

    move-object/from16 v0, v101

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/view/WindowContentFrameStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1161
    :goto_3b
    const/4 v6, 0x1

    return v6

    .line 1159
    :cond_3b
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3b

    .line 1165
    .end local v32    # "_arg0":Landroid/os/IBinder;
    .end local v101    # "_result":Landroid/view/WindowContentFrameStats;
    :sswitch_5e
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1166
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getDockedStackSide()I

    move-result v95

    .line 1167
    .restart local v95    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1168
    move-object/from16 v0, p3

    move/from16 v1, v95

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1169
    const/4 v6, 0x1

    return v6

    .line 1173
    .end local v95    # "_result":I
    :sswitch_5f
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3c

    const/16 v79, 0x1

    .line 1176
    .restart local v79    # "_arg0":Z
    :goto_3c
    move-object/from16 v0, p0

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setDockedStackResizing(Z)V

    .line 1177
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1178
    const/4 v6, 0x1

    return v6

    .line 1175
    .end local v79    # "_arg0":Z
    :cond_3c
    const/16 v79, 0x0

    goto :goto_3c

    .line 1182
    :sswitch_60
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3d

    .line 1185
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Landroid/graphics/Rect;

    .line 1190
    :goto_3d
    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setDockedStackDividerTouchRegion(Landroid/graphics/Rect;)V

    .line 1191
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1192
    const/4 v6, 0x1

    return v6

    .line 1188
    :cond_3d
    const/16 v66, 0x0

    .restart local v66    # "_arg0":Landroid/graphics/Rect;
    goto :goto_3d

    .line 1196
    .end local v66    # "_arg0":Landroid/graphics/Rect;
    :sswitch_61
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IDockedStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDockedStackListener;

    move-result-object v70

    .line 1199
    .local v70, "_arg0":Landroid/view/IDockedStackListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V

    .line 1200
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1201
    const/4 v6, 0x1

    return v6

    .line 1205
    .end local v70    # "_arg0":Landroid/view/IDockedStackListener;
    :sswitch_62
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3e

    const/16 v79, 0x1

    .line 1209
    .local v79, "_arg0":Z
    :goto_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1211
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v89

    .line 1212
    .local v89, "_arg2":F
    move-object/from16 v0, p0

    move/from16 v1, v79

    move/from16 v2, v89

    invoke-virtual {v0, v1, v8, v2}, Landroid/view/IWindowManager$Stub;->setResizeDimLayer(ZIF)V

    .line 1213
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1214
    const/4 v6, 0x1

    return v6

    .line 1207
    .end local v8    # "_arg1":I
    .end local v79    # "_arg0":Z
    .end local v89    # "_arg2":F
    :cond_3e
    const/16 v79, 0x0

    .restart local v79    # "_arg0":Z
    goto :goto_3e

    .line 1218
    .end local v79    # "_arg0":Z
    :sswitch_63
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1220
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v76

    .line 1222
    .local v76, "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1223
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v1, v8}, Landroid/view/IWindowManager$Stub;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    .line 1224
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1225
    const/4 v6, 0x1

    return v6

    .line 1229
    .end local v8    # "_arg1":I
    .end local v76    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    :sswitch_64
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1231
    new-instance v66, Landroid/graphics/Rect;

    invoke-direct/range {v66 .. v66}, Landroid/graphics/Rect;-><init>()V

    .line 1232
    .local v66, "_arg0":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->getStableInsets(Landroid/graphics/Rect;)V

    .line 1233
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1234
    if-eqz v66, :cond_3f

    .line 1235
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1236
    const/4 v6, 0x1

    move-object/from16 v0, v66

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1241
    :goto_3f
    const/4 v6, 0x1

    return v6

    .line 1239
    :cond_3f
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3f

    .line 1245
    .end local v66    # "_arg0":Landroid/graphics/Rect;
    :sswitch_65
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v64

    .line 1249
    .local v64, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/policy/IShortcutService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IShortcutService;

    move-result-object v86

    .line 1250
    .local v86, "_arg1":Lcom/android/internal/policy/IShortcutService;
    move-object/from16 v0, p0

    move-wide/from16 v1, v64

    move-object/from16 v3, v86

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V

    .line 1251
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1252
    const/4 v6, 0x1

    return v6

    .line 1256
    .end local v64    # "_arg0":J
    .end local v86    # "_arg1":Lcom/android/internal/policy/IShortcutService;
    :sswitch_66
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1258
    new-instance v74, Landroid/view/InputChannel;

    invoke-direct/range {v74 .. v74}, Landroid/view/InputChannel;-><init>()V

    .line 1259
    .local v74, "_arg0":Landroid/view/InputChannel;
    move-object/from16 v0, p0

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->createWallpaperInputConsumer(Landroid/view/InputChannel;)V

    .line 1260
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1261
    if-eqz v74, :cond_40

    .line 1262
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1263
    const/4 v6, 0x1

    move-object/from16 v0, v74

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1268
    :goto_40
    const/4 v6, 0x1

    return v6

    .line 1266
    :cond_40
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_40

    .line 1272
    .end local v74    # "_arg0":Landroid/view/InputChannel;
    :sswitch_67
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1273
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->removeWallpaperInputConsumer()V

    .line 1274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1275
    const/4 v6, 0x1

    return v6

    .line 43
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
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
