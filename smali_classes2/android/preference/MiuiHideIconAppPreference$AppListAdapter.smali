.class Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MiuiHideIconAppPreference.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/MiuiHideIconAppPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/MiuiHideIconAppPreference$AppListAdapter$ViewHolder;
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
            "Landroid/preference/MiuiHideIconAppPreference$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/MiuiHideIconAppPreference$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHideApp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sections:[Ljava/lang/String;

.field final synthetic this$0:Landroid/preference/MiuiHideIconAppPreference;


# direct methods
.method constructor <init>(Landroid/preference/MiuiHideIconAppPreference;Ljava/util/List;)V
    .locals 7
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
    .line 302
    .local p2, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/preference/MiuiHideIconAppPreference$AppInfo;>;"
    iput-object p1, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->this$0:Landroid/preference/MiuiHideIconAppPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 303
    invoke-direct {p0}, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->getHideApp()Ljava/util/HashMap;

    move-result-object v5

    iput-object v5, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->mHideApp:Ljava/util/HashMap;

    .line 304
    iput-object p2, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->mAppList:Ljava/util/List;

    .line 305
    iget-object v5, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->mAppList:Ljava/util/List;

    iput-object v5, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->filteredList:Ljava/util/List;

    .line 307
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->alphaIndexer:Ljava/util/HashMap;

    .line 308
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->filteredList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 309
    iget-object v5, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->filteredList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/preference/MiuiHideIconAppPreference$AppInfo;

    iget-object v1, v5, Landroid/preference/MiuiHideIconAppPreference$AppInfo;->mAppName:Ljava/lang/String;

    .line 310
    .local v1, "s":Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, "s1":Ljava/lang/String;
    iget-object v5, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->alphaIndexer:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 312
    iget-object v5, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->alphaIndexer:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "s1":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->alphaIndexer:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 316
    .local v3, "sectionLetters":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 317
    .local v4, "sectionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 318
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->sections:[Ljava/lang/String;

    .line 319
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 320
    iget-object v6, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->sections:[Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v6, v0

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 322
    :cond_2
    return-void
.end method

.method static synthetic access$600(Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;

    .prologue
    .line 295
    iget-object v0, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->mHideApp:Ljava/util/HashMap;

    return-object v0
.end method

.method private checkHideApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 401
    iget-object v0, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->mHideApp:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getHideApp()Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 409
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 410
    .local v6, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->this$0:Landroid/preference/MiuiHideIconAppPreference;

    iget-object v7, v7, Landroid/preference/MiuiHideIconAppPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    iget-object v8, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->this$0:Landroid/preference/MiuiHideIconAppPreference;

    invoke-virtual {v8}, Landroid/preference/MiuiHideIconAppPreference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/MiuiCoreSettingsPreference;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "config":Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 412
    .local v5, "pairs":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, v5

    if-ge v2, v7, :cond_0

    .line 413
    aget-object v7, v5, v2

    const-string v8, "[{} ]+"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 414
    .local v4, "pair":Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 416
    .local v3, "keyValue":[Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v3, v7

    const/4 v8, 0x1

    aget-object v8, v3, v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 417
    :catch_0
    move-exception v1

    .line 418
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_1

    .line 421
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v3    # "keyValue":[Ljava/lang/String;
    .end local v4    # "pair":Ljava/lang/String;
    :cond_0
    return-object v6
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->filteredList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->filteredList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 384
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 346
    new-instance v0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter$1;

    invoke-direct {v0, p0}, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter$1;-><init>(Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;)V

    return-object v0
.end method

.method public getHideAppList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->mHideApp:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Landroid/preference/MiuiHideIconAppPreference$AppInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 389
    iget-object v0, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->filteredList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->filteredList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/MiuiHideIconAppPreference$AppInfo;

    .line 392
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->getItem(I)Landroid/preference/MiuiHideIconAppPreference$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 397
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 2
    .param p1, "sectionIndex"    # I

    .prologue
    .line 331
    iget-object v0, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->alphaIndexer:Ljava/util/HashMap;

    iget-object v1, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->sections:[Ljava/lang/String;

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
    .param p1, "position"    # I

    .prologue
    .line 336
    iget-object v1, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->sections:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 337
    iget-object v1, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->alphaIndexer:Ljava/util/HashMap;

    iget-object v2, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->sections:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 341
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 336
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 341
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->sections:[Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 426
    if-nez p2, :cond_0

    .line 427
    iget-object v4, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->this$0:Landroid/preference/MiuiHideIconAppPreference;

    invoke-static {v4}, Landroid/preference/MiuiHideIconAppPreference;->access$500(Landroid/preference/MiuiHideIconAppPreference;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 428
    .local v2, "inflater":Landroid/view/LayoutInflater;
    iget-object v4, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->this$0:Landroid/preference/MiuiHideIconAppPreference;

    iget-object v4, v4, Landroid/preference/MiuiHideIconAppPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string v5, "hide_preference_item"

    invoke-virtual {v4, v5}, Landroid/preference/MiuiCoreSettingsPreference;->LayoutToID(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 429
    new-instance v3, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter$ViewHolder;

    invoke-direct {v3, p0}, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter$ViewHolder;-><init>(Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;)V

    .line 430
    .local v3, "viewHolder":Landroid/preference/MiuiHideIconAppPreference$AppListAdapter$ViewHolder;
    iget-object v4, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->this$0:Landroid/preference/MiuiHideIconAppPreference;

    iget-object v4, v4, Landroid/preference/MiuiHideIconAppPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string v5, "HideAppName"

    invoke-virtual {v4, v5}, Landroid/preference/MiuiCoreSettingsPreference;->IDtoID(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter$ViewHolder;->mAppNames:Landroid/widget/TextView;

    .line 431
    iget-object v4, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->this$0:Landroid/preference/MiuiHideIconAppPreference;

    iget-object v4, v4, Landroid/preference/MiuiHideIconAppPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string v5, "HideAppPackage"

    invoke-virtual {v4, v5}, Landroid/preference/MiuiCoreSettingsPreference;->IDtoID(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter$ViewHolder;->mAppPackage:Landroid/widget/TextView;

    .line 432
    iget-object v4, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->this$0:Landroid/preference/MiuiHideIconAppPreference;

    iget-object v4, v4, Landroid/preference/MiuiHideIconAppPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string v5, "HideAppIcon"

    invoke-virtual {v4, v5}, Landroid/preference/MiuiCoreSettingsPreference;->IDtoID(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter$ViewHolder;->mAppIcon:Landroid/widget/ImageView;

    .line 433
    iget-object v4, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->this$0:Landroid/preference/MiuiHideIconAppPreference;

    iget-object v4, v4, Landroid/preference/MiuiHideIconAppPreference;->CoreSettings:Landroid/preference/MiuiCoreSettingsPreference;

    const-string v5, "HideAppCheck"

    invoke-virtual {v4, v5}, Landroid/preference/MiuiCoreSettingsPreference;->IDtoID(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lmiui/widget/SlidingButton;

    iput-object v4, v3, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter$ViewHolder;->mAppCheck:Lmiui/widget/SlidingButton;

    .line 434
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 436
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "viewHolder":Landroid/preference/MiuiHideIconAppPreference$AppListAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter$ViewHolder;

    .line 437
    .local v1, "holder":Landroid/preference/MiuiHideIconAppPreference$AppListAdapter$ViewHolder;
    iget-object v4, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->filteredList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/MiuiHideIconAppPreference$AppInfo;

    .line 439
    .local v0, "appInfo":Landroid/preference/MiuiHideIconAppPreference$AppInfo;
    iget-object v4, v1, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter$ViewHolder;->mAppNames:Landroid/widget/TextView;

    iget-object v5, v0, Landroid/preference/MiuiHideIconAppPreference$AppInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    iget-object v4, v1, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter$ViewHolder;->mAppPackage:Landroid/widget/TextView;

    iget-object v5, v0, Landroid/preference/MiuiHideIconAppPreference$AppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v4, v1, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter$ViewHolder;->mAppCheck:Lmiui/widget/SlidingButton;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/widget/SlidingButton;->setTag(Ljava/lang/Object;)V

    .line 442
    iget-object v4, v1, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter$ViewHolder;->mAppIcon:Landroid/widget/ImageView;

    iget-object v5, v0, Landroid/preference/MiuiHideIconAppPreference$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 443
    iget-object v4, v1, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter$ViewHolder;->mAppCheck:Lmiui/widget/SlidingButton;

    iget-object v5, v0, Landroid/preference/MiuiHideIconAppPreference$AppInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->checkHideApp(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 444
    iget-object v4, v1, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter$ViewHolder;->mAppCheck:Lmiui/widget/SlidingButton;

    new-instance v5, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter$2;

    invoke-direct {v5, p0}, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter$2;-><init>(Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;)V

    invoke-virtual {v4, v5}, Lmiui/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 459
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 376
    const/4 v0, 0x0

    return v0
.end method
