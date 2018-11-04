.class public abstract Landroid/view/Window;
.super Ljava/lang/Object;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Window$Callback;,
        Landroid/view/Window$OnFrameMetricsAvailableListener;,
        Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;,
        Landroid/view/Window$OnWindowDismissedCallback;,
        Landroid/view/Window$OnWindowSwipeDismissedCallback;,
        Landroid/view/Window$WindowControllerCallback;
    }
.end annotation


# static fields
.field public static final DECOR_CAPTION_SHADE_AUTO:I = 0x0

.field public static final DECOR_CAPTION_SHADE_DARK:I = 0x2

.field public static final DECOR_CAPTION_SHADE_LIGHT:I = 0x1

.field protected static final DEFAULT_FEATURES:I = 0x41
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FEATURE_ACTION_BAR:I = 0x8

.field public static final FEATURE_ACTION_BAR_OVERLAY:I = 0x9

.field public static final FEATURE_ACTION_MODE_OVERLAY:I = 0xa

.field public static final FEATURE_ACTIVITY_TRANSITIONS:I = 0xd

.field public static final FEATURE_CONTENT_TRANSITIONS:I = 0xc

.field public static final FEATURE_CONTEXT_MENU:I = 0x6

.field public static final FEATURE_CUSTOM_TITLE:I = 0x7

.field public static final FEATURE_INDETERMINATE_PROGRESS:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FEATURE_LEFT_ICON:I = 0x3

.field public static final FEATURE_MAX:I = 0xd

.field public static final FEATURE_NO_TITLE:I = 0x1

.field public static final FEATURE_OPTIONS_PANEL:I = 0x0

.field public static final FEATURE_PROGRESS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FEATURE_RIGHT_ICON:I = 0x4

.field public static final FEATURE_SWIPE_TO_DISMISS:I = 0xb

.field public static final ID_ANDROID_CONTENT:I = 0x1020002

.field public static final NAVIGATION_BAR_BACKGROUND_TRANSITION_NAME:Ljava/lang/String; = "android:navigation:background"

.field public static final PROGRESS_END:I = 0x2710
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROGRESS_INDETERMINATE_OFF:I = -0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROGRESS_INDETERMINATE_ON:I = -0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROGRESS_SECONDARY_END:I = 0x7530
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROGRESS_SECONDARY_START:I = 0x4e20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROGRESS_START:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROGRESS_VISIBILITY_OFF:I = -0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROGRESS_VISIBILITY_ON:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final PROPERTY_HARDWARE_UI:Ljava/lang/String; = "persist.sys.ui.hw"

.field public static final STATUS_BAR_BACKGROUND_TRANSITION_NAME:Ljava/lang/String; = "android:status:background"


# instance fields
.field private mActiveChild:Landroid/view/Window;

.field private mAppName:Ljava/lang/String;

.field private mAppToken:Landroid/os/IBinder;

.field private mCallback:Landroid/view/Window$Callback;

.field private mCloseOnSwipeEnabled:Z

.field private mCloseOnTouchOutside:Z

.field private mContainer:Landroid/view/Window;

.field private final mContext:Landroid/content/Context;

.field private mDefaultWindowFormat:I

.field private mDestroyed:Z

.field private mFeatures:I

.field private mForcedWindowFlags:I

.field private mHardwareAccelerated:Z

.field private mHasChildren:Z

.field private mHasSoftInputMode:Z

.field private mHaveDimAmount:Z

.field private mHaveWindowFormat:Z

.field private mIsActive:Z

.field private mLocalFeatures:I

.field private mOnRestrictedCaptionAreaChangedListener:Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;

.field private mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

.field private mOnWindowSwipeDismissedCallback:Landroid/view/Window$OnWindowSwipeDismissedCallback;

.field private mOverlayWithDecorCaptionEnabled:Z

.field private mRestrictedCaptionAreaRect:Landroid/graphics/Rect;

.field private mSetCloseOnTouchOutside:Z

