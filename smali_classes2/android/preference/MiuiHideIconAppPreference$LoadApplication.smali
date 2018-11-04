.class Landroid/preference/MiuiHideIconAppPreference$LoadApplication;
.super Landroid/os/AsyncTask;
.source "MiuiHideIconAppPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/MiuiHideIconAppPreference;
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
        "Landroid/preference/MiuiHideIconAppPreference$AppInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/MiuiHideIconAppPreference;


# direct methods
.method private constructor <init>(Landroid/preference/MiuiHideIconAppPreference;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Landroid/preference/MiuiHideIconAppPreference$LoadApplication;->this$0:Landroid/preference/MiuiHideIconAppPreference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/preference/MiuiHideIconAppPreference;Landroid/preference/MiuiHideIconAppPreference$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/preference/MiuiHideIconAppPreference;
    .param p2, "x1"    # Landroid/preference/MiuiHideIconAppPreference$1;

    .prologue
    .line 250
    invoke-direct {p0, p1}, Landroid/preference/MiuiHideIconAppPreference$LoadApplication;-><init>(Landroid/preference/MiuiHideIconAppPreference;)V

    return-void
.end method

.method private isSystemPackage(Landroid/content/pm/ResolveInfo;)Z
    .locals 1
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 248
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 250
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/preference/MiuiHideIconAppPreference$LoadApplication;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 10
    .param p1, "voids"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/preference/MiuiHideIconAppPreference$AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v1, "appList":Ljava/util/ArrayList;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 258
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    iget-object v6, p0, Landroid/preference/MiuiHideIconAppPreference$LoadApplication;->this$0:Landroid/preference/MiuiHideIconAppPreference;

    invoke-static {v6}, Landroid/preference/MiuiHideIconAppPreference;->access$200(Landroid/preference/MiuiHideIconAppPreference;)Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 260
    .local v5, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 261
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v0, Landroid/preference/MiuiHideIconAppPreference$AppInfo;

    iget-object v7, p0, Landroid/preference/MiuiHideIconAppPreference$LoadApplication;->this$0:Landroid/preference/MiuiHideIconAppPreference;

    invoke-direct {v0, v7}, Landroid/preference/MiuiHideIconAppPreference$AppInfo;-><init>(Landroid/preference/MiuiHideIconAppPreference;)V

    .line 262
    .local v0, "appInfo":Landroid/preference/MiuiHideIconAppPreference$AppInfo;
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, p0, Landroid/preference/MiuiHideIconAppPreference$LoadApplication;->this$0:Landroid/preference/MiuiHideIconAppPreference;

    invoke-static {v8}, Landroid/preference/MiuiHideIconAppPreference;->access$200(Landroid/preference/MiuiHideIconAppPreference;)Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/preference/MiuiHideIconAppPreference$AppInfo;->mAppName:Ljava/lang/String;

    .line 263
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, p0, Landroid/preference/MiuiHideIconAppPreference$LoadApplication;->this$0:Landroid/preference/MiuiHideIconAppPreference;

    invoke-static {v8}, Landroid/preference/MiuiHideIconAppPreference;->access$200(Landroid/preference/MiuiHideIconAppPreference;)Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v0, Landroid/preference/MiuiHideIconAppPreference$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 264
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v7, v0, Landroid/preference/MiuiHideIconAppPreference$AppInfo;->mPackageName:Ljava/lang/String;

    .line 265
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v7, v0, Landroid/preference/MiuiHideIconAppPreference$AppInfo;->mActivity:Ljava/lang/String;

    .line 266
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 267
    .local v2, "explicitIntent":Landroid/content/Intent;
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v0, Landroid/preference/MiuiHideIconAppPreference$AppInfo;->mPackageName:Ljava/lang/String;

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 268
    iput-object v2, v0, Landroid/preference/MiuiHideIconAppPreference$AppInfo;->mIntent:Landroid/content/Intent;

    .line 269
    invoke-direct {p0, v4}, Landroid/preference/MiuiHideIconAppPreference$LoadApplication;->isSystemPackage(Landroid/content/pm/ResolveInfo;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 273
    .end local v0    # "appInfo":Landroid/preference/MiuiHideIconAppPreference$AppInfo;
    .end local v2    # "explicitIntent":Landroid/content/Intent;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 250
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroid/preference/MiuiHideIconAppPreference$LoadApplication;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/MiuiHideIconAppPreference$AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 278
    .local p1, "appInfo":Ljava/util/List;, "Ljava/util/List<Landroid/preference/MiuiHideIconAppPreference$AppInfo;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 279
    iget-object v0, p0, Landroid/preference/MiuiHideIconAppPreference$LoadApplication;->this$0:Landroid/preference/MiuiHideIconAppPreference;

    new-instance v1, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;

    iget-object v2, p0, Landroid/preference/MiuiHideIconAppPreference$LoadApplication;->this$0:Landroid/preference/MiuiHideIconAppPreference;

    invoke-direct {v1, v2, p1}, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;-><init>(Landroid/preference/MiuiHideIconAppPreference;Ljava/util/List;)V

    invoke-static {v0, v1}, Landroid/preference/MiuiHideIconAppPreference;->access$002(Landroid/preference/MiuiHideIconAppPreference;Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;)Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;

    .line 280
    iget-object v0, p0, Landroid/preference/MiuiHideIconAppPreference$LoadApplication;->this$0:Landroid/preference/MiuiHideIconAppPreference;

    invoke-static {v0}, Landroid/preference/MiuiHideIconAppPreference;->access$300(Landroid/preference/MiuiHideIconAppPreference;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Landroid/preference/MiuiHideIconAppPreference$LoadApplication;->this$0:Landroid/preference/MiuiHideIconAppPreference;

    invoke-static {v0}, Landroid/preference/MiuiHideIconAppPreference;->access$400(Landroid/preference/MiuiHideIconAppPreference;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/MiuiHideIconAppPreference$LoadApplication;->this$0:Landroid/preference/MiuiHideIconAppPreference;

    invoke-static {v1}, Landroid/preference/MiuiHideIconAppPreference;->access$000(Landroid/preference/MiuiHideIconAppPreference;)Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 284
    return-void
.end method
