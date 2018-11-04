.class Landroid/preference/MiuiHideIconAppPreference$AppListAdapter$1;
.super Landroid/widget/Filter;
.source "MiuiHideIconAppPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;


# direct methods
.method constructor <init>(Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;)V
    .locals 0
    .param p1, "this$1"    # Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;

    .prologue
    .line 346
    iput-object p1, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter$1;->this$1:Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 350
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 351
    .local v1, "fr":Landroid/widget/Filter$FilterResults;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v0, "ai":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/MiuiHideIconAppPreference$AppInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter$1;->this$1:Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;

    iget-object v4, v4, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 354
    iget-object v4, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter$1;->this$1:Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;

    iget-object v4, v4, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/MiuiHideIconAppPreference$AppInfo;

    iget-object v3, v4, Landroid/preference/MiuiHideIconAppPreference$AppInfo;->mAppName:Ljava/lang/String;

    .line 355
    .local v3, "label":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 356
    iget-object v4, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter$1;->this$1:Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;

    iget-object v4, v4, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 360
    .end local v3    # "label":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 361
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 363
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 368
    iget-object v1, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter$1;->this$1:Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iput-object v0, v1, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->filteredList:Ljava/util/List;

    .line 369
    iget-object v0, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter$1;->this$1:Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;

    invoke-virtual {v0}, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->notifyDataSetChanged()V

    .line 370
    return-void
.end method
