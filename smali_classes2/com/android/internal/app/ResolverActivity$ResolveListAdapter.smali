.class public Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResolveListAdapter"
.end annotation


# instance fields
.field private final mBaseResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field mDisplayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterLastUsed:Z

.field private mHasExtendedInfo:Z

.field protected final mInflater:Landroid/view/LayoutInflater;

.field private final mInitialIntents:[Landroid/content/Intent;

.field private final mIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mLastChosen:Landroid/content/pm/ResolveInfo;

.field private mLastChosenPosition:I

.field private final mLaunchedFromUid:I

.field mOrigResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "launchedFromUid"    # I
    .param p7, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 1303
    .local p3, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1300
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    .line 1306
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mIntents:Ljava/util/List;

    .line 1307
    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    .line 1308
    iput-object p5, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    .line 1309
    iput p6, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLaunchedFromUid:I

    .line 1310
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    .line 1312
    iput-boolean p7, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    .line 1313
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->rebuildList()V

    .line 1305
    return-void
.end method

.method private addMoreResolverButton()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1573
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->-get8(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    if-eqz v1, :cond_1

    .line 1576
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasSystemBrowser()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/android/internal/app/ResolverActivity;->-set3(Lcom/android/internal/app/ResolverActivity;Z)Z

    .line 1577
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->-get8(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1578
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1579
    .local v7, "newDisplayList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;>;"
    const/4 v2, 0x0

    .line 1580
    .local v2, "info":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    const/4 v6, 0x0

    .end local v2    # "info":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .local v6, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_3

    .line 1581
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 1582
    .local v2, "info":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    const-string/jumbo v1, "com.android.browser"

    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->-get0(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1583
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1580
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1574
    .end local v2    # "info":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .end local v6    # "i":I
    .end local v7    # "newDisplayList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;>;"
    :cond_1
    return v4

    .line 1584
    .restart local v2    # "info":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .restart local v6    # "i":I
    .restart local v7    # "newDisplayList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;>;"
    :cond_2
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->-get0(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->isPlatformApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1585
    invoke-interface {v7, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 1589
    .end local v2    # "info":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-le v1, v3, :cond_4

    if-eqz v2, :cond_4

    .line 1591
    new-instance v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    .line 1592
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v8, 0x108067b

    invoke-virtual {v3, v8, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1593
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x104035a

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1591
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    .line 1595
    .local v0, "resolverMoreItemInfo":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1597
    .end local v0    # "resolverMoreItemInfo":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    :cond_4
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1598
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1599
    const/4 v1, 0x1

    return v1

    .line 1601
    .end local v6    # "i":I
    .end local v7    # "newDisplayList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;>;"
    :cond_5
    return v4
.end method

.method private addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V
    .locals 2
    .param p1, "dri"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    .line 1738
    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->-get0(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-nez v0, :cond_0

    .line 1741
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 1737
    :goto_0
    return-void

    .line 1743
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addResolveInfoWithAlternates(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 11
    .param p1, "rci"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .param p2, "extraInfo"    # Ljava/lang/CharSequence;
    .param p3, "roLabel"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 1710
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getCount()I

    move-result v9

    .line 1711
    .local v9, "count":I
    invoke-virtual {p1, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v2

    .line 1712
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1713
    .local v3, "add":Landroid/content/pm/ResolveInfo;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v4, v2}, Lcom/android/internal/app/ResolverActivity;->getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v6

    .line 1714
    .local v6, "replaceIntent":Landroid/content/Intent;
    new-instance v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 1716
    .local v0, "dri":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->isPinned()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->setPinned(Z)V

    .line 1717
    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    .line 1718
    if-ne v6, v2, :cond_0

    .line 1721
    const/4 v10, 0x1

    .local v10, "i":I
    move v7, v9

    .local v7, "N":I
    :goto_0
    if-ge v10, v9, :cond_0

    .line 1722
    invoke-virtual {p1, v10}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v8

    .line 1723
    .local v8, "altIntent":Landroid/content/Intent;
    invoke-virtual {v0, v8}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->addAlternateSourceIntent(Landroid/content/Intent;)V

    .line 1721
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1726
    .end local v7    # "N":I
    .end local v8    # "altIntent":Landroid/content/Intent;
    .end local v10    # "i":I
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->updateLastChosenPosition(Landroid/content/pm/ResolveInfo;)V

    .line 1709
    return-void
.end method

.method private addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V
    .locals 10
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1620
    .local p1, "into":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    .local p3, "from":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    .line 1621
    .local v1, "fromCount":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1622
    .local v3, "intoCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 1623
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 1624
    .local v6, "newInfo":Landroid/content/pm/ResolveInfo;
    const/4 v0, 0x0

    .line 1626
    .local v0, "found":Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 1627
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 1628
    .local v7, "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    invoke-direct {p0, v6, v7}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->isSameResolvedComponent(Landroid/content/pm/ResolveInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1629
    const/4 v0, 0x1

    .line 1630
    invoke-virtual {v7, p2, v6}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->add(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    .line 1634
    .end local v7    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_0
    if-nez v0, :cond_1

    .line 1635
    new-instance v5, Landroid/content/ComponentName;

    .line 1636
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1635
    invoke-direct {v5, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    .local v5, "name":Landroid/content/ComponentName;
    new-instance v7, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-direct {v7, v5, p2, v6}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;-><init>(Landroid/content/ComponentName;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    .line 1639
    .restart local v7    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    invoke-virtual {p0, v5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->isComponentPinned(Landroid/content/ComponentName;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->setPinned(Z)V

    .line 1640
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1622
    .end local v5    # "name":Landroid/content/ComponentName;
    .end local v7    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1626
    .restart local v7    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1619
    .end local v0    # "found":Z
    .end local v4    # "j":I
    .end local v6    # "newInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_3
    return-void
.end method

.method private customResolver()V
    .locals 5

    .prologue
    .line 1523
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    .line 1524
    :cond_0
    return-void

    .line 1526
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addMoreResolverButton()Z

    move-result v2

    .line 1528
    .local v2, "showMoreResolver":Z
    if-nez v2, :cond_3

    .line 1529
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1530
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 1531
    .local v1, "info":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    invoke-static {}, Lcom/android/internal/app/ResolverActivity;->-get0()Ljava/util/Set;

    move-result-object v3

    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->-get0(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1532
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1533
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1529
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1537
    .end local v0    # "i":I
    .end local v1    # "info":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->processRecommendedApp()V

    .line 1538
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/android/internal/app/ResolverActivity;->-wrap0(Lcom/android/internal/app/ResolverActivity;Ljava/util/List;)V

    .line 1522
    return-void
.end method

.method private hasSystemBrowser()Z
    .locals 4

    .prologue
    .line 1605
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1606
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 1607
    .local v1, "info":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    const-string/jumbo v2, "com.android.browser"

    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->-get0(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1608
    const/4 v2, 0x1

    return v2

    .line 1605
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1611
    .end local v1    # "info":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private isPlatformApp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1615
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android"

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isSameResolvedComponent(Landroid/content/pm/ResolveInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z
    .locals 3
    .param p1, "a"    # Landroid/content/pm/ResolveInfo;
    .param p2, "b"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .prologue
    .line 1646
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1647
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1648
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1647
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onBindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 1836
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;

    .line 1837
    .local v1, "holder":Lcom/android/internal/app/ResolverActivity$ViewHolder;
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1838
    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->showsExtendedInfo(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1839
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1840
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1844
    :goto_0
    instance-of v2, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v2, :cond_0

    move-object v2, p2

    .line 1845
    check-cast v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1848
    :cond_0
    :goto_1
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1849
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 1850
    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getBadgeIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1851
    .local v0, "badge":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    .line 1852
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1853
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getBadgeContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1854
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1835
    .end local v0    # "badge":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_2
    return-void

    .line 1842
    :cond_2
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1846
    :cond_3
    new-instance v3, Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object v2, p2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-direct {v3, v4, v2}, Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 1856
    .restart local v0    # "badge":Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method private processGroup(Ljava/util/List;IILcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;)V
    .locals 15
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "ro"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .param p5, "roLabel"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;II",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1662
    .local p1, "rList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    sub-int v13, p3, p2

    add-int/lit8 v9, v13, 0x1

    .line 1663
    .local v9, "num":I
    const/4 v13, 0x1

    if-ne v9, v13, :cond_1

    .line 1665
    const/4 v13, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {p0, v0, v13, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfoWithAlternates(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1660
    :cond_0
    return-void

    .line 1667
    :cond_1
    const/4 v13, 0x1

    iput-boolean v13, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mHasExtendedInfo:Z

    .line 1668
    const/4 v12, 0x0

    .line 1669
    .local v12, "usePkg":Z
    const/4 v13, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v13

    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1670
    iget-object v14, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v14}, Lcom/android/internal/app/ResolverActivity;->-get4(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 1669
    invoke-virtual {v13, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 1671
    .local v11, "startApp":Ljava/lang/CharSequence;
    if-nez v11, :cond_2

    .line 1672
    const/4 v12, 0x1

    .line 1674
    :cond_2
    if-nez v12, :cond_5

    .line 1677
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1678
    .local v3, "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    invoke-virtual {v3, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1679
    add-int/lit8 v5, p2, 0x1

    .local v5, "j":I
    :goto_0
    move/from16 v0, p3

    if-gt v5, v0, :cond_4

    .line 1680
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 1681
    .local v7, "jRi":Landroid/content/pm/ResolveInfo;
    iget-object v13, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v14}, Lcom/android/internal/app/ResolverActivity;->-get4(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1682
    .local v6, "jApp":Ljava/lang/CharSequence;
    if-eqz v6, :cond_3

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1683
    :cond_3
    const/4 v12, 0x1

    .line 1690
    .end local v6    # "jApp":Ljava/lang/CharSequence;
    .end local v7    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_4
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 1692
    .end local v3    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v5    # "j":I
    :cond_5
    move/from16 v8, p2

    .local v8, "k":I
    :goto_1
    move/from16 v0, p3

    if-gt v8, v0, :cond_0

    .line 1693
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 1694
    .local v10, "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1696
    .local v2, "add":Landroid/content/pm/ResolveInfo;
    if-eqz v12, :cond_7

    .line 1698
    iget-object v13, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1703
    .local v4, "extraInfo":Ljava/lang/CharSequence;
    :goto_2
    move-object/from16 v0, p5

    invoke-direct {p0, v10, v4, v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfoWithAlternates(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1692
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1686
    .end local v2    # "add":Landroid/content/pm/ResolveInfo;
    .end local v4    # "extraInfo":Ljava/lang/CharSequence;
    .end local v8    # "k":I
    .end local v10    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .restart local v3    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .restart local v5    # "j":I
    .restart local v6    # "jApp":Ljava/lang/CharSequence;
    .restart local v7    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_6
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1679
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1701
    .end local v3    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v5    # "j":I
    .end local v6    # "jApp":Ljava/lang/CharSequence;
    .end local v7    # "jRi":Landroid/content/pm/ResolveInfo;
    .restart local v2    # "add":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "k":I
    .restart local v10    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_7
    iget-object v13, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v14}, Lcom/android/internal/app/ResolverActivity;->-get4(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4    # "extraInfo":Ljava/lang/CharSequence;
    goto :goto_2
.end method

.method private processRecommendedApp()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1542
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v2, v4}, Lcom/android/internal/app/ResolverActivity;->-set2(Lcom/android/internal/app/ResolverActivity;Z)Z

    .line 1543
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1544
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 1545
    .local v1, "info":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->-get6(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->shouldRecommend(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1546
    if-eqz v0, :cond_0

    .line 1547
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-interface {v3, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1549
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/app/ResolverActivity;->-set2(Lcom/android/internal/app/ResolverActivity;Z)Z

    .line 1541
    .end local v1    # "info":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    :cond_1
    return-void

    .line 1543
    .restart local v1    # "info":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private rebuildList()V
    .locals 30

    .prologue
    .line 1353
    const/4 v15, 0x0

    .line 1356
    .local v15, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v21

    .line 1357
    .local v21, "primaryIntent":Landroid/content/Intent;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 1358
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 1359
    const/high16 v7, 0x10000

    .line 1357
    move-object/from16 v0, v21

    invoke-interface {v3, v0, v4, v7}, Landroid/content/pm/IPackageManager;->getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1365
    .end local v21    # "primaryIntent":Landroid/content/Intent;
    :goto_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 1366
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1367
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 1368
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    .line 1369
    .local v15, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v3, v4}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V

    .line 1417
    .end local v15    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    :cond_0
    if-eqz v15, :cond_19

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v13

    .local v13, "N":I
    if-lez v13, :cond_19

    .line 1420
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 1421
    .local v11, "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v22

    .line 1422
    .local v22, "r0":Landroid/content/pm/ResolveInfo;
    const/16 v17, 0x1

    .local v17, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v0, v13, :cond_e

    .line 1423
    move/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 1430
    .local v6, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v22

    iget v3, v0, Landroid/content/pm/ResolveInfo;->priority:I

    iget v4, v6, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v3, v4, :cond_1

    .line 1431
    move-object/from16 v0, v22

    iget-boolean v3, v0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v4, v6, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v3, v4, :cond_d

    .line 1432
    :cond_1
    :goto_2
    move/from16 v0, v17

    if-ge v0, v13, :cond_d

    .line 1433
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    if-ne v3, v15, :cond_2

    .line 1434
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    .line 1436
    :cond_2
    move/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1437
    add-int/lit8 v13, v13, -0x1

    goto :goto_2

    .line 1360
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v11    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v13    # "N":I
    .end local v17    # "i":I
    .end local v22    # "r0":Landroid/content/pm/ResolveInfo;
    .local v15, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    :catch_0
    move-exception v24

    .line 1361
    .local v24, "re":Landroid/os/RemoteException;
    const-string/jumbo v3, "ResolverActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error calling setLastChosenActivity\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1371
    .end local v24    # "re":Landroid/os/RemoteException;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->shouldGetResolvedFilter()Z

    move-result v27

    .line 1372
    .local v27, "shouldGetResolvedFilter":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->shouldGetActivityMetadata()Z

    move-result v26

    .line 1373
    .local v26, "shouldGetActivityMetadata":Z
    const/16 v17, 0x0

    .restart local v17    # "i":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mIntents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    .end local v15    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    .restart local v13    # "N":I
    :goto_3
    move/from16 v0, v17

    if-ge v0, v13, :cond_8

    .line 1374
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mIntents:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/Intent;

    .line 1375
    .local v19, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-get4(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1377
    if-eqz v27, :cond_6

    const/16 v3, 0x40

    .line 1376
    :goto_4
    const/high16 v7, 0x10000

    or-int/2addr v7, v3

    .line 1378
    if-eqz v26, :cond_7

    const/16 v3, 0x80

    .line 1376
    :goto_5
    or-int/2addr v3, v7

    .line 1375
    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v18

    .line 1379
    .local v18, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v18, :cond_5

    .line 1380
    if-nez v15, :cond_4

    .line 1381
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    .line 1383
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-direct {v0, v15, v1, v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V

    .line 1373
    :cond_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 1377
    .end local v18    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_6
    const/4 v3, 0x0

    goto :goto_4

    .line 1378
    :cond_7
    const/4 v3, 0x0

    goto :goto_5

    .line 1394
    .end local v19    # "intent":Landroid/content/Intent;
    :cond_8
    if-eqz v15, :cond_0

    .line 1395
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v17, v3, -0x1

    :goto_6
    if-ltz v17, :cond_0

    .line 1396
    move/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 1397
    const/4 v4, 0x0

    .line 1396
    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v14, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1399
    .local v14, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v3, v14, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLaunchedFromUid:I

    .line 1400
    iget-object v7, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v8, v14, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 1398
    invoke-static {v3, v4, v7, v8}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v16

    .line 1401
    .local v16, "granted":I
    iget-object v3, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1402
    const/high16 v4, 0x40000000    # 2.0f

    .line 1401
    and-int/2addr v3, v4

    if-eqz v3, :cond_c

    const/16 v28, 0x1

    .line 1403
    .local v28, "suspended":Z
    :goto_7
    if-nez v16, :cond_9

    if-nez v28, :cond_9

    .line 1404
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3, v14}, Lcom/android/internal/app/ResolverActivity;->isComponentFiltered(Landroid/content/pm/ComponentInfo;)Z

    move-result v3

    .line 1403
    if-nez v3, :cond_9

    .line 1405
    sget-boolean v3, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-eqz v3, :cond_b

    .line 1406
    iget-object v3, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v4, "com.android.htmlviewer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1403
    if-eqz v3, :cond_b

    .line 1408
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    if-ne v3, v15, :cond_a

    .line 1409
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    .line 1411
    :cond_a
    move/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1395
    :cond_b
    add-int/lit8 v17, v17, -0x1

    goto :goto_6

    .line 1401
    .end local v28    # "suspended":Z
    :cond_c
    const/16 v28, 0x0

    .restart local v28    # "suspended":Z
    goto :goto_7

    .line 1422
    .end local v14    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v16    # "granted":I
    .end local v26    # "shouldGetActivityMetadata":Z
    .end local v27    # "shouldGetResolvedFilter":Z
    .end local v28    # "suspended":Z
    .restart local v6    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .restart local v22    # "r0":Landroid/content/pm/ResolveInfo;
    :cond_d
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 1441
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_e
    const/4 v3, 0x1

    if-le v13, v3, :cond_f

    .line 1442
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-get7(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverComparator;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/android/internal/app/ResolverComparator;->compute(Ljava/util/List;)V

    .line 1443
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-get7(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverComparator;

    move-result-object v3

    invoke-static {v15, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1446
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    if-eqz v3, :cond_14

    .line 1447
    const/16 v17, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    array-length v3, v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_14

    .line 1448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    aget-object v5, v3, v17

    .line 1449
    .local v5, "ii":Landroid/content/Intent;
    if-nez v5, :cond_10

    .line 1447
    :goto_9
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 1453
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    .line 1452
    invoke-virtual {v5, v3, v4}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v14

    .line 1454
    .restart local v14    # "ai":Landroid/content/pm/ActivityInfo;
    if-nez v14, :cond_11

    .line 1455
    const-string/jumbo v3, "ResolverActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No activity found for "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1458
    :cond_11
    new-instance v6, Landroid/content/pm/ResolveInfo;

    invoke-direct {v6}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 1459
    .restart local v6    # "ri":Landroid/content/pm/ResolveInfo;
    iput-object v14, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1461
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    const-string/jumbo v4, "user"

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/os/UserManager;

    .line 1462
    .local v29, "userManager":Landroid/os/UserManager;
    instance-of v3, v5, Landroid/content/pm/LabeledIntent;

    if-eqz v3, :cond_12

    move-object/from16 v20, v5

    .line 1463
    check-cast v20, Landroid/content/pm/LabeledIntent;

    .line 1464
    .local v20, "li":Landroid/content/pm/LabeledIntent;
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 1465
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v3

    iput v3, v6, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 1466
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v6, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1467
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v3

    iput v3, v6, Landroid/content/pm/ResolveInfo;->icon:I

    .line 1468
    iget v3, v6, Landroid/content/pm/ResolveInfo;->icon:I

    iput v3, v6, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .line 1470
    .end local v20    # "li":Landroid/content/pm/LabeledIntent;
    :cond_12
    invoke-virtual/range {v29 .. v29}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1471
    const/4 v3, 0x1

    iput-boolean v3, v6, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    .line 1472
    const/4 v3, 0x0

    iput v3, v6, Landroid/content/pm/ResolveInfo;->icon:I

    .line 1474
    :cond_13
    new-instance v3, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    .line 1475
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v7}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    const/4 v8, 0x0

    move-object v9, v5

    .line 1474
    invoke-direct/range {v3 .. v9}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    goto/16 :goto_9

    .line 1481
    .end local v5    # "ii":Landroid/content/Intent;
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v14    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v29    # "userManager":Landroid/os/UserManager;
    :cond_14
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    check-cast v11, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 1482
    .restart local v11    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v22

    .line 1483
    const/4 v9, 0x0

    .line 1484
    .local v9, "start":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-get4(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 1485
    .local v12, "r0Label":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mHasExtendedInfo:Z

    .line 1486
    const/16 v17, 0x1

    :goto_a
    move/from16 v0, v17

    if-ge v0, v13, :cond_18

    .line 1487
    if-nez v12, :cond_15

    .line 1488
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1490
    :cond_15
    move/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 1491
    .local v23, "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 1492
    .restart local v6    # "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-get4(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v25

    .line 1493
    .local v25, "riLabel":Ljava/lang/CharSequence;
    if-nez v25, :cond_16

    .line 1494
    iget-object v3, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 1496
    :cond_16
    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1486
    :goto_b
    add-int/lit8 v17, v17, 0x1

    goto :goto_a

    .line 1499
    :cond_17
    add-int/lit8 v10, v17, -0x1

    move-object/from16 v7, p0

    move-object v8, v15

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;)V

    .line 1500
    move-object/from16 v11, v23

    .line 1501
    move-object/from16 v22, v6

    .line 1502
    move-object/from16 v12, v25

    .line 1503
    move/from16 v9, v17

    goto :goto_b

    .line 1506
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v23    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v25    # "riLabel":Ljava/lang/CharSequence;
    :cond_18
    add-int/lit8 v10, v13, -0x1

    move-object/from16 v7, p0

    move-object v8, v15

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;)V

    .line 1509
    .end local v9    # "start":I
    .end local v11    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v12    # "r0Label":Ljava/lang/CharSequence;
    .end local v13    # "N":I
    .end local v17    # "i":I
    .end local v22    # "r0":Landroid/content/pm/ResolveInfo;
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->customResolver()V

    .line 1513
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v3, :cond_1a

    .line 1514
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    .line 1515
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    .line 1518
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->onListRebuilt()V

    .line 1352
    return-void
.end method

.method private shouldRecommend(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Z
    .locals 6
    .param p1, "info"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1556
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1557
    .local v0, "meta":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 1558
    return v3

    .line 1560
    :cond_0
    const-string/jumbo v4, "mi_appchooser_reommended_enabled_key"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1561
    .local v1, "recommendEnableKey":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 1562
    return v3

    .line 1564
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v4, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    :goto_0
    return v2

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method private updateLastChosenPosition(Landroid/content/pm/ResolveInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    .line 1731
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1730
    if-eqz v0, :cond_0

    .line 1732
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1730
    if-eqz v0, :cond_0

    .line 1733
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    .line 1729
    :cond_0
    return-void
.end method


# virtual methods
.method public final bindView(ILandroid/view/View;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1832
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->onBindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 1831
    return-void
.end method

.method public final createView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1812
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1813
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1814
    .local v0, "holder":Lcom/android/internal/app/ResolverActivity$ViewHolder;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1815
    return-object v1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDisplayInfoAt(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-object v0
.end method

.method public getDisplayInfoCount()I
    .locals 1

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDisplayResolveInfo(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-object v0
.end method

.method public getDisplayResolveInfoCount()I
    .locals 1

    .prologue
    .line 1794
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilteredItem()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 2

    .prologue
    .line 1326
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    iget v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-object v0

    .line 1330
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilteredPosition()I
    .locals 1

    .prologue
    .line 1338
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    .line 1339
    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    return v0

    .line 1341
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1773
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1772
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1777
    int-to-long v0, p1

    return-wide v0
.end method

.method public getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-object v0
.end method

.method public getScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)F
    .locals 2
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->-get7(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverComparator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverComparator;->getScore(Landroid/content/ComponentName;)F

    move-result v0

    return v0
.end method

.method public getUnfilteredCount()I
    .locals 1

    .prologue
    .line 1761
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1803
    move-object v0, p2

    .line 1804
    .local v0, "view":Landroid/view/View;
    if-nez p2, :cond_0

    .line 1805
    invoke-virtual {p0, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1807
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->onBindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 1808
    return-object v0
.end method

.method public handlePackagesChanged()V
    .locals 1

    .prologue
    .line 1317
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->rebuildList()V

    .line 1318
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->notifyDataSetChanged()V

    .line 1319
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1321
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 1316
    :cond_0
    return-void
.end method

.method public hasExtendedInfo()Z
    .locals 1

    .prologue
    .line 1781
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mHasExtendedInfo:Z

    return v0
.end method

.method public hasFilteredItem()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1345
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasResolvedTarget(Landroid/content/pm/ResolveInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 1785
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1786
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/internal/app/ResolverActivity;->resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1787
    const/4 v2, 0x1

    return v2

    .line 1785
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1790
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public isComponentPinned(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 1828
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1819
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1820
    const v1, 0x10900d9

    const/4 v2, 0x0

    .line 1819
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListRebuilt()V
    .locals 0

    .prologue
    .line 1651
    return-void
.end method

.method public resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    .prologue
    .line 1748
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    goto :goto_0
.end method

.method public shouldGetResolvedFilter()Z
    .locals 1

    .prologue
    .line 1656
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    return v0
.end method

.method public showsExtendedInfo(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z
    .locals 1
    .param p1, "info"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    .line 1824
    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 1
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    .prologue
    .line 1753
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    goto :goto_0
.end method
