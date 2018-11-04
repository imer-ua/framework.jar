.class public Lmiui/view/VolumeDialog;
.super Ljava/lang/Object;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/view/VolumeDialog$1;,
        Lmiui/view/VolumeDialog$2;,
        Lmiui/view/VolumeDialog$3;,
        Lmiui/view/VolumeDialog$CustomDialog;,
        Lmiui/view/VolumeDialog$H;,
        Lmiui/view/VolumeDialog$SafetyWarningDialog;,
        Lmiui/view/VolumeDialog$StreamState;,
        Lmiui/view/VolumeDialog$VolumeIconRes;,
        Lmiui/view/VolumeDialog$VolumePanelDelegate;,
        Lmiui/view/VolumeDialog$VolumeRow;,
        Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;,
        Lmiui/view/VolumeDialog$VolumeSeekbarProgress;
    }
.end annotation


# static fields
.field private static final LAYOUT_TRANSITION_ANIMATION_DURATION:I = 0xc8

.field private static final STREAM_DEVICES_CHANGED_ACTION:Ljava/lang/String; = "android.media.STREAM_DEVICES_CHANGED_ACTION"

.field private static final STREAM_MUTE_CHANGED_ACTION:Ljava/lang/String; = "android.media.STREAM_MUTE_CHANGED_ACTION"

.field private static final TAG:Ljava/lang/String; = "VolumeDialog"

.field private static final TYPE_FM:I = 0xa

.field private static final UPDATE_ANIMATION_DURATION:I = 0x50

.field private static final USER_ATTEMPT_GRACE_PERIOD:J = 0x3e8L

.field private static final VIBRATE_DELAY:I = 0x12c

.field private static final VOLUME_ICON_TYPE_ALARM:I = 0x0

.field private static final VOLUME_ICON_TYPE_BLUETOOTH:I = 0x1

.field private static final VOLUME_ICON_TYPE_FM:I = 0x8

.field private static final VOLUME_ICON_TYPE_HEADSET:I = 0x2

.field private static final VOLUME_ICON_TYPE_HIFI:I = 0x7

.field private static final VOLUME_ICON_TYPE_MEDIA:I = 0x3

.field private static final VOLUME_ICON_TYPE_PHONE:I = 0x4

.field private static final VOLUME_ICON_TYPE_RING:I = 0x5

.field private static final VOLUME_ICON_TYPE_SPEAKER:I = 0x6

.field private static final sVolumeIconTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lmiui/view/VolumeDialog$VolumeIconRes;",
            ">;"
        }
    .end annotation
.end field

.field static sVolumeSeekbarProgress:Lmiui/view/VolumeDialog$VolumeSeekbarProgress;


