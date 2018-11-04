.class public Lcom/android/internal/widget/MiuiDecorCaptionView;
.super Lcom/android/internal/widget/DecorCaptionView;
.source "MiuiDecorCaptionView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/MiuiDecorCaptionView$1;,
        Lcom/android/internal/widget/MiuiDecorCaptionView$2;
    }
.end annotation


# static fields
.field private static final MTK:Ljava/lang/String; = "mediatek"

.field private static final TAG:Ljava/lang/String; = "MiuiDecorCaptionView"


# instance fields
.field private RADIUS:F

.field private mCaption:Landroid/view/View;

.field private mCheckForDragging:Z

.field private mClickTarget:Landroid/view/View;

.field private mClose:Landroid/view/View;

.field private final mCloseRect:Landroid/graphics/Rect;

.field private mContent:Landroid/view/View;

.field private mDragSlop:I

.field private mDragging:Z

.field private mFreeformConnection:Landroid/content/ServiceConnection;

.field private mFreeformService:Lcom/miui/freeform/IMiuiFreeformWindowService;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mMaximize:Landroid/view/View;

.field private final mMaximizeRect:Landroid/graphics/Rect;

.field private mMobileqqView:Landroid/view/View;

.field private mMove:Landroid/view/View;

.field private final mMoveRect:Landroid/graphics/Rect;

.field private mOverlayWithAppContent:Z

.field private mOwner:Lcom/android/internal/policy/PhoneWindow;

.field private mRoot:Landroid/view/ViewGroup;

.field private mSecurityManager:Lmiui/security/SecurityManager;

.field private mShow:Z

.field private mTouchDispatchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchDownX:I

.field private mTouchDownY:I

.field private mViewOutlineProvider:Landroid/view/ViewOutlineProvider;


