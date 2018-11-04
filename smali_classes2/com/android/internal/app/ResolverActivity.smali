.class public Lcom/android/internal/app/ResolverActivity;
.super Lmiui/app/AlertActivity;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivity$1;,
        Lcom/android/internal/app/ResolverActivity$ActionTitle;,
        Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;,
        Lcom/android/internal/app/ResolverActivity$ItemClickListener;,
        Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;,
        Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;,
        Lcom/android/internal/app/ResolverActivity$LoadIconTask;,
        Lcom/android/internal/app/ResolverActivity$PageGridAdapter;,
        Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;,
        Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;,
        Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;,
        Lcom/android/internal/app/ResolverActivity$TargetInfo;,
        Lcom/android/internal/app/ResolverActivity$ViewHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXTRA_RESOLVE_INFOS:Ljava/lang/String; = "rlist"

.field private static final MAX_PER_SCREEN:I = 0x8

.field private static final PRIV_PACKAGES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ResolverActivity"


# instance fields
.field private final PACKAGE_NAME_BROWSER:Ljava/lang/String;

.field private mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

.field private mAlwaysUseOption:Z

.field private mFilteredComponents:[Landroid/content/ComponentName;

.field private mIconDpi:I

.field private mIconSize:I

.field private final mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mLaunchedFromUid:I

.field private mMaskColor:I

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mProfileSwitchMessageId:I

.field private mProfileView:Landroid/view/View;

.field private mRecommendFirstItem:Z

.field private mRegistered:Z

.field private mResolverComparator:Lcom/android/internal/app/ResolverComparator;

.field protected mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

.field private mResolvingHome:Z

.field private mSafeForwardingMode:Z

.field private mScreenView:Lmiui/widget/ScreenView;

.field private mShowMoreResolverButton:Z


# direct methods
.method static synthetic -get0()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/android/internal/app/ResolverActivity;->PRIV_PACKAGES:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/app/ResolverActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mIconSize:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/internal/app/ResolverActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mMaskColor:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/app/ResolverActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecommendFirstItem:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverComparator;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mShowMoreResolverButton:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;)Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/app/ResolverActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/internal/app/ResolverActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mRecommendFirstItem:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/internal/app/ResolverActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mShowMoreResolverButton:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/app/ResolverActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "displayResolveInfos"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->sendResolverShownAnalyticsBroadcast(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->showMore()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/app/ResolverActivity;->PRIV_PACKAGES:Ljava/util/Set;

    .line 131
    sget-object v0, Lcom/android/internal/app/ResolverActivity;->PRIV_PACKAGES:Ljava/util/Set;

    const-string/jumbo v1, "com.miui.personalassistant.favorite"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    const/4 v0, 0x0

    if-eqz v0, :cond_0

    .line 133
    sget-object v0, Lcom/android/internal/app/ResolverActivity;->PRIV_PACKAGES:Ljava/util/Set;

    const-string/jumbo v1, "com.xiaomi.midrop"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v0, Lcom/android/internal/app/ResolverActivity;->PRIV_PACKAGES:Ljava/util/Set;

    const-string/jumbo v1, "com.android.browser"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Lmiui/app/AlertActivity;-><init>()V

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mShowMoreResolverButton:Z

    .line 128
    const-string/jumbo v0, "com.android.browser"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->PACKAGE_NAME_BROWSER:Ljava/lang/String;

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    .line 148
    new-instance v0, Lcom/android/internal/app/ResolverActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$1;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 110
    return-void
.end method

.method private collectAnalyticsData(Ljava/util/List;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 1011
    .local p1, "displayResolveInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1012
    .local v3, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 1013
    .local v1, "info":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1016
    .end local v1    # "info":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1017
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "displayPackages"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1018
    const-string/jumbo v4, "chooserId"

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->hashCode()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1019
    const-string/jumbo v4, "recommendFirstItem"

    iget-boolean v5, p0, Lcom/android/internal/app/ResolverActivity;->mRecommendFirstItem:Z

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1020
    const-string/jumbo v4, "maxCountPerScreen"

    const/16 v5, 0x8

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1021
    return-object v0
.end method

.method public static getLabelRes(Ljava/lang/String;)I
    .locals 1
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-static {p0}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->labelRes:I

    return v0
.end method

.method private getReferrerPackageName()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 462
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrer()Landroid/net/Uri;

    move-result-object v0

    .line 463
    .local v0, "referrer":Landroid/net/Uri;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "android-app"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 466
    :cond_0
    return-object v3
.end method

.method private hasManagedProfile()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 614
    const-string/jumbo v5, "user"

    invoke-virtual {p0, v5}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 615
    .local v4, "userManager":Landroid/os/UserManager;
    if-nez v4, :cond_0

    .line 616
    return v6

    .line 620
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .line 621
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "userInfo$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 622
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    .line 623
    const/4 v5, 0x1

    return v5

    .line 626
    .end local v1    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "userInfo$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 627
    .local v0, "e":Ljava/lang/SecurityException;
    return v6

    .line 629
    .end local v0    # "e":Ljava/lang/SecurityException;
    .restart local v1    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v3    # "userInfo$iterator":Ljava/util/Iterator;
    :cond_2
    return v6
.end method

.method private inflateGridView(I)Landroid/widget/GridView;
    .locals 6
    .param p1, "page"    # I

    .prologue
    .line 977
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mScreenView:Lmiui/widget/ScreenView;

    const v4, 0x11030013

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 978
    .local v0, "grid":Landroid/widget/GridView;
    new-instance v2, Lcom/android/internal/app/ResolverActivity$PageGridAdapter;

    invoke-direct {v2, p0, p0, p1}, Lcom/android/internal/app/ResolverActivity$PageGridAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 979
    new-instance v1, Lcom/android/internal/app/ResolverActivity$ItemClickListener;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/ResolverActivity$ItemClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;I)V

    .line 980
    .local v1, "listener":Lcom/android/internal/app/ResolverActivity$ItemClickListener;
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 981
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 982
    return-object v0
.end method

.method private initGridViews()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v7, -0x2

    const/4 v9, 0x0

    .line 950
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v6}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    .line 951
    .local v0, "count":I
    div-int/lit8 v1, v0, 0x8

    .line 952
    .local v1, "divider":I
    rem-int/lit8 v6, v0, 0x8

    if-nez v6, :cond_1

    move v4, v1

    .line 953
    .local v4, "page":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mScreenView:Lmiui/widget/ScreenView;

    invoke-virtual {v6}, Lmiui/widget/ScreenView;->removeAllViews()V

    .line 954
    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    .line 955
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mScreenView:Lmiui/widget/ScreenView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lmiui/widget/ScreenView;->setSeekBarVisibility(I)V

    .line 957
    invoke-direct {p0, v4}, Lcom/android/internal/app/ResolverActivity;->inflateGridView(I)Landroid/widget/GridView;

    move-result-object v2

    .line 958
    .local v2, "grid":Landroid/widget/GridView;
    invoke-virtual {v2}, Landroid/widget/GridView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v2}, Landroid/widget/GridView;->getPaddingTop()I

    move-result v7

    invoke-virtual {v2}, Landroid/widget/GridView;->getPaddingRight()I

    move-result v8

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 959
    invoke-virtual {v2}, Landroid/widget/GridView;->getCount()I

    move-result v6

    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 960
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mScreenView:Lmiui/widget/ScreenView;

    invoke-virtual {v6, v2}, Lmiui/widget/ScreenView;->addView(Landroid/view/View;)V

    .line 949
    .end local v2    # "grid":Landroid/widget/GridView;
    :cond_0
    return-void

    .line 952
    .end local v4    # "page":I
    :cond_1
    add-int/lit8 v4, v1, 0x1

    .restart local v4    # "page":I
    goto :goto_0

    .line 962
    :cond_2
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 964
    const/16 v6, 0x51

    .line 962
    invoke-direct {v5, v7, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 965
    .local v5, "seekbarParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mScreenView:Lmiui/widget/ScreenView;

    invoke-virtual {v6, v5}, Lmiui/widget/ScreenView;->setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 966
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mScreenView:Lmiui/widget/ScreenView;

    invoke-virtual {v6, v9}, Lmiui/widget/ScreenView;->setSeekBarVisibility(I)V

    .line 968
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_0

    .line 969
    add-int/lit8 v6, v3, 0x1

    invoke-direct {p0, v6}, Lcom/android/internal/app/ResolverActivity;->inflateGridView(I)Landroid/widget/GridView;

    move-result-object v2

    .line 970
    .restart local v2    # "grid":Landroid/widget/GridView;
    invoke-virtual {v2, v10}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 971
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mScreenView:Lmiui/widget/ScreenView;

    invoke-virtual {v6, v2}, Lmiui/widget/ScreenView;->addView(Landroid/view/View;)V

    .line 968
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method static final isSpecificUriMatch(I)Z
    .locals 2
    .param p0, "match"    # I

    .prologue
    const/4 v0, 0x0

    .line 2106
    const/high16 v1, 0xfff0000

    and-int/2addr p0, v1

    .line 2107
    const/high16 v1, 0x300000

    if-lt p0, v1, :cond_0

    .line 2108
    const/high16 v1, 0x500000

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    .line 2107
    :cond_0
    return v0
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 226
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 227
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 233
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 234
    return-object v0
.end method

.method static resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z
    .locals 3
    .param p0, "lhs"    # Landroid/content/pm/ResolveInfo;
    .param p1, "rhs"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 993
    if-nez p0, :cond_2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 994
    :cond_2
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_3

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 995
    :cond_3
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 996
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v1

    .line 995
    goto :goto_0
.end method

.method private safelyStartActivityInternal(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 6
    .param p1, "cti"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    const/4 v5, 0x0

    .line 858
    iget v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 859
    iget v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 861
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mSafeForwardingMode:Z

    if-nez v3, :cond_2

    .line 862
    invoke-interface {p1, p0, v5}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->start(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 863
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 865
    :cond_1
    return-void

    .line 868
    :cond_2
    const/4 v3, 0x0

    const/16 v4, -0x2710

    :try_start_0
    invoke-interface {p1, p0, v3, v4}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->startAsCaller(Landroid/app/Activity;Landroid/os/Bundle;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 869
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
    :cond_3
    :goto_0
    return-void

    .line 871
    :catch_0
    move-exception v0

    .line 874
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .line 875
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    .line 874
    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 879
    .local v2, "launchedFromPackage":Ljava/lang/String;
    :goto_1
    const-string/jumbo v3, "ResolverActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to launch as uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 880
    const-string/jumbo v5, " package "

    .line 879
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 880
    const-string/jumbo v5, ", while running in "

    .line 879
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 881
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v5

    .line 879
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 876
    .end local v2    # "launchedFromPackage":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 877
    .local v1, "e2":Landroid/os/RemoteException;
    const-string/jumbo v2, "??"

    .restart local v2    # "launchedFromPackage":Ljava/lang/String;
    goto :goto_1
.end method

.method private sendAnalyticBroadcast(Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p2, "metaKey"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "displayResolveInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;>;"
    const/4 v5, 0x0

    .line 1026
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "info$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 1027
    .local v1, "info":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1028
    .local v4, "meta":Landroid/os/Bundle;
    if-eqz v4, :cond_1

    invoke-virtual {v4, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1029
    .local v0, "action":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_0

    .line 1033
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1034
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1035
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1036
    const-string/jumbo v6, "miui.permission.USE_INTERNAL_GENERAL_API"

    invoke-virtual {p0, v3, v6}, Lcom/android/internal/app/ResolverActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "action":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1
    move-object v0, v5

    .line 1028
    goto :goto_1

    .line 1025
    .end local v1    # "info":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .end local v4    # "meta":Landroid/os/Bundle;
    :cond_2
    return-void
.end method

.method private sendItemSelectedAnalyticsBroadcast(Ljava/util/List;I)V
    .locals 2
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1000
    .local p1, "displayResolveInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->collectAnalyticsData(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v0

    .line 1001
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v1, "selectedItem"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1002
    const-string/jumbo v1, "com.miui.action.resolver_activity_item_select"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/app/ResolverActivity;->sendAnalyticBroadcast(Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 999
    return-void
.end method

.method private sendResolverShownAnalyticsBroadcast(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1006
    .local p1, "displayResolveInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->collectAnalyticsData(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v0

    .line 1007
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v1, "com.miui.action.resolver_activity_shown"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/app/ResolverActivity;->sendAnalyticBroadcast(Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1005
    return-void
.end method

.method private setProfileSwitchMessageId(I)V
    .locals 5
    .param p1, "contentUserHint"    # I

    .prologue
    .line 490
    const/4 v4, -0x2

    if-eq p1, v4, :cond_1

    .line 491
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eq p1, v4, :cond_1

    .line 492
    const-string/jumbo v4, "user"

    invoke-virtual {p0, v4}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 493
    .local v3, "userManager":Landroid/os/UserManager;
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 494
    .local v1, "originUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    .line 496
    :goto_0
    invoke-virtual {v3}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v2

    .line 497
    .local v2, "targetIsManaged":Z
    if-eqz v0, :cond_0

    if-eqz v2, :cond_3

    .line 499
    :cond_0
    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    .line 500
    const v4, 0x11090100

    iput v4, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    .line 489
    .end local v1    # "originUserInfo":Landroid/content/pm/UserInfo;
    .end local v2    # "targetIsManaged":Z
    .end local v3    # "userManager":Landroid/os/UserManager;
    :cond_1
    :goto_1
    return-void

    .line 495
    .restart local v1    # "originUserInfo":Landroid/content/pm/UserInfo;
    .restart local v3    # "userManager":Landroid/os/UserManager;
    :cond_2
    const/4 v0, 0x0

    .local v0, "originIsManaged":Z
    goto :goto_0

    .line 498
    .end local v0    # "originIsManaged":Z
    .restart local v2    # "targetIsManaged":Z
    :cond_3
    const v4, 0x110900ff

    iput v4, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    goto :goto_1
.end method

.method private showMore()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 647
    iput-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mShowMoreResolverButton:Z

    .line 648
    const v2, 0x110c0034

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 649
    .local v0, "alwaysOption":Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 650
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 652
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    .line 653
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->initGridViews()V

    .line 654
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mScreenView:Lmiui/widget/ScreenView;

    invoke-virtual {v2}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 655
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mScreenView:Lmiui/widget/ScreenView;

    invoke-virtual {v2, v1}, Lmiui/widget/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 654
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 646
    :cond_1
    return-void
.end method

.method private supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z
    .locals 6
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v2, 0x0

    .line 634
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 635
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    .line 634
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 636
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 637
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 638
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v2
.end method


# virtual methods
.method bindProfileView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 474
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    .line 475
    .local v0, "dri":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    if-eqz v0, :cond_1

    .line 476
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 477
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const v4, 0x110c0032

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 478
    .local v1, "icon":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 479
    .local v2, "text":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v3

    if-nez v3, :cond_0

    .line 480
    new-instance v3, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/widget/ImageView;)V

    new-array v4, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 482
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 483
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    .end local v1    # "icon":Landroid/widget/ImageView;
    .end local v2    # "text":Landroid/widget/TextView;
    :goto_0
    return-void

    .line 485
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 11
    .param p2, "initialIntents"    # [Landroid/content/Intent;
    .param p4, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p3, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 920
    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v6, v8

    :goto_0
    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 919
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->createAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    .line 922
    iput-boolean p4, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    .line 924
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getUnfilteredCount()I

    move-result v7

    .line 925
    .local v7, "count":I
    if-gt v7, v9, :cond_1

    if-ne v7, v9, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 926
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x11030014

    invoke-virtual {v1, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 927
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x110c0033

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ScreenView;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mScreenView:Lmiui/widget/ScreenView;

    .line 928
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mScreenView:Lmiui/widget/ScreenView;

    invoke-virtual {v0, v9}, Lmiui/widget/ScreenView;->setScreenTransitionType(I)V

    .line 929
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->initGridViews()V

    .line 930
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {p0, v10, v0, p4}, Lcom/android/internal/app/ResolverActivity;->onPrepareAdapterView(Landroid/widget/AbsListView;Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;Z)V

    .line 931
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 932
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    new-instance v1, Lcom/android/internal/app/ResolverActivity$4;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$4;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 913
    :goto_1
    return-void

    .end local v7    # "count":I
    :cond_2
    move v6, v9

    .line 920
    goto :goto_0

    .line 938
    .restart local v7    # "count":I
    :cond_3
    if-ne v7, v9, :cond_4

    .line 939
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0, v8, v8}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 940
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 941
    iput-boolean v8, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 942
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 943
    return-void

    .line 945
    :cond_4
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x1109003d

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method public createAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "initialIntents"    # [Landroid/content/Intent;
    .param p5, "launchedFromUid"    # I
    .param p6, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZ)",
            "Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;"
        }
    .end annotation

    .prologue
    .line 908
    .local p2, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p4, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)V

    return-object v0
.end method

.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 609
    invoke-super {p0}, Lmiui/app/AlertActivity;->finish()V

    .line 610
    invoke-virtual {p0, v0, v0}, Lcom/android/internal/app/ResolverActivity;->overridePendingTransition(II)V

    .line 608
    return-void
.end method

.method getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    .line 533
    :try_start_0
    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 538
    :goto_0
    return-object v1

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .local v1, "result":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 470
    const/4 v0, 0x0

    return v0
.end method

.method public getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "defIntent"    # Landroid/content/Intent;

    .prologue
    .line 690
    return-object p2
.end method

.method public getTargetIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_0
.end method

.method protected getTitleForAction(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "defaultTitleRes"    # I

    .prologue
    .line 522
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-eqz v1, :cond_0

    sget-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 523
    .local v0, "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :goto_0
    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_1

    .line 524
    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 522
    .end local v0    # "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :cond_0
    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v0

    .restart local v0    # "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    goto :goto_0

    .line 526
    :cond_1
    iget v1, v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->titleRes:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final isComponentFiltered(Landroid/content/pm/ComponentInfo;)Z
    .locals 7
    .param p1, "component"    # Landroid/content/pm/ComponentInfo;

    .prologue
    const/4 v3, 0x0

    .line 407
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mFilteredComponents:[Landroid/content/ComponentName;

    if-nez v2, :cond_0

    .line 408
    return v3

    .line 411
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 412
    .local v0, "checkName":Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mFilteredComponents:[Landroid/content/ComponentName;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v1, v4, v2

    .line 413
    .local v1, "name":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 414
    const/4 v2, 0x1

    return v2

    .line 412
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 417
    .end local v1    # "name":Landroid/content/ComponentName;
    :cond_2
    return v3
.end method

.method loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 544
    :try_start_0
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget v3, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v3, :cond_0

    .line 545
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 546
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 547
    return-object v0

    .line 550
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v2

    .line 551
    .local v2, "iconRes":I
    if-eqz v2, :cond_1

    .line 552
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 553
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 554
    return-object v0

    .line 557
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v2    # "iconRes":I
    :catch_0
    move-exception v1

    .line 558
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "ResolverActivity"

    const-string/jumbo v4, "Couldn\'t find resources for package"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 560
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3
.end method

.method public onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 0
    .param p1, "cti"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    .line 885
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 240
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v2

    .line 241
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    .line 242
    .local v8, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v0, "android.intent.action.MAIN"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    if-eqz v8, :cond_0

    .line 244
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v7, :cond_0

    .line 245
    const-string/jumbo v0, "android.intent.category.HOME"

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 242
    if-eqz v0, :cond_0

    .line 247
    iput-boolean v7, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    .line 250
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSafeForwardingMode(Z)V

    .line 252
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 238
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "defaultTitleRes"    # I
    .param p5, "initialIntents"    # [Landroid/content/Intent;
    .param p7, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "I[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p6, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget v10, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-virtual {p0, v10}, Lcom/android/internal/app/ResolverActivity;->setTheme(I)V

    .line 270
    const/4 v10, 0x1

    invoke-static {v10}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 271
    invoke-super {p0, p1}, Lmiui/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 274
    const-string/jumbo v10, "android.intent.action.VIEW"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 275
    const-string/jumbo v10, "android.intent.action.WEB_SEARCH"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 278
    :cond_0
    :goto_0
    iget-boolean v10, p0, Lcom/android/internal/app/ResolverActivity;->mShowMoreResolverButton:Z

    if-eqz v10, :cond_4

    if-eqz p5, :cond_4

    .line 279
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    move-object/from16 v0, p5

    array-length v10, v0

    if-ge v6, v10, :cond_4

    .line 280
    aget-object v7, p5, v6

    .line 281
    .local v7, "ii":Landroid/content/Intent;
    const-string/jumbo v10, "android.intent.action.VIEW"

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 282
    const-string/jumbo v10, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 279
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 276
    .end local v6    # "i":I
    .end local v7    # "ii":Landroid/content/Intent;
    :cond_2
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/internal/app/ResolverActivity;->mShowMoreResolverButton:Z

    goto :goto_0

    .line 283
    .restart local v6    # "i":I
    .restart local v7    # "ii":Landroid/content/Intent;
    :cond_3
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/internal/app/ResolverActivity;->mShowMoreResolverButton:Z

    .line 290
    .end local v6    # "i":I
    .end local v7    # "ii":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getContentUserHint()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/internal/app/ResolverActivity;->setProfileSwitchMessageId(I)V

    .line 293
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    .line 294
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v11

    .line 293
    invoke-interface {v10, v11}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v10

    iput v10, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_2
    iget v10, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    if-ltz v10, :cond_5

    iget v10, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-static {v10}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 301
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 302
    return-void

    .line 295
    :catch_0
    move-exception v5

    .line 296
    .local v5, "e":Landroid/os/RemoteException;
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    goto :goto_2

    .line 305
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 307
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, p0, v11, v12}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 308
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 310
    const-string/jumbo v10, "activity"

    invoke-virtual {p0, v10}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 311
    .local v4, "am":Landroid/app/ActivityManager;
    invoke-virtual {v4}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v10

    iput v10, p0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    .line 312
    invoke-virtual {v4}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v10

    iput v10, p0, Lcom/android/internal/app/ResolverActivity;->mIconSize:I

    .line 313
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x11070012

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    iput v10, p0, Lcom/android/internal/app/ResolverActivity;->mMaskColor:I

    .line 316
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v12, 0x0

    invoke-virtual {v10, v12, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 318
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v9

    .line 320
    .local v9, "referrerPackage":Ljava/lang/String;
    new-instance v10, Lcom/android/internal/app/ResolverComparator;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-direct {v10, p0, v11, v9}, Lcom/android/internal/app/ResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    iput-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    .line 322
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move/from16 v2, p7

    invoke-virtual {p0, v10, v0, v1, v2}, Lcom/android/internal/app/ResolverActivity;->configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 326
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/app/ResolverActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-static {p0, v10, v11}, Lmiui/securityspace/XSpaceResolverActivityHelper;->checkAndResolve(Landroid/app/Activity;Landroid/content/Intent;Lcom/android/internal/app/AlertController$AlertParams;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 327
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->setupAlert()V

    .line 328
    iget-boolean v10, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-eqz v10, :cond_7

    .line 329
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v10}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 330
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 332
    :cond_7
    return-void

    .line 336
    :cond_8
    const v10, 0x102032f

    invoke-virtual {p0, v10}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/ResolverDrawerLayout;

    .line 337
    .local v8, "rdl":Lcom/android/internal/widget/ResolverDrawerLayout;
    if-eqz v8, :cond_a

    .line 338
    new-instance v10, Lcom/android/internal/app/ResolverActivity$2;

    invoke-direct {v10, p0}, Lcom/android/internal/app/ResolverActivity$2;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v8, v10}, Lcom/android/internal/widget/ResolverDrawerLayout;->setOnDismissedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V

    .line 344
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 345
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/android/internal/widget/ResolverDrawerLayout;->setCollapsed(Z)V

    .line 347
    :cond_9
    iput-object v8, p0, Lcom/android/internal/app/ResolverActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    .line 350
    :cond_a
    if-nez p3, :cond_b

    .line 351
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {p0, v10, v0}, Lcom/android/internal/app/ResolverActivity;->getTitleForAction(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 353
    :cond_b
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    move-object/from16 v0, p3

    iput-object v0, v10, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 355
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->setupAlert()V

    .line 358
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/high16 v11, 0x20000

    invoke-virtual {v10, v11}, Landroid/view/Window;->clearFlags(I)V

    .line 360
    if-eqz p7, :cond_c

    .line 361
    const v10, 0x110c0034

    invoke-virtual {p0, v10}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 362
    .local v3, "alwaysOption":Landroid/widget/CheckBox;
    if-eqz v3, :cond_10

    .line 363
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 364
    iget-boolean v10, p0, Lcom/android/internal/app/ResolverActivity;->mShowMoreResolverButton:Z

    if-eqz v10, :cond_f

    .line 365
    const/4 v10, 0x0

    .line 364
    if-eqz v10, :cond_f

    .line 366
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v10, v10, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    if-eqz v10, :cond_f

    .line 367
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v10, v10, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_f

    .line 368
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 377
    .end local v3    # "alwaysOption":Landroid/widget/CheckBox;
    :cond_c
    :goto_3
    const v10, 0x110c0031

    invoke-virtual {p0, v10}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    .line 378
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    if-eqz v10, :cond_d

    .line 379
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    new-instance v11, Lcom/android/internal/app/ResolverActivity$3;

    invoke-direct {v11, p0}, Lcom/android/internal/app/ResolverActivity$3;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->bindProfileView()V

    .line 397
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 398
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->onSetupVoiceInteraction()V

    .line 267
    :cond_e
    return-void

    .line 370
    .restart local v3    # "alwaysOption":Landroid/widget/CheckBox;
    :cond_f
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    .line 373
    :cond_10
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    goto :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 261
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 601
    invoke-super {p0}, Lmiui/app/AlertActivity;->onDestroy()V

    .line 602
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;->cancel()V

    .line 600
    :cond_0
    return-void
.end method

.method public onPrepareAdapterView(Landroid/widget/AbsListView;Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;Z)V
    .locals 0
    .param p1, "adapterView"    # Landroid/widget/AbsListView;
    .param p2, "adapter"    # Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .param p3, "alwaysUseOption"    # Z

    .prologue
    .line 986
    return-void
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    .line 565
    invoke-super {p0}, Lmiui/app/AlertActivity;->onRestart()V

    .line 566
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-nez v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 568
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    .line 571
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 572
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->bindProfileView()V

    .line 564
    :cond_1
    return-void
.end method

.method public onSetupVoiceInteraction()V
    .locals 0

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->sendVoiceChoicesIfNeeded()V

    .line 423
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 578
    invoke-super {p0}, Lmiui/app/AlertActivity;->onStop()V

    .line 579
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-eqz v1, :cond_0

    .line 580
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v1}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 581
    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 583
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 584
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 577
    :cond_1
    :goto_0
    return-void

    .line 585
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-nez v1, :cond_1

    .line 593
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isChangingConfigurations()Z

    move-result v1

    if-nez v1, :cond_1

    .line 594
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    goto :goto_0
.end method

.method protected onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z
    .locals 40
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p2, "alwaysCheck"    # Z

    .prologue
    .line 694
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v36

    .line 695
    .local v36, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz p1, :cond_2

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v4

    .line 697
    .local v4, "intent":Landroid/content/Intent;
    :goto_0
    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 698
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    if-eqz v3, :cond_10

    .line 700
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 703
    .local v7, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v4}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 704
    invoke-virtual {v4}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v22

    .line 709
    .local v22, "filterIntent":Landroid/content/Intent;
    :goto_1
    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .line 710
    .local v13, "action":Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 711
    invoke-virtual {v7, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 713
    :cond_1
    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v17

    .line 714
    .local v17, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v17, :cond_4

    .line 715
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "cat$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 716
    .local v15, "cat":Ljava/lang/String;
    invoke-virtual {v7, v15}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_2

    .line 695
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v13    # "action":Ljava/lang/String;
    .end local v15    # "cat":Ljava/lang/String;
    .end local v16    # "cat$iterator":Ljava/util/Iterator;
    .end local v17    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v22    # "filterIntent":Landroid/content/Intent;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 706
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v7    # "filter":Landroid/content/IntentFilter;
    :cond_3
    move-object/from16 v22, v4

    .restart local v22    # "filterIntent":Landroid/content/Intent;
    goto :goto_1

    .line 719
    .restart local v13    # "action":Ljava/lang/String;
    .restart local v17    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    const-string/jumbo v3, "android.intent.category.DEFAULT"

    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 721
    move-object/from16 v0, v36

    iget v3, v0, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v5, 0xfff0000

    and-int v14, v3, v5

    .line 722
    .local v14, "cat":I
    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v19

    .line 723
    .local v19, "data":Landroid/net/Uri;
    const/high16 v3, 0x600000

    if-ne v14, v3, :cond_5

    .line 724
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v27

    .line 725
    .local v27, "mimeType":Ljava/lang/String;
    if-eqz v27, :cond_5

    .line 727
    :try_start_0
    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v27    # "mimeType":Ljava/lang/String;
    :cond_5
    :goto_3
    if-eqz v19, :cond_6

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 738
    const/high16 v3, 0x600000

    if-ne v14, v3, :cond_8

    .line 739
    const-string/jumbo v3, "file"

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 740
    const-string/jumbo v3, "content"

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 782
    :cond_6
    :goto_4
    if-eqz v7, :cond_10

    .line 783
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    .line 784
    .local v10, "N":I
    new-array v0, v10, [Landroid/content/ComponentName;

    move-object/from16 v37, v0

    .line 785
    .local v37, "set":[Landroid/content/ComponentName;
    const/4 v8, 0x0

    .line 786
    .local v8, "bestMatch":I
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_5
    move/from16 v0, v24

    if-ge v0, v10, :cond_f

    .line 787
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    move/from16 v0, v24

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v34

    .line 788
    .local v34, "r":Landroid/content/pm/ResolveInfo;
    new-instance v3, Landroid/content/ComponentName;

    move-object/from16 v0, v34

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 789
    move-object/from16 v0, v34

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 788
    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v37, v24

    .line 790
    move-object/from16 v0, v34

    iget v3, v0, Landroid/content/pm/ResolveInfo;->match:I

    if-le v3, v8, :cond_7

    move-object/from16 v0, v34

    iget v8, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 786
    :cond_7
    add-int/lit8 v24, v24, 0x1

    goto :goto_5

    .line 728
    .end local v8    # "bestMatch":I
    .end local v10    # "N":I
    .end local v24    # "i":I
    .end local v34    # "r":Landroid/content/pm/ResolveInfo;
    .end local v37    # "set":[Landroid/content/ComponentName;
    .restart local v7    # "filter":Landroid/content/IntentFilter;
    .restart local v27    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v21

    .line 729
    .local v21, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string/jumbo v3, "ResolverActivity"

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 730
    const/4 v7, 0x0

    .local v7, "filter":Landroid/content/IntentFilter;
    goto :goto_3

    .line 741
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v21    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v27    # "mimeType":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 745
    move-object/from16 v0, v36

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v29

    .line 746
    .local v29, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v29, :cond_a

    .line 747
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v38

    .line 748
    .local v38, "ssp":Ljava/lang/String;
    :cond_9
    if-eqz v38, :cond_a

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 749
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/os/PatternMatcher;

    .line 750
    .local v28, "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v28

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 751
    invoke-virtual/range {v28 .. v28}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v28 .. v28}, Landroid/os/PatternMatcher;->getType()I

    move-result v5

    invoke-virtual {v7, v3, v5}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 756
    .end local v28    # "p":Landroid/os/PatternMatcher;
    .end local v38    # "ssp":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v36

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v12

    .line 757
    .local v12, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v12, :cond_c

    .line 758
    :cond_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 759
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/IntentFilter$AuthorityEntry;

    .line 760
    .local v11, "a":Landroid/content/IntentFilter$AuthorityEntry;
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v3

    if-ltz v3, :cond_b

    .line 761
    invoke-virtual {v11}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v33

    .line 762
    .local v33, "port":I
    invoke-virtual {v11}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 763
    if-ltz v33, :cond_e

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 762
    :goto_6
    invoke-virtual {v7, v5, v3}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    .end local v11    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v33    # "port":I
    :cond_c
    move-object/from16 v0, v36

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v29

    .line 769
    if-eqz v29, :cond_6

    .line 770
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v31

    .line 771
    .local v31, "path":Ljava/lang/String;
    :cond_d
    if-eqz v31, :cond_6

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 772
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/os/PatternMatcher;

    .line 773
    .restart local v28    # "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 774
    invoke-virtual/range {v28 .. v28}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v28 .. v28}, Landroid/os/PatternMatcher;->getType()I

    move-result v5

    invoke-virtual {v7, v3, v5}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 763
    .end local v28    # "p":Landroid/os/PatternMatcher;
    .end local v31    # "path":Ljava/lang/String;
    .restart local v11    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v33    # "port":I
    :cond_e
    const/4 v3, 0x0

    goto :goto_6

    .line 792
    .end local v11    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v12    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v29    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v33    # "port":I
    .restart local v8    # "bestMatch":I
    .restart local v10    # "N":I
    .restart local v24    # "i":I
    .restart local v37    # "set":[Landroid/content/ComponentName;
    :cond_f
    if-eqz p2, :cond_18

    .line 793
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result v39

    .line 794
    .local v39, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v32

    .line 797
    .local v32, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    move-object/from16 v0, v32

    move-object/from16 v1, v37

    invoke-virtual {v0, v7, v8, v1, v3}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 799
    move-object/from16 v0, v36

    iget-boolean v3, v0, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v3, :cond_12

    .line 801
    move-object/from16 v0, v32

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object v30

    .line 802
    .local v30, "packageName":Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 803
    move-object/from16 v0, v36

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v32

    move/from16 v1, v39

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    .line 838
    .end local v8    # "bestMatch":I
    .end local v10    # "N":I
    .end local v13    # "action":Ljava/lang/String;
    .end local v14    # "cat":I
    .end local v17    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v19    # "data":Landroid/net/Uri;
    .end local v22    # "filterIntent":Landroid/content/Intent;
    .end local v24    # "i":I
    .end local v30    # "packageName":Ljava/lang/String;
    .end local v32    # "pm":Landroid/content/pm/PackageManager;
    .end local v37    # "set":[Landroid/content/ComponentName;
    .end local v39    # "userId":I
    :cond_10
    :goto_7
    if-eqz p1, :cond_11

    .line 839
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 841
    :cond_11
    const/4 v3, 0x1

    return v3

    .line 807
    .restart local v8    # "bestMatch":I
    .restart local v10    # "N":I
    .restart local v13    # "action":Ljava/lang/String;
    .restart local v14    # "cat":I
    .restart local v17    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v19    # "data":Landroid/net/Uri;
    .restart local v22    # "filterIntent":Landroid/content/Intent;
    .restart local v24    # "i":I
    .restart local v32    # "pm":Landroid/content/pm/PackageManager;
    .restart local v37    # "set":[Landroid/content/ComponentName;
    .restart local v39    # "userId":I
    :cond_12
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    .line 808
    .local v18, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v30

    .line 809
    .restart local v30    # "packageName":Ljava/lang/String;
    if-eqz v19, :cond_13

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v20

    .line 811
    .local v20, "dataScheme":Ljava/lang/String;
    :goto_8
    if-eqz v20, :cond_15

    .line 812
    const-string/jumbo v3, "http"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 813
    const-string/jumbo v3, "https"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    .line 815
    :goto_9
    if-eqz v13, :cond_16

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    .line 816
    :goto_a
    if-eqz v17, :cond_17

    .line 817
    const-string/jumbo v3, "android.intent.category.BROWSABLE"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    .line 819
    :goto_b
    if-eqz v25, :cond_10

    if-eqz v26, :cond_10

    if-eqz v23, :cond_10

    .line 821
    const/4 v3, 0x2

    .line 820
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    move/from16 v2, v39

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->updateIntentVerificationStatusAsUser(Ljava/lang/String;II)Z

    goto :goto_7

    .line 809
    .end local v20    # "dataScheme":Ljava/lang/String;
    :cond_13
    const/16 v20, 0x0

    goto :goto_8

    .line 812
    .restart local v20    # "dataScheme":Ljava/lang/String;
    :cond_14
    const/16 v25, 0x1

    .local v25, "isHttpOrHttps":Z
    goto :goto_9

    .line 811
    .end local v25    # "isHttpOrHttps":Z
    :cond_15
    const/16 v25, 0x0

    .restart local v25    # "isHttpOrHttps":Z
    goto :goto_9

    .line 815
    .end local v25    # "isHttpOrHttps":Z
    :cond_16
    const/16 v26, 0x0

    .local v26, "isViewAction":Z
    goto :goto_a

    .line 816
    .end local v26    # "isViewAction":Z
    :cond_17
    const/16 v23, 0x0

    .local v23, "hasCategoryBrowsable":Z
    goto :goto_b

    .line 827
    .end local v18    # "cn":Landroid/content/ComponentName;
    .end local v20    # "dataScheme":Ljava/lang/String;
    .end local v23    # "hasCategoryBrowsable":Z
    .end local v30    # "packageName":Ljava/lang/String;
    .end local v32    # "pm":Landroid/content/pm/PackageManager;
    .end local v39    # "userId":I
    :cond_18
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 828
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    .line 830
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    .line 829
    const/high16 v6, 0x10000

    .line 827
    invoke-interface/range {v3 .. v9}, Landroid/content/pm/IPackageManager;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    .line 831
    :catch_1
    move-exception v35

    .line 832
    .local v35, "re":Landroid/os/RemoteException;
    const-string/jumbo v3, "ResolverActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error calling setLastChosenActivity\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7
.end method

.method optionForChooserTarget(Lcom/android/internal/app/ResolverActivity$TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .locals 2
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p2, "index"    # I

    .prologue
    .line 446
    new-instance v0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;-><init>(Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method public safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 1
    .param p1, "cti"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    .line 847
    invoke-static {}, Landroid/os/StrictMode;->disableDeathOnFileUriExposure()V

    .line 849
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivityInternal(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 851
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    .line 844
    return-void

    .line 850
    :catchall_0
    move-exception v0

    .line 851
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    .line 850
    throw v0
.end method

.method public sendVoiceChoicesIfNeeded()V
    .locals 6

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v3

    if-nez v3, :cond_0

    .line 431
    return-void

    .line 435
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v3

    new-array v2, v3, [Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    .line 436
    .local v2, "options":[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v0, v2

    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 437
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/app/ResolverActivity;->optionForChooserTarget(Lcom/android/internal/app/ResolverActivity$TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    move-result-object v3

    aput-object v3, v2, v1

    .line 436
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 440
    :cond_1
    new-instance v3, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    .line 441
    new-instance v4, Landroid/app/VoiceInteractor$Prompt;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/VoiceInteractor$Prompt;-><init>(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    .line 440
    invoke-direct {v3, v4, v2, v5}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;-><init>(Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    .line 442
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    invoke-virtual {v3, v4}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;)Z

    .line 428
    return-void
.end method

.method protected final setAdditionalTargets([Landroid/content/Intent;)V
    .locals 4
    .param p1, "intents"    # [Landroid/content/Intent;

    .prologue
    .line 450
    if-eqz p1, :cond_0

    .line 451
    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 452
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 449
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public final setFilteredComponents([Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "components"    # [Landroid/content/ComponentName;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->mFilteredComponents:[Landroid/content/ComponentName;

    .line 402
    return-void
.end method

.method public setSafeForwardingMode(Z)V
    .locals 0
    .param p1, "safeForwarding"    # Z

    .prologue
    .line 518
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mSafeForwardingMode:Z

    .line 517
    return-void
.end method

.method public shouldAutoLaunchSingleChoice(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z
    .locals 1
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    .line 894
    const/4 v0, 0x1

    return v0
.end method

.method public shouldGetActivityMetadata()Z
    .locals 1

    .prologue
    .line 890
    const/4 v0, 0x1

    return v0
.end method

.method public showTargetDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 898
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 899
    const-string/jumbo v2, "package"

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 898
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 900
    const/high16 v2, 0x80000

    .line 898
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 901
    .local v0, "in":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 902
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->dismiss()V

    .line 897
    return-void
.end method

.method public startSelected(IZZ)V
    .locals 7
    .param p1, "which"    # I
    .param p2, "always"    # Z
    .param p3, "filtered"    # Z

    .prologue
    const/4 v6, 0x1

    .line 660
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 661
    return-void

    .line 663
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p1, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 664
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p1, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v1

    .line 665
    .local v1, "target":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    instance-of v2, v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v2, :cond_1

    .line 666
    const/4 v2, 0x0

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->-get1(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 667
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->showMore()V

    .line 668
    return-void

    .line 672
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->hasManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 680
    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 681
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-direct {p0, v2, p1}, Lcom/android/internal/app/ResolverActivity;->sendItemSelectedAnalyticsBroadcast(Ljava/util/List;I)V

    .line 682
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 659
    :cond_3
    return-void

    .line 673
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 674
    const v3, 0x1040515

    .line 673
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    .line 675
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 673
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 677
    return-void
.end method
