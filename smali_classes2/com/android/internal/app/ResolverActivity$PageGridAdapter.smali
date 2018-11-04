.class final Lcom/android/internal/app/ResolverActivity$PageGridAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PageGridAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/internal/app/ResolverActivity$TargetInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;I)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "page"    # I

    .prologue
    .line 1933
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    .line 1934
    const/4 v4, 0x0

    invoke-direct {p0, p2, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 1935
    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity;->-get1(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    .line 1936
    .local v0, "count":I
    add-int/lit8 v4, p3, -0x1

    mul-int/lit8 v3, v4, 0x8

    .line 1937
    .local v3, "start":I
    add-int/lit8 v4, v3, 0x8

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v0, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1938
    .local v1, "end":I
    move v2, v3

    .local v2, "i":I
    :goto_0
    if-gt v2, v1, :cond_0

    .line 1939
    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity;->-get1(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1938
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1933
    :cond_0
    return-void
.end method

.method private final bindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$TargetInfo;I)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p3, "position"    # I

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 1970
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;

    .line 1971
    .local v1, "holder":Lcom/android/internal/app/ResolverActivity$ViewHolder;
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->-get6(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p3, :cond_2

    .line 1972
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 1973
    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    const v6, 0x110900f3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 1972
    const v5, 0x110900f2

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1978
    :goto_0
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1979
    instance-of v2, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v2, :cond_0

    move-object v2, p2

    .line 1980
    nop

    nop

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1983
    :cond_0
    :goto_1
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1984
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 1985
    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getBadgeIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1986
    .local v0, "badge":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    .line 1987
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1988
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getBadgeContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1989
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1969
    .end local v0    # "badge":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_2
    return-void

    .line 1975
    :cond_2
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1981
    :cond_3
    new-instance v3, Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object v2, p2

    nop

    nop

    invoke-direct {v3, v4, p0, v2}, Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/widget/BaseAdapter;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    new-array v2, v7, [Ljava/lang/Void;

    invoke-virtual {v3, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 1991
    .restart local v0    # "badge":Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x3

    .line 1946
    if-nez p2, :cond_1

    .line 1947
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1948
    const v4, 0x11030012

    const/4 v5, 0x0

    .line 1947
    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1950
    .local v2, "view":Landroid/view/View;
    const v3, 0x110c002e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MaskLayout;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-get3(Lcom/android/internal/app/ResolverActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/MaskLayout;->setMaskColor(I)V

    .line 1951
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;

    invoke-direct {v0, v2}, Lcom/android/internal/app/ResolverActivity$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1952
    .local v0, "holder":Lcom/android/internal/app/ResolverActivity$ViewHolder;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-get6(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1953
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setMinLines(I)V

    .line 1954
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1955
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxEms(I)V

    .line 1957
    :cond_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1960
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1961
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-get2(Lcom/android/internal/app/ResolverActivity;)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1965
    .end local v0    # "holder":Lcom/android/internal/app/ResolverActivity$ViewHolder;
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    invoke-direct {p0, v2, v3, p1}, Lcom/android/internal/app/ResolverActivity$PageGridAdapter;->bindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$TargetInfo;I)V

    .line 1966
    return-object v2

    .line 1963
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    move-object v2, p2

    .restart local v2    # "view":Landroid/view/View;
    goto :goto_0
.end method
