.class public Landroid/preference/MiuiHideIconAppPreference;
.super Landroid/preference/DialogPreference;
.source "MiuiHideIconAppPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;,
        Landroid/preference/MiuiHideIconAppPreference$AppInfo;,
        Landroid/preference/MiuiHideIconAppPreference$LoadApplication;
    }
.end annotation


# static fields
.field public static mSkippedItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

.field private mAppListAdapter:Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;

.field private mApplication:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mListView:Landroid/widget/ListView;

.field private mLoadApplication:Landroid/preference/MiuiHideIconAppPreference$LoadApplication;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/preference/MiuiHideIconAppPreference;->mSkippedItems:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance v0, Landroid/preference/MiuiCoreSettingsPreference;

    invoke-direct {v0}, Landroid/preference/MiuiCoreSettingsPreference;-><init>()V

    iput-object v0, p0, Landroid/preference/MiuiHideIconAppPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    .line 62
    iget-object v0, p0, Landroid/preference/MiuiHideIconAppPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    invoke-virtual {p0}, Landroid/preference/MiuiHideIconAppPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/preference/MiuiCoreSettingsPreference;->initialization(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0, p1}, Landroid/preference/MiuiHideIconAppPreference;->initialization(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method static synthetic access$000(Landroid/preference/MiuiHideIconAppPreference;)Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;
    .locals 1
    .param p0, "x0"    # Landroid/preference/MiuiHideIconAppPreference;

    .prologue
    .line 48
    iget-object v0, p0, Landroid/preference/MiuiHideIconAppPreference;->mAppListAdapter:Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;

    return-object v0
.end method

.method static synthetic access$002(Landroid/preference/MiuiHideIconAppPreference;Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;)Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;
    .locals 0
    .param p0, "x0"    # Landroid/preference/MiuiHideIconAppPreference;
    .param p1, "x1"    # Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;

    .prologue
    .line 48
    iput-object p1, p0, Landroid/preference/MiuiHideIconAppPreference;->mAppListAdapter:Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;

    return-object p1
.end method

.method static synthetic access$200(Landroid/preference/MiuiHideIconAppPreference;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Landroid/preference/MiuiHideIconAppPreference;

    .prologue
    .line 48
    iget-object v0, p0, Landroid/preference/MiuiHideIconAppPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$300(Landroid/preference/MiuiHideIconAppPreference;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Landroid/preference/MiuiHideIconAppPreference;

    .prologue
    .line 48
    iget-object v0, p0, Landroid/preference/MiuiHideIconAppPreference;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Landroid/preference/MiuiHideIconAppPreference;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Landroid/preference/MiuiHideIconAppPreference;

    .prologue
    .line 48
    iget-object v0, p0, Landroid/preference/MiuiHideIconAppPreference;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Landroid/preference/MiuiHideIconAppPreference;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/preference/MiuiHideIconAppPreference;

    .prologue
    .line 48
    iget-object v0, p0, Landroid/preference/MiuiHideIconAppPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createList()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 237
    new-instance v0, Landroid/preference/MiuiHideIconAppPreference$LoadApplication;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/preference/MiuiHideIconAppPreference$LoadApplication;-><init>(Landroid/preference/MiuiHideIconAppPreference;Landroid/preference/MiuiHideIconAppPreference$1;)V

    .line 238
    .local v0, "mLoadApplication":Landroid/preference/MiuiHideIconAppPreference$LoadApplication;
    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/preference/MiuiHideIconAppPreference$LoadApplication;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 239
    iget-object v1, p0, Landroid/preference/MiuiHideIconAppPreference;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 240
    return-void
.end method

.method private getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 125
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 126
    iget-object v2, p0, Landroid/preference/MiuiHideIconAppPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/MiuiHideIconAppPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string v4, "hide_app_icon"

    invoke-virtual {v3, v4}, Landroid/preference/MiuiCoreSettingsPreference;->DrawableToID(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 131
    .local v0, "appIcon":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz p1, :cond_0

    .line 133
    :try_start_0
    iget-object v2, p0, Landroid/preference/MiuiHideIconAppPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 139
    :cond_0
    :goto_1
    return-object v0

    .line 129
    .end local v0    # "appIcon":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v2, p0, Landroid/preference/MiuiHideIconAppPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/MiuiHideIconAppPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string/jumbo v4, "sym_def_app_icon"

    invoke-virtual {v3, v4}, Landroid/preference/MiuiCoreSettingsPreference;->DrawableToID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "appIcon":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 111
    const/4 v1, 0x0

    .line 112
    .local v1, "appName":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 114
    :try_start_0
    iget-object v3, p0, Landroid/preference/MiuiHideIconAppPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Landroid/preference/MiuiHideIconAppPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Landroid/preference/MiuiHideIconAppPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v5, 0x80

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_0
    :goto_0
    return-object v1

    .line 115
    :catch_0
    move-exception v2

    .line 116
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getHideAppSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .local v4, "result":Ljava/lang/StringBuilder;
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "pairs":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 100
    if-lez v0, :cond_0

    .line 101
    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_0
    aget-object v2, v3, v0

    .line 104
    .local v2, "pair":Ljava/lang/String;
    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "keyValue":[Ljava/lang/String;
    aget-object v5, v1, v8

    invoke-direct {p0, v5}, Landroid/preference/MiuiHideIconAppPreference;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    .end local v1    # "keyValue":[Ljava/lang/String;
    .end local v2    # "pair":Ljava/lang/String;
    :cond_1
    const-string v5, "%3.20s..."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private initialization(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    iput-object p1, p0, Landroid/preference/MiuiHideIconAppPreference;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/MiuiHideIconAppPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 71
    iget-object v0, p0, Landroid/preference/MiuiHideIconAppPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string v1, "hide_preference_layout"

    invoke-virtual {v0, v1}, Landroid/preference/MiuiCoreSettingsPreference;->LayoutToID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/MiuiHideIconAppPreference;->setDialogLayoutResource(I)V

    .line 72
    iget-object v0, p0, Landroid/preference/MiuiHideIconAppPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string v1, "hide_preference_app_icon"

    invoke-virtual {v0, v1}, Landroid/preference/MiuiCoreSettingsPreference;->LayoutToID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/MiuiHideIconAppPreference;->setWidgetLayoutResource(I)V

    .line 74
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 187
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 189
    iget-object v1, p0, Landroid/preference/MiuiHideIconAppPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string v2, "appsHideList"

    invoke-virtual {v1, v2}, Landroid/preference/MiuiCoreSettingsPreference;->IDtoID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Landroid/preference/MiuiHideIconAppPreference;->mListView:Landroid/widget/ListView;

    .line 191
    iget-object v1, p0, Landroid/preference/MiuiHideIconAppPreference;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 192
    iget-object v1, p0, Landroid/preference/MiuiHideIconAppPreference;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 193
    iget-object v1, p0, Landroid/preference/MiuiHideIconAppPreference;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 194
    iget-object v1, p0, Landroid/preference/MiuiHideIconAppPreference;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 195
    iget-object v1, p0, Landroid/preference/MiuiHideIconAppPreference;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    .line 196
    iget-object v1, p0, Landroid/preference/MiuiHideIconAppPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string/jumbo v2, "progressBarHideApp"

    invoke-virtual {v1, v2}, Landroid/preference/MiuiCoreSettingsPreference;->IDtoID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Landroid/preference/MiuiHideIconAppPreference;->mProgressBar:Landroid/widget/ProgressBar;

    .line 197
    iget-object v1, p0, Landroid/preference/MiuiHideIconAppPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string/jumbo v2, "searchHideApp"

    invoke-virtual {v1, v2}, Landroid/preference/MiuiCoreSettingsPreference;->IDtoID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 198
    .local v0, "search":Landroid/widget/EditText;
    invoke-direct {p0}, Landroid/preference/MiuiHideIconAppPreference;->createList()V

    .line 199
    new-instance v1, Landroid/preference/MiuiHideIconAppPreference$1;

    invoke-direct {v1, p0}, Landroid/preference/MiuiHideIconAppPreference$1;-><init>(Landroid/preference/MiuiHideIconAppPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 219
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    .line 89
    iget-object v2, p0, Landroid/preference/MiuiHideIconAppPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    invoke-virtual {v2}, Landroid/preference/MiuiCoreSettingsPreference;->getStringValue()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Landroid/preference/MiuiHideIconAppPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string v3, "iconForHideApp"

    invoke-virtual {v2, v3}, Landroid/preference/MiuiCoreSettingsPreference;->IDtoID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 91
    .local v0, "prefAppIcon":Landroid/widget/ImageView;
    invoke-direct {p0, v1}, Landroid/preference/MiuiHideIconAppPreference;->getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Landroid/preference/MiuiHideIconAppPreference;->getHideAppSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p0, v2}, Landroid/preference/MiuiHideIconAppPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 94
    return-void

    .line 92
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 223
    packed-switch p2, :pswitch_data_0

    .line 233
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 234
    return-void

    .line 225
    :pswitch_1
    iget-object v0, p0, Landroid/preference/MiuiHideIconAppPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    iget-object v1, p0, Landroid/preference/MiuiHideIconAppPreference;->mAppListAdapter:Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;

    invoke-virtual {v1}, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->getHideAppList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/MiuiCoreSettingsPreference;->setStringValue(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Landroid/preference/MiuiHideIconAppPreference;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "my.settings.RELOADED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 78
    iget-object v1, p0, Landroid/preference/MiuiHideIconAppPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    invoke-virtual {v1}, Landroid/preference/MiuiCoreSettingsPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Landroid/preference/MiuiHideIconAppPreference;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Landroid/preference/MiuiHideIconAppPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 80
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 79
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 177
    iget-object v0, p0, Landroid/preference/MiuiHideIconAppPreference;->mLoadApplication:Landroid/preference/MiuiHideIconAppPreference$LoadApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/MiuiHideIconAppPreference;->mLoadApplication:Landroid/preference/MiuiHideIconAppPreference$LoadApplication;

    invoke-virtual {v0}, Landroid/preference/MiuiHideIconAppPreference$LoadApplication;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 178
    iget-object v0, p0, Landroid/preference/MiuiHideIconAppPreference;->mLoadApplication:Landroid/preference/MiuiHideIconAppPreference$LoadApplication;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/MiuiHideIconAppPreference$LoadApplication;->cancel(Z)Z

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/MiuiHideIconAppPreference;->mLoadApplication:Landroid/preference/MiuiHideIconAppPreference$LoadApplication;

    .line 182
    :cond_0
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 147
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 148
    if-nez p1, :cond_1

    .line 149
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Landroid/preference/MiuiHideIconAppPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {v1, p2}, Landroid/preference/MiuiCoreSettingsPreference;->setStringValue(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Landroid/preference/MiuiHideIconAppPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/MiuiHideIconAppPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 155
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Landroid/preference/MiuiHideIconAppPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    invoke-virtual {v1}, Landroid/preference/MiuiCoreSettingsPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Landroid/preference/MiuiHideIconAppPreference;->getHideAppSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, v1}, Landroid/preference/MiuiHideIconAppPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string v1, ""

    goto :goto_1
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 246
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->persistString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 165
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 166
    invoke-virtual {p0}, Landroid/preference/MiuiHideIconAppPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 167
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 168
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 169
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 170
    .local v2, "ok":Landroid/widget/Button;
    const/4 v3, -0x2

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 171
    .local v0, "cancel":Landroid/widget/Button;
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 172
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 173
    return-void
.end method