.field private final mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field private mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowStyle:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput-boolean v1, p0, Landroid/view/Window;->mIsActive:Z

    .line 289
    iput-boolean v1, p0, Landroid/view/Window;->mHasChildren:Z

    .line 290
    iput-boolean v1, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    .line 291
    iput-boolean v1, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    .line 292
    iput v1, p0, Landroid/view/Window;->mForcedWindowFlags:I

    .line 297
    iput-boolean v1, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    .line 298
    iput-boolean v1, p0, Landroid/view/Window;->mHaveDimAmount:Z

    .line 299
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/Window;->mDefaultWindowFormat:I

    .line 301
    iput-boolean v1, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    .line 305
    iput-boolean v1, p0, Landroid/view/Window;->mOverlayWithDecorCaptionEnabled:Z

    .line 306
    iput-boolean v1, p0, Landroid/view/Window;->mCloseOnSwipeEnabled:Z

    .line 310
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 309
    iput-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 663
    iput-object p1, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    .line 664
    invoke-static {p1}, Landroid/view/Window;->getDefaultFeatures(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Landroid/view/Window;->mLocalFeatures:I

    iput v0, p0, Landroid/view/Window;->mFeatures:I

    .line 662
    return-void
.end method

.method public static getDefaultFeatures(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1631
    const/4 v0, 0x0

    .line 1633
    .local v0, "features":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1634
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x11200a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1635
    const/4 v0, 0x1

    .line 1638
    :cond_0
    const v2, 0x11200a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1639
    or-int/lit8 v0, v0, 0x40

    .line 1642
    :cond_1
    return v0
.end method

.method private isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 1240
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v2, v5

    .line 1241
    .local v2, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v3, v5

    .line 1242
    .local v3, "y":I
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v1

    .line 1243
    .local v1, "slop":I
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1244
    .local v0, "decorView":Landroid/view/View;
    neg-int v5, v1

    if-lt v2, v5, :cond_0

    neg-int v5, v1

    if-ge v3, v5, :cond_1

    :cond_0
    :goto_0
    return v4

    .line 1245
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v1

    if-gt v2, v5, :cond_0

    .line 1246
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v1

    if-gt v3, v5, :cond_0

    const/4 v4, 0x0

    goto :goto_0
.end method

.method private setPrivateFlags(II)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    .line 1118
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1119
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    not-int v2, p2

    and-int/2addr v1, v2

    and-int v2, p1, p2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1120
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1117
    return-void
.end method


# virtual methods
.method public abstract addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public addExtraFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 2197
    invoke-virtual {p0, p1, p1}, Landroid/view/Window;->setExtraFlags(II)V

    .line 2196
    return-void
.end method

.method public addFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 1062
    invoke-virtual {p0, p1, p1}, Landroid/view/Window;->setFlags(II)V

    .line 1061
    return-void
.end method

.method public final addOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Landroid/view/Window$OnFrameMetricsAvailableListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 861
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 862
    .local v0, "decorView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 863
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "can\'t observe a Window without an attached view"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 866
    :cond_0
    if-nez p1, :cond_1

    .line 867
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "listener cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 870
    :cond_1
    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View;->addFrameMetricsListener(Landroid/view/Window;Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V

    .line 860
    return-void
.end method

.method public addPrivateFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 1067
    invoke-direct {p0, p1, p1}, Landroid/view/Window;->setPrivateFlags(II)V

    .line 1066
    return-void
.end method

.method adjustLayoutParamsForSubWindow(Landroid/view/WindowManager$LayoutParams;)V
    .locals 8
    .param p1, "wp"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/high16 v7, 0x1000000

    const/16 v6, 0x3e8

    const/16 v5, 0x20

    .line 763
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 764
    .local v0, "curTitle":Ljava/lang/CharSequence;
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v3, v6, :cond_d

    .line 765
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-gt v3, v4, :cond_d

    .line 766
    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v3, :cond_0

    .line 767
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    .line 768
    .local v1, "decor":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 769
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 772
    .end local v1    # "decor":Landroid/view/View;
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 773
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 774
    .local v2, "title":Ljava/lang/StringBuilder;
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3e9

    if-ne v3, v4, :cond_7

    .line 775
    const-string/jumbo v3, "Media"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    :goto_0
    iget-object v3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 790
    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 817
    .end local v2    # "title":Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 818
    iget-object v3, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 820
    :cond_4
    iget-boolean v3, p0, Landroid/view/Window;->mHardwareAccelerated:Z

    if-nez v3, :cond_5

    .line 821
    iget-object v3, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v3, v7

    if-eqz v3, :cond_6

    .line 822
    :cond_5
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v3, v7

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 762
    :cond_6
    return-void

    .line 776
    .restart local v2    # "title":Ljava/lang/StringBuilder;
    :cond_7
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3ec

    if-ne v3, v4, :cond_8

    .line 777
    const-string/jumbo v3, "MediaOvr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 778
    :cond_8
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v3, v6, :cond_9

    .line 779
    const-string/jumbo v3, "Panel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 780
    :cond_9
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3ea

    if-ne v3, v4, :cond_a

    .line 781
    const-string/jumbo v3, "SubPanel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 782
    :cond_a
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3ed

    if-ne v3, v4, :cond_b

    .line 783
    const-string/jumbo v3, "AboveSubPanel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 784
    :cond_b
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3eb

    if-ne v3, v4, :cond_c

    .line 785
    const-string/jumbo v3, "AtchDlg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 787
    :cond_c
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 794
    .end local v2    # "title":Ljava/lang/StringBuilder;
    :cond_d
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d0

    if-lt v3, v4, :cond_10

    .line 795
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0xbb7

    if-gt v3, v4, :cond_10

    .line 800
    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 801
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 802
    .restart local v2    # "title":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "Sys"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 803
    iget-object v3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    if-eqz v3, :cond_f

    .line 804
    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    :cond_f
    invoke-virtual {p1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 809
    .end local v2    # "title":Ljava/lang/StringBuilder;
    :cond_10
    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v3, :cond_11

    .line 810
    iget-object v3, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-nez v3, :cond_13

    iget-object v3, p0, Landroid/view/Window;->mAppToken:Landroid/os/IBinder;

    :goto_2
    iput-object v3, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 812
    :cond_11
    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 813
    :cond_12
    iget-object v3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 814
    iget-object v3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 810
    :cond_13
    iget-object v3, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iget-object v3, v3, Landroid/view/Window;->mAppToken:Landroid/os/IBinder;

    goto :goto_2
.end method

.method public abstract alwaysReadCloseOnTouchAttr()V
.end method

.method public abstract clearContentView()V
.end method

.method public clearExtraFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 2205
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/view/Window;->setExtraFlags(II)V

    .line 2204
    return-void
.end method

.method public clearFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 1078
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/view/Window;->setFlags(II)V

    .line 1077
    return-void
.end method

.method public abstract closeAllPanels()V
.end method

.method public abstract closePanel(I)V
.end method

.method public final destroy()V
    .locals 1

    .prologue
    .line 724
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Window;->mDestroyed:Z

    .line 723
    return-void
.end method

.method public final dispatchOnWindowDismissed(ZZ)V
    .locals 1
    .param p1, "finishTask"    # Z
    .param p2, "suppressWindowTransition"    # Z

    .prologue
    .line 891
    iget-object v0, p0, Landroid/view/Window;->mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Landroid/view/Window;->mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$OnWindowDismissedCallback;->onWindowDismissed(ZZ)V

    .line 890
    :cond_0
    return-void
.end method

.method public final dispatchOnWindowSwipeDismissed()V
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Landroid/view/Window;->mOnWindowSwipeDismissedCallback:Landroid/view/Window$OnWindowSwipeDismissedCallback;

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Landroid/view/Window;->mOnWindowSwipeDismissedCallback:Landroid/view/Window$OnWindowSwipeDismissedCallback;

    invoke-interface {v0}, Landroid/view/Window$OnWindowSwipeDismissedCallback;->onWindowSwipeDismissed()V

    .line 902
    :cond_0
    return-void
.end method

.method protected dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1136
    iget-object v0, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 1137
    iget-object v0, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1135
    :cond_0
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1301
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getAllowEnterTransitionOverlap()Z
    .locals 1

    .prologue
    .line 2068
    const/4 v0, 0x1

    return v0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .locals 1

    .prologue
    .line 2094
    const/4 v0, 0x1

    return v0
.end method

.method public final getAttributes()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 1178
    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public final getCallback()Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    return-object v0
.end method

.method public final getContainer()Landroid/view/Window;
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    return-object v0
.end method

.method public getContentScene()Landroid/transition/Scene;
    .locals 1

    .prologue
    .line 1831
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getCurrentFocus()Landroid/view/View;
.end method

.method public abstract getDecorView()Landroid/view/View;
.end method

.method public getElevation()F
    .locals 1

    .prologue
    .line 1436
    const/4 v0, 0x0

    return v0
.end method

.method public getEnterTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 1905
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExitTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 1934
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getFeatures()I
    .locals 1

    .prologue
    .line 1623
    iget v0, p0, Landroid/view/Window;->mFeatures:I

    return v0
.end method

.method protected final getForcedWindowFlags()I
    .locals 1

    .prologue
    .line 1186
    iget v0, p0, Landroid/view/Window;->mForcedWindowFlags:I

    return v0
.end method

.method public abstract getLayoutInflater()Landroid/view/LayoutInflater;
.end method

.method protected final getLocalFeatures()I
    .locals 1

    .prologue
    .line 1664
    iget v0, p0, Landroid/view/Window;->mLocalFeatures:I

    return v0
.end method

.method public getMediaController()Landroid/media/session/MediaController;
    .locals 1

    .prologue
    .line 1732
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getNavigationBarColor()I
.end method

.method public getReenterTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 1948
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReturnTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 1920
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedElementEnterTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 1985
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedElementExitTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 2031
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedElementReenterTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 2042
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedElementReturnTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 1994
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedElementsUseOverlay()Z
    .locals 1

    .prologue
    .line 2133
    const/4 v0, 0x1

    return v0
.end method

.method public abstract getStatusBarColor()I
.end method

.method public getTransitionBackgroundFadeDuration()J
    .locals 2

    .prologue
    .line 2107
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTransitionManager()Landroid/transition/TransitionManager;
    .locals 1

    .prologue
    .line 1808
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getVolumeControlStream()I
.end method

.method public final getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Landroid/view/Window;->mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Landroid/view/Window;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public final getWindowStyle()Landroid/content/res/TypedArray;
    .locals 2

    .prologue
    .line 682
    monitor-enter p0

    .line 683
    :try_start_0
    iget-object v0, p0, Landroid/view/Window;->mWindowStyle:Landroid/content/res/TypedArray;

    if-nez v0, :cond_0

    .line 684
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    .line 685
    sget-object v1, Lcom/android/internal/R$styleable;->Window:[I

    .line 684
    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Window;->mWindowStyle:Landroid/content/res/TypedArray;

    .line 687
    :cond_0
    iget-object v0, p0, Landroid/view/Window;->mWindowStyle:Landroid/content/res/TypedArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 682
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final hasChildren()Z
    .locals 1

    .prologue
    .line 719
    iget-boolean v0, p0, Landroid/view/Window;->mHasChildren:Z

    return v0
.end method

.method public hasFeature(I)Z
    .locals 4
    .param p1, "feature"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1652
    invoke-virtual {p0}, Landroid/view/Window;->getFeatures()I

    move-result v2

    shl-int v3, v0, p1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected final hasSoftInputMode()Z
    .locals 1

    .prologue
    .line 1193
    iget-boolean v0, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    return v0
.end method

.method protected haveDimAmount()Z
    .locals 1

    .prologue
    .line 1688
    iget-boolean v0, p0, Landroid/view/Window;->mHaveDimAmount:Z

    return v0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 1795
    return-void
.end method

.method public abstract invalidatePanelMenu(I)V
.end method

.method public final isActive()Z
    .locals 1

    .prologue
    .line 1288
    iget-boolean v0, p0, Landroid/view/Window;->mIsActive:Z

    return v0
.end method

.method public isCloseOnSwipeEnabled()Z
    .locals 1

    .prologue
    .line 2305
    iget-boolean v0, p0, Landroid/view/Window;->mCloseOnSwipeEnabled:Z

    return v0
.end method

.method public final isDestroyed()Z
    .locals 1

    .prologue
    .line 729
    iget-boolean v0, p0, Landroid/view/Window;->mDestroyed:Z

    return v0
.end method

.method public abstract isFloating()Z
.end method

.method public isOverlayWithDecorCaptionEnabled()Z
    .locals 1

    .prologue
    .line 2247
    iget-boolean v0, p0, Landroid/view/Window;->mOverlayWithDecorCaptionEnabled:Z

    return v0
.end method

.method public abstract isShortcutKey(ILandroid/view/KeyEvent;)Z
.end method

.method public final makeActive()V
    .locals 2

    .prologue
    .line 1276
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-eqz v0, :cond_1

    .line 1277
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iget-object v0, v0, Landroid/view/Window;->mActiveChild:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 1278
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iget-object v0, v0, Landroid/view/Window;->mActiveChild:Landroid/view/Window;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/Window;->mIsActive:Z

    .line 1280
    :cond_0
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iput-object p0, v0, Landroid/view/Window;->mActiveChild:Landroid/view/Window;

    .line 1282
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Window;->mIsActive:Z

    .line 1283
    invoke-virtual {p0}, Landroid/view/Window;->onActive()V

    .line 1275
    return-void
.end method

.method public notifyRestrictedCaptionAreaCallback(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 2252
    iget-object v0, p0, Landroid/view/Window;->mOnRestrictedCaptionAreaChangedListener:Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;

    if-eqz v0, :cond_0

    .line 2253
    iget-object v0, p0, Landroid/view/Window;->mRestrictedCaptionAreaRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2254
    iget-object v0, p0, Landroid/view/Window;->mOnRestrictedCaptionAreaChangedListener:Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;

    .line 2255
    iget-object v1, p0, Landroid/view/Window;->mRestrictedCaptionAreaRect:Landroid/graphics/Rect;

    .line 2254
    invoke-interface {v0, v1}, Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;->onRestrictedCaptionAreaChanged(Landroid/graphics/Rect;)V

    .line 2251
    :cond_0
    return-void
.end method

.method protected abstract onActive()V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onMultiWindowModeChanged()V
.end method

.method public abstract openPanel(ILandroid/view/KeyEvent;)V
.end method

.method public abstract peekDecorView()Landroid/view/View;
.end method

.method public abstract performContextMenuIdentifierAction(II)Z
.end method

.method public abstract performPanelIdentifierAction(III)Z
.end method

.method public abstract performPanelShortcut(IILandroid/view/KeyEvent;I)Z
.end method

.method protected removeFeature(I)V
    .locals 3
    .param p1, "featureId"    # I

    .prologue
    .line 1270
    const/4 v1, 0x1

    shl-int v0, v1, p1

    .line 1271
    .local v0, "flag":I
    iget v1, p0, Landroid/view/Window;->mFeatures:I

    not-int v2, v0

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/Window;->mFeatures:I

    .line 1272
    iget v1, p0, Landroid/view/Window;->mLocalFeatures:I

    iget-object v2, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iget v2, v2, Landroid/view/Window;->mFeatures:I

    not-int v2, v2

    and-int/2addr v0, v2

    .end local v0    # "flag":I
    :cond_0
    not-int v2, v0

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/Window;->mLocalFeatures:I

    .line 1269
    return-void
.end method

.method public final removeOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/Window$OnFrameMetricsAvailableListener;

    .prologue
    .line 877
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 878
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 879
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->removeFrameMetricsListener(Landroid/view/Window$OnFrameMetricsAvailableListener;)V

    .line 876
    :cond_0
    return-void
.end method

.method public abstract reportActivityRelaunched()V
.end method

.method public requestFeature(I)Z
    .locals 5
    .param p1, "featureId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1260
    shl-int v0, v2, p1

    .line 1261
    .local v0, "flag":I
    iget v1, p0, Landroid/view/Window;->mFeatures:I

    or-int/2addr v1, v0

    iput v1, p0, Landroid/view/Window;->mFeatures:I

    .line 1262
    iget v4, p0, Landroid/view/Window;->mLocalFeatures:I

    iget-object v1, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iget v1, v1, Landroid/view/Window;->mFeatures:I

    not-int v1, v1

    and-int/2addr v1, v0

    :goto_0
    or-int/2addr v1, v4

    iput v1, p0, Landroid/view/Window;->mLocalFeatures:I

    .line 1263
    iget v1, p0, Landroid/view/Window;->mFeatures:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    return v1

    :cond_0
    move v1, v0

    .line 1262
    goto :goto_0

    :cond_1
    move v1, v3

    .line 1263
    goto :goto_1
.end method

.method public abstract restoreHierarchyState(Landroid/os/Bundle;)V
.end method

.method public abstract saveHierarchyState()Landroid/os/Bundle;
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 2055
    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 2081
    return-void
.end method

.method public setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "a"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1167
    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 1168
    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1166
    return-void
.end method

.method public abstract setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public setBackgroundDrawableResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1460
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1459
    return-void
.end method

.method public setCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 843
    iput-object p1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    .line 842
    return-void
.end method

.method public abstract setChildDrawable(ILandroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setChildInt(II)V
.end method

.method public setClipToOutline(Z)V
    .locals 0
    .param p1, "clipToOutline"    # Z

    .prologue
    .line 1448
    return-void
.end method

.method public setCloseOnSwipeEnabled(Z)V
    .locals 0
    .param p1, "closeOnSwipeEnabled"    # Z

    .prologue
    .line 2297
    iput-boolean p1, p0, Landroid/view/Window;->mCloseOnSwipeEnabled:Z

    .line 2296
    return-void
.end method

.method public setCloseOnTouchOutside(Z)V
    .locals 1
    .param p1, "close"    # Z

    .prologue
    .line 1198
    iput-boolean p1, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    .line 1199
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    .line 1197
    return-void
.end method

.method public setCloseOnTouchOutsideIfNotSet(Z)V
    .locals 1
    .param p1, "close"    # Z

    .prologue
    .line 1204
    iget-boolean v0, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    if-nez v0, :cond_0

    .line 1205
    iput-boolean p1, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    .line 1206
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    .line 1203
    :cond_0
    return-void
.end method

.method public setContainer(Landroid/view/Window;)V
    .locals 1
    .param p1, "container"    # Landroid/view/Window;

    .prologue
    .line 699
    iput-object p1, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    .line 700
    if-eqz p1, :cond_0

    .line 702
    iget v0, p0, Landroid/view/Window;->mFeatures:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/Window;->mFeatures:I

    .line 703
    iget v0, p0, Landroid/view/Window;->mLocalFeatures:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/Window;->mLocalFeatures:I

    .line 704
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/view/Window;->mHasChildren:Z

    .line 698
    :cond_0
    return-void
.end method

.method public abstract setContentView(I)V
.end method

.method public abstract setContentView(Landroid/view/View;)V
.end method

.method public abstract setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract setDecorCaptionShade(I)V
.end method

.method public setDefaultIcon(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 1763
    return-void
.end method

.method public setDefaultLogo(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 1781
    return-void
.end method

.method protected setDefaultWindowFormat(I)V
    .locals 2
    .param p1, "format"    # I

    .prologue
    .line 1678
    iput p1, p0, Landroid/view/Window;->mDefaultWindowFormat:I

    .line 1679
    iget-boolean v1, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    if-nez v1, :cond_0

    .line 1680
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1681
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1682
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1677
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public setDimAmount(F)V
    .locals 2
    .param p1, "amount"    # F

    .prologue
    .line 1150
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1151
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1152
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/Window;->mHaveDimAmount:Z

    .line 1153
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1149
    return-void
.end method

.method public setDisableWallpaperTouchEvents(Z)V
    .locals 2
    .param p1, "disable"    # Z

    .prologue
    const/16 v1, 0x800

    .line 1213
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/view/Window;->setPrivateFlags(II)V

    .line 1212
    return-void

    .line 1214
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setElevation(F)V
    .locals 0
    .param p1, "elevation"    # F

    .prologue
    .line 1428
    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1845
    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1876
    return-void
.end method

.method public setExtraFlags(II)V
    .locals 4
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    const/high16 v3, 0x4000000

    .line 2213
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2214
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    not-int v2, p2

    and-int/2addr v1, v2

    and-int v2, p1, p2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    .line 2216
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    .line 2217
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    .line 2218
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v3

    if-nez v1, :cond_0

    .line 2219
    invoke-virtual {p0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 2227
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz v1, :cond_1

    .line 2228
    iget-object v1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    invoke-interface {v1, v0}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 2212
    :cond_1
    return-void

    .line 2222
    :cond_2
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_0

    .line 2223
    invoke-virtual {p0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public abstract setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setFeatureDrawableAlpha(II)V
.end method

.method public abstract setFeatureDrawableResource(II)V
.end method

.method public abstract setFeatureDrawableUri(ILandroid/net/Uri;)V
.end method

.method public abstract setFeatureInt(II)V
.end method

.method public setFlags(II)V
    .locals 4
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    const/high16 v3, 0x4000000

    .line 1101
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1102
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    not-int v2, p2

    and-int/2addr v1, v2

    and-int v2, p1, p2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1105
    and-int v1, p2, v3

    if-eqz v1, :cond_0

    .line 1106
    and-int v1, p1, v3

    if-nez v1, :cond_0

    .line 1107
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1108
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/Window;->clearExtraFlags(I)V

    .line 1113
    :cond_0
    iget v1, p0, Landroid/view/Window;->mForcedWindowFlags:I

    or-int/2addr v1, p2

    iput v1, p0, Landroid/view/Window;->mForcedWindowFlags:I

    .line 1114
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1100
    return-void
.end method

.method public setFormat(I)V
    .locals 3
    .param p1, "format"    # I

    .prologue
    const/4 v2, 0x0

    .line 1012
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1013
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    .line 1014
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1015
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    .line 1020
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1011
    return-void

    .line 1017
    :cond_0
    iget v1, p0, Landroid/view/Window;->mDefaultWindowFormat:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1018
    iput-boolean v2, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    goto :goto_0
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 983
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 984
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 985
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 981
    return-void
.end method

.method public setIcon(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 1754
    return-void
.end method

.method public setLayout(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 965
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 966
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 967
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 968
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 964
    return-void
.end method

.method public setLocalFocus(ZZ)V
    .locals 0
    .param p1, "hasFocus"    # Z
    .param p2, "inTouchMode"    # Z

    .prologue
    .line 1789
    return-void
.end method

.method public setLogo(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 1772
    return-void
.end method

.method public setMediaController(Landroid/media/session/MediaController;)V
    .locals 0
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .prologue
    .line 1721
    return-void
.end method

.method public abstract setNavigationBarColor(I)V
.end method

.method protected setNeedsMenuKey(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1127
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1128
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    .line 1129
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1126
    return-void
.end method

.method public final setOnWindowDismissedCallback(Landroid/view/Window$OnWindowDismissedCallback;)V
    .locals 0
    .param p1, "dcb"    # Landroid/view/Window$OnWindowDismissedCallback;

    .prologue
    .line 885
    iput-object p1, p0, Landroid/view/Window;->mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

    .line 884
    return-void
.end method

.method public final setOnWindowSwipeDismissedCallback(Landroid/view/Window$OnWindowSwipeDismissedCallback;)V
    .locals 0
    .param p1, "sdcb"    # Landroid/view/Window$OnWindowSwipeDismissedCallback;

    .prologue
    .line 898
    iput-object p1, p0, Landroid/view/Window;->mOnWindowSwipeDismissedCallback:Landroid/view/Window$OnWindowSwipeDismissedCallback;

    .line 897
    return-void
.end method

.method public setOverlayWithDecorCaptionEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2242
    iput-boolean p1, p0, Landroid/view/Window;->mOverlayWithDecorCaptionEnabled:Z

    .line 2241
    return-void
.end method

.method public setReenterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1892
    return-void
.end method

.method public abstract setResizingCaptionDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public final setRestrictedCaptionAreaListener(Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;

    .prologue
    const/4 v0, 0x0

    .line 924
    iput-object p1, p0, Landroid/view/Window;->mOnRestrictedCaptionAreaChangedListener:Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;

    .line 925
    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    iput-object v0, p0, Landroid/view/Window;->mRestrictedCaptionAreaRect:Landroid/graphics/Rect;

    .line 923
    return-void
.end method

.method public setReturnTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1862
    return-void
.end method

.method public setSharedElementEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1961
    return-void
.end method

.method public setSharedElementExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 2007
    return-void
.end method

.method public setSharedElementReenterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 2020
    return-void
.end method

.method public setSharedElementReturnTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1976
    return-void
.end method

.method public setSharedElementsUseOverlay(Z)V
    .locals 0
    .param p1, "sharedElementsUseOverlay"    # Z

    .prologue
    .line 2144
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 1044
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1045
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    .line 1046
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1047
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    .line 1051
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1043
    return-void

    .line 1049
    :cond_0
    iput-boolean v1, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    goto :goto_0
.end method

.method public abstract setStatusBarColor(I)V
.end method

.method public setSustainedPerformanceMode(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    const/high16 v1, 0x40000

    .line 1234
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/view/Window;->setPrivateFlags(II)V

    .line 1233
    return-void

    .line 1235
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTheme(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 2233
    return-void
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract setTitleColor(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public setTransitionBackgroundFadeDuration(J)V
    .locals 0
    .param p1, "fadeDurationMillis"    # J

    .prologue
    .line 2121
    return-void
.end method

.method public setTransitionManager(Landroid/transition/TransitionManager;)V
    .locals 1
    .param p1, "tm"    # Landroid/transition/TransitionManager;

    .prologue
    .line 1819
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 995
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 996
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 997
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 994
    return-void
.end method

.method public setUiOptions(I)V
    .locals 0
    .param p1, "uiOptions"    # I

    .prologue
    .line 1739
    return-void
.end method

.method public setUiOptions(II)V
    .locals 0
    .param p1, "uiOptions"    # I
    .param p2, "mask"    # I

    .prologue
    .line 1747
    return-void
.end method

.method public abstract setVolumeControlStream(I)V
.end method

.method public setWindowAnimations(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1031
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1032
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1033
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1030
    return-void
.end method

.method public final setWindowControllerCallback(Landroid/view/Window$WindowControllerCallback;)V
    .locals 0
    .param p1, "wccb"    # Landroid/view/Window$WindowControllerCallback;

    .prologue
    .line 910
    iput-object p1, p0, Landroid/view/Window;->mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

    .line 909
    return-void
.end method

.method public setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .param p1, "wm"    # Landroid/view/WindowManager;
    .param p2, "appToken"    # Landroid/os/IBinder;
    .param p3, "appName"    # Ljava/lang/String;

    .prologue
    .line 740
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    .line 739
    return-void
.end method

.method public setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "wm"    # Landroid/view/WindowManager;
    .param p2, "appToken"    # Landroid/os/IBinder;
    .param p3, "appName"    # Ljava/lang/String;
    .param p4, "hardwareAccelerated"    # Z

    .prologue
    .line 752
    iput-object p2, p0, Landroid/view/Window;->mAppToken:Landroid/os/IBinder;

    .line 753
    iput-object p3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    .line 754
    if-nez p4, :cond_1

    .line 755
    const-string/jumbo v0, "persist.sys.ui.hw"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 754
    :goto_0
    iput-boolean v0, p0, Landroid/view/Window;->mHardwareAccelerated:Z

    .line 756
    if-nez p1, :cond_0

    .line 757
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "wm":Landroid/view/WindowManager;
    check-cast p1, Landroid/view/WindowManager;

    .line 759
    .restart local p1    # "wm":Landroid/view/WindowManager;
    :cond_0
    check-cast p1, Landroid/view/WindowManagerImpl;

    .end local p1    # "wm":Landroid/view/WindowManager;
    invoke-virtual {p1, p0}, Landroid/view/WindowManagerImpl;->createLocalWindowManager(Landroid/view/Window;)Landroid/view/WindowManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Window;->mWindowManager:Landroid/view/WindowManager;

    .line 751
    return-void

    .line 754
    .restart local p1    # "wm":Landroid/view/WindowManager;
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 1223
    iget-boolean v0, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1224
    invoke-direct {p0, p1, p2}, Landroid/view/Window;->isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1223
    if-eqz v0, :cond_0

    .line 1224
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1225
    const/4 v0, 0x1

    return v0

    .line 1227
    :cond_0
    return v1
.end method

.method public abstract superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract takeInputQueue(Landroid/view/InputQueue$Callback;)V
.end method

.method public abstract takeKeyEvents(Z)V
.end method

.method public abstract takeSurface(Landroid/view/SurfaceHolder$Callback2;)V
.end method

.method public abstract togglePanel(ILandroid/view/KeyEvent;)V
.end method