# instance fields
.field private final STREAM_VOLUME_ALIAS_DEFAULT:[I

.field private mActiveStream:I

.field private final mAm:Landroid/media/AudioManager;

.field private mBootBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mClickExpand:Landroid/view/View$OnClickListener;

.field private mCollapseTime:J

.field private final mContext:Landroid/content/Context;

.field private mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

.field private mDialog:Lmiui/view/VolumeDialog$CustomDialog;

.field private mDialogContentView:Landroid/view/ViewGroup;

.field private mDialogShowTime:J

.field private mDialogView:Landroid/view/ViewGroup;

.field public mExpandAnimating:Z

.field private mExpandAnimator:Landroid/animation/ValueAnimator;

.field private mExpandButton:Landroid/widget/ImageButton;

.field public mExpanded:Z

.field private final mHandler:Lmiui/view/VolumeDialog$H;

.field private mInScreenshot:Z

.field private mLastStatus:Z

.field private mLayoutTransition:Landroid/animation/LayoutTransition;

.field private mRingerMode:I

.field private mRingerModeLayout:Lmiui/view/RingerModeLayout;

.field private final mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/view/VolumeDialog$VolumeRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSafetyWarning:Landroid/app/AlertDialog;

.field private final mSafetyWarningLock:Ljava/lang/Object;

.field private mShowing:Z

.field private mStatusBarHeight:I

.field private final mVibrator:Landroid/os/Vibrator;

.field private final mVolumeRowSpaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumeRowViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lmiui/view/VolumeDialog;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mAm:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/view/VolumeDialog;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get10(Lmiui/view/VolumeDialog;)I
    .locals 1

    iget v0, p0, Lmiui/view/VolumeDialog;->mRingerMode:I

    return v0
.end method

.method static synthetic -get11(Lmiui/view/VolumeDialog;)Lmiui/view/RingerModeLayout;
    .locals 1

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    return-object v0
.end method

.method static synthetic -get12(Lmiui/view/VolumeDialog;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get13(Lmiui/view/VolumeDialog;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get14()Ljava/util/Map;
    .locals 1

    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get2(Lmiui/view/VolumeDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lmiui/view/VolumeDialog;)Lmiui/view/VolumeDialog$VolumePanelDelegate;
    .locals 1

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    return-object v0
.end method

.method static synthetic -get4(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get5(Lmiui/view/VolumeDialog;)J
    .locals 2

    iget-wide v0, p0, Lmiui/view/VolumeDialog;->mDialogShowTime:J

    return-wide v0
.end method

.method static synthetic -get6(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get7(Lmiui/view/VolumeDialog;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get8(Lmiui/view/VolumeDialog;)Lmiui/view/VolumeDialog$H;
    .locals 1

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    return-object v0
.end method

.method static synthetic -get9(Lmiui/view/VolumeDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mLastStatus:Z

    return v0
.end method

.method static synthetic -set0(Lmiui/view/VolumeDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/view/VolumeDialog;->mInScreenshot:Z

    return p1
.end method

.method static synthetic -set1(Lmiui/view/VolumeDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/view/VolumeDialog;->mLastStatus:Z

    return p1
.end method

.method static synthetic -set2(Lmiui/view/VolumeDialog;I)I
    .locals 0

    iput p1, p0, Lmiui/view/VolumeDialog;->mRingerMode:I

    return p1
.end method

.method static synthetic -set3(Lmiui/view/VolumeDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lmiui/view/VolumeDialog;->mSafetyWarning:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/widget/SeekBar;I)I
    .locals 1
    .param p0, "seekBar"    # Landroid/widget/SeekBar;
    .param p1, "progress"    # I

    .prologue
    invoke-static {p0, p1}, Lmiui/view/VolumeDialog;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lmiui/view/VolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->dismissH()V

    return-void
.end method

.method static synthetic -wrap10(Lmiui/view/VolumeDialog;I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .prologue
    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->updateLayoutDirectionH(I)V

    return-void
.end method

.method static synthetic -wrap11(Lmiui/view/VolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateRowsVisibilityByExpandH()V

    return-void
.end method

.method static synthetic -wrap12(Lmiui/view/VolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->vibrateH()V

    return-void
.end method

.method static synthetic -wrap2(Lmiui/view/VolumeDialog;Lmiui/view/VolumeDialog$VolumeRow;)V
    .locals 0
    .param p1, "row"    # Lmiui/view/VolumeDialog$VolumeRow;

    .prologue
    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->recheckH(Lmiui/view/VolumeDialog$VolumeRow;)V

    return-void
.end method

.method static synthetic -wrap3(Lmiui/view/VolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->rescheduleTimeoutH()V

    return-void
.end method

.method static synthetic -wrap4(Lmiui/view/VolumeDialog;I)V
    .locals 0
    .param p1, "stream"    # I

    .prologue
    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->showH(I)V

    return-void
.end method

.method static synthetic -wrap5(Lmiui/view/VolumeDialog;I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->showSafetyWarningH(I)V

    return-void
.end method

.method static synthetic -wrap6(Lmiui/view/VolumeDialog;II)V
    .locals 0
    .param p1, "stream"    # I
    .param p2, "level"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lmiui/view/VolumeDialog;->stateChangedH(II)V

    return-void
.end method

.method static synthetic -wrap7(Lmiui/view/VolumeDialog;I)V
    .locals 0
    .param p1, "stream"    # I

    .prologue
    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->streamDeviceChanged(I)V

    return-void
.end method

.method static synthetic -wrap8(Lmiui/view/VolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateDialogBottomMarginH()V

    return-void
.end method

.method static synthetic -wrap9(Lmiui/view/VolumeDialog;)V
    .locals 0

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateExpandButtonH()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 10

    .prologue
    const v9, 0x1102004e

    const v8, 0x1102004d

    const v7, 0x1102004c

    const/4 v6, 0x0

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    .line 89
    new-instance v0, Lmiui/view/VolumeDialog$VolumeSeekbarProgress;

    .line 90
    const v1, 0x110200fe

    .line 91
    const v2, 0x11020100

    .line 89
    invoke-direct {v0, v1, v2, v6}, Lmiui/view/VolumeDialog$VolumeSeekbarProgress;-><init>(IILmiui/view/VolumeDialog$VolumeSeekbarProgress;)V

    sput-object v0, Lmiui/view/VolumeDialog;->sVolumeSeekbarProgress:Lmiui/view/VolumeDialog$VolumeSeekbarProgress;

    .line 94
    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    const v3, 0x11020038

    .line 95
    const v4, 0x11020039

    .line 96
    const v5, 0x11020037

    .line 94
    invoke-direct {v2, v3, v4, v5, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$VolumeIconRes;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    const v3, 0x1102003d

    .line 98
    const v4, 0x1102003e

    .line 99
    const v5, 0x1102003c

    .line 97
    invoke-direct {v2, v3, v4, v5, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$VolumeIconRes;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    const v3, 0x11020045

    .line 101
    const v4, 0x11020046

    .line 102
    const v5, 0x11020044

    .line 100
    invoke-direct {v2, v3, v4, v5, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$VolumeIconRes;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    invoke-direct {v2, v8, v9, v7, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$VolumeIconRes;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    const v3, 0x11020053

    .line 107
    const v4, 0x11020054

    .line 108
    const v5, 0x11020052

    .line 106
    invoke-direct {v2, v3, v4, v5, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$VolumeIconRes;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    const v3, 0x11020057

    .line 110
    const v4, 0x1102005b

    .line 111
    const v5, 0x11020056

    .line 109
    invoke-direct {v2, v3, v4, v5, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$VolumeIconRes;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    const v3, 0x1102005e

    .line 113
    const v4, 0x1102005f

    .line 114
    const v5, 0x1102005d

    .line 112
    invoke-direct {v2, v3, v4, v5, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$VolumeIconRes;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v1, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v0, "scorpio"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "lithium"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    :cond_0
    new-instance v0, Lmiui/view/VolumeDialog$VolumeIconRes;

    invoke-direct {v0, v8, v9, v7, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$VolumeIconRes;)V

    .line 115
    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    invoke-direct {v2, v8, v9, v7, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$VolumeIconRes;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void

    .line 119
    :cond_1
    new-instance v0, Lmiui/view/VolumeDialog$VolumeIconRes;

    const v3, 0x11020049

    .line 120
    const v4, 0x1102004a

    .line 121
    const v5, 0x11020048

    .line 119
    invoke-direct {v0, v3, v4, v5, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$VolumeIconRes;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/view/VolumeDialog$VolumePanelDelegate;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delegate"    # Lmiui/view/VolumeDialog$VolumePanelDelegate;

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lmiui/view/VolumeDialog$H;

    invoke-direct {v0, p0}, Lmiui/view/VolumeDialog$H;-><init>(Lmiui/view/VolumeDialog;)V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mVolumeRowViews:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mVolumeRowSpaces:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    .line 81
    iput v1, p0, Lmiui/view/VolumeDialog;->mRingerMode:I

    .line 87
    iput v1, p0, Lmiui/view/VolumeDialog;->mStatusBarHeight:I

    .line 140
    new-instance v0, Lmiui/view/VolumeDialog$1;

    invoke-direct {v0, p0}, Lmiui/view/VolumeDialog$1;-><init>(Lmiui/view/VolumeDialog;)V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mBootBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 294
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lmiui/view/VolumeDialog;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    .line 409
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/view/VolumeDialog;->mDialogShowTime:J

    .line 760
    new-instance v0, Lmiui/view/VolumeDialog$2;

    invoke-direct {v0, p0}, Lmiui/view/VolumeDialog$2;-><init>(Lmiui/view/VolumeDialog;)V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mClickExpand:Landroid/view/View$OnClickListener;

    .line 905
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/VolumeDialog;->mInScreenshot:Z

    .line 906
    new-instance v0, Lmiui/view/VolumeDialog$3;

    invoke-direct {v0, p0}, Lmiui/view/VolumeDialog$3;-><init>(Lmiui/view/VolumeDialog;)V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 128
    iput-object p1, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    .line 129
    iput-object p2, p0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    .line 131
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mVibrator:Landroid/os/Vibrator;

    .line 133
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mAm:Landroid/media/AudioManager;

    .line 135
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 136
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/view/VolumeDialog;->mBootBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 127
    return-void

    .line 294
    nop

    :array_0
    .array-data 4
        0x0
        0x2
        0x2
        0x3
        0x4
        0x5
        0x6
        0x2
        0x2
        0x3
        0xa
    .end array-data
.end method

.method private addRow(IIZ)V
    .locals 6
    .param p1, "stream"    # I
    .param p2, "iconMapKey"    # I
    .param p3, "important"    # Z

    .prologue
    .line 156
    invoke-direct {p0, p1, p2, p3}, Lmiui/view/VolumeDialog;->initRow(IIZ)Lmiui/view/VolumeDialog$VolumeRow;

    move-result-object v2

    .line 157
    .local v2, "row":Lmiui/view/VolumeDialog$VolumeRow;
    iget-object v4, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 158
    new-instance v3, Landroid/view/View;

    iget-object v4, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 159
    .local v3, "v":Landroid/view/View;
    const/high16 v4, 0x1020000

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 160
    iget-object v4, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x110b003b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 161
    .local v0, "h":I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v1, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 162
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v4, p0, Lmiui/view/VolumeDialog;->mVolumeRowSpaces:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-static {v2, v3}, Lmiui/view/VolumeDialog$VolumeRow;->-set10(Lmiui/view/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    .line 167
    .end local v0    # "h":I
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-static {v2}, Lmiui/view/VolumeDialog$VolumeRow;->-get14(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 168
    iget-object v4, p0, Lmiui/view/VolumeDialog;->mVolumeRowViews:Ljava/util/List;

    invoke-static {v2}, Lmiui/view/VolumeDialog$VolumeRow;->-get14(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v4, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    return-void
.end method

.method private adjustDialogPosition()V
    .locals 4

    .prologue
    .line 442
    sget-boolean v2, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-eqz v2, :cond_0

    .line 443
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 444
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 445
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 446
    const/4 v3, 0x1

    .line 445
    if-ne v2, v3, :cond_1

    .line 447
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->getStatusBarHeight()I

    move-result v2

    .line 445
    :goto_0
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 448
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 441
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "window":Landroid/view/Window;
    :cond_0
    return-void

    .line 447
    .restart local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v1    # "window":Landroid/view/Window;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private computeTimeoutH()I
    .locals 4

    .prologue
    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mExpanded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v1, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "set_panel_full"

    invoke-static {v2, v1}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    if-gtz v0, :cond_2

    const/16 v0, 0x1388

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "set_panel_one"

    invoke-static {v2, v1}, Landroid/preference/MiuiCoreSettingsPreference;->gKP(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    if-gtz v0, :cond_2

    const/16 v0, 0xbb8

    goto :goto_0

    :cond_2
    mul-int/lit16 v0, v0, 0x3e8

    :goto_0
    return v0
.end method

.method private dismissH()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 417
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 418
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 419
    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-nez v0, :cond_0

    return-void

    .line 420
    :cond_0
    iput-boolean v3, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    .line 421
    iget-object v1, p0, Lmiui/view/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 422
    :try_start_0
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 426
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 427
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 428
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    invoke-interface {v0, v3}, Lmiui/view/VolumeDialog$VolumePanelDelegate;->notifyVolumeControllerVisible(Z)V

    .line 429
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    invoke-virtual {v0}, Lmiui/view/RingerModeLayout;->cleanUp()V

    .line 430
    iput-object v2, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    .line 431
    iput-object v2, p0, Lmiui/view/VolumeDialog;->mExpandAnimator:Landroid/animation/ValueAnimator;

    .line 432
    iput-object v2, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    .line 433
    iput-object v2, p0, Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    .line 434
    iput-object v2, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    .line 435
    iput-object v2, p0, Lmiui/view/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    .line 436
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 437
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mVolumeRowViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 438
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mVolumeRowSpaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 416
    return-void

    .line 421
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private expandVolumeBar(Z)V
    .locals 4
    .param p1, "isExpanded"    # Z

    .prologue
    .line 515
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/view/VolumeDialog$6;

    invoke-direct {v1, p0}, Lmiui/view/VolumeDialog$6;-><init>(Lmiui/view/VolumeDialog;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 524
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/view/VolumeDialog$7;

    invoke-direct {v1, p0, p1}, Lmiui/view/VolumeDialog$7;-><init>(Lmiui/view/VolumeDialog;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 570
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 571
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 572
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 513
    return-void
.end method

.method private findRow(I)Lmiui/view/VolumeDialog$VolumeRow;
    .locals 3
    .param p1, "stream"    # I

    .prologue
    .line 218
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "row$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/VolumeDialog$VolumeRow;

    .line 219
    .local v0, "row":Lmiui/view/VolumeDialog$VolumeRow;
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v0

    .line 221
    .end local v0    # "row":Lmiui/view/VolumeDialog$VolumeRow;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getConservativeCollapseDuration()I
    .locals 1

    .prologue
    .line 476
    const/16 v0, 0x258

    return v0
.end method

.method private static getImpliedLevel(Landroid/widget/SeekBar;I)I
    .locals 5
    .param p0, "seekBar"    # Landroid/widget/SeekBar;
    .param p1, "progress"    # I

    .prologue
    const/4 v0, 0x0

    .line 843
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    .line 844
    .local v1, "m":I
    div-int/lit8 v3, v1, 0x64

    add-int/lit8 v2, v3, -0x1

    .line 845
    .local v2, "n":I
    if-nez p1, :cond_0

    .line 847
    .local v0, "level":I
    :goto_0
    return v0

    .line 846
    .end local v0    # "level":I
    :cond_0
    if-ne p1, v1, :cond_1

    div-int/lit8 v0, v1, 0x64

    goto :goto_0

    :cond_1
    int-to-float v3, p1

    int-to-float v4, v1

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v0, v3, 0x1

    goto :goto_0
.end method

.method private getMappedStream(I)I
    .locals 1
    .param p1, "stream"    # I

    .prologue
    .line 287
    iget-object v0, p0, Lmiui/view/VolumeDialog;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 288
    const/4 v0, 0x3

    return v0

    .line 290
    :cond_0
    iget-object v0, p0, Lmiui/view/VolumeDialog;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    aget v0, v0, p1

    return v0
.end method

.method private getStatusBarHeight()I
    .locals 2

    .prologue
    .line 453
    iget v1, p0, Lmiui/view/VolumeDialog;->mStatusBarHeight:I

    if-gez v1, :cond_0

    .line 454
    iget-object v1, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 456
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x105001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 455
    iput v1, p0, Lmiui/view/VolumeDialog;->mStatusBarHeight:I

    .line 458
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    iget v1, p0, Lmiui/view/VolumeDialog;->mStatusBarHeight:I

    return v1
.end method

.method private initRow(IIZ)Lmiui/view/VolumeDialog$VolumeRow;
    .locals 4
    .param p1, "stream"    # I
    .param p2, "iconMapKey"    # I
    .param p3, "important"    # Z

    .prologue
    const/4 v3, 0x0

    .line 173
    new-instance v0, Lmiui/view/VolumeDialog$VolumeRow;

    invoke-direct {v0, v3}, Lmiui/view/VolumeDialog$VolumeRow;-><init>(Lmiui/view/VolumeDialog$VolumeRow;)V

    .line 174
    .local v0, "row":Lmiui/view/VolumeDialog$VolumeRow;
    invoke-static {v0, p1}, Lmiui/view/VolumeDialog$VolumeRow;->-set12(Lmiui/view/VolumeDialog$VolumeRow;I)I

    .line 175
    invoke-static {v0, p2}, Lmiui/view/VolumeDialog$VolumeRow;->-set5(Lmiui/view/VolumeDialog$VolumeRow;I)I

    .line 176
    invoke-static {v0, p2}, Lmiui/view/VolumeDialog$VolumeRow;->-set7(Lmiui/view/VolumeDialog$VolumeRow;I)I

    .line 177
    invoke-static {v0, p3}, Lmiui/view/VolumeDialog$VolumeRow;->-set6(Lmiui/view/VolumeDialog$VolumeRow;Z)Z

    .line 178
    iget-object v1, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x11030025

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/view/VolumeDialog$VolumeRow;->-set15(Lmiui/view/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    .line 179
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get14(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 180
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get14(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    const v2, 0x110c006b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/widget/SeekBar;

    invoke-static {v0, v1}, Lmiui/view/VolumeDialog$VolumeRow;->-set9(Lmiui/view/VolumeDialog$VolumeRow;Lmiui/widget/SeekBar;)Lmiui/widget/SeekBar;

    .line 181
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get8(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 182
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get8(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;

    invoke-direct {v2, p0, v3}, Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;-><init>(Lmiui/view/VolumeDialog;Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 185
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get14(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$4;

    invoke-direct {v2, p0, v0}, Lmiui/view/VolumeDialog$4;-><init>(Lmiui/view/VolumeDialog;Lmiui/view/VolumeDialog$VolumeRow;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 208
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get14(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    const v2, 0x110c006a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Lmiui/view/VolumeDialog$VolumeRow;->-set4(Lmiui/view/VolumeDialog$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 209
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get4(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v2

    sget-object v1, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/VolumeDialog$VolumeIconRes;

    iget v1, v1, Lmiui/view/VolumeDialog$VolumeIconRes;->normalIconRes:I

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 210
    return-object v0
.end method

.method private isAttached()Z
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private orderVolumeRowsH()V
    .locals 12

    .prologue
    const/16 v9, 0x8

    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 225
    const/4 v4, 0x0

    .line 226
    .local v4, "volumeRowIdx":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lmiui/view/VolumeDialog;->mVolumeRowViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_5

    .line 227
    iget-object v6, p0, Lmiui/view/VolumeDialog;->mVolumeRowViews:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 228
    .local v2, "v":Landroid/view/View;
    const/4 v1, 0x0

    .line 229
    .local v1, "row":Lmiui/view/VolumeDialog$VolumeRow;
    const/4 v3, 0x1

    .line 230
    .local v3, "viewShow":Z
    if-nez v0, :cond_0

    .line 231
    iget v6, p0, Lmiui/view/VolumeDialog;->mActiveStream:I

    invoke-direct {p0, v6}, Lmiui/view/VolumeDialog;->findRow(I)Lmiui/view/VolumeDialog$VolumeRow;

    move-result-object v1

    .line 232
    .local v1, "row":Lmiui/view/VolumeDialog$VolumeRow;
    if-nez v1, :cond_0

    .line 233
    const-string/jumbo v6, "VolumeDialog"

    const-string/jumbo v7, "terrible thing happens in orderVolumeRowsH"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .end local v1    # "row":Lmiui/view/VolumeDialog$VolumeRow;
    :cond_0
    if-nez v1, :cond_1

    .line 237
    iget-object v6, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "volumeRowIdx":I
    .local v5, "volumeRowIdx":I
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/VolumeDialog$VolumeRow;

    .line 238
    .restart local v1    # "row":Lmiui/view/VolumeDialog$VolumeRow;
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v6

    iget v7, p0, Lmiui/view/VolumeDialog;->mActiveStream:I

    if-ne v6, v7, :cond_6

    .line 239
    iget-object v6, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "volumeRowIdx":I
    .restart local v4    # "volumeRowIdx":I
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "row":Lmiui/view/VolumeDialog$VolumeRow;
    check-cast v1, Lmiui/view/VolumeDialog$VolumeRow;

    .line 241
    .restart local v1    # "row":Lmiui/view/VolumeDialog$VolumeRow;
    :goto_1
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->-get6(Lmiui/view/VolumeDialog$VolumeRow;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 242
    const/4 v3, 0x0

    .line 246
    .end local v1    # "row":Lmiui/view/VolumeDialog$VolumeRow;
    :cond_1
    if-eqz v3, :cond_2

    .line 247
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 251
    :goto_2
    invoke-static {v1, v2}, Lmiui/view/VolumeDialog$VolumeRow;->-set15(Lmiui/view/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    .line 252
    invoke-static {v1, v8}, Lmiui/view/VolumeDialog$VolumeRow;->-set2(Lmiui/view/VolumeDialog$VolumeRow;I)I

    .line 253
    const v6, 0x110c006a

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    invoke-static {v1, v6}, Lmiui/view/VolumeDialog$VolumeRow;->-set4(Lmiui/view/VolumeDialog$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 254
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->-get4(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v7

    sget-object v6, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->-get7(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/view/VolumeDialog$VolumeIconRes;

    iget v6, v6, Lmiui/view/VolumeDialog$VolumeIconRes;->normalIconRes:I

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    const v6, 0x110c006b

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lmiui/widget/SeekBar;

    invoke-static {v1, v6}, Lmiui/view/VolumeDialog$VolumeRow;->-set9(Lmiui/view/VolumeDialog$VolumeRow;Lmiui/widget/SeekBar;)Lmiui/widget/SeekBar;

    .line 256
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->-get14(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 257
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->-get8(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 259
    if-lez v0, :cond_4

    .line 260
    iget-object v6, p0, Lmiui/view/VolumeDialog;->mVolumeRowSpaces:Ljava/util/List;

    add-int/lit8 v7, v0, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-static {v1, v6}, Lmiui/view/VolumeDialog$VolumeRow;->-set10(Lmiui/view/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    .line 261
    iget-object v6, p0, Lmiui/view/VolumeDialog;->mVolumeRowSpaces:Ljava/util/List;

    add-int/lit8 v7, v0, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-eqz v3, :cond_3

    move v7, v8

    :goto_3
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 226
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 249
    :cond_2
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    move v7, v9

    .line 261
    goto :goto_3

    .line 263
    :cond_4
    invoke-static {v1, v11}, Lmiui/view/VolumeDialog$VolumeRow;->-set10(Lmiui/view/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    goto :goto_4

    .line 224
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "viewShow":Z
    :cond_5
    return-void

    .end local v4    # "volumeRowIdx":I
    .restart local v1    # "row":Lmiui/view/VolumeDialog$VolumeRow;
    .restart local v2    # "v":Landroid/view/View;
    .restart local v3    # "viewShow":Z
    .restart local v5    # "volumeRowIdx":I
    :cond_6
    move v4, v5

    .end local v5    # "volumeRowIdx":I
    .restart local v4    # "volumeRowIdx":I
    goto :goto_1
.end method

.method private prepareForCollapse()V
    .locals 5

    .prologue
    const/4 v4, 0x7

    .line 489
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 490
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/view/VolumeDialog;->mCollapseTime:J

    .line 491
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateDialogBottomMarginH()V

    .line 492
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->getConservativeCollapseDuration()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 488
    return-void
.end method

.method private recheckH(Lmiui/view/VolumeDialog$VolumeRow;)V
    .locals 3
    .param p1, "row"    # Lmiui/view/VolumeDialog$VolumeRow;

    .prologue
    .line 611
    if-nez p1, :cond_0

    .line 612
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/VolumeDialog$VolumeRow;

    .line 613
    .local v0, "r":Lmiui/view/VolumeDialog$VolumeRow;
    invoke-direct {p0, v0}, Lmiui/view/VolumeDialog;->updateVolumeRowH(Lmiui/view/VolumeDialog$VolumeRow;)V

    goto :goto_0

    .line 616
    .end local v0    # "r":Lmiui/view/VolumeDialog$VolumeRow;
    .end local v1    # "r$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->updateVolumeRowH(Lmiui/view/VolumeDialog$VolumeRow;)V

    .line 610
    :cond_1
    return-void
.end method

.method private rescheduleTimeoutH()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    .line 605
    iget-object v1, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 606
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->computeTimeoutH()I

    move-result v0

    .line 607
    .local v0, "timeout":I
    iget-object v1, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    iget-object v2, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 604
    return-void
.end method

.method private showH(I)V
    .locals 11
    .param p1, "stream"    # I

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 309
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 310
    new-instance v3, Lmiui/view/VolumeDialog$CustomDialog;

    iget-object v4, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lmiui/view/VolumeDialog$CustomDialog;-><init>(Lmiui/view/VolumeDialog;Landroid/content/Context;)V

    iput-object v3, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    .line 312
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 313
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2, v7}, Landroid/view/Window;->requestFeature(I)Z

    .line 314
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 315
    invoke-virtual {v2, v8}, Landroid/view/Window;->clearFlags(I)V

    .line 316
    const v3, 0x1040128

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 321
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 322
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    const v4, 0x11030024

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 323
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 324
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, -0x2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 325
    iput v10, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 326
    const/16 v3, 0x7e4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 327
    const/4 v3, -0x3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 328
    const-string/jumbo v3, "Volume Control"

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 329
    const/16 v3, 0x30

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 330
    const v3, 0x110d0003

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 331
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 332
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 334
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    const v4, 0x110c0066

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    .line 335
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    const v4, 0x110c0068

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    .line 336
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    const v4, 0x110c0067

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lmiui/view/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    .line 337
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lmiui/view/VolumeDialog;->mClickExpand:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    const v4, 0x110c0038

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiui/view/RingerModeLayout;

    iput-object v3, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    .line 340
    filled-new-array {v6, v6}, [I

    move-result-object v3

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lmiui/view/VolumeDialog;->mExpandAnimator:Landroid/animation/ValueAnimator;

    .line 342
    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v3, p0, Lmiui/view/VolumeDialog;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 343
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 345
    const/4 v3, 0x5

    invoke-direct {p0, v8, v3, v7}, Lmiui/view/VolumeDialog;->addRow(IIZ)V

    .line 346
    const/4 v3, 0x3

    const/4 v4, 0x3

    invoke-direct {p0, v3, v4, v7}, Lmiui/view/VolumeDialog;->addRow(IIZ)V

    .line 347
    invoke-direct {p0, v9, v6, v7}, Lmiui/view/VolumeDialog;->addRow(IIZ)V

    .line 348
    invoke-direct {p0, v6, v9, v6}, Lmiui/view/VolumeDialog;->addRow(IIZ)V

    .line 349
    const/4 v3, 0x6

    invoke-direct {p0, v3, v9, v6}, Lmiui/view/VolumeDialog;->addRow(IIZ)V

    .line 350
    const/4 v2, 0x5

    const/4 v3, 0x6

    invoke-direct {p0, v2, v3, v7}, Lmiui/view/VolumeDialog;->addRow(IIZ)V

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_0

    .line 351
    const/16 v3, 0xa

    const/16 v4, 0x8

    invoke-direct {p0, v3, v4, v6}, Lmiui/view/VolumeDialog;->addRow(IIZ)V

    .line 356
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "window":Landroid/view/Window;
    :cond_0
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 357
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    const v4, 0x110200fc

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 358
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 359
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x110b0041

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 360
    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-nez v3, :cond_1

    .line 361
    iput v10, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 363
    :cond_1
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    iput-boolean v6, p0, Lmiui/view/VolumeDialog;->mLastStatus:Z

    .line 366
    iget-boolean v3, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-nez v3, :cond_2

    .line 367
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mAm:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    if-eq v3, v8, :cond_7

    .line 368
    sget-boolean v3, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v3, :cond_7

    .line 372
    :goto_0
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    invoke-virtual {v3, p0}, Lmiui/view/RingerModeLayout;->setVolumeDialog(Lmiui/view/VolumeDialog;)V

    .line 373
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/view/RingerModeLayout;->setLooper(Landroid/os/Looper;)V

    .line 374
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    iget-object v4, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Lmiui/view/RingerModeLayout;->setParentDialog(Landroid/view/ViewGroup;)V

    .line 375
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    invoke-virtual {v3}, Lmiui/view/RingerModeLayout;->init()V

    .line 378
    :cond_2
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->adjustDialogPosition()V

    .line 380
    const-string/jumbo v3, "VolumeDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showH "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lmiui/view/VolumeDialog;->mActiveStream:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->getMappedStream(I)I

    move-result p1

    .line 383
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 384
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 385
    iget-boolean v3, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lmiui/view/VolumeDialog;->mActiveStream:I

    if-eq v3, p1, :cond_4

    .line 386
    :cond_3
    iput p1, p0, Lmiui/view/VolumeDialog;->mActiveStream:I

    .line 387
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->orderVolumeRowsH()V

    .line 389
    :cond_4
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->rescheduleTimeoutH()V

    .line 390
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateVolumeRowsH()V

    .line 392
    iget-boolean v3, p0, Lmiui/view/VolumeDialog;->mInScreenshot:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-eqz v3, :cond_8

    .line 393
    :cond_5
    iget-boolean v3, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-eqz v3, :cond_6

    .line 394
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateExpandButtonH()V

    .line 395
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateRowsVisibilityByExpandH()V

    .line 397
    :cond_6
    return-void

    .line 369
    :cond_7
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mRingerModeLayout:Lmiui/view/RingerModeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 400
    :cond_8
    iput-boolean v6, p0, Lmiui/view/VolumeDialog;->mExpanded:Z

    .line 401
    iput-boolean v6, p0, Lmiui/view/VolumeDialog;->mExpandAnimating:Z

    .line 402
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateExpandButtonH()V

    .line 403
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateRowsVisibilityByExpandH()V

    .line 404
    iput-boolean v7, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    .line 405
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lmiui/view/VolumeDialog;->mDialogShowTime:J

    .line 406
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 407
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    invoke-interface {v3, v7}, Lmiui/view/VolumeDialog$VolumePanelDelegate;->notifyVolumeControllerVisible(Z)V

    .line 308
    return-void
.end method

.method private showSafetyWarningH(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 740
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    invoke-interface {v0, p1}, Lmiui/view/VolumeDialog$VolumePanelDelegate;->showSafeVolumeDialogByFlags(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-eqz v0, :cond_2

    .line 741
    :cond_0
    iget-object v1, p0, Lmiui/view/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 742
    :try_start_0
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mSafetyWarning:Landroid/app/AlertDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 743
    return-void

    .line 745
    :cond_1
    :try_start_1
    new-instance v0, Lmiui/view/VolumeDialog$SafetyWarningDialog;

    iget-object v2, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lmiui/view/VolumeDialog$SafetyWarningDialog;-><init>(Lmiui/view/VolumeDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mSafetyWarning:Landroid/app/AlertDialog;

    .line 746
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 747
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mSafetyWarning:Landroid/app/AlertDialog;

    new-instance v2, Lmiui/view/VolumeDialog$8;

    invoke-direct {v2, p0}, Lmiui/view/VolumeDialog$8;-><init>(Lmiui/view/VolumeDialog;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 757
    :cond_2
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->rescheduleTimeoutH()V

    .line 739
    return-void

    .line 741
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private stateChangedH(II)V
    .locals 4
    .param p1, "stream"    # I
    .param p2, "level"    # I

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->getMappedStream(I)I

    move-result v1

    invoke-direct {p0, v1}, Lmiui/view/VolumeDialog;->findRow(I)Lmiui/view/VolumeDialog$VolumeRow;

    move-result-object v0

    .line 279
    .local v0, "row":Lmiui/view/VolumeDialog$VolumeRow;
    if-eqz v0, :cond_0

    .line 280
    invoke-direct {p0, v0}, Lmiui/view/VolumeDialog;->updateVolumeRowH(Lmiui/view/VolumeDialog$VolumeRow;)V

    .line 277
    :goto_0
    return-void

    .line 282
    :cond_0
    const-string/jumbo v1, "VolumeDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stateChangedH can not find volume row for stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private streamDeviceChanged(I)V
    .locals 3
    .param p1, "stream"    # I

    .prologue
    .line 931
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->findRow(I)Lmiui/view/VolumeDialog$VolumeRow;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 930
    return-void
.end method

.method private updateDialogBottomMarginH()V
    .locals 10

    .prologue
    .line 462
    iget-object v6, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    if-nez v6, :cond_0

    .line 463
    return-void

    .line 466
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lmiui/view/VolumeDialog;->mCollapseTime:J

    sub-long v2, v6, v8

    .line 467
    .local v2, "diff":J
    iget-wide v6, p0, Lmiui/view/VolumeDialog;->mCollapseTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->getConservativeCollapseDuration()I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v2, v6

    if-gez v6, :cond_1

    const/4 v0, 0x1

    .line 468
    .local v0, "collapsing":Z
    :goto_0
    iget-object v6, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 469
    .local v1, "dialogParentView":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 470
    .local v5, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 471
    .local v4, "height":I
    :goto_1
    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 472
    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 461
    return-void

    .line 467
    .end local v0    # "collapsing":Z
    .end local v1    # "dialogParentView":Landroid/view/ViewGroup;
    .end local v4    # "height":I
    .end local v5    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "collapsing":Z
    goto :goto_0

    .line 470
    .restart local v1    # "dialogParentView":Landroid/view/ViewGroup;
    .restart local v5    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    const/4 v4, -0x2

    goto :goto_1
.end method

.method private updateExpandButtonH()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 480
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 481
    return-void

    .line 483
    :cond_0
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget v0, p0, Lmiui/view/VolumeDialog;->mActiveStream:I

    if-nez v0, :cond_1

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 484
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mExpanded:Z

    if-eqz v0, :cond_2

    const v0, 0x110200fb

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 485
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lmiui/view/VolumeDialog;->mExpandAnimating:Z

    if-eqz v2, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 479
    return-void

    :cond_1
    move v0, v1

    .line 483
    goto :goto_0

    .line 484
    :cond_2
    const v0, 0x110200fd

    goto :goto_1

    .line 485
    :cond_3
    const/4 v1, 0x1

    goto :goto_2
.end method

.method private updateLayoutDirectionH(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 593
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 592
    :cond_0
    return-void
.end method

.method private updateRowsVisibilityByExpandH()V
    .locals 6

    .prologue
    .line 576
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "row$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/VolumeDialog$VolumeRow;

    .line 577
    .local v0, "row":Lmiui/view/VolumeDialog$VolumeRow;
    const/16 v2, 0x8

    .line 578
    .local v2, "visibility":I
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v3

    iget v4, p0, Lmiui/view/VolumeDialog;->mActiveStream:I

    if-ne v3, v4, :cond_2

    .line 579
    const/4 v2, 0x0

    .line 583
    :cond_1
    :goto_1
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get14(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 584
    const-string/jumbo v3, "VolumeDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRowsVisibilityByExpandH "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 585
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get14(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 584
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get9(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 587
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get9(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 580
    :cond_2
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->-get6(Lmiui/view/VolumeDialog$VolumeRow;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 581
    iget-boolean v3, p0, Lmiui/view/VolumeDialog;->mExpanded:Z

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const/16 v2, 0x8

    goto :goto_1

    .line 575
    .end local v0    # "row":Lmiui/view/VolumeDialog$VolumeRow;
    .end local v2    # "visibility":I
    :cond_4
    return-void
.end method

.method private updateVolumeRowH(Lmiui/view/VolumeDialog$VolumeRow;)V
    .locals 17
    .param p1, "row"    # Lmiui/view/VolumeDialog$VolumeRow;

    .prologue
    .line 621
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lmiui/view/VolumeDialog$StreamState;->getStreamStateByStreamType(Landroid/content/Context;ILmiui/view/VolumeDialog$VolumePanelDelegate;)Lmiui/view/VolumeDialog$StreamState;

    move-result-object v12

    .line 622
    .local v12, "ss":Lmiui/view/VolumeDialog$StreamState;
    if-nez v12, :cond_0

    return-void

    .line 623
    :cond_0
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lmiui/view/VolumeDialog$VolumeRow;->-set11(Lmiui/view/VolumeDialog$VolumeRow;Lmiui/view/VolumeDialog$StreamState;)Lmiui/view/VolumeDialog$StreamState;

    .line 624
    invoke-static {v12}, Lmiui/view/VolumeDialog$StreamState;->-get0(Lmiui/view/VolumeDialog$StreamState;)I

    move-result v14

    if-lez v14, :cond_1

    .line 625
    invoke-static {v12}, Lmiui/view/VolumeDialog$StreamState;->-get0(Lmiui/view/VolumeDialog$StreamState;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lmiui/view/VolumeDialog$VolumeRow;->-set8(Lmiui/view/VolumeDialog$VolumeRow;I)I

    .line 627
    :cond_1
    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_b

    const/4 v8, 0x1

    .line 628
    .local v8, "isRingStream":Z
    :goto_0
    if-eqz v8, :cond_d

    .line 629
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    invoke-interface {v14}, Lmiui/view/VolumeDialog$VolumePanelDelegate;->getRingerMode()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_c

    const/4 v9, 0x1

    .line 630
    .local v9, "isRingVibrate":Z
    :goto_1
    if-eqz v8, :cond_f

    .line 631
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    invoke-interface {v14}, Lmiui/view/VolumeDialog$VolumePanelDelegate;->getRingerMode()I

    move-result v14

    if-nez v14, :cond_e

    const/4 v7, 0x1

    .line 634
    .local v7, "isRingSilent":Z
    :goto_2
    invoke-static {v12}, Lmiui/view/VolumeDialog$StreamState;->-get1(Lmiui/view/VolumeDialog$StreamState;)I

    move-result v14

    mul-int/lit8 v10, v14, 0x64

    .line 635
    .local v10, "max":I
    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get8(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/ProgressBar;->getMax()I

    move-result v14

    if-eq v10, v14, :cond_2

    .line 636
    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get8(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 639
    :cond_2
    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get7(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v5

    .line 641
    .local v5, "iconsMapKey":I
    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lmiui/view/VolumeDialog;->mActiveStream:I

    if-ne v14, v15, :cond_6

    .line 642
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/view/VolumeDialog;->mAm:Landroid/media/AudioManager;

    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v3

    .line 644
    .local v3, "device":I
    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v14

    if-nez v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/view/VolumeDialog;->mAm:Landroid/media/AudioManager;

    invoke-virtual {v14}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 645
    const/4 v5, 0x6

    .line 649
    :cond_3
    and-int/lit8 v14, v3, 0x4

    if-nez v14, :cond_4

    .line 650
    and-int/lit8 v14, v3, 0x8

    if-eqz v14, :cond_5

    .line 651
    :cond_4
    const/4 v5, 0x2

    .line 655
    :cond_5
    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lmiui/util/AudioManagerHelper;->isHiFiMode(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 656
    const/4 v5, 0x7

    .line 659
    .end local v3    # "device":I
    :cond_6
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lmiui/view/VolumeDialog$VolumeRow;->-set5(Lmiui/view/VolumeDialog$VolumeRow;I)I

    .line 663
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "audio"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 664
    .local v2, "am":Landroid/media/AudioManager;
    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v14

    invoke-virtual {v2, v14}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v14

    if-nez v14, :cond_10

    const/4 v13, 0x1

    .line 665
    .local v13, "streamMuted":Z
    :goto_3
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x17

    if-ge v14, v15, :cond_8

    .line 666
    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v14

    const/4 v15, 0x6

    if-eq v14, v15, :cond_7

    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v14

    if-nez v14, :cond_8

    .line 667
    :cond_7
    invoke-static {v12}, Lmiui/view/VolumeDialog$StreamState;->-get4(Lmiui/view/VolumeDialog$StreamState;)Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-static {v12}, Lmiui/view/VolumeDialog$StreamState;->-get3(Lmiui/view/VolumeDialog$StreamState;)Z

    move-result v13

    .line 671
    .end local v13    # "streamMuted":Z
    :cond_8
    :goto_4
    sget-object v14, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/view/VolumeDialog$VolumeIconRes;

    .line 672
    .local v6, "iconsRes":Lmiui/view/VolumeDialog$VolumeIconRes;
    if-eqz v13, :cond_12

    iget v4, v6, Lmiui/view/VolumeDialog$VolumeIconRes;->mutedIconRes:I

    .line 673
    .local v4, "iconRes":I
    :goto_5
    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get2(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v14

    if-eq v4, v14, :cond_9

    .line 674
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lmiui/view/VolumeDialog$VolumeRow;->-set2(Lmiui/view/VolumeDialog$VolumeRow;I)I

    .line 675
    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get4(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 677
    :cond_9
    if-eqz v13, :cond_13

    sget-object v14, Lmiui/view/VolumeDialog;->sVolumeSeekbarProgress:Lmiui/view/VolumeDialog$VolumeSeekbarProgress;

    iget v11, v14, Lmiui/view/VolumeDialog$VolumeSeekbarProgress;->silentProgress:I

    .line 678
    .local v11, "progressRes":I
    :goto_6
    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get3(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v14

    if-eq v11, v14, :cond_a

    .line 679
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lmiui/view/VolumeDialog$VolumeRow;->-set3(Lmiui/view/VolumeDialog$VolumeRow;I)I

    .line 680
    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get8(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get8(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v14, v15}, Lmiui/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 682
    :cond_a
    if-eqz v13, :cond_14

    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/view/VolumeDialog;->mAm:Landroid/media/AudioManager;

    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v14

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lmiui/view/VolumeDialog;->updateVolumeRowSliderH(Lmiui/view/VolumeDialog$VolumeRow;I)V

    .line 620
    return-void

    .line 627
    .end local v2    # "am":Landroid/media/AudioManager;
    .end local v4    # "iconRes":I
    .end local v5    # "iconsMapKey":I
    .end local v6    # "iconsRes":Lmiui/view/VolumeDialog$VolumeIconRes;
    .end local v7    # "isRingSilent":Z
    .end local v8    # "isRingStream":Z
    .end local v9    # "isRingVibrate":Z
    .end local v10    # "max":I
    .end local v11    # "progressRes":I
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 629
    .restart local v8    # "isRingStream":Z
    :cond_c
    const/4 v9, 0x0

    .restart local v9    # "isRingVibrate":Z
    goto/16 :goto_1

    .line 628
    .end local v9    # "isRingVibrate":Z
    :cond_d
    const/4 v9, 0x0

    .restart local v9    # "isRingVibrate":Z
    goto/16 :goto_1

    .line 631
    :cond_e
    const/4 v7, 0x0

    .restart local v7    # "isRingSilent":Z
    goto/16 :goto_2

    .line 630
    .end local v7    # "isRingSilent":Z
    :cond_f
    const/4 v7, 0x0

    .restart local v7    # "isRingSilent":Z
    goto/16 :goto_2

    .line 664
    .restart local v2    # "am":Landroid/media/AudioManager;
    .restart local v5    # "iconsMapKey":I
    .restart local v10    # "max":I
    :cond_10
    const/4 v13, 0x0

    .restart local v13    # "streamMuted":Z
    goto/16 :goto_3

    .line 667
    :cond_11
    const/4 v13, 0x0

    goto :goto_4

    .line 672
    .end local v13    # "streamMuted":Z
    .restart local v6    # "iconsRes":Lmiui/view/VolumeDialog$VolumeIconRes;
    :cond_12
    iget v4, v6, Lmiui/view/VolumeDialog$VolumeIconRes;->normalIconRes:I

    .restart local v4    # "iconRes":I
    goto :goto_5

    .line 677
    :cond_13
    sget-object v14, Lmiui/view/VolumeDialog;->sVolumeSeekbarProgress:Lmiui/view/VolumeDialog$VolumeSeekbarProgress;

    iget v11, v14, Lmiui/view/VolumeDialog$VolumeSeekbarProgress;->normalProgress:I

    .restart local v11    # "progressRes":I
    goto :goto_6

    .line 682
    :cond_14
    invoke-static/range {p1 .. p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get10(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/view/VolumeDialog$StreamState;

    move-result-object v14

    invoke-static {v14}, Lmiui/view/VolumeDialog$StreamState;->-get0(Lmiui/view/VolumeDialog$StreamState;)I

    move-result v14

    goto :goto_7
.end method

.method private updateVolumeRowSliderH(Lmiui/view/VolumeDialog$VolumeRow;I)V
    .locals 12
    .param p1, "row"    # Lmiui/view/VolumeDialog$VolumeRow;
    .param p2, "vlevel"    # I

    .prologue
    .line 686
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get12(Lmiui/view/VolumeDialog$VolumeRow;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 687
    return-void

    .line 690
    :cond_0
    const-string/jumbo v6, "VolumeDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateVolumeRowSliderH start "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get8(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    .line 692
    .local v3, "progress":I
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get8(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v6

    invoke-static {v6, v3}, Lmiui/view/VolumeDialog;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v1

    .line 693
    .local v1, "level":I
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get14(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    const/4 v4, 0x1

    .line 694
    .local v4, "rowVisible":Z
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get13(Lmiui/view/VolumeDialog$VolumeRow;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 695
    const-wide/16 v8, 0x3e8

    .line 694
    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    const/4 v0, 0x1

    .line 696
    .local v0, "inGracePeriod":Z
    :goto_1
    iget-object v6, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 697
    iget-boolean v6, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-eqz v6, :cond_3

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    .line 698
    iget-object v6, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    iget-object v7, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v8, 0x3

    invoke-virtual {v7, v8, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 699
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get13(Lmiui/view/VolumeDialog$VolumeRow;)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    add-long/2addr v8, v10

    .line 698
    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 700
    return-void

    .line 693
    .end local v0    # "inGracePeriod":Z
    .end local v4    # "rowVisible":Z
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "rowVisible":Z
    goto :goto_0

    .line 694
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "inGracePeriod":Z
    goto :goto_1

    .line 702
    :cond_3
    if-ne p2, v1, :cond_4

    .line 703
    iget-boolean v6, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-eqz v6, :cond_4

    if-eqz v4, :cond_4

    .line 704
    return-void

    .line 707
    :cond_4
    mul-int/lit8 v2, p2, 0x64

    .line 708
    .local v2, "newProgress":I
    if-eq v3, v2, :cond_7

    .line 709
    iget-boolean v6, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-eqz v6, :cond_8

    if-eqz v4, :cond_8

    .line 711
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get0(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get0(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 712
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get1(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v6

    if-ne v6, v2, :cond_5

    .line 713
    return-void

    .line 716
    :cond_5
    move v5, v3

    .line 717
    .local v5, "startProgress":I
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get0(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get0(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 718
    const-string/jumbo v6, "VolumeDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateVolumeRowSliderH cancel animation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get11(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get0(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->cancel()V

    .line 720
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get1(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v5

    .line 722
    :cond_6
    const-string/jumbo v6, "VolumeDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateVolumeRowSliderH animation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get8(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v6

    const-string/jumbo v7, "progress"

    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v5, v8, v9

    const/4 v9, 0x1

    aput v2, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-static {p1, v6}, Lmiui/view/VolumeDialog$VolumeRow;->-set0(Lmiui/view/VolumeDialog$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 724
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get0(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 726
    invoke-static {p1, v2}, Lmiui/view/VolumeDialog$VolumeRow;->-set1(Lmiui/view/VolumeDialog$VolumeRow;I)I

    .line 727
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get0(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x50

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 728
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get0(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    .line 685
    .end local v5    # "startProgress":I
    :cond_7
    :goto_2
    return-void

    .line 731
    :cond_8
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get0(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 732
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get0(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->cancel()V

    .line 734
    :cond_9
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->-get8(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_2
.end method

.method private updateVolumeRowsH()V
    .locals 3

    .prologue
    .line 599
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "row$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/VolumeDialog$VolumeRow;

    .line 600
    .local v0, "row":Lmiui/view/VolumeDialog$VolumeRow;
    invoke-direct {p0, v0}, Lmiui/view/VolumeDialog;->updateVolumeRowH(Lmiui/view/VolumeDialog$VolumeRow;)V

    goto :goto_0

    .line 598
    .end local v0    # "row":Lmiui/view/VolumeDialog$VolumeRow;
    :cond_0
    return-void
.end method

.method private vibrateH()V
    .locals 4

    .prologue
    .line 412
    iget-object v1, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 413
    .local v0, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 411
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 1146
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1145
    return-void
.end method

.method public dismiss(J)V
    .locals 3
    .param p1, "delayMillis"    # J

    .prologue
    .line 1150
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1149
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1177
    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    return v0
.end method

.method public masterMuteChanged(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 1173
    return-void
.end method

.method public masterVolumeChanged(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 1170
    return-void
.end method

.method public recheckAll()V
    .locals 2

    .prologue
    .line 1142
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1141
    return-void
.end method

.method public rescheduleTimeout(Z)V
    .locals 3
    .param p1, "needReschedule"    # Z

    .prologue
    const/4 v2, 0x5

    .line 1181
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1182
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1183
    if-eqz p1, :cond_0

    .line 1184
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1180
    :cond_0
    return-void
.end method

.method public setExpandedH(Z)V
    .locals 4
    .param p1, "expanded"    # Z

    .prologue
    .line 496
    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 497
    :cond_0
    iput-boolean p1, p0, Lmiui/view/VolumeDialog;->mExpanded:Z

    .line 498
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->isAttached()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimating:Z

    .line 499
    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimating:Z

    if-eqz v0, :cond_1

    .line 500
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateExpandButtonH()V

    .line 501
    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->expandVolumeBar(Z)V

    .line 503
    :cond_1
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    new-instance v1, Lmiui/view/VolumeDialog$5;

    invoke-direct {v1, p0}, Lmiui/view/VolumeDialog$5;-><init>(Lmiui/view/VolumeDialog;)V

    .line 509
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->getConservativeCollapseDuration()I

    move-result v2

    int-to-long v2, v2

    .line 503
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 510
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->rescheduleTimeoutH()V

    .line 495
    return-void
.end method

.method public show(II)V
    .locals 3
    .param p1, "stream"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1137
    const-string/jumbo v0, "VolumeDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1136
    return-void
.end method

.method public showSafeWarningDialog(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 1163
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1162
    return-void
.end method

.method public stateChanged(I)V
    .locals 1
    .param p1, "stream"    # I

    .prologue
    .line 1154
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mAm:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/view/VolumeDialog;->stateChanged(II)V

    .line 1153
    return-void
.end method

.method public stateChanged(II)V
    .locals 3
    .param p1, "stream"    # I
    .param p2, "level"    # I

    .prologue
    .line 1158
    const-string/jumbo v0, "VolumeDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1157
    return-void
.end method

.method public updateLayoutDirection(I)V
    .locals 3
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1167
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1166
    return-void
.end method
