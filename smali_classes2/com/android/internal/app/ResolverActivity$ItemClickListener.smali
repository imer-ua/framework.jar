.class Lcom/android/internal/app/ResolverActivity$ItemClickListener;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemClickListener"
.end annotation


# instance fields
.field private start:I

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivity;
    .param p2, "page"    # I

    .prologue
    .line 2002
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2003
    add-int/lit8 v0, p2, -0x1

    mul-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->start:I

    .line 2002
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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

    .line 2008
    instance-of v3, p1, Landroid/widget/ListView;

    if-eqz v3, :cond_0

    nop

    nop

    move-object v2, p1

    .line 2009
    .end local p1    # "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    .local v2, "listView":Landroid/widget/ListView;
    :cond_0
    if-eqz v2, :cond_1

    .line 2010
    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr p3, v3

    .line 2012
    :cond_1
    if-gez p3, :cond_2

    .line 2014
    return-void

    .line 2016
    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    const v4, 0x110c0034

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 2017
    .local v1, "alwaysOption":Landroid/widget/CheckBox;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 2018
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 2019
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget v4, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->start:I

    add-int/2addr v4, p3

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v0, v5}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    .line 2007
    return-void

    .line 2017
    :cond_3
    const/4 v0, 0x0

    .local v0, "always":Z
    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2024
    instance-of v3, p1, Landroid/widget/ListView;

    if-eqz v3, :cond_0

    nop

    nop

    move-object v0, p1

    .line 2025
    .end local p1    # "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    .local v0, "listView":Landroid/widget/ListView;
    :cond_0
    if-eqz v0, :cond_1

    .line 2026
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr p3, v3

    .line 2028
    :cond_1
    if-gez p3, :cond_2

    .line 2030
    return v4

    .line 2032
    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-get1(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->start:I

    add-int/2addr v4, p3

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v2

    .line 2033
    .local v2, "target":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    instance-of v3, v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v3, :cond_3

    .line 2034
    const/4 v3, 0x0

    if-eqz v3, :cond_3

    nop

    nop

    .end local v2    # "target":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->-get1(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2035
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-wrap1(Lcom/android/internal/app/ResolverActivity;)V

    .line 2036
    return v5

    .line 2040
    :cond_3
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-get1(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->start:I

    add-int/2addr v4, p3

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 2041
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/ResolverActivity;->showTargetDetails(Landroid/content/pm/ResolveInfo;)V

    .line 2042
    return v5
.end method
