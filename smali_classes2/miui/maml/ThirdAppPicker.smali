.class public Lmiui/maml/ThirdAppPicker;
.super Lmiui/app/Activity;
.source "ThirdAppPicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ThirdAppPicker$FileListAdapter;
    }
.end annotation


# instance fields
.field private mAllApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListAdapter:Lmiui/maml/ThirdAppPicker$FileListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static synthetic -get0(Lmiui/maml/ThirdAppPicker;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lmiui/maml/ThirdAppPicker;->mAllApps:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/maml/ThirdAppPicker;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lmiui/maml/ThirdAppPicker;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 38
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v1, 0x11030003

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lmiui/app/Activity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    const v2, 0x110900b6

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 42
    invoke-virtual {p0}, Lmiui/app/Activity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 44
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ThirdAppPicker;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 46
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    iget-object v1, p0, Lmiui/maml/ThirdAppPicker;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ThirdAppPicker;->mAllApps:Ljava/util/List;

    .line 48
    iget-object v1, p0, Lmiui/maml/ThirdAppPicker;->mAllApps:Ljava/util/List;

    new-instance v2, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object v3, p0, Lmiui/maml/ThirdAppPicker;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v2, v3}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 49
    iget-object v1, p0, Lmiui/maml/ThirdAppPicker;->mAllApps:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    const v1, 0x110c0019

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lmiui/maml/ThirdAppPicker;->mListView:Landroid/widget/ListView;

    .line 52
    new-instance v1, Lmiui/maml/ThirdAppPicker$FileListAdapter;

    iget-object v2, p0, Lmiui/maml/ThirdAppPicker;->mAllApps:Ljava/util/List;

    const v3, 0x11030002

    invoke-direct {v1, p0, p0, v3, v2}, Lmiui/maml/ThirdAppPicker$FileListAdapter;-><init>(Lmiui/maml/ThirdAppPicker;Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lmiui/maml/ThirdAppPicker;->mListAdapter:Lmiui/maml/ThirdAppPicker$FileListAdapter;

    .line 53
    iget-object v1, p0, Lmiui/maml/ThirdAppPicker;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lmiui/maml/ThirdAppPicker;->mListAdapter:Lmiui/maml/ThirdAppPicker$FileListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    iget-object v1, p0, Lmiui/maml/ThirdAppPicker;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 37
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 97
    iget-object v3, p0, Lmiui/maml/ThirdAppPicker;->mAllApps:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 98
    .local v1, "item":Landroid/content/pm/ResolveInfo;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 99
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 100
    const-string/jumbo v3, "name"

    iget-object v4, p0, Lmiui/maml/ThirdAppPicker;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 101
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    :cond_0
    if-eqz v1, :cond_1

    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 104
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 96
    return-void

    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    move-object v0, v2

    .line 103
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 59
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 62
    :cond_0
    invoke-super {p0, p1}, Lmiui/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
