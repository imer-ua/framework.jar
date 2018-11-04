.class Landroid/preference/MiuiLaunchPreference$LoadApplication;
.super Landroid/os/AsyncTask;
.source "MiuiLaunchPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/MiuiLaunchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadApplication"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Landroid/preference/MiuiLaunchPreference$AppInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/MiuiLaunchPreference;


# direct methods
.method private constructor <init>(Landroid/preference/MiuiLaunchPreference;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/MiuiLaunchPreference$LoadApplication;->this$0:Landroid/preference/MiuiLaunchPreference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/preference/MiuiLaunchPreference;Landroid/preference/MiuiLaunchPreference$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/MiuiLaunchPreference$LoadApplication;-><init>(Landroid/preference/MiuiLaunchPreference;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/preference/MiuiLaunchPreference$LoadApplication;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/preference/MiuiLaunchPreference$AppInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Landroid/preference/MiuiLaunchPreference$LoadApplication;->this$0:Landroid/preference/MiuiLaunchPreference;

    invoke-static {v6}, Landroid/preference/MiuiLaunchPreference;->access$200(Landroid/preference/MiuiLaunchPreference;)Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    new-instance v0, Landroid/preference/MiuiLaunchPreference$AppInfo;

    iget-object v7, p0, Landroid/preference/MiuiLaunchPreference$LoadApplication;->this$0:Landroid/preference/MiuiLaunchPreference;

    invoke-direct {v0, v7}, Landroid/preference/MiuiLaunchPreference$AppInfo;-><init>(Landroid/preference/MiuiLaunchPreference;)V

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, p0, Landroid/preference/MiuiLaunchPreference$LoadApplication;->this$0:Landroid/preference/MiuiLaunchPreference;

    invoke-static {v8}, Landroid/preference/MiuiLaunchPreference;->access$200(Landroid/preference/MiuiLaunchPreference;)Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/preference/MiuiLaunchPreference$AppInfo;->mAppName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, p0, Landroid/preference/MiuiLaunchPreference$LoadApplication;->this$0:Landroid/preference/MiuiLaunchPreference;

    invoke-static {v8}, Landroid/preference/MiuiLaunchPreference;->access$200(Landroid/preference/MiuiLaunchPreference;)Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v0, Landroid/preference/MiuiLaunchPreference$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v7, v0, Landroid/preference/MiuiLaunchPreference$AppInfo;->mPackageName:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v0, Landroid/preference/MiuiLaunchPreference$AppInfo;->mPackageName:Ljava/lang/String;

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iput-object v2, v0, Landroid/preference/MiuiLaunchPreference$AppInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroid/preference/MiuiLaunchPreference$LoadApplication;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/MiuiLaunchPreference$AppInfo;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/preference/MiuiLaunchPreference$LoadApplication;->this$0:Landroid/preference/MiuiLaunchPreference;

    new-instance v1, Landroid/preference/MiuiLaunchPreference$AppListAdapter;

    iget-object v2, p0, Landroid/preference/MiuiLaunchPreference$LoadApplication;->this$0:Landroid/preference/MiuiLaunchPreference;

    invoke-direct {v1, v2, p1}, Landroid/preference/MiuiLaunchPreference$AppListAdapter;-><init>(Landroid/preference/MiuiLaunchPreference;Ljava/util/List;)V

    invoke-static {v0, v1}, Landroid/preference/MiuiLaunchPreference;->access$002(Landroid/preference/MiuiLaunchPreference;Landroid/preference/MiuiLaunchPreference$AppListAdapter;)Landroid/preference/MiuiLaunchPreference$AppListAdapter;

    iget-object v0, p0, Landroid/preference/MiuiLaunchPreference$LoadApplication;->this$0:Landroid/preference/MiuiLaunchPreference;

    invoke-static {v0}, Landroid/preference/MiuiLaunchPreference;->access$300(Landroid/preference/MiuiLaunchPreference;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Landroid/preference/MiuiLaunchPreference$LoadApplication;->this$0:Landroid/preference/MiuiLaunchPreference;

    invoke-static {v0}, Landroid/preference/MiuiLaunchPreference;->access$400(Landroid/preference/MiuiLaunchPreference;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/MiuiLaunchPreference$LoadApplication;->this$0:Landroid/preference/MiuiLaunchPreference;

    invoke-static {v1}, Landroid/preference/MiuiLaunchPreference;->access$000(Landroid/preference/MiuiLaunchPreference;)Landroid/preference/MiuiLaunchPreference$AppListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