# direct methods
.method static synthetic -get0(Lcom/android/internal/widget/MiuiDecorCaptionView;)F
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->RADIUS:F

    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/widget/MiuiDecorCaptionView;)Lcom/miui/freeform/IMiuiFreeformWindowService;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mFreeformService:Lcom/miui/freeform/IMiuiFreeformWindowService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/widget/MiuiDecorCaptionView;Lcom/miui/freeform/IMiuiFreeformWindowService;)Lcom/miui/freeform/IMiuiFreeformWindowService;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mFreeformService:Lcom/miui/freeform/IMiuiFreeformWindowService;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/widget/MiuiDecorCaptionView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMobileqqView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/widget/MiuiDecorCaptionView;F)F
    .locals 1
    .param p1, "dip"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->dipToPx(F)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/widget/MiuiDecorCaptionView;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getStackId()I

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;-><init>(Landroid/content/Context;)V

    .line 100
    const/high16 v0, 0x41300000    # 11.0f

    iput v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->RADIUS:F

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 103
    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mShow:Z

    .line 106
    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragging:Z

    .line 108
    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOverlayWithAppContent:Z

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    .line 127
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    .line 128
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    .line 129
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMoveRect:Landroid/graphics/Rect;

    .line 138
    new-instance v0, Lcom/android/internal/widget/MiuiDecorCaptionView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$1;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mFreeformConnection:Landroid/content/ServiceConnection;

    .line 225
    new-instance v0, Lcom/android/internal/widget/MiuiDecorCaptionView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$2;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 152
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->init(Landroid/content/Context;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/DecorCaptionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    const/high16 v0, 0x41300000    # 11.0f

    iput v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->RADIUS:F

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 103
    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mShow:Z

    .line 106
    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragging:Z

    .line 108
    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOverlayWithAppContent:Z

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    .line 127
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    .line 128
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    .line 129
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMoveRect:Landroid/graphics/Rect;

    .line 138
    new-instance v0, Lcom/android/internal/widget/MiuiDecorCaptionView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$1;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mFreeformConnection:Landroid/content/ServiceConnection;

    .line 225
    new-instance v0, Lcom/android/internal/widget/MiuiDecorCaptionView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$2;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 157
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->init(Landroid/content/Context;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/DecorCaptionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    const/high16 v0, 0x41300000    # 11.0f

    iput v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->RADIUS:F

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 103
    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mShow:Z

    .line 106
    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragging:Z

    .line 108
    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOverlayWithAppContent:Z

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    .line 127
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    .line 128
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    .line 129
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMoveRect:Landroid/graphics/Rect;

    .line 138
    new-instance v0, Lcom/android/internal/widget/MiuiDecorCaptionView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$1;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mFreeformConnection:Landroid/content/ServiceConnection;

    .line 225
    new-instance v0, Lcom/android/internal/widget/MiuiDecorCaptionView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$2;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 162
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->init(Landroid/content/Context;)V

    .line 160
    return-void
.end method

.method private dipToPx(F)F
    .locals 2
    .param p1, "dip"    # F

    .prologue
    .line 234
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 233
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private getStackId()I
    .locals 5

    .prologue
    .line 595
    const/4 v2, -0x1

    .line 596
    .local v2, "workspaceId":I
    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Landroid/view/Window;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v0

    .line 597
    .local v0, "callback":Landroid/view/Window$WindowControllerCallback;
    if-eqz v0, :cond_0

    .line 599
    :try_start_0
    invoke-interface {v0}, Landroid/view/Window$WindowControllerCallback;->getWindowStackId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 604
    :cond_0
    :goto_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 605
    const/4 v3, 0x1

    return v3

    .line 600
    :catch_0
    move-exception v1

    .line 601
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "MiuiDecorCaptionView"

    const-string/jumbo v4, "Failed to get the workspace ID of a PhoneWindow."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 607
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_1
    return v2
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragSlop:I

    .line 167
    new-instance v2, Landroid/view/GestureDetector;

    invoke-direct {v2, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 169
    const-string/jumbo v2, "security"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/security/SecurityManager;

    iput-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mSecurityManager:Lmiui/security/SecurityManager;

    .line 171
    const-string/jumbo v2, "vendor"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lmiui/util/FeatureParser;->hasFeature(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    const-string/jumbo v2, "vendor"

    invoke-static {v2}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "vendor":Ljava/lang/String;
    const-string/jumbo v2, "mediatek"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->RADIUS:F

    .line 175
    const-string/jumbo v2, "MiuiDecorCaptionView"

    const-string/jumbo v3, "MTK can not support full screen RoundRect perfectly, so do not round"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .end local v1    # "vendor":Ljava/lang/String;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 180
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "miui.intent.action.FREEFORM_WINDOW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string/jumbo v2, "com.miui.freeform"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mFreeformConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 165
    return-void
.end method

.method private isFillingScreen()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 452
    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xa05

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private passedSlop(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, 0x1

    .line 335
    iget v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDownX:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragSlop:I

    if-gt v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDownY:I

    sub-int v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragSlop:I

    if-le v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resizeWindowDismiss()V
    .locals 5

    .prologue
    .line 623
    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mFreeformService:Lcom/miui/freeform/IMiuiFreeformWindowService;

    if-eqz v3, :cond_0

    .line 626
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 628
    .local v1, "mInterface":Landroid/app/IActivityManager;
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getAttachedActivityInstance()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    .line 627
    invoke-interface {v1, v3, v4}, Landroid/app/IActivityManager;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v2

    .line 629
    .local v2, "taskId":I
    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mFreeformService:Lcom/miui/freeform/IMiuiFreeformWindowService;

    invoke-interface {v3, v2}, Lcom/miui/freeform/IMiuiFreeformWindowService;->windowDismiss(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    .end local v1    # "mInterface":Landroid/app/IActivityManager;
    .end local v2    # "taskId":I
    :cond_0
    :goto_0
    return-void

    .line 630
    :catch_0
    move-exception v0

    .line 631
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private updateCaptionVisibility()V
    .locals 3

    .prologue
    .line 462
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->isFillingScreen()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mShow:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 463
    .local v0, "invisible":Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCaption:Landroid/view/View;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 464
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 465
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMobileqqView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 466
    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMobileqqView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mShow:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 460
    :cond_0
    return-void

    .line 462
    .end local v0    # "invisible":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "invisible":Z
    goto :goto_0

    .line 463
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 466
    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_2
.end method

.method private updateOutLineProvider()V
    .locals 3

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getStackId()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 216
    .local v0, "canClip":Z
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 217
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 218
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 219
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 220
    if-nez v0, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->resizeWindowDismiss()V

    .line 214
    :cond_0
    return-void

    .line 215
    .end local v0    # "canClip":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v3, 0x2

    .line 351
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.tencent.mm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 353
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1    # "child":Landroid/view/View;
    check-cast p1, Landroid/view/ViewGroup;

    .line 354
    .restart local p1    # "child":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 355
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 356
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 360
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_0
    instance-of v1, p3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v1, :cond_1

    .line 361
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "params "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " must subclass MarginLayoutParams"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 361
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 365
    :cond_1
    if-ge p2, v3, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt v1, v3, :cond_3

    .line 366
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "DecorCaptionView can only handle 1 client view"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 370
    :cond_3
    const/4 v1, 0x0

    invoke-super {p0, p1, v1, p3}, Lcom/android/internal/widget/DecorCaptionView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 371
    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    .line 374
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mRoot:Landroid/view/ViewGroup;

    .line 375
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.tencent.mobileqq"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 376
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mRoot:Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 377
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mRoot:Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/internal/widget/MiuiDecorCaptionView$3;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$3;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 349
    :cond_4
    return-void
.end method

.method public buildTouchDispatchChildList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 320
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCaption:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 507
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 496
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 491
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 502
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCaption()Landroid/view/View;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCaption:Landroid/view/View;

    return-object v0
.end method

.method public getCaptionHeight()I
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCaption:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCaptionShowing()Z
    .locals 1

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mShow:Z

    return v0
.end method

.method public onConfigurationChanged(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 343
    iput-boolean p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mShow:Z

    .line 344
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->updateCaptionVisibility()V

    .line 345
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->updateOutLineProvider()V

    .line 342
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 612
    invoke-super {p0}, Lcom/android/internal/widget/DecorCaptionView;->onDetachedFromWindow()V

    .line 613
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->resizeWindowDismiss()V

    .line 611
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 512
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 187
    invoke-super {p0}, Lcom/android/internal/widget/DecorCaptionView;->onFinishInflate()V

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCaption:Landroid/view/View;

    .line 186
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 591
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 241
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 243
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 244
    .local v1, "y":I
    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMoveRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 245
    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMove:Landroid/view/View;

    iput-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mClickTarget:Landroid/view/View;

    .line 247
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 248
    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMaximize:Landroid/view/View;

    iput-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mClickTarget:Landroid/view/View;

    .line 250
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 251
    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mClose:Landroid/view/View;

    iput-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mClickTarget:Landroid/view/View;

    .line 254
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_2
    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mClickTarget:Landroid/view/View;

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v4, 0x0

    .line 419
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 420
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCaption:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 421
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v0, v1, v2

    .line 422
    .local v0, "captionHeight":I
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMove:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMoveRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 423
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMaximize:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 424
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mClose:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 432
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 433
    iget-boolean v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOverlayWithAppContent:Z

    if-eqz v1, :cond_2

    .line 434
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 442
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 443
    iget-object v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 442
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/Window;->notifyRestrictedCaptionAreaCallback(IIII)V

    .line 445
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getElevation()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setElevation(F)V

    .line 417
    return-void

    .line 426
    .end local v0    # "captionHeight":I
    :cond_1
    const/4 v0, 0x0

    .line 427
    .restart local v0    # "captionHeight":I
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMoveRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 428
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 429
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 436
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 437
    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    .line 436
    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 585
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 397
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 398
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCaption:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 399
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 403
    .local v5, "captionHeight":I
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 404
    iget-boolean v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOverlayWithAppContent:Z

    if-eqz v0, :cond_2

    .line 405
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 412
    .end local v5    # "captionHeight":I
    :cond_0
    :goto_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 413
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 412
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 395
    return-void

    .line 401
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "captionHeight":I
    goto :goto_0

    .line 407
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 581
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 516
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 522
    iget-object v7, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mSecurityManager:Lmiui/security/SecurityManager;

    if-nez v7, :cond_0

    .line 523
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "security"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/security/SecurityManager;

    iput-object v7, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mSecurityManager:Lmiui/security/SecurityManager;

    .line 525
    :cond_0
    iget-object v7, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mSecurityManager:Lmiui/security/SecurityManager;

    if-nez v7, :cond_1

    .line 526
    return v11

    .line 528
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    .line 532
    .local v4, "mInterface":Landroid/app/IActivityManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getAttachedActivityInstance()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x0

    .line 531
    invoke-interface {v4, v7, v8}, Landroid/app/IActivityManager;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v6

    .line 533
    .local v6, "taskId":I
    iget-object v7, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mClickTarget:Landroid/view/View;

    iget-object v8, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMove:Landroid/view/View;

    if-ne v7, v8, :cond_7

    .line 534
    iget-object v7, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mFreeformService:Lcom/miui/freeform/IMiuiFreeformWindowService;

    if-nez v7, :cond_2

    .line 535
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 536
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "miui.intent.action.FREEFORM_WINDOW"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    const-string/jumbo v7, "com.miui.freeform"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mFreeformConnection:Landroid/content/ServiceConnection;

    const/4 v9, 0x1

    invoke-virtual {v7, v2, v8, v9}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 540
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v7, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mFreeformService:Lcom/miui/freeform/IMiuiFreeformWindowService;

    if-eqz v7, :cond_3

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getStackId()I

    move-result v7

    if-eq v7, v12, :cond_4

    .line 541
    :cond_3
    return v11

    .line 543
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "input_method"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 544
    .local v1, "im":Landroid/view/inputmethod/InputMethodManager;
    const/4 v5, 0x0

    .line 545
    .local v5, "receiver":Landroid/os/ResultReceiver;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v8, 0x3

    if-lt v7, v8, :cond_5

    .line 546
    new-instance v5, Lcom/android/internal/widget/MiuiDecorCaptionView$4;

    .end local v5    # "receiver":Landroid/os/ResultReceiver;
    const/4 v7, 0x0

    invoke-direct {v5, p0, v7, v6}, Lcom/android/internal/widget/MiuiDecorCaptionView$4;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView;Landroid/os/Handler;I)V

    .line 560
    :cond_5
    iget-object v7, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    .line 561
    const/4 v8, 0x2

    .line 560
    invoke-virtual {v1, v7, v8, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    move-result v3

    .line 562
    .local v3, "isHidden":Z
    if-nez v3, :cond_6

    .line 563
    iget-object v7, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mFreeformService:Lcom/miui/freeform/IMiuiFreeformWindowService;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Lcom/miui/freeform/IMiuiFreeformWindowService;->windowResize(ILjava/lang/String;)V

    .line 576
    .end local v1    # "im":Landroid/view/inputmethod/InputMethodManager;
    .end local v3    # "isHidden":Z
    .end local v6    # "taskId":I
    :cond_6
    :goto_0
    return v10

    .line 565
    .restart local v6    # "taskId":I
    :cond_7
    iget-object v7, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mClickTarget:Landroid/view/View;

    iget-object v8, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mClose:Landroid/view/View;

    if-ne v7, v8, :cond_8

    .line 566
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "input_method"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 567
    .restart local v1    # "im":Landroid/view/inputmethod/InputMethodManager;
    iget-object v7, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    .line 568
    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 567
    invoke-virtual {v1, v7, v8, v9}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    .line 569
    iget-object v7, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mSecurityManager:Lmiui/security/SecurityManager;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v7, v6, v8, v9}, Lmiui/security/SecurityManager;->moveTaskToStack(IIZ)I

    goto :goto_0

    .line 573
    .end local v1    # "im":Landroid/view/inputmethod/InputMethodManager;
    .end local v6    # "taskId":I
    :catch_0
    move-exception v0

    .local v0, "exception":Landroid/os/RemoteException;
    goto :goto_0

    .line 570
    .end local v0    # "exception":Landroid/os/RemoteException;
    .restart local v6    # "taskId":I
    :cond_8
    iget-object v7, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mClickTarget:Landroid/view/View;

    iget-object v8, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMaximize:Landroid/view/View;

    if-ne v7, v8, :cond_6

    .line 571
    iget-object v7, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mSecurityManager:Lmiui/security/SecurityManager;

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v7, v6, v8, v9}, Lmiui/security/SecurityManager;->moveTaskToStack(IIZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 275
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 276
    .local v2, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v3, v6

    .line 277
    .local v3, "y":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    const/4 v0, 0x1

    .line 278
    .local v0, "fromMouse":Z
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    const/4 v1, 0x1

    .line 279
    .local v1, "primaryButton":Z
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 314
    :cond_0
    :goto_2
    iget-boolean v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragging:Z

    if-nez v4, :cond_1

    iget-boolean v5, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCheckForDragging:Z

    :cond_1
    return v5

    .line 277
    .end local v0    # "fromMouse":Z
    .end local v1    # "primaryButton":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "fromMouse":Z
    goto :goto_0

    .line 278
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "primaryButton":Z
    goto :goto_1

    .line 281
    :pswitch_0
    iget-boolean v6, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mShow:Z

    if-nez v6, :cond_4

    .line 283
    return v4

    .line 287
    :cond_4
    if-eqz v0, :cond_5

    if-eqz v1, :cond_0

    .line 288
    :cond_5
    iput-boolean v5, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCheckForDragging:Z

    .line 289
    iput v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDownX:I

    .line 290
    iput v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mTouchDownY:I

    goto :goto_2

    .line 295
    :pswitch_1
    iget-boolean v6, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragging:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCheckForDragging:Z

    if-eqz v6, :cond_0

    if-nez v0, :cond_6

    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/MiuiDecorCaptionView;->passedSlop(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 296
    :cond_6
    iput-boolean v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCheckForDragging:Z

    .line 297
    iput-boolean v5, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragging:Z

    .line 298
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-virtual {p0, v4, v6}, Landroid/view/View;->startMovingTask(FF)Z

    goto :goto_2

    .line 307
    :pswitch_2
    iget-boolean v6, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragging:Z

    if-eqz v6, :cond_0

    .line 311
    iput-boolean v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mDragging:Z

    .line 312
    iget-boolean v6, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCheckForDragging:Z

    if-eqz v6, :cond_7

    :goto_3
    return v4

    :cond_7
    move v4, v5

    goto :goto_3

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 259
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mClickTarget:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 260
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 261
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 262
    .local v0, "action":I
    if-eq v0, v2, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 263
    :cond_0
    iput-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mClickTarget:Landroid/view/View;

    .line 265
    :cond_1
    return v2

    .line 267
    .end local v0    # "action":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 618
    invoke-super {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;->onWindowFocusChanged(Z)V

    .line 619
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->resizeWindowDismiss()V

    .line 617
    :cond_0
    return-void
.end method

.method public removeContentView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 479
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 481
    iput-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mContent:Landroid/view/View;

    .line 478
    :cond_0
    return-void
.end method

.method public setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;Z)V
    .locals 2
    .param p1, "owner"    # Lcom/android/internal/policy/PhoneWindow;
    .param p2, "show"    # Z

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 193
    iput-boolean p2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mShow:Z

    .line 194
    invoke-virtual {p1}, Landroid/view/Window;->isOverlayWithDecorCaptionEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOverlayWithAppContent:Z

    .line 195
    iget-boolean v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOverlayWithAppContent:Z

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mCaption:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Landroid/view/ViewOutlineProvider;->BOUNDS:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 203
    const v0, 0x1020369

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMove:Landroid/view/View;

    .line 204
    const v0, 0x102036a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMaximize:Landroid/view/View;

    .line 205
    const v0, 0x102036b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mClose:Landroid/view/View;

    .line 206
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView;->mMove:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->updateOutLineProvider()V

    .line 210
    invoke-direct {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->updateCaptionVisibility()V

    .line 211
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 191
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method
