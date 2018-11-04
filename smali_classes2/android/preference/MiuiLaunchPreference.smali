.class public Landroid/preference/MiuiLaunchPreference;
.super Landroid/preference/DialogPreference;
.source "MiuiLaunchPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/MiuiLaunchPreference$AppListAdapter;,
        Landroid/preference/MiuiLaunchPreference$AppInfo;,
        Landroid/preference/MiuiLaunchPreference$LoadApplication;
    }
.end annotation


# instance fields
.field public CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

.field private mAppListAdapter:Landroid/preference/MiuiLaunchPreference$AppListAdapter;

.field private mApplication:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mListView:Landroid/widget/ListView;

.field private mLoadApplication:Landroid/preference/MiuiLaunchPreference$LoadApplication;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/preference/MiuiCoreSettingsPreference;

    invoke-direct {v0}, Landroid/preference/MiuiCoreSettingsPreference;-><init>()V

    iput-object v0, p0, Landroid/preference/MiuiLaunchPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    iget-object v0, p0, Landroid/preference/MiuiLaunchPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    invoke-virtual {p0}, Landroid/preference/MiuiLaunchPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/preference/MiuiCoreSettingsPreference;->initialization(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/preference/MiuiLaunchPreference;->initialization(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Landroid/preference/MiuiLaunchPreference;)Landroid/preference/MiuiLaunchPreference$AppListAdapter;
    .locals 1

    iget-object v0, p0, Landroid/preference/MiuiLaunchPreference;->mAppListAdapter:Landroid/preference/MiuiLaunchPreference$AppListAdapter;

    return-object v0
.end method

.method static synthetic access$002(Landroid/preference/MiuiLaunchPreference;Landroid/preference/MiuiLaunchPreference$AppListAdapter;)Landroid/preference/MiuiLaunchPreference$AppListAdapter;
    .locals 0

    iput-object p1, p0, Landroid/preference/MiuiLaunchPreference;->mAppListAdapter:Landroid/preference/MiuiLaunchPreference$AppListAdapter;

    return-object p1
.end method

.method static synthetic access$200(Landroid/preference/MiuiLaunchPreference;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Landroid/preference/MiuiLaunchPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$300(Landroid/preference/MiuiLaunchPreference;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Landroid/preference/MiuiLaunchPreference;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Landroid/preference/MiuiLaunchPreference;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Landroid/preference/MiuiLaunchPreference;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Landroid/preference/MiuiLaunchPreference;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/preference/MiuiLaunchPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createList()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/preference/MiuiLaunchPreference$LoadApplication;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/preference/MiuiLaunchPreference$LoadApplication;-><init>(Landroid/preference/MiuiLaunchPreference;Landroid/preference/MiuiLaunchPreference$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/preference/MiuiLaunchPreference$LoadApplication;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v1, p0, Landroid/preference/MiuiLaunchPreference;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object v2, p0, Landroid/preference/MiuiLaunchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/MiuiLaunchPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string/jumbo v4, "launch_app_icon"

    invoke-virtual {v3, v4}, Landroid/preference/MiuiCoreSettingsPreference;->DrawableToID(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/preference/MiuiLaunchPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v3, p0, Landroid/preference/MiuiLaunchPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v5, 0x80

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private initialization(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Landroid/preference/MiuiLaunchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/MiuiLaunchPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Landroid/preference/MiuiLaunchPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string/jumbo v1, "launch_preference_layout"

    invoke-virtual {v2, v1}, Landroid/preference/MiuiCoreSettingsPreference;->LayoutToID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/MiuiLaunchPreference;->setDialogLayoutResource(I)V

    const-string/jumbo v1, "launch_preference_app_icon"

    invoke-virtual {v2, v1}, Landroid/preference/MiuiCoreSettingsPreference;->LayoutToID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/MiuiLaunchPreference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    iget-object v4, p0, Landroid/preference/MiuiLaunchPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string v2, "appsList"

    invoke-virtual {v4, v2}, Landroid/preference/MiuiCoreSettingsPreference;->IDtoID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Landroid/preference/MiuiLaunchPreference;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/preference/MiuiLaunchPreference;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    const-string/jumbo v2, "progressBar"

    invoke-virtual {v4, v2}, Landroid/preference/MiuiCoreSettingsPreference;->IDtoID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Landroid/preference/MiuiLaunchPreference;->mProgressBar:Landroid/widget/ProgressBar;

    const-string/jumbo v2, "searchApp"

    invoke-virtual {v4, v2}, Landroid/preference/MiuiCoreSettingsPreference;->IDtoID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {p0}, Landroid/preference/MiuiLaunchPreference;->createList()V

    new-instance v1, Landroid/preference/MiuiLaunchPreference$1;

    invoke-direct {v1, p0}, Landroid/preference/MiuiLaunchPreference$1;-><init>(Landroid/preference/MiuiLaunchPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    iget-object v2, p0, Landroid/preference/MiuiLaunchPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    invoke-virtual {v2}, Landroid/preference/MiuiCoreSettingsPreference;->getStringValue()Ljava/lang/String;

    move-result-object v1

    const-string v3, "iconForApp"

    invoke-virtual {v2, v3}, Landroid/preference/MiuiCoreSettingsPreference;->IDtoID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Landroid/preference/MiuiLaunchPreference;->getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget-object v1, p0, Landroid/preference/MiuiLaunchPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    invoke-virtual {v1}, Landroid/preference/MiuiCoreSettingsPreference;->getStringValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Landroid/preference/MiuiLaunchPreference;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Landroid/preference/MiuiLaunchPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Landroid/preference/MiuiLaunchPreference;->mLoadApplication:Landroid/preference/MiuiLaunchPreference$LoadApplication;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/preference/MiuiLaunchPreference$LoadApplication;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/preference/MiuiLaunchPreference;->mLoadApplication:Landroid/preference/MiuiLaunchPreference$LoadApplication;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/MiuiLaunchPreference$LoadApplication;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/MiuiLaunchPreference;->mLoadApplication:Landroid/preference/MiuiLaunchPreference$LoadApplication;

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/MiuiLaunchPreference$AppInfo;

    iget-object v1, v0, Landroid/preference/MiuiLaunchPreference$AppInfo;->mIntent:Landroid/content/Intent;

    iget-object v4, p0, Landroid/preference/MiuiLaunchPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    const-string v4, "%1$s%2$s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v0, Landroid/preference/MiuiLaunchPreference$AppInfo;->mPackageName:Ljava/lang/String;

    aput-object v6, v5, v7

    const/4 v6, 0x1

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v4, ""

    :goto_0
    invoke-virtual {p0, v4}, Landroid/preference/MiuiLaunchPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Landroid/preference/MiuiLaunchPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    iget-object v5, v0, Landroid/preference/MiuiLaunchPreference$AppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/MiuiCoreSettingsPreference;->setStringValue(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/preference/MiuiLaunchPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    return-void

    :cond_0
    iget-object v4, v0, Landroid/preference/MiuiLaunchPreference$AppInfo;->mAppName:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    iget-object v1, p0, Landroid/preference/MiuiLaunchPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    if-nez p1, :cond_1

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Landroid/preference/MiuiCoreSettingsPreference;->setStringValue(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/preference/MiuiLaunchPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/MiuiLaunchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/preference/MiuiCoreSettingsPreference;->getStringValue()Ljava/lang/String;

    goto :goto_0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Landroid/preference/MiuiLaunchPreference;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/preference/MiuiLaunchPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->persistString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/preference/MiuiLaunchPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
