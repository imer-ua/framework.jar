.class Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;
.super Ljava/lang/Object;
.source "XSpaceResolverActivityHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/securityspace/XSpaceResolverActivityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResolverActivityRunner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$1;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAimClassName:Ljava/lang/String;

.field private mAimPackageName:Ljava/lang/String;

.field private mAimUserId:I

.field private mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

.field private mAlwaysOption:Landroid/widget/CheckBox;

.field private mAskType:I

.field private mContext:Landroid/content/Context;

.field private mIconSize:I

.field private mIntent:Landroid/content/Intent;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOriginalIntent:Landroid/content/Intent;

.field private mRootView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAimClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)I
    .locals 1

    iget v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAimUserId:I

    return v0
.end method

.method static synthetic -get3(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAlwaysOption:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get4(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)I
    .locals 1

    iget v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAskType:I

    return v0
.end method

.method static synthetic -get5(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;I)I
    .locals 0

    iput p1, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAimUserId:I

    return p1
.end method

.method static synthetic -set1(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;I)I
    .locals 0

    iput p1, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAskType:I

    return p1
.end method

.method static synthetic -wrap0(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->forward(I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Intent;Lcom/android/internal/app/AlertController$AlertParams;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "alertParams"    # Lcom/android/internal/app/AlertController$AlertParams;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAimClassName:Ljava/lang/String;

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAimUserId:I

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAskType:I

    .line 128
    new-instance v0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$1;

    invoke-direct {v0, p0}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$1;-><init>(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)V

    iput-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 71
    iput-object p1, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mActivity:Landroid/app/Activity;

    .line 72
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mIntent:Landroid/content/Intent;

    .line 74
    iput-object p3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 70
    return-void
.end method

.method private forward(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mOriginalIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.picked_user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mOriginalIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Lmiui/securityspace/CrossUserUtilsCompat;->startActivityAsCaller(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    .line 145
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 142
    return-void
.end method

.method private getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAimPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lmiui/securityspace/CrossUserUtils;->getOriginalAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private loadItem(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "appId"    # I
    .param p2, "iconDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 149
    iget-object v4, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mRootView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 150
    .local v0, "app":Landroid/widget/LinearLayout;
    const v4, 0x1020006

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 151
    .local v1, "icon":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 152
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v4, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mIconSize:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 153
    const v4, 0x1020014

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 154
    .local v3, "text":Landroid/widget/TextView;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMinLines(I)V

    .line 155
    const v4, 0x110c0036

    if-ne p1, v4, :cond_0

    .line 156
    iget-object v4, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mContext:Landroid/content/Context;

    invoke-static {v4, p2}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 158
    :cond_0
    const v4, 0x1020015

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object v4, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    return-void
.end method

.method private static startXSpaceServiceAsUser(Landroid/content/Context;II)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "askType"    # I
    .param p2, "mAimUserId"    # I

    .prologue
    .line 190
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 191
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "param_intent_key_has_extra"

    .line 192
    const-string/jumbo v2, "param_intent_value_has_extra"

    .line 191
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string/jumbo v1, "param_intent_key_default_asktype"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    const-string/jumbo v1, "com.miui.securitycore/com.miui.xspace.service.XSpaceService"

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 195
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 189
    return-void
.end method


# virtual methods
.method public getAppLabel()Ljava/lang/CharSequence;
    .locals 7

    .prologue
    .line 169
    const/4 v2, 0x0

    .line 171
    .local v2, "label":Ljava/lang/CharSequence;
    :try_start_0
    iget-object v5, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 172
    .local v4, "pm":Landroid/content/pm/PackageManager;
    iget-object v5, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAimPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 173
    .local v3, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    .line 174
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 175
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 177
    .local v2, "label":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 178
    return-object v2

    .line 182
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .local v2, "label":Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 185
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "label":Ljava/lang/CharSequence;
    :cond_0
    iget-object v2, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAimPackageName:Ljava/lang/String;

    .line 186
    .local v2, "label":Ljava/lang/CharSequence;
    return-object v2
.end method

.method public needShowDefaultSettingGuide()Z
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "key_default_guide_times"

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$XSpace;->getGuideNotificationTimes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 79
    iget-object v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mIntent:Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.extra.xspace_resolver_activity_original_intent"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    iput-object v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mOriginalIntent:Landroid/content/Intent;

    .line 80
    iget-object v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mOriginalIntent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mOriginalIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mOriginalIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 81
    iget-object v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mOriginalIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAimClassName:Ljava/lang/String;

    .line 82
    iget-object v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAimClassName:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/provider/MiuiSettings$XSpace;->getAskType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAskType:I

    .line 83
    iget v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAskType:I

    if-eqz v3, :cond_1

    .line 84
    iget-object v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mOriginalIntent:Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-static {v3, v5}, Lmiui/securityspace/XSpaceIntentCompat;->prepareToLeaveUser(Landroid/content/Intent;I)V

    .line 85
    iget v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAskType:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_4

    move v3, v4

    :goto_0
    iput v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAimUserId:I

    .line 88
    invoke-virtual {p0}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->needShowDefaultSettingGuide()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    iget-object v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mContext:Landroid/content/Context;

    iget v5, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAskType:I

    invoke-static {v3, v5, v4}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->startXSpaceServiceAsUser(Landroid/content/Context;II)V

    .line 91
    :cond_0
    const-string/jumbo v3, "XSpaceResolverActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Direct to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAimUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAimUserId:I

    invoke-direct {p0, v3}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->forward(I)V

    .line 96
    :cond_1
    iget-object v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v7, v3, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 97
    iget-object v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v5, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mActivity:Landroid/app/Activity;

    const v6, 0x110900cb

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 99
    iget-object v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x11030015

    invoke-virtual {v3, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mRootView:Landroid/view/View;

    .line 100
    iget-object v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v5, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mRootView:Landroid/view/View;

    iput-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 101
    iget-object v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v5, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x1040000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 102
    iget-object v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    new-instance v5, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$2;

    invoke-direct {v5, p0}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$2;-><init>(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)V

    iput-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 109
    iget-object v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mIntent:Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.extra.xspace_resolver_activity_aim_package"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAimPackageName:Ljava/lang/String;

    .line 111
    iget-object v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "activity"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 112
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v3

    iput v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mIconSize:I

    .line 114
    iget-object v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mOriginalIntent:Landroid/content/Intent;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAimPackageName:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 115
    invoke-direct {p0}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 116
    .local v1, "iconDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->getAppLabel()Ljava/lang/CharSequence;

    move-result-object v2

    .line 117
    .local v2, "label":Ljava/lang/CharSequence;
    const v3, 0x110c0035

    invoke-direct {p0, v3, v1, v2}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->loadItem(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 118
    const v3, 0x110c0036

    invoke-direct {p0, v3, v1, v2}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->loadItem(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 121
    .end local v1    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "label":Ljava/lang/CharSequence;
    :cond_2
    iget-object v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mRootView:Landroid/view/View;

    const v5, 0x110c0034

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAlwaysOption:Landroid/widget/CheckBox;

    .line 122
    iget-object v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAlwaysOption:Landroid/widget/CheckBox;

    if-eqz v3, :cond_3

    sget-object v3, Landroid/provider/MiuiSettings$XSpace;->sSupportDefaultSettingApps:Ljava/util/ArrayList;

    iget-object v5, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAimClassName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 123
    iget-object v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAlwaysOption:Landroid/widget/CheckBox;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAlwaysOption:Landroid/widget/CheckBox;

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 78
    :cond_3
    return-void

    .line 87
    .end local v0    # "am":Landroid/app/ActivityManager;
    :cond_4
    const/16 v3, 0x3e7

    goto/16 :goto_0
.end method
