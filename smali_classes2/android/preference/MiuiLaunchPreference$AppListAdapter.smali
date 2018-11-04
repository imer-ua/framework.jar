.class Landroid/preference/MiuiLaunchPreference$AppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MiuiLaunchPreference.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/MiuiLaunchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/MiuiLaunchPreference$AppListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private alphaIndexer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field filteredList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/MiuiLaunchPreference$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/MiuiLaunchPreference$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private sections:[Ljava/lang/String;

.field final synthetic this$0:Landroid/preference/MiuiLaunchPreference;


# direct methods
.method constructor <init>(Landroid/preference/MiuiLaunchPreference;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/MiuiLaunchPreference$AppInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/preference/MiuiLaunchPreference$AppListAdapter;->this$0:Landroid/preference/MiuiLaunchPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Landroid/preference/MiuiLaunchPreference$AppListAdapter;->mAppList:Ljava/util/List;

    iget-object v5, p0, Landroid/preference/MiuiLaunchPreference$AppListAdapter;->mAppList:Ljava/util/List;

    iput-object v5, p0, Landroid/preference/MiuiLaunchPreference$AppListAdapter;->filteredList:Ljava/util/List;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Landroid/preference/MiuiLaunchPreference$AppListAdapter;->alphaIndexer:Ljava/util/HashMap;

    const/4 v0, 0x0

    :goto_0
    iget-object v5, p0, Landroid/preference/MiuiLaunchPreference$AppListAdapter;->filteredList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    iget-object v5, p0, Landroid/preference/MiuiLaunchPreference$AppListAdapter;->filteredList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/preference/MiuiLaunchPreference$AppInfo;

    iget-object v1, v5, Landroid/preference/MiuiLaunchPreference$AppInfo;->mAppName:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Landroid/preference/MiuiLaunchPreference$AppListAdapter;->alphaIndexer:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/preference/MiuiLaunchPreference$AppListAdapter;->alphaIndexer:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Landroid/preference/MiuiLaunchPreference$AppListAdapter;->alphaIndexer:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Landroid/preference/MiuiLaunchPreference$AppListAdapter;->sections:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    iget-object v6, p0, Landroid/preference/MiuiLaunchPreference$AppListAdapter;->sections:[Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Landroid/preference/MiuiLaunchPreference$AppListAdapter;->filteredList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    new-instance v0, Landroid/preference/MiuiLaunchPreference$AppListAdapter$1;

    invoke-direct {v0, p0}, Landroid/preference/MiuiLaunchPreference$AppListAdapter$1;-><init>(Landroid/preference/MiuiLaunchPreference$AppListAdapter;)V

    return-object v0
.end method

.method public getItem(I)Landroid/preference/MiuiLaunchPreference$AppInfo;
    .locals 1

    iget-object v0, p0, Landroid/preference/MiuiLaunchPreference$AppListAdapter;->filteredList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/MiuiLaunchPreference$AppInfo;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/preference/MiuiLaunchPreference$AppListAdapter;->getItem(I)Landroid/preference/MiuiLaunchPreference$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 2

    iget-object v0, p0, Landroid/preference/MiuiLaunchPreference$AppListAdapter;->alphaIndexer:Ljava/util/HashMap;

    iget-object v1, p0, Landroid/preference/MiuiLaunchPreference$AppListAdapter;->sections:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 3

    iget-object v1, p0, Landroid/preference/MiuiLaunchPreference$AppListAdapter;->sections:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/preference/MiuiLaunchPreference$AppListAdapter;->alphaIndexer:Ljava/util/HashMap;

    iget-object v2, p0, Landroid/preference/MiuiLaunchPreference$AppListAdapter;->sections:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt p1, v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/preference/MiuiLaunchPreference$AppListAdapter;->sections:[Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-nez p2, :cond_0

    iget-object v4, p0, Landroid/preference/MiuiLaunchPreference$AppListAdapter;->this$0:Landroid/preference/MiuiLaunchPreference;

    invoke-static {v4}, Landroid/preference/MiuiLaunchPreference;->access$500(Landroid/preference/MiuiLaunchPreference;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v6, p0, Landroid/preference/MiuiLaunchPreference$AppListAdapter;->this$0:Landroid/preference/MiuiLaunchPreference;

    iget-object v6, v6, Landroid/preference/MiuiLaunchPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string/jumbo v5, "launch_preference_item"

    invoke-virtual {v6, v5}, Landroid/preference/MiuiCoreSettingsPreference;->LayoutToID(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v3, Landroid/preference/MiuiLaunchPreference$AppListAdapter$ViewHolder;

    invoke-direct {v3, p0}, Landroid/preference/MiuiLaunchPreference$AppListAdapter$ViewHolder;-><init>(Landroid/preference/MiuiLaunchPreference$AppListAdapter;)V

    const-string v5, "appName"

    invoke-virtual {v6, v5}, Landroid/preference/MiuiCoreSettingsPreference;->IDtoID(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Landroid/preference/MiuiLaunchPreference$AppListAdapter$ViewHolder;->mAppNames:Landroid/widget/TextView;

    const-string v5, "appPackage"

    invoke-virtual {v6, v5}, Landroid/preference/MiuiCoreSettingsPreference;->IDtoID(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Landroid/preference/MiuiLaunchPreference$AppListAdapter$ViewHolder;->mAppPackage:Landroid/widget/TextView;

    const-string v5, "appIcon"

    invoke-virtual {v6, v5}, Landroid/preference/MiuiCoreSettingsPreference;->IDtoID(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Landroid/preference/MiuiLaunchPreference$AppListAdapter$ViewHolder;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/MiuiLaunchPreference$AppListAdapter$ViewHolder;

    iget-object v4, p0, Landroid/preference/MiuiLaunchPreference$AppListAdapter;->filteredList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/MiuiLaunchPreference$AppInfo;

    iget-object v4, v1, Landroid/preference/MiuiLaunchPreference$AppListAdapter$ViewHolder;->mAppNames:Landroid/widget/TextView;

    iget-object v5, v0, Landroid/preference/MiuiLaunchPreference$AppInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Landroid/preference/MiuiLaunchPreference$AppListAdapter$ViewHolder;->mAppPackage:Landroid/widget/TextView;

    iget-object v5, v0, Landroid/preference/MiuiLaunchPreference$AppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Landroid/preference/MiuiLaunchPreference$AppListAdapter$ViewHolder;->mAppIcon:Landroid/widget/ImageView;

    iget-object v5, v0, Landroid/preference/MiuiLaunchPreference$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method
